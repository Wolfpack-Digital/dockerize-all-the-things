<template>
  <div class="p-2">
    <header class="w-full bg-dark p-5 text-center">Wolves</header>

    <div v-for="(item, $index) in list" :key="$index">
      <div class="max-w-sm rounded overflow-hidden shadow-lg mb-5">
        <img :src="item.avatar" class="w-full" />
        <div class="px-6 py-4">
          <div class="font-bold text-xl mb-2">{{ item.name }}</div>
          <p class="text-gray-700 text-base">{{ item.description }}</p>
        </div>
        <div class="px-6 py-4">
          <span
            v-for="(tag, $tagIndex) in item.tags"
            :key="$index+$tagIndex"
            class="inline-block bg-gray-200 rounded-full px-3 py-1 text-sm font-semibold text-gray-700 mr-2"
          >#{{ tag }}</span>
        </div>
      </div>
    </div>

    <infinite-loading @infinite="infiniteHandler" />
  </div>
</template>
<script>
import axios from "axios";
import InfiniteLoading from 'vue-infinite-loading';

const api = "//localhost:3000/wolves";

export default {
  name: 'WolvesList',

  components: {
    InfiniteLoading
  },

  data() {
    return {
      page: 1,
      list: []
    };
  },
  methods: {
    infiniteHandler($state) {
      axios
        .get(api, {
          params: {
            page: this.page
          }
        })
        .then(({ data }) => {
          if (data.length) {
            this.page += 1;
            this.list.push(...data);
            $state.loaded();
          } else {
            $state.complete();
          }
        });
    }
  }
};
</script>
<style>
</style>
