.class public final Lcom/transsion/subroom/activity/SecondFloorHelper$startGuideAnimation$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subroom/activity/SecondFloorHelper;->U()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/subroom/activity/SecondFloorHelper;


# direct methods
.method constructor <init>(Lcom/transsion/subroom/activity/SecondFloorHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper$startGuideAnimation$1$1;->a:Lcom/transsion/subroom/activity/SecondFloorHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper$startGuideAnimation$1$1;->a:Lcom/transsion/subroom/activity/SecondFloorHelper;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p1, v0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->s(Lcom/transsion/subroom/activity/SecondFloorHelper;Landroid/animation/AnimatorSet;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper$startGuideAnimation$1$1;->a:Lcom/transsion/subroom/activity/SecondFloorHelper;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/transsion/subroom/activity/SecondFloorHelper;->n(Lcom/transsion/subroom/activity/SecondFloorHelper;)Lkotlinx/coroutines/n0;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v4, Lcom/transsion/subroom/activity/SecondFloorHelper$startGuideAnimation$1$1$onAnimationEnd$1;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/transsion/subroom/activity/SecondFloorHelper$startGuideAnimation$1$1;->a:Lcom/transsion/subroom/activity/SecondFloorHelper;

    .line 24
    .line 25
    invoke-direct {v4, v2, v0}, Lcom/transsion/subroom/activity/SecondFloorHelper$startGuideAnimation$1$1$onAnimationEnd$1;-><init>(Lcom/transsion/subroom/activity/SecondFloorHelper;Lkotlin/coroutines/Continuation;)V

    .line 26
    .line 27
    .line 28
    const/4 v5, 0x3

    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {p1, v0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->t(Lcom/transsion/subroom/activity/SecondFloorHelper;Lkotlinx/coroutines/t1;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
