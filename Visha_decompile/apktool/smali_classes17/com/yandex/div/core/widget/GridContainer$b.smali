.class public final Lcom/yandex/div/core/widget/GridContainer$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/widget/GridContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:F


# direct methods
.method public constructor <init>(IIIIIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/yandex/div/core/widget/GridContainer$b;->a:I

    iput p2, p0, Lcom/yandex/div/core/widget/GridContainer$b;->b:I

    iput p3, p0, Lcom/yandex/div/core/widget/GridContainer$b;->c:I

    iput p4, p0, Lcom/yandex/div/core/widget/GridContainer$b;->d:I

    iput p5, p0, Lcom/yandex/div/core/widget/GridContainer$b;->e:I

    iput p6, p0, Lcom/yandex/div/core/widget/GridContainer$b;->f:F

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lcom/yandex/div/core/widget/GridContainer$b;->b:I

    return p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lcom/yandex/div/core/widget/GridContainer$b;->a:I

    return p0
.end method

.method public final c()I
    .locals 2

    iget v0, p0, Lcom/yandex/div/core/widget/GridContainer$b;->b:I

    iget v1, p0, Lcom/yandex/div/core/widget/GridContainer$b;->c:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/yandex/div/core/widget/GridContainer$b;->d:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lcom/yandex/div/core/widget/GridContainer$b;->e:I

    return p0
.end method

.method public final e()I
    .locals 1

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/GridContainer$b;->c()I

    move-result v0

    iget p0, p0, Lcom/yandex/div/core/widget/GridContainer$b;->e:I

    div-int/2addr v0, p0

    return v0
.end method

.method public final f()F
    .locals 0

    iget p0, p0, Lcom/yandex/div/core/widget/GridContainer$b;->f:F

    return p0
.end method
