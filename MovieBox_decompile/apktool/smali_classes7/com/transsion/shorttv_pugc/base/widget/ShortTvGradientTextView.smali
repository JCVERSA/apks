.class public final Lcom/transsion/shorttv_pugc/base/widget/ShortTvGradientTextView;
.super Lcom/transsion/shorttv_pugc/base/widget/TnTextView;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ%\u0010\u0010\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J7\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\r\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u000e\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u001bR\u0016\u0010\u000f\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001b\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/transsion/shorttv_pugc/base/widget/ShortTvGradientTextView;",
        "Lcom/transsion/shorttv_pugc/base/widget/TnTextView;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "c",
        "()V",
        "startColor",
        "centerColor",
        "endColor",
        "setGradientColors",
        "(III)V",
        "",
        "changed",
        "left",
        "top",
        "right",
        "bottom",
        "onLayout",
        "(ZIIII)V",
        "b",
        "I",
        "d",
        "shortTvLib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/shorttv_pugc/base/widget/ShortTvGradientTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/shorttv_pugc/base/widget/ShortTvGradientTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/shorttv_pugc/base/widget/TnTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, -0x10000

    .line 5
    iput p3, p0, Lcom/transsion/shorttv_pugc/base/widget/ShortTvGradientTextView;->b:I

    const p3, -0xffff01

    .line 6
    iput p3, p0, Lcom/transsion/shorttv_pugc/base/widget/ShortTvGradientTextView;->d:I

    .line 7
    invoke-static {p1, p2, p0}, Lcom/noober/background/BackgroundFactory;->setViewBackground(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;)Landroid/view/View;

    .line 8
    sget-object p3, Lcom/transsion/shorttv/R$styleable;->ShortTvGradientTextView:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget p2, Lcom/transsion/shorttv/R$styleable;->ShortTvGradientTextView_gradientTvStartColor:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/shorttv_pugc/base/widget/ShortTvGradientTextView;->b:I

    .line 10
    sget p2, Lcom/transsion/shorttv/R$styleable;->ShortTvGradientTextView_gradientTvCenterColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/shorttv_pugc/base/widget/ShortTvGradientTextView;->c:I

    .line 11
    sget p2, Lcom/transsion/shorttv/R$styleable;->ShortTvGradientTextView_gradientTvEndColor:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/shorttv_pugc/base/widget/ShortTvGradientTextView;->d:I

    .line 12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/shorttv_pugc/base/widget/ShortTvGradientTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final c()V
    .locals 13

    .line 1
    iget v0, p0, Lcom/transsion/shorttv_pugc/base/widget/ShortTvGradientTextView;->c:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x2

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-array v0, v3, [I

    .line 9
    .line 10
    iget v3, p0, Lcom/transsion/shorttv_pugc/base/widget/ShortTvGradientTextView;->b:I

    .line 11
    .line 12
    aput v3, v0, v2

    .line 13
    .line 14
    iget v2, p0, Lcom/transsion/shorttv_pugc/base/widget/ShortTvGradientTextView;->d:I

    .line 15
    .line 16
    aput v2, v0, v1

    .line 17
    .line 18
    move-object v10, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v4, 0x3

    .line 21
    new-array v4, v4, [I

    .line 22
    .line 23
    iget v5, p0, Lcom/transsion/shorttv_pugc/base/widget/ShortTvGradientTextView;->b:I

    .line 24
    .line 25
    aput v5, v4, v2

    .line 26
    .line 27
    aput v0, v4, v1

    .line 28
    .line 29
    iget v0, p0, Lcom/transsion/shorttv_pugc/base/widget/ShortTvGradientTextView;->d:I

    .line 30
    .line 31
    aput v0, v4, v3

    .line 32
    .line 33
    move-object v10, v4

    .line 34
    :goto_0
    new-instance v0, Landroid/graphics/LinearGradient;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    int-to-float v8, v1

    .line 41
    const/4 v11, 0x0

    .line 42
    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    const/4 v7, 0x0

    .line 46
    const/4 v9, 0x0

    .line 47
    move-object v5, v0

    .line 48
    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 59
    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatTextView;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/base/widget/ShortTvGradientTextView;->c()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final setGradientColors(III)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/shorttv_pugc/base/widget/ShortTvGradientTextView;->b:I

    .line 2
    .line 3
    iput p2, p0, Lcom/transsion/shorttv_pugc/base/widget/ShortTvGradientTextView;->c:I

    .line 4
    .line 5
    iput p3, p0, Lcom/transsion/shorttv_pugc/base/widget/ShortTvGradientTextView;->d:I

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/base/widget/ShortTvGradientTextView;->c()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
