.class public final Lcom/yandex/div/core/view2/items/c$a;
.super Lcom/yandex/div/core/view2/items/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/view2/items/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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

    iput p1, p0, Lcom/yandex/div/core/view2/items/c$a;->c:I

    iput p2, p0, Lcom/yandex/div/core/view2/items/c$a;->d:I

    iput p3, p0, Lcom/yandex/div/core/view2/items/c$a;->e:I

    iput p4, p0, Lcom/yandex/div/core/view2/items/c$a;->f:I

    iput-object p5, p0, Lcom/yandex/div/core/view2/items/c$a;->g:Landroid/util/DisplayMetrics;

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
    iget v0, p0, Lcom/yandex/div/core/view2/items/c$a;->c:I

    add-int/2addr v0, p1

    iget p0, p0, Lcom/yandex/div/core/view2/items/c$a;->d:I

    add-int/lit8 p0, p0, -0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_0
    return p0
.end method

.method public c(I)I
    .locals 2

    iget v0, p0, Lcom/yandex/div/core/view2/items/c$a;->f:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, Lcom/yandex/div/core/view2/items/c$a;->g:Landroid/util/DisplayMetrics;

    invoke-static {p1, v1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->L(Ljava/lang/Number;Landroid/util/DisplayMetrics;)I

    move-result p1

    add-int/2addr v0, p1

    const/4 p1, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p0, p0, Lcom/yandex/div/core/view2/items/c$a;->e:I

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public d(I)I
    .locals 1

    invoke-static {p0}, Lcom/yandex/div/core/view2/items/c;->a(Lcom/yandex/div/core/view2/items/c;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/yandex/div/core/view2/items/c$a;->c:I

    sub-int/2addr p0, p1

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_0
    return p0
.end method
