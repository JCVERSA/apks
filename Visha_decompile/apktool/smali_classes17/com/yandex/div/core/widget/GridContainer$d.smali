.class public final Lcom/yandex/div/core/widget/GridContainer$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/widget/GridContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic g(Lcom/yandex/div/core/widget/GridContainer$d;IIFILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/widget/GridContainer$d;->f(IIF)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lcom/yandex/div/core/widget/GridContainer$d;->b:I

    return p0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/yandex/div/core/widget/GridContainer$d;->c:I

    iget p0, p0, Lcom/yandex/div/core/widget/GridContainer$d;->b:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lcom/yandex/div/core/widget/GridContainer$d;->a:I

    return p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lcom/yandex/div/core/widget/GridContainer$d;->c:I

    return p0
.end method

.method public final e()F
    .locals 0

    iget p0, p0, Lcom/yandex/div/core/widget/GridContainer$d;->d:F

    return p0
.end method

.method public final f(IIF)V
    .locals 1

    iget v0, p0, Lcom/yandex/div/core/widget/GridContainer$d;->b:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/yandex/div/core/widget/GridContainer$d;->b:I

    iget p1, p0, Lcom/yandex/div/core/widget/GridContainer$d;->c:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/yandex/div/core/widget/GridContainer$d;->c:I

    iget p1, p0, Lcom/yandex/div/core/widget/GridContainer$d;->d:F

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/yandex/div/core/widget/GridContainer$d;->d:F

    return-void
.end method

.method public final h()Z
    .locals 1

    iget p0, p0, Lcom/yandex/div/core/widget/GridContainer$d;->d:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final i(I)V
    .locals 0

    iput p1, p0, Lcom/yandex/div/core/widget/GridContainer$d;->a:I

    return-void
.end method
