<script lang="ts">
import katex from 'katex'

export default {
    computed: {
        html() {
            return katex.renderToString(this.$slots.default()[0].children)
        }
    }
}

</script>

<template>
    <div v-html="html" class="z-0"/>
</template>

<style scoped>

@import "https://cdn.jsdelivr.net/npm/katex@0.13.18/dist/katex.min.css";

</style>