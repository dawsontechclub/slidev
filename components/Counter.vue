<script lang="ts">

export default {
  props: {
    count: {
      default: 0
    }
  }
}

</script>

<template>
  <div flex="~" w="min" border="~ gray-400 opacity-50 rounded-md">
    <button
      border="r gray-400 opacity-50"
      p="2"
      font="mono"
      outline="!none"
      hover:bg="gray-400 opacity-20"
      @click="cout -= 1"
    >
      -
    </button>
    <span m="auto" p="2">{{ cout }}</span>
    <button
      border="l gray-400 opacity-50"
      p="2"
      font="mono"
      outline="!none"
      hover:bg="gray-400 opacity-20"
      @click="cout += 1"
    >
      +
    </button>
  </div>
</template>
