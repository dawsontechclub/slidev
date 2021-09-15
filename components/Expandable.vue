<script lang="ts">
import Icon from "./Icon.vue";
import IconText from './IconText.vue';

export default {
  components: { Icon, IconText },
  props: {
    text: String,
    icon: String,
    show: {
      default: false,
    },
  },
};
</script>

<template>
  <IconText  @click="show = !show" :icon="icon" :text="text" class="cursor-pointer"/>

  <div
    v-if="show"
    class="fixed inset-0 z-60 flex items-center justify-center"
    style="backdrop-filter: blur(5px)"
  >
    <slot />
    <Icon
      icon="bytesize:close"
      class="fixed top-5 right-5 text-3xl cursor-pointer"
      @click="show = false"
    />
  </div>
</template>