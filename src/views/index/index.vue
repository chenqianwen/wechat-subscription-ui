<template>
    <div>
        <h1>首页
            <Button type="primary" @click.prevent="breakEgg"></Button>
        </h1>
        <router-link to="/egg">去抽奖</router-link>
    </div>
</template>

<script>
    export default {
        name: "index",
        methods: {
            breakEgg() {
                console.log('click')
            }
        }
    }
</script>

<style scoped>

</style>