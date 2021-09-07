<script lang="ts">
import Icon from "./Icon.vue";

export default {
  components: { Icon },
  props: {
    icon: String,
    text: {
      default: "",
    },
  },
};
</script>

<template>
  <div class="inline-block">
    <div class="flex items-center">
      <Icon v-if="icon" v-bind:icon="icon" class="text-3xl inline mr-2" />{{
        text
      }}<slot />
    </div>
  </div>
</template>