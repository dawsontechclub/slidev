<script lang="ts">

export default {
  props: {
    audience: Boolean
  }
}

</script>

<template>
  <div
    class="messages"
    v-bind:class="{ audience: audience, presenter: !audience }"
  >
    <div class="message last"><slot /></div>
  </div>
</template>

<style scoped>

.messages {
  margin-top: 15px;
  display: flex;
  flex-direction: column;
}

.message {
  border-radius: 20px;
  padding: 8px 15px;
  margin-top: 5px;
  margin-bottom: 5px;
  display: inline-block;
}

.audience {
  align-items: flex-start;
}

.audience .message {
  color: black;
  background-color: #eee;
  margin-right: 25%;
  position: relative;
}

.dark .audience .message {
  color:white;
  background-color: #222;
}

.presenter {
  align-items: flex-end;
}

.presenter .message {
  color: white;
  margin-left: 25%;
  background: dodgerblue;
  background-attachment: fixed;
  position: relative;
}

.audience .message.last:before {
  content: "";
  position: absolute;
  z-index: 0;
  bottom: 0;
  left: -7px;
  height: 20px;
  width: 20px;
  background: #eee;
  border-bottom-right-radius: 15px;
}

.dark .audience .message.last:before {
  background: #222;
}

.audience .message.last:after {
  content: "";
  position: absolute;
  z-index: 1;
  bottom: 0;
  left: -10px;
  width: 10px;
  height: 20px;
  background: rgba(255, 255, 255, var(--tw-bg-opacity));
  border-bottom-right-radius: 10px;
}

.dark .audience .message.last:after {
  background: rgba(18, 18, 18, var(--tw-bg-opacity));
}

.presenter .message.last:before {
  content: "";
  position: absolute;
  z-index: 0;
  bottom: 0;
  right: -8px;
  height: 20px;
  width: 20px;
  background: dodgerblue;
  background-attachment: fixed;
  border-bottom-left-radius: 15px;
}

.presenter .message.last:after {
  content: "";
  position: absolute;
  z-index: 1;
  bottom: 0;
  right: -10px;
  width: 10px;
  height: 20px;
  background: rgba(255, 255, 255, var(--tw-bg-opacity));
  border-bottom-left-radius: 10px;
}
.dark .presenter .message.last:after {
  background: rgba(18, 18, 18, var(--tw-bg-opacity));
}

</style>