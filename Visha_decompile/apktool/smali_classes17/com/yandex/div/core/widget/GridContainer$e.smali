.class public final Lcom/yandex/div/core/widget/GridContainer$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/widget/GridContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/yandex/div/core/widget/GridContainer$e;->a:I

    .line 3
    iput p2, p0, Lcom/yandex/div/core/widget/GridContainer$e;->b:I

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const p2, 0x8000

    .line 4
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/yandex/div/core/widget/GridContainer$e;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lcom/yandex/div/core/widget/GridContainer$e;->b:I

    return p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lcom/yandex/div/core/widget/GridContainer$e;->a:I

    return p0
.end method

.method public final c(I)V
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/yandex/div/core/widget/GridContainer$e;->a:I

    iput p1, p0, Lcom/yandex/div/core/widget/GridContainer$e;->b:I

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/yandex/div/core/widget/GridContainer$e;->a:I

    const p1, 0x8000

    iput p1, p0, Lcom/yandex/div/core/widget/GridContainer$e;->b:I

    goto :goto_0

    :cond_2
    iput v2, p0, Lcom/yandex/div/core/widget/GridContainer$e;->a:I

    iput p1, p0, Lcom/yandex/div/core/widget/GridContainer$e;->b:I

    :goto_0
    return-void
.end method
