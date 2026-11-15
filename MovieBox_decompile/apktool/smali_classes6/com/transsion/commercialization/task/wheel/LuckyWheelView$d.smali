.class public final Lcom/transsion/commercialization/task/wheel/LuckyWheelView$d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->startIndicator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;


# direct methods
.method constructor <init>(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$d;->a:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

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
    .locals 1

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$d;->a:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->access$startStableSpin(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
