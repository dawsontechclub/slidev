<script lang="ts">
import Katex from "./Katex.vue";

export default {
  components: { Katex },
  props: {
    radix: {
      default: 10,
      type: Number,
    },
    value: {
      default: 0,
      type: Number,
    },
  },
  computed: {
    name: function () {
      switch (+this.radix) {
        case 10:
          return "decimal";
        case 2:
          return "binary";
        case 16:
          return "hexadecimal";
        case 8:
          return "octal"
        default:
          return "base" + this.radix;
      }
    },
    representation: function () {
      if (typeof this.value !== "number") return "nothing";
      if (this.value < 0) return "?";
      return this.value.toString(this.radix);
    },
    reason: function () {
      if (typeof this.value !== "number")
        return "nothing \\space is \\space nothing";
      if (this.value < 0) return "I refuse!".split(" ").join(" \\space ");
      const digits = this.value.toString(this.radix).split("");

      const repre = (d: string) =>
        `${parseInt(d, this.radix)}_{\\color{forestgreen}{${d}}}`;

      const first = digits
        .map((d: string, i: number) => {
          const n = digits.length - i - 1;
          return `${repre(d)} \\cdot ${this.radix} ^ {${n}}`;
        })
        .join("+");

      const second = digits
        .map((d: string, i: number) => {
          if (d === "0") return;
          const n = digits.length - i - 1;
          return `${repre(d)} \\cdot ${this.radix} ^ {${n}}`;
        })
        .filter((v) => v)
        .join("+");

      const third = digits
        .map((d: string, i: number) => {
          if (d === "0") return;
          const n = digits.length - i - 1;
          return `${parseInt(d, this.radix) * this.radix ** n}`;
        })
        .filter((v) => v)
        .join("+");

      return [first, second, third]
        .filter((v) => v)
        .concat(this.value)
        .join(" \\\\ =");
    },
  },
};
</script>

<template>
  <div class="text-2xl mt-3">
    <input type="range" min="2" max="36" v-model="radix" />
    <span class="font-mono text-blue-500 ml-2">{{ radix }}</span>
    <br />
    The decimal number
    <input
      type="number"
      v-model="value"
      pattern="\d+"
      class="text-2xl my-3 bg-transparent font-mono text-blue-500"
      placeholder="nothing"
    />
    <br />
    in <span class="font-mono text-purple-500">{{ name }}</span> is
    <span class="font-mono text-green-500">{{ representation }}</span>
    because:

    <Katex class="mt-5"> {{ reason }} </Katex>
    <Katex class="mt-5">
      N = \sum_{i=0}^{n-1} R_i \cdot {{ radix }} ^ i \\
    </Katex>
    <div class="text-sm font-mono mt-5">
      <div>N is the number represented by R</div>
      <div>R is an array of all the {{ name }} digits</div>
      <div>n is the number of digits</div>
      <div>i is amount of decimal places from the least significant digit</div>
    </div>
    <p></p>
  </div>
</template>