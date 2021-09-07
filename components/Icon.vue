<script lang="ts">
import { Icon as Iconify } from "@iconify/vue";

export default {
  components: { Iconify },
  props: {
    icon: String,
  },
};
</script>

<template>
  <Iconify v-bind:icon="icon" />
</template>