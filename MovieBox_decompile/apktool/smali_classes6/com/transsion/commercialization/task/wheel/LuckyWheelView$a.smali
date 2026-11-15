.class public final Lcom/transsion/commercialization/task/wheel/LuckyWheelView$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->endIndicator(Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

.field final synthetic b:Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;


# direct methods
.method constructor <init>(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$a;->a:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$a;->b:Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$a;->a:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

    .line 7
    .line 8
    sget-object v0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;->IDLE:Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;

    .line 9
    .line 10
    invoke-static {p1, v0}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->access$setIndicatorState$p(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;Lcom/transsion/commercialization/task/wheel/LuckyWheelView$IndicatorState;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$a;->a:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {p1, v0}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->access$setCurrentAngularSpeed$p(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;F)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$a;->a:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->access$getStateListener$p(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;)Lcom/transsion/commercialization/task/wheel/e;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$a;->b:Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;

    .line 28
    .line 29
    invoke-interface {p1, v0}, Lcom/transsion/commercialization/task/wheel/e;->c(Lcom/transsion/bean/lottery/LotteryDrawResultEntity$LotteryResultBean;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method
