.class public Lcom/transsion/widgetslib/view/OSAutoTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/OSAutoTextView$a;
    }
.end annotation


# static fields
.field public static final i:[F


# instance fields
.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:F

.field public h:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/transsion/widgetslib/view/OSAutoTextView;->i:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
        0x3f933333    # 1.15f
        0x3fa66666    # 1.3f
        0x3fb9999a    # 1.45f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0xe

    .line 2
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->c:I

    const/16 p1, 0xc

    .line 3
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->d:I

    const/4 p1, 0x2

    .line 4
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->e:I

    const/16 p1, 0x8

    .line 5
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->f:I

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->g:F

    .line 7
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->h:F

    .line 8
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSAutoTextView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0xe

    .line 10
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->c:I

    const/16 p1, 0xc

    .line 11
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->d:I

    const/4 p1, 0x2

    .line 12
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->e:I

    const/16 p1, 0x8

    .line 13
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->f:I

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->g:F

    .line 15
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->h:F

    .line 16
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSAutoTextView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0xe

    .line 18
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->c:I

    const/16 p1, 0xc

    .line 19
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->d:I

    const/4 p1, 0x2

    .line 20
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->e:I

    const/16 p1, 0x8

    .line 21
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->f:I

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->g:F

    .line 23
    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->h:F

    .line 24
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/OSAutoTextView;->b()V

    return-void
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    iget v0, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->c:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/OSAutoTextView;->setTextSize(F)V

    iget v0, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->g:F

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    return-void
.end method

.method public static c(FF)[F
    .locals 7

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    const/4 v1, 0x0

    if-lez v0, :cond_7

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v0

    if-gtz v2, :cond_0

    goto :goto_4

    :cond_0
    move v2, v1

    move v3, v2

    :goto_0
    sget-object v4, Lcom/transsion/widgetslib/view/OSAutoTextView;->i:[F

    array-length v5, v4

    const v6, 0x3a83126f    # 0.001f

    if-ge v2, v5, :cond_1

    aget v4, v4, v2

    sub-float v5, p1, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    add-int/lit8 v3, v2, 0x1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_4

    sget-object v4, Lcom/transsion/widgetslib/view/OSAutoTextView;->i:[F

    aget v4, v4, v2

    add-float/2addr v4, v6

    cmpl-float v4, v4, v0

    if-ltz v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v3, -0x1

    if-ne v2, v4, :cond_3

    new-array p0, v1, [F

    return-object p0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v2, v1

    :goto_2
    sub-int v0, v3, v2

    if-gtz v0, :cond_5

    new-array p0, v1, [F

    return-object p0

    :cond_5
    new-array v2, v0, [F

    :goto_3
    if-ge v1, v0, :cond_6

    sget-object v4, Lcom/transsion/widgetslib/view/OSAutoTextView;->i:[F

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v1

    aget v4, v4, v5

    mul-float/2addr v4, p0

    div-float/2addr v4, p1

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    return-object v2

    :cond_7
    :goto_4
    new-array p0, v1, [F

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 9

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->e:I

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->c:I

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->g:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/widgetslib/view/OSAutoTextView;->isTextFullyVisible(Ljava/lang/CharSequence;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->g:F

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    iget v0, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->c:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/OSAutoTextView;->setTextSize(F)V

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->c:I

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->h:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/widgetslib/view/OSAutoTextView;->isTextFullyVisible(Ljava/lang/CharSequence;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->h:F

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    iget v0, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->c:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/view/OSAutoTextView;->setTextSize(F)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    iget v1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->d:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_4

    iget v2, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->c:I

    int-to-float v2, v2

    invoke-static {v2, v0}, Lcom/transsion/widgetslib/view/OSAutoTextView;->c(FF)[F

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    aget v6, v2, v5

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    iget v8, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->g:F

    invoke-virtual {p0, v7, v6, v8}, Lcom/transsion/widgetslib/view/OSAutoTextView;->isTextFullyVisible(Ljava/lang/CharSequence;FF)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v4, 0x1

    move v1, v6

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-nez v4, :cond_4

    iget v1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->d:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appliedSize= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OSAutoTextView"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->g:F

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/view/OSAutoTextView;->setTextSize(F)V

    :cond_5
    :goto_2
    iget v0, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->e:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method public getMaxLetterSpacing()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->g:F

    return p0
.end method

.method public getMaxTextLine()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->e:I

    return p0
.end method

.method public getMaxTextSizeSp()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->c:I

    return p0
.end method

.method public getMinLetterSpacing()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->h:F

    return p0
.end method

.method public getMinTextSizeSp()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->d:I

    return p0
.end method

.method public getPaddingCorrection()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->f:I

    return p0
.end method

.method public isTextFullyVisible(Ljava/lang/CharSequence;FF)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->e:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslib/view/OSAutoTextView;->isTextFullyVisible(Ljava/lang/CharSequence;FFI)Z

    move-result p0

    return p0
.end method

.method public isTextFullyVisible(Ljava/lang/CharSequence;FFI)Z
    .locals 6

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/widgetslib/view/OSAutoTextView;->isTextFullyVisible(Ljava/lang/CharSequence;FFII)Z

    move-result p0

    return p0
.end method

.method public isTextFullyVisible(Ljava/lang/CharSequence;FFII)Z
    .locals 7

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    sub-int v6, p5, v0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Lq47;->d(Landroid/content/Context;Ljava/lang/CharSequence;FFII)Z

    move-result p0

    return p0
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSAutoTextView;->a()V

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSAutoTextView;->a()V

    return-void
.end method

.method public registerOnMeasureListener(Lcom/transsion/widgetslib/view/OSAutoTextView$a;)V
    .locals 0

    return-void
.end method

.method public setMaxLetterSpacing(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->g:F

    return-void
.end method

.method public setMaxTextLine(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->e:I

    return-void
.end method

.method public setMaxTextSizeSp(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->c:I

    return-void
.end method

.method public setMinLetterSpacing(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->h:F

    return-void
.end method

.method public setMinTextSizeSp(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->d:I

    return-void
.end method

.method public setPaddingCorrection(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/OSAutoTextView;->f:I

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lolb;->q0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr p1, v0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    :goto_0
    return-void
.end method

.method public unregisterOnMeasureListener()V
    .locals 0

    return-void
.end method
