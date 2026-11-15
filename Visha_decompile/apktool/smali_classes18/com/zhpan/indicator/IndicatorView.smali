.class public final Lcom/zhpan/indicator/IndicatorView;
.super Lcom/zhpan/indicator/base/BaseIndicatorView;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ7\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001f\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u0017H\u0014\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0017\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0015\u0010\"\u001a\u00020\u00102\u0006\u0010!\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\"\u0010#J\u0017\u0010$\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008$\u0010\u001aR\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'\u00a8\u0006)"
    }
    d2 = {
        "Lcom/zhpan/indicator/IndicatorView;",
        "Lcom/zhpan/indicator/base/BaseIndicatorView;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "changed",
        "left",
        "top",
        "right",
        "bottom",
        "Lzfb;",
        "onLayout",
        "(ZIIII)V",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "(II)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "Lrz4;",
        "options",
        "setIndicatorOptions",
        "(Lrz4;)V",
        "notifyDataChanged",
        "()V",
        "orientation",
        "setOrientation",
        "(I)V",
        "c",
        "Lt23;",
        "f",
        "Lt23;",
        "mDrawerProxy",
        "indicator_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field public f:Lt23;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/zhpan/indicator/IndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 2
    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/zhpan/indicator/IndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/zhpan/indicator/base/BaseIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    invoke-virtual {p0}, Lcom/zhpan/indicator/base/BaseIndicatorView;->getMIndicatorOptions()Lrz4;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lpl;->a(Landroid/content/Context;Landroid/util/AttributeSet;Lrz4;)V

    .line 6
    new-instance p1, Lt23;

    invoke-virtual {p0}, Lcom/zhpan/indicator/base/BaseIndicatorView;->getMIndicatorOptions()Lrz4;

    move-result-object p2

    invoke-direct {p1, p2}, Lt23;-><init>(Lrz4;)V

    iput-object p1, p0, Lcom/zhpan/indicator/IndicatorView;->f:Lt23;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/zhpan/indicator/IndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final c(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p0}, Lcom/zhpan/indicator/base/BaseIndicatorView;->getMIndicatorOptions()Lrz4;

    move-result-object v0

    invoke-virtual {v0}, Lrz4;->g()I

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v2

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p1, v1, v0, p0}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zhpan/indicator/base/BaseIndicatorView;->getMIndicatorOptions()Lrz4;

    move-result-object v0

    invoke-virtual {v0}, Lrz4;->g()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v2

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {p1, v1, v0, p0}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyDataChanged()V
    .locals 2

    new-instance v0, Lt23;

    invoke-virtual {p0}, Lcom/zhpan/indicator/base/BaseIndicatorView;->getMIndicatorOptions()Lrz4;

    move-result-object v1

    invoke-direct {v0, v1}, Lt23;-><init>(Lrz4;)V

    iput-object v0, p0, Lcom/zhpan/indicator/IndicatorView;->f:Lt23;

    invoke-super {p0}, Lcom/zhpan/indicator/base/BaseIndicatorView;->notifyDataChanged()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ly45;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/zhpan/indicator/IndicatorView;->c(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Lcom/zhpan/indicator/IndicatorView;->f:Lt23;

    invoke-virtual {p0, p1}, Lt23;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 6

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/zhpan/indicator/IndicatorView;->f:Lt23;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lt23;->c(ZIIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-object v0, p0, Lcom/zhpan/indicator/IndicatorView;->f:Lt23;

    invoke-virtual {v0, p1, p2}, Lt23;->onMeasure(II)Lda0$b;

    move-result-object p1

    invoke-virtual {p1}, Lda0$b;->b()I

    move-result p2

    invoke-virtual {p1}, Lda0$b;->a()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setIndicatorOptions(Lrz4;)V
    .locals 1

    const-string v0, "options"

    invoke-static {p1, v0}, Ly45;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/zhpan/indicator/base/BaseIndicatorView;->setIndicatorOptions(Lrz4;)V

    iget-object p0, p0, Lcom/zhpan/indicator/IndicatorView;->f:Lt23;

    invoke-virtual {p0, p1}, Lt23;->d(Lrz4;)V

    return-void
.end method

.method public final setOrientation(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/zhpan/indicator/base/BaseIndicatorView;->getMIndicatorOptions()Lrz4;

    move-result-object p0

    invoke-virtual {p0, p1}, Lrz4;->u(I)V

    return-void
.end method
