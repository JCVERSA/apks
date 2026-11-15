.class final Lcom/yandex/mobile/ads/impl/d40$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/d40;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 2
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 3
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 4
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    move-object v0, p0

    move v1, p1

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/d40$a;-><init>(IIIII)V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/yandex/mobile/ads/impl/d40$a;->a:I

    .line 8
    iput p2, p0, Lcom/yandex/mobile/ads/impl/d40$a;->b:I

    .line 9
    iput p3, p0, Lcom/yandex/mobile/ads/impl/d40$a;->c:I

    .line 10
    iput p4, p0, Lcom/yandex/mobile/ads/impl/d40$a;->d:I

    .line 11
    iput p5, p0, Lcom/yandex/mobile/ads/impl/d40$a;->e:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/d40$a;->b:I

    return p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/d40$a;->e:I

    return p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/d40$a;->d:I

    return p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/d40$a;->c:I

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/d40$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/d40$a;

    iget v1, p0, Lcom/yandex/mobile/ads/impl/d40$a;->a:I

    iget v3, p1, Lcom/yandex/mobile/ads/impl/d40$a;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/yandex/mobile/ads/impl/d40$a;->b:I

    iget v3, p1, Lcom/yandex/mobile/ads/impl/d40$a;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/yandex/mobile/ads/impl/d40$a;->c:I

    iget v3, p1, Lcom/yandex/mobile/ads/impl/d40$a;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/yandex/mobile/ads/impl/d40$a;->d:I

    iget v3, p1, Lcom/yandex/mobile/ads/impl/d40$a;->d:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget p0, p0, Lcom/yandex/mobile/ads/impl/d40$a;->e:I

    iget p1, p1, Lcom/yandex/mobile/ads/impl/d40$a;->e:I

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/yandex/mobile/ads/impl/d40$a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/yandex/mobile/ads/impl/d40$a;->b:I

    invoke-static {v2, v0, v1}, Lcom/yandex/mobile/ads/impl/dy1;->a(III)I

    move-result v0

    iget v2, p0, Lcom/yandex/mobile/ads/impl/d40$a;->c:I

    invoke-static {v2, v0, v1}, Lcom/yandex/mobile/ads/impl/dy1;->a(III)I

    move-result v0

    iget v2, p0, Lcom/yandex/mobile/ads/impl/d40$a;->d:I

    invoke-static {v2, v0, v1}, Lcom/yandex/mobile/ads/impl/dy1;->a(III)I

    move-result v0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/d40$a;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/yandex/mobile/ads/impl/d40$a;->a:I

    iget v1, p0, Lcom/yandex/mobile/ads/impl/d40$a;->b:I

    iget v2, p0, Lcom/yandex/mobile/ads/impl/d40$a;->c:I

    iget v3, p0, Lcom/yandex/mobile/ads/impl/d40$a;->d:I

    iget p0, p0, Lcom/yandex/mobile/ads/impl/d40$a;->e:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BitmapPixel(color="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", alpha="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", red="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", green="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", blue="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
