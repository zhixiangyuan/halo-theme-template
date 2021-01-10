<template>
  <div>
    <Archives v-if="isArchives"></Archives>
    <Index v-if="isIndex"></Index>
  </div>
</template>

<script>
import Index from "./components/Index.vue"
import Archives from "./components/Archives.vue"

export default {
  name: "Main",
  mounted() {
  },
  data() {
    return {
      isArchives: window.data.isArchives,
      isIndex: window.data.isIndex,
    }
  },
  components: {
    Index,
    Archives
  }
}
</script>

<style>
</style>