.class public Lzf9;
.super Lcom/airbnb/lottie/model/layer/a;
.source "SourceFile"


# instance fields
.field public final E:Lcg1;

.field public final F:Lcom/airbnb/lottie/model/layer/b;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;Lcom/airbnb/lottie/model/layer/b;Lur5;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/a;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    iput-object p3, p0, Lzf9;->F:Lcom/airbnb/lottie/model/layer/b;

    new-instance p3, Lwf9;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->o()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "__container"

    invoke-direct {p3, v1, p2, v0}, Lwf9;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    new-instance p2, Lcg1;

    invoke-direct {p2, p1, p0, p3, p4}, Lcg1;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Lwf9;Lur5;)V

    iput-object p2, p0, Lzf9;->E:Lcg1;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcg1;->f(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public I(Ltf5;ILjava/util/List;Ltf5;)V
    .locals 0

    iget-object p0, p0, Lzf9;->E:Lcg1;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcg1;->c(Ltf5;ILjava/util/List;Ltf5;)V

    return-void
.end method

.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/a;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lzf9;->E:Lcg1;

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/a;->o:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, p0, p3}, Lcg1;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method public t(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 0

    iget-object p0, p0, Lzf9;->E:Lcg1;

    invoke-virtual {p0, p1, p2, p3}, Lcg1;->d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public w()Lag0;
    .locals 1

    invoke-super {p0}, Lcom/airbnb/lottie/model/layer/a;->w()Lag0;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lzf9;->F:Lcom/airbnb/lottie/model/layer/b;

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/a;->w()Lag0;

    move-result-object p0

    return-object p0
.end method

.method public y()Ll33;
    .locals 1

    invoke-super {p0}, Lcom/airbnb/lottie/model/layer/a;->y()Ll33;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lzf9;->F:Lcom/airbnb/lottie/model/layer/b;

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/a;->y()Ll33;

    move-result-object p0

    return-object p0
.end method
