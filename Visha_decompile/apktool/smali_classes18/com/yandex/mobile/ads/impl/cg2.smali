.class public final Lcom/yandex/mobile/ads/impl/cg2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/km;


# static fields
.field public static final synthetic f:I


# instance fields
.field public final b:I
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation
.end field

.field public final c:I
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation
.end field

.field public final d:I
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
        to = 0x167L
    .end annotation
.end field

.field public final e:F
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        fromInclusive = false
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr8d;

    invoke-direct {v0}, Lr8d;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x167L
        .end annotation
    .end param
    .param p4    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/yandex/mobile/ads/impl/cg2;->b:I

    iput p2, p0, Lcom/yandex/mobile/ads/impl/cg2;->c:I

    iput p3, p0, Lcom/yandex/mobile/ads/impl/cg2;->d:I

    iput p4, p0, Lcom/yandex/mobile/ads/impl/cg2;->e:F

    return-void
.end method

.method private static a(Landroid/os/Bundle;)Lcom/yandex/mobile/ads/impl/cg2;
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v4, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x3

    invoke-static {v4, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p0

    new-instance v1, Lcom/yandex/mobile/ads/impl/cg2;

    invoke-direct {v1, v2, v3, v0, p0}, Lcom/yandex/mobile/ads/impl/cg2;-><init>(IIIF)V

    return-object v1
.end method

.method public static synthetic b(Landroid/os/Bundle;)Lcom/yandex/mobile/ads/impl/cg2;
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/cg2;->a(Landroid/os/Bundle;)Lcom/yandex/mobile/ads/impl/cg2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/cg2;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/yandex/mobile/ads/impl/cg2;

    iget v1, p0, Lcom/yandex/mobile/ads/impl/cg2;->b:I

    iget v3, p1, Lcom/yandex/mobile/ads/impl/cg2;->b:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/yandex/mobile/ads/impl/cg2;->c:I

    iget v3, p1, Lcom/yandex/mobile/ads/impl/cg2;->c:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/yandex/mobile/ads/impl/cg2;->d:I

    iget v3, p1, Lcom/yandex/mobile/ads/impl/cg2;->d:I

    if-ne v1, v3, :cond_1

    iget p0, p0, Lcom/yandex/mobile/ads/impl/cg2;->e:F

    iget p1, p1, Lcom/yandex/mobile/ads/impl/cg2;->e:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/yandex/mobile/ads/impl/cg2;->b:I

    add-int/lit16 v0, v0, 0xd9

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/yandex/mobile/ads/impl/cg2;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/yandex/mobile/ads/impl/cg2;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/yandex/mobile/ads/impl/cg2;->e:F

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
