.class public Lcom/transsion/hubsdk/core/view/TranThubAsyncThreadAnimImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/view/ITranAsyncThreadAnimImplAdapter;


# instance fields
.field private mTranAsyncThreadAnimImpl:Lcom/transsion/hubsdk/view/TranAsyncThreadAnimImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/view/TranAsyncThreadAnimImpl;

    invoke-direct {v0}, Lcom/transsion/hubsdk/view/TranAsyncThreadAnimImpl;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubAsyncThreadAnimImpl;->mTranAsyncThreadAnimImpl:Lcom/transsion/hubsdk/view/TranAsyncThreadAnimImpl;

    return-void
.end method


# virtual methods
.method public asyncAnimScheduleTraversals(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubAsyncThreadAnimImpl;->mTranAsyncThreadAnimImpl:Lcom/transsion/hubsdk/view/TranAsyncThreadAnimImpl;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranAsyncThreadAnimImpl;->asyncAnimScheduleTraversals(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public init(Landroid/os/Looper;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubAsyncThreadAnimImpl;->mTranAsyncThreadAnimImpl:Lcom/transsion/hubsdk/view/TranAsyncThreadAnimImpl;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranAsyncThreadAnimImpl;->init(Landroid/os/Looper;)V

    return-void
.end method

.method public release()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubAsyncThreadAnimImpl;->mTranAsyncThreadAnimImpl:Lcom/transsion/hubsdk/view/TranAsyncThreadAnimImpl;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/view/TranAsyncThreadAnimImpl;->release()V

    return-void
.end method

.method public setViewAlpha(Landroid/view/View;F)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubAsyncThreadAnimImpl;->mTranAsyncThreadAnimImpl:Lcom/transsion/hubsdk/view/TranAsyncThreadAnimImpl;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/view/TranAsyncThreadAnimImpl;->setViewAlpha(Landroid/view/View;F)Z

    move-result p0

    return p0
.end method

.method public setViewScaleX(Landroid/view/View;F)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubAsyncThreadAnimImpl;->mTranAsyncThreadAnimImpl:Lcom/transsion/hubsdk/view/TranAsyncThreadAnimImpl;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/view/TranAsyncThreadAnimImpl;->setViewScaleX(Landroid/view/View;F)Z

    move-result p0

    return p0
.end method

.method public setViewScaleY(Landroid/view/View;F)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubAsyncThreadAnimImpl;->mTranAsyncThreadAnimImpl:Lcom/transsion/hubsdk/view/TranAsyncThreadAnimImpl;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/view/TranAsyncThreadAnimImpl;->setViewScaleY(Landroid/view/View;F)Z

    move-result p0

    return p0
.end method

.method public setViewTranslationX(Landroid/view/View;F)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubAsyncThreadAnimImpl;->mTranAsyncThreadAnimImpl:Lcom/transsion/hubsdk/view/TranAsyncThreadAnimImpl;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/view/TranAsyncThreadAnimImpl;->setViewTranslationX(Landroid/view/View;F)Z

    move-result p0

    return p0
.end method

.method public setViewTranslationY(Landroid/view/View;F)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubAsyncThreadAnimImpl;->mTranAsyncThreadAnimImpl:Lcom/transsion/hubsdk/view/TranAsyncThreadAnimImpl;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/view/TranAsyncThreadAnimImpl;->setViewTranslationY(Landroid/view/View;F)Z

    move-result p0

    return p0
.end method
