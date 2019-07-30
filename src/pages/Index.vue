<template>
  <q-page class="flex flex-center">
      <div class="row">
        <q-input outlined class="col-4" v-model="onArc" label="ks na arch" />
        <q-input outlined class="col-4" v-model="pcs" label="Pocet ks" />
        <q-input outlined class="col-4" v-model="kgPrice" label="Cena za Kg" />
        <q-input outlined class="col-6" v-model="paperWeight" label="Plosna hmotnost gramy" />
        <q-select outlined class="col-6" v-model="format" :options="formatOptions" label="Vyber format" />
        <q-card
            bordered class="my-card text-white col-6"
            style="background: radial-gradient(circle,#35a2ff 0%, #014a88 100%"
        >
          <q-card-section>
            <div class="text-h6">Pocet arc je:</div>
            <div class="text-subtitle1"> {{pcs / onArc}}</div>
          </q-card-section>
        </q-card>
        <q-card
            bordered class="my-card text-white"
            style="background: radial-gradient(circle,#35a2ff 0%, #014a88 100%"
        >
          <q-card-section>
            <div class="text-h6">Hmotnost archu je:</div>
            <div class="text-subtitle2">{{(sheetSize * paperWeight).toFixed(2)}}g</div>
          </q-card-section>
        </q-card>
      </div>
    <example1 />
  </q-page>
</template>

<style>
</style>

<script>
export default {
  name: 'PageIndex',

  components: {
    'example1': () => import('../components/Example1')
  },

  data () {
    return {
      onArc: 1,
      pcs: 1,
      kgPrice: 23,
      paperWeight: 130,
      format: '320x450',
      formatOptions: [
        '320x450', '430x610', '450x640', '480x650'
      ]
    }
  },
  computed: {
    numArc: function () {
      return this.pcs / this.onArc
    },
    sheetSize: function () {
      if (this.format == null) {
        return 0
      }
      var paperWidth = this.format.substr(0, 2)
      var paperHeight = this.format.substr(4, 6)
      return paperWidth / paperHeight
    },
    sheetPrice: function () {
      var paperWidth = this.format.substr(0, 2)
      var paperHeight = this.format.substr(4, 6)
      return paperWidth / paperHeight
    }
  }

}
</script>
