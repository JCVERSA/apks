.class public final Ldl5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/LineHeightSpan;


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public f:Z

.field public g:I

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ldl5;->b:I

    iput p2, p0, Ldl5;->c:I

    iput p3, p0, Ldl5;->d:I

    iput p4, p0, Ldl5;->e:I

    const p1, 0x7fffffff

    iput p1, p0, Ldl5;->g:I

    iput p1, p0, Ldl5;->h:I

    iput p1, p0, Ldl5;->i:I

    iput p1, p0, Ldl5;->j:I

    return-void
.end method


# virtual methods
.method public final a(ILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 5

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget p0, p2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v0, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v1, p0, v0

    iget v2, p2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v2, v0

    iget v3, p2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v3, p0

    if-ltz v1, :cond_2

    sub-int v1, p1, v1

    const/4 v4, 0x0

    if-gez v1, :cond_1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-static {v0, v4}, Lwn8;->g(II)I

    move-result p0

    iput p0, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr p0, p1

    invoke-static {p0, v4}, Lwn8;->d(II)I

    move-result p0

    iput p0, p2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    goto :goto_0

    :cond_1
    div-int/lit8 v1, v1, 0x2

    add-int/2addr p0, v1

    invoke-static {p0, v4}, Lwn8;->d(II)I

    move-result p0

    iput p0, p2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr p0, p1

    invoke-static {p0, v4}, Lwn8;->g(II)I

    move-result p0

    iput p0, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    :goto_0
    iget p0, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr p0, v2

    iput p0, p2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget p0, p2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr p0, v3

    iput p0, p2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :cond_2
    return-void
.end method

.method public final b(Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 1

    iget p0, p0, Ldl5;->b:I

    if-gtz p0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    return-void
.end method

.method public final c(Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 1

    iget v0, p0, Ldl5;->g:I

    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v0, p0, Ldl5;->h:I

    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v0, p0, Ldl5;->i:I

    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget p0, p0, Ldl5;->j:I

    iput p0, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    return-void
.end method

.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 6

    const-string p4, "fm"

    invoke-static {p6, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p4, p1, Landroid/text/Spanned;

    const/4 p5, 0x0

    if-eqz p4, :cond_0

    move-object p4, p1

    check-cast p4, Landroid/text/Spanned;

    goto :goto_0

    :cond_0
    move-object p4, p5

    :goto_0
    if-nez p4, :cond_1

    return-void

    :cond_1
    invoke-interface {p4, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p4, p0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    if-gt p2, v1, :cond_6

    if-le v0, p3, :cond_2

    goto :goto_3

    :cond_2
    iget-boolean v1, p0, Ldl5;->f:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0, p6}, Ldl5;->c(Landroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Ldl5;->f:Z

    invoke-virtual {p0, p6}, Ldl5;->d(Landroid/graphics/Paint$FontMetricsInt;)V

    :goto_1
    const-class v1, Ldl5;

    invoke-interface {p4, p2, p3, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    iget v1, p0, Ldl5;->c:I

    array-length v2, p4

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_4

    aget-object v5, p4, v4

    check-cast v5, Ldl5;

    iget v5, v5, Ldl5;->c:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v1, p6}, Ldl5;->a(ILandroid/graphics/Paint$FontMetricsInt;)V

    iget p4, p0, Ldl5;->d:I

    if-ne p4, v0, :cond_5

    if-gt p2, p4, :cond_5

    if-gt p4, p3, :cond_5

    invoke-virtual {p0, p6}, Ldl5;->b(Landroid/graphics/Paint$FontMetricsInt;)V

    :cond_5
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\n"

    const/4 p3, 0x2

    invoke-static {p1, p2, v3, p3, p5}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iput-boolean v3, p0, Ldl5;->f:Z

    :cond_6
    :goto_3
    return-void
.end method

.method public final d(Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 1

    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput v0, p0, Ldl5;->g:I

    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v0, p0, Ldl5;->h:I

    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput v0, p0, Ldl5;->i:I

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput p1, p0, Ldl5;->j:I

    return-void
.end method
