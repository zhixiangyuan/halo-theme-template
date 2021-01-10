<template>
  <div>
      <div v-for="index in posts.contents.length">
        <h2 v-if="index === 1 || getYear(posts.contents[index - 2].createTime) !== getYear(posts.contents[index - 1].createTime)">
          {{ getYear(posts.contents[index - 1].createTime) }}
        </h2>
        <div>
          <a target="_self" :href="'/?p=' + posts.contents[index - 1].id" data-pjax-state="">
            <time>{{ formatCreateTime(posts.contents[index - 1].createTime) }}</time>
            {{ posts.contents[index - 1].title }}
          </a>
        </div>
      </div>
  </div>

</template>

<script>
import dayjs from "dayjs";

export default {
  name: "Archives",
  mounted() {
  },
  data() {
    return {
      posts: window.data.posts
    }
  },

  methods: {
    formatCreateTime(dateStr) {
      return dayjs(dateStr).format('MM-DD')
    },
    getYear(dateStr) {
      return dayjs(dateStr).format('YYYY')
    }
  }
}
</script>

<style scoped>

</style>