.class public Lcom/transsion/hubsdk/core/graphics/TranThubPaint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/graphics/ITranPaintAdapter;


# instance fields
.field private mTranPaint:Lcom/transsion/hubsdk/graphics/TranPaint;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTranPaintImpl()Lcom/transsion/hubsdk/graphics/TranPaint;
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/core/graphics/TranThubPaint;->mTranPaint:Lcom/transsion/hubsdk/graphics/TranPaint;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/graphics/TranPaint;

    invoke-direct {v0}, Lcom/transsion/hubsdk/graphics/TranPaint;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/graphics/TranThubPaint;->mTranPaint:Lcom/transsion/hubsdk/graphics/TranPaint;

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/graphics/TranThubPaint;->mTranPaint:Lcom/transsion/hubsdk/graphics/TranPaint;

    return-object p0
.end method


# virtual methods
.method public setUnionRenderEffect(Landroid/graphics/Paint;Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/graphics/TranThubPaint;->getTranPaintImpl()Lcom/transsion/hubsdk/graphics/TranPaint;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/graphics/Paint;

    const-class v2, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setUnionRenderEffect"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    instance-of v0, p2, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/graphics/TranThubPaint;->getTranPaintImpl()Lcom/transsion/hubsdk/graphics/TranPaint;

    move-result-object p0

    check-cast p2, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/graphics/TranPaint;->setUnionRenderEffect(Landroid/graphics/Paint;Lcom/transsion/hubsdk/view/TranUnionRenderEffect;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/graphics/TranThubPaint;->getTranPaintImpl()Lcom/transsion/hubsdk/graphics/TranPaint;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/graphics/TranPaint;->setUnionRenderEffect(Landroid/graphics/Paint;Lcom/transsion/hubsdk/view/TranUnionRenderEffect;)V

    :cond_2
    :goto_0
    return-void
.end method
