.class public final Lcom/yandex/mobile/ads/impl/n22;
.super Lcom/yandex/mobile/ads/impl/kn1;
.source "SourceFile"


# static fields
.field public static final e:Lcom/yandex/mobile/ads/impl/km$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/km$a<",
            "Lcom/yandex/mobile/ads/impl/n22;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:I
    .annotation build Landroidx/annotation/IntRange;
        from = 0x1L
    .end annotation
.end field

.field private final d:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwnd;

    invoke-direct {v0}, Lwnd;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/n22;->e:Lcom/yandex/mobile/ads/impl/km$a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/kn1;-><init>()V

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    const-string v1, "maxStars must be a positive integer"

    invoke-static {v1, v0}, Lcom/yandex/mobile/ads/impl/hg;->a(Ljava/lang/String;Z)V

    .line 3
    iput p1, p0, Lcom/yandex/mobile/ads/impl/n22;->c:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 4
    iput p1, p0, Lcom/yandex/mobile/ads/impl/n22;->d:F

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    .line 5
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/kn1;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 6
    :goto_0
    const-string v3, "maxStars must be a positive integer"

    invoke-static {v3, v2}, Lcom/yandex/mobile/ads/impl/hg;->a(Ljava/lang/String;Z)V

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_1

    int-to-float v2, p1

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_1

    move v0, v1

    .line 7
    :cond_1
    const-string v1, "starRating is out of range [0, maxStars]"

    invoke-static {v1, v0}, Lcom/yandex/mobile/ads/impl/hg;->a(Ljava/lang/String;Z)V

    .line 8
    iput p1, p0, Lcom/yandex/mobile/ads/impl/n22;->c:I

    .line 9
    iput p2, p0, Lcom/yandex/mobile/ads/impl/n22;->d:F

    return-void
.end method

.method private static b(Landroid/os/Bundle;)Lcom/yandex/mobile/ads/impl/n22;
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {p0, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v2, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p0

    cmpl-float v1, p0, v2

    if-nez v1, :cond_0

    new-instance p0, Lcom/yandex/mobile/ads/impl/n22;

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/n22;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/yandex/mobile/ads/impl/n22;

    invoke-direct {v1, v0, p0}, Lcom/yandex/mobile/ads/impl/n22;-><init>(IF)V

    move-object p0, v1

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static synthetic d(Landroid/os/Bundle;)Lcom/yandex/mobile/ads/impl/n22;
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/n22;->b(Landroid/os/Bundle;)Lcom/yandex/mobile/ads/impl/n22;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/yandex/mobile/ads/impl/n22;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/yandex/mobile/ads/impl/n22;

    iget v0, p0, Lcom/yandex/mobile/ads/impl/n22;->c:I

    iget v2, p1, Lcom/yandex/mobile/ads/impl/n22;->c:I

    if-ne v0, v2, :cond_1

    iget p0, p0, Lcom/yandex/mobile/ads/impl/n22;->d:F

    iget p1, p1, Lcom/yandex/mobile/ads/impl/n22;->d:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/yandex/mobile/ads/impl/n22;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/n22;->d:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
