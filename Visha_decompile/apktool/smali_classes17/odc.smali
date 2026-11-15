.class public abstract Lodc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/Object;Le74;)Lgo8;
    .locals 1

    new-instance v0, Lpf;

    invoke-direct {v0, p0, p1}, Lpf;-><init>(Ljava/lang/Object;Le74;)V

    return-object v0
.end method

.method public static synthetic b(Ljava/lang/Object;Le74;ILjava/lang/Object;)Lgo8;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lodc;->a(Ljava/lang/Object;Le74;)Lgo8;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ljava/lang/Object;Le74;)Lgo8;
    .locals 1

    new-instance v0, Ldc2;

    invoke-direct {v0, p0, p1}, Ldc2;-><init>(Ljava/lang/Object;Le74;)V

    return-object v0
.end method

.method public static synthetic d(Ljava/lang/Object;Le74;ILjava/lang/Object;)Lgo8;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lodc;->c(Ljava/lang/Object;Le74;)Lgo8;

    move-result-object p0

    return-object p0
.end method

.method public static final e(I)Z
    .locals 1

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final f(I)Z
    .locals 0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final g(I)I
    .locals 1

    const/high16 v0, -0x80000000

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method public static final h(I)I
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method public static final i()I
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method
