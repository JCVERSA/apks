.class public Lcom/transsion/hubsdk/core/view/TranThubWindowInsetsAnimationController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/view/ITranWindowInsetsAnimationControllerAdapter;


# instance fields
.field private mTranWindowInsetsAnimationController:Lcom/transsion/hubsdk/view/TranWindowInsetsAnimationController;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTranWindowInsetsAnimationControllerImpl()Lcom/transsion/hubsdk/view/TranWindowInsetsAnimationController;
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowInsetsAnimationController;->mTranWindowInsetsAnimationController:Lcom/transsion/hubsdk/view/TranWindowInsetsAnimationController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/view/TranWindowInsetsAnimationController;

    invoke-direct {v0}, Lcom/transsion/hubsdk/view/TranWindowInsetsAnimationController;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowInsetsAnimationController;->mTranWindowInsetsAnimationController:Lcom/transsion/hubsdk/view/TranWindowInsetsAnimationController;

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowInsetsAnimationController;->mTranWindowInsetsAnimationController:Lcom/transsion/hubsdk/view/TranWindowInsetsAnimationController;

    return-object p0
.end method


# virtual methods
.method public setInsetsAndAlpha(Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;FFZZ)V
    .locals 7

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubWindowInsetsAnimationController;->getTranWindowInsetsAnimationControllerImpl()Lcom/transsion/hubsdk/view/TranWindowInsetsAnimationController;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/hubsdk/view/TranWindowInsetsAnimationController;->setInsetsAndAlpha(Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;FFZZ)V

    return-void
.end method
