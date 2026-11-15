.class public Lcom/yandex/div/internal/widget/SuperLineHeightTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"

# interfaces
.implements Ldx3;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0011\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u0002B\'\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001f\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR*\u0010 \u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001c8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u0015\u0010%\u001a\u00020\u00078\u00c2\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010\u0016R+\u0010,\u001a\u00020\u00072\u0006\u0010&\u001a\u00020\u00078V@VX\u0096\u008e\u0002\u00a2\u0006\u0012\u001a\u0004\u0008\'\u0010\u0016\"\u0004\u0008(\u0010)*\u0004\u0008*\u0010+\u00a8\u0006-"
    }
    d2 = {
        "Lcom/yandex/div/internal/widget/SuperLineHeightTextView;",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "Ldx3;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyle",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "unit",
        "",
        "size",
        "Lzfb;",
        "setTextSize",
        "(IF)V",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "(II)V",
        "getCompoundPaddingTop",
        "()I",
        "getCompoundPaddingBottom",
        "Lcx3;",
        "c",
        "Lcx3;",
        "fixedLineHeightHelper",
        "",
        "value",
        "d",
        "Z",
        "isTightenWidth",
        "()Z",
        "setTightenWidth",
        "(Z)V",
        "getVisibleLineCount",
        "visibleLineCount",
        "<set-?>",
        "getFixedLineHeight",
        "setFixedLineHeight",
        "(I)V",
        "getFixedLineHeight$delegate",
        "(Lcom/yandex/div/internal/widget/SuperLineHeightTextView;)Ljava/lang/Object;",
        "fixedLineHeight",
        "div_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final c:Lcx3;

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/internal/widget/SuperLineHeightTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/internal/widget/SuperLineHeightTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p1, Lcx3;

    invoke-direct {p1, p0}, Lcx3;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lcom/yandex/div/internal/widget/SuperLineHeightTextView;->c:Lcx3;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/div/internal/widget/SuperLineHeightTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getVisibleLineCount()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getCompoundPaddingBottom()I
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/SuperLineHeightTextView;->c:Lcx3;

    invoke-virtual {p0}, Lcx3;->e()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getCompoundPaddingTop()I
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/SuperLineHeightTextView;->c:Lcx3;

    invoke-virtual {p0}, Lcx3;->f()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getFixedLineHeight()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/SuperLineHeightTextView;->c:Lcx3;

    invoke-virtual {p0}, Lcx3;->g()I

    move-result p0

    return p0
.end method

.method public final isTightenWidth()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/div/internal/widget/SuperLineHeightTextView;->d:Z

    return p0
.end method

.method public onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    iget-object p1, p0, Lcom/yandex/div/internal/widget/SuperLineHeightTextView;->c:Lcx3;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1}, Lcx3;->g()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    invoke-static {p2}, Lodc;->e(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p1}, Lcx3;->c(Lcx3;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    invoke-static {p1}, Lcx3;->b(Lcx3;)I

    move-result v1

    invoke-static {p1}, Lcx3;->a(Lcx3;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-static {p1}, Lcx3;->c(Lcx3;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2, v0}, Lpha;->f(Landroid/widget/TextView;I)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {p1}, Lcx3;->c(Lcx3;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p1}, Lcx3;->c(Lcx3;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p1}, Lcx3;->c(Lcx3;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    move-result p1

    invoke-static {v0, p1}, Lwn8;->d(II)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1}, Lodc;->g(I)I

    move-result p1

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lodc;->h(I)I

    move-result p1

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result p2

    invoke-super {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p2, p1, Lcom/yandex/div/internal/widget/DivLayoutParams;

    if-eqz p2, :cond_4

    check-cast p1, Lcom/yandex/div/internal/widget/DivLayoutParams;

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    if-nez p1, :cond_5

    return-void

    :cond_5
    iget-boolean p2, p0, Lcom/yandex/div/internal/widget/SuperLineHeightTextView;->d:Z

    if-eqz p2, :cond_8

    iget p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v0, -0x3

    if-ne p2, v0, :cond_8

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/DivLayoutParams;->f()I

    move-result p1

    const p2, 0x7fffffff

    if-ne p1, p2, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_4
    if-ge v3, p1, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    add-int/2addr p1, v0

    int-to-float p1, p1

    add-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-float p1, p1

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    if-ge p1, p2, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result p2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_8
    :goto_5
    return-void
.end method

.method public setFixedLineHeight(I)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/SuperLineHeightTextView;->c:Lcx3;

    invoke-virtual {p0, p1}, Lcx3;->k(I)V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    iget-object p0, p0, Lcom/yandex/div/internal/widget/SuperLineHeightTextView;->c:Lcx3;

    invoke-virtual {p0}, Lcx3;->h()V

    return-void
.end method

.method public final setTightenWidth(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/yandex/div/internal/widget/SuperLineHeightTextView;->d:Z

    iput-boolean p1, p0, Lcom/yandex/div/internal/widget/SuperLineHeightTextView;->d:Z

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method
