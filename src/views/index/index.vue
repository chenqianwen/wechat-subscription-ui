<template>
    <h1>首页<Button type="primary" @click.prevent="breakEgg"></Button></h1>
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