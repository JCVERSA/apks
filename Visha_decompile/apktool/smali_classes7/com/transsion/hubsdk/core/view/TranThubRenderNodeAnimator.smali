.class public Lcom/transsion/hubsdk/core/view/TranThubRenderNodeAnimator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/view/ITranRenderNodeAnimatorAdapter;


# instance fields
.field private mTranRenderNodeAnimator:Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;

    invoke-direct {v0}, Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubRenderNodeAnimator;->mTranRenderNodeAnimator:Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;

    return-void
.end method


# virtual methods
.method public clearPromote()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubRenderNodeAnimator;->mTranRenderNodeAnimator:Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;

    invoke-direct {v0}, Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubRenderNodeAnimator;->mTranRenderNodeAnimator:Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubRenderNodeAnimator;->mTranRenderNodeAnimator:Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;->clearPromote()V

    return-void
.end method

.method public setInstance(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubRenderNodeAnimator;->mTranRenderNodeAnimator:Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;

    invoke-direct {v0}, Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubRenderNodeAnimator;->mTranRenderNodeAnimator:Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubRenderNodeAnimator;->mTranRenderNodeAnimator:Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;->setInstance(Ljava/lang/Object;)V

    return-void
.end method

.method public setPromote(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubRenderNodeAnimator;->mTranRenderNodeAnimator:Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;

    invoke-direct {v0}, Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubRenderNodeAnimator;->mTranRenderNodeAnimator:Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubRenderNodeAnimator;->mTranRenderNodeAnimator:Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranRenderNodeAnimator;->setPromote(Z)V

    return-void
.end method
