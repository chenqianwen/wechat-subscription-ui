const routers = [
    {
        path: '/',
        meta: {
            title: '首页'
        },
        component: (resolve) => require(['./views/index/index.vue'], resolve)
    }, {

        path: '/egg',
        meta: {
            title: '砸金蛋'
        },
        component: (resolve) => require(['./views/egg/egg.vue'], resolve)
    }];
export default routers;