import Vue from 'vue'
import VueRouter from 'vue-router'
import FoodsIndex from '../views/FoodsIndex.vue'
import FoodsNew from '../views/FoodsNew.vue'
import FoodsShow from '../views/FoodsShow.vue'
import FoodsEdit from '../views/FoodsEdit.vue'

Vue.use(VueRouter)

const routes = [
  {path: '/', name: 'home', component: FoodsIndex },
  {path: '/foods', name: 'foods-index', component: FoodsIndex },
  {path: '/foods/new', name: 'foods-new', component: FoodsNew },
  {path: '/foods/:id', name: 'foods-show', component: FoodsShow },
  {path: '/foods/:id/edit', name: 'foods-edit', component: FoodsEdit }

]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
