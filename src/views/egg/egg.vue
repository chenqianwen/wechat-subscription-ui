<template>
    <div >
        <Row >
            <Col span="24">
                <img src="../../images/indexPageImg.jpg" width="100%" />
            </Col>
        </Row>
        <Row style="height:100%;">
            <Col span="24" style="height: 100%">
                <img src="../../images/indexPageImg2.jpg"
                     style="position:absolute;left:0px;top:0px;z-index:-1;width: 100%;height: auto;"/>
                <p style="margin-top: 10%;margin-bottom:15%;" @click="breakEgg">
                    <Carousel
                            v-model="value1"
                            :autoplay="setting.autoplay"
                            :autoplay-speed="setting.autoplaySpeed"
                            :dots="setting.dots">
                        <CarouselItem>
                            <Row type="flex" justify="center" class="code-row-bg">
                                <Col span="6"><img src="../../images/egg.png" style="width: 100%;height: 100%"/></Col>
                                <Col span="6"><img src="../../images/egg.png" style="width: 100%;height: 100%"/></Col>
                                <Col span="6"><img src="../../images/egg.png" style="width: 100%;height: 100%"/></Col>
                            </Row>
                        </CarouselItem>
                        <CarouselItem>
                            <Row type="flex" justify="center" class="code-row-bg">
                                <Col span="6"><img src="../../images/egg.png" style="width: 100%;height: 100%"/></Col>
                                <Col span="6"><img src="../../images/egg.png" style="width: 100%;height: 100%"/></Col>
                                <Col span="6"><img src="../../images/egg.png" style="width: 100%;height: 100%"/></Col>
                            </Row>
                        </CarouselItem>
                    </Carousel>
                </p>
            </Col>
        </Row>
        <Row>
            <div style="background-color: #D23C3C;padding: 20px">
                <Card :bordered="false">
                    <p slot="title" style="text-align:center;color: #D97624;font-size: 22px;">
                        活动细则
                    </p>
                    <ul style="color: #D97624;font-size: 10px;padding-left: 8px">
                        <li>1.所有实名的女性会员，3月8日活动当天，免费获得8次砸金蛋机会，超过免费次数，<span class="color_red">按50积分/砸</span>扣除积分获取抽奖机会；
                        </li>
                        <li>2.奖项设置：现金券、小惠钱包和积分等，奖池内大奖含有现金券500元、小惠钱包100元、1000积分等；</li>
                        <li>3.奖品为实时发放，请会员自行前往个人中心查看获取奖品；</li>
                        <li>4.客服免费咨询热线：123456789、邮箱：185098535@qq.com（工作日：09：00-17：30）；</li>
                        <li>5.本活动最终解释权归Ifmisswqq所有。</li>
                    </ul>
                </Card>
            </div>
        </Row>
        <Modal v-model="modal" :closable="false" class-name="vertical-center-modal" :footer-hide="true">
            <div style="text-align:center" v-if="prize !== ''">
                <Row>
                    <Col span="6" offset="9"><img src="../../images/gx.png" style="width: 100%;height: 80px"/></Col>
                </Row>
                <p style="font-size: 20px;font-family: 'Al Bayan';margin: 20px">获得{{prize}}</p>
            </div>
            <div style="text-align:center;margin: auto;" v-if="prize === ''">
                <Row >
                    <Col span="6" offset="9"><img src="../../images/empty.png" style="width: 100%;height: 80px"/></Col>
                </Row>
                <p style="font-size: 20px;font-family: 'Al Bayan';margin: 20px">没有中奖</p>
            </div>
                <Button type="warning" size="large" long @click="btnClick">确定</Button>
        </Modal>
    </div>
</template>

<script>
    export default {
        name: "egg",
        data() {
            return {
                value1: 0,
                setting: {
                    autoplay: true,
                    autoplaySpeed: 2000,
                    dots: 'none'
                },
                modal: false,
                prize: ''
            }
        },
        methods: {
            breakEgg() {
                console.log('click')
                this.modal = true
            },
            btnClick(){
                this.modal = false
            }
        }
    }
</script>

<style lang="less">
    .vertical-center-modal{
        display: flex;
        align-items: center;
        justify-content: center;

        .ivu-modal{
            top: 0;
        }
    }
</style>