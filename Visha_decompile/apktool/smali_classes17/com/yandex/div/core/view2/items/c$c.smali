.class public final Lcom/yandex/div/core/view2/items/c$c;
.super Lcom/yandex/div/core/view2/items/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/view2/items/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(IIIILandroid/util/DisplayMetrics;)V
    .locals 1

    const-string v0, "metrics"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/yandex/div/core/view2/items/c;-><init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/yandex/div/core/view2/items/c$c;->c:I

    iput p2, p0, Lcom/yandex/div/core/view2/items/c$c;->d:I

    iput p3, p0, Lcom/yandex/div/core/view2/items/c$c;->e:I

    iput p4, p0, Lcom/yandex/div/core/view2/items/c$c;->f:I

    iput-object p5, p0, Lcom/yandex/div/core/view2/items/c$c;->g:Landroid/util/DisplayMetrics;

    return-void
.end method


# virtual methods
.method public b(I)I
    .locals 1

    invoke-static {p0}, Lcom/yandex/div/core/view2/items/c;->a(Lcom/yandex/div/core/view2/items/c;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/yandex/div/core/view2/items/c$c;->c:I

    add-int/2addr v0, p1

    iget p0, p0, Lcom/yandex/div/core/view2/items/c$c;->d:I

    rem-int p0, v0, p0

    :goto_0
    return p0
.end method

.method public c(I)I
    .locals 2

    iget v0, p0, Lcom/yandex/div/core/view2/items/c$c;->f:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, Lcom/yandex/div/core/view2/items/c$c;->g:Landroid/util/DisplayMetrics;

    invoke-static {p1, v1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->L(Ljava/lang/Number;Landroid/util/DisplayMetrics;)I

    move-result p1

    add-int/2addr v0, p1

    iget p0, p0, Lcom/yandex/div/core/view2/items/c$c;->e:I

    rem-int/2addr v0, p0

    if-gez v0, :cond_0

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public d(I)I
    .locals 2

    invoke-static {p0}, Lcom/yandex/div/core/view2/items/c;->a(Lcom/yandex/div/core/view2/items/c;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/yandex/div/core/view2/items/c$c;->c:I

    sub-int/2addr v0, p1

    iget p0, p0, Lcom/yandex/div/core/view2/items/c$c;->d:I

    rem-int/2addr v0, p0

    xor-int p1, v0, p0

    neg-int v1, v0

    or-int/2addr v1, v0

    and-int/2addr p1, v1

    shr-int/lit8 p1, p1, 0x1f

    and-int/2addr p0, p1

    add-int/2addr p0, v0

    :goto_0
    return p0
.end method
