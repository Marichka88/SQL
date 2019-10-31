import Vue from 'vue'
import Router from 'vue-router'
import Home from '../views/Home.vue'
import Test from '../views/Test.vue'
import ProductsIndex from '../views/ProductsIndex.vue'
import ProductsNew from '../views/ProductsNew.vue'
import ProductsShow from '../views/ProductsShow.vue'
import ProductsEdit from '../views/ProductsEdit.vue'

Vue.use(Router)

export default new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    {path: '/', name: 'home', component: ProductsIndex },
    {path: '/products', name: 'products-index', component: ProductsIndex },
    {path: '/products/new', name: 'products-new', component: ProductsNew },
    {path: '/products/:id', name: 'products-show', component: ProductsShow },

    {path: '/products/:id/edit', name: 'products-edit', component: ProductsEdit}


  ]
})
