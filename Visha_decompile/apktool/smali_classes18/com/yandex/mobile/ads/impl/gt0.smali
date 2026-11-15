.class public final Lcom/yandex/mobile/ads/impl/gt0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/gt0;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x20

    .line 3
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/gt0;->b:[J

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 7
    iget p0, p0, Lcom/yandex/mobile/ads/impl/gt0;->a:I

    return p0
.end method

.method public final a(I)J
    .locals 3

    if-ltz p1, :cond_0

    .line 4
    iget v0, p0, Lcom/yandex/mobile/ads/impl/gt0;->a:I

    if-ge p1, v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gt0;->b:[J

    aget-wide p0, p0, p1

    return-wide p0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yandex/mobile/ads/impl/gt0;->a:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(J)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/yandex/mobile/ads/impl/gt0;->a:I

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/gt0;->b:[J

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v0, v0, 0x2

    .line 2
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/gt0;->b:[J

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gt0;->b:[J

    iget v1, p0, Lcom/yandex/mobile/ads/impl/gt0;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/yandex/mobile/ads/impl/gt0;->a:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public final b()[J
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gt0;->b:[J

    iget p0, p0, Lcom/yandex/mobile/ads/impl/gt0;->a:I

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p0

    return-object p0
.end method
