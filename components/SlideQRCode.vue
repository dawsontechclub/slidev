<script lang="ts">
import ShowQRCode from "./ShowQRCode.vue";

export default {
  components: {
    ShowQRCode,
  },
  props: {
    value: {
      type: String,
      default: () => window.location.href,
    },
    size: {
      type: Number,
      default: 300,
    },
    text: {
      default: "",
    },
    icon: {
      default: "bx:bx-qr-scan",
    },
  },
};
</script>

<template>
    <div class="fixed top-5 right-5">
        <ShowQRCode :text="text" :icon="icon" :size="size" :value="value"/>
    </div>
</template>