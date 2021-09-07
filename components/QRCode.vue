
<script lang="ts">
import QRCodeVue from "qrcode.vue";

export default {
  props: {
    value: {
      default: () => window.location.href,
      type: String,
    },
    size: {
      default: 300,
      type: Number,
    },
  },
  components: {
    QRCodeVue,
  },
};
</script>

<template>
  <div class="text-center">
    <a :href="value">
      {{ value }}
    </a>
    <br/>
    <div class="p-3 bg-white inline-block mt-3 shadow-2xl">
      <QRCodeVue :value="value" :size="size" level="H" />
    </div>
  </div>
</template>