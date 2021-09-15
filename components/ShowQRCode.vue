<script lang="ts">
import Expandable from "./Expandable.vue";
import QRCode from "./QRCode.vue";

export default {
  components: {
    Expandable,
    QRCode,
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
      type: String,
      default: () => "",
    },
    icon: {
      type: String,
      default: () => "bx:bx-qr-scan",
    },
  },
};
</script>

<template>
  <Expandable :icon="icon" :text="text">
    <QRCode :value="value" :size="size" />
  </Expandable>
</template>