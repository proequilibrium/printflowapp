<template>
  <q-page class="flex  flex-center">
      <div class="row">
        <q-btn @click="goToCalc" class="col-12 q-ma-sm" color="red" icon-right="input" label="Kalkulovat zakazku" />
        <q-btn @click="goToBleed" class="col-12 q-ma-sm" color="red" icon-right="input" label="Dodelat spadavku" />
      </div>
  </q-page>
</template>

<style>
</style>

<script>
export default {
  name: 'PageIndex',

  components: {
  },

  data () {
    return {
    }
  },
  methods: {
    goToCalc: function () {
      this.$router.push('/calc/')
    }
  },
  computed: {
  }

}
</script>
