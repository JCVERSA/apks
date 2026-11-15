.class Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$WebpFrameCacheKey;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebpFrameCacheKey"
.end annotation


# instance fields
.field private final frameIndex:I

.field private final sourceKey:Lcom/bumptech/glide/load/Key;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/Key;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$WebpFrameCacheKey;->sourceKey:Lcom/bumptech/glide/load/Key;

    .line 5
    .line 6
    iput p2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$WebpFrameCacheKey;->frameIndex:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$WebpFrameCacheKey;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$WebpFrameCacheKey;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$WebpFrameCacheKey;->sourceKey:Lcom/bumptech/glide/load/Key;

    .line 9
    .line 10
    iget-object v2, p1, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$WebpFrameCacheKey;->sourceKey:Lcom/bumptech/glide/load/Key;

    .line 11
    .line 12
    invoke-interface {v0, v2}, Lcom/bumptech/glide/load/Key;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$WebpFrameCacheKey;->frameIndex:I

    .line 19
    .line 20
    iget p1, p1, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$WebpFrameCacheKey;->frameIndex:I

    .line 21
    .line 22
    if-ne v0, p1, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$WebpFrameCacheKey;->sourceKey:Lcom/bumptech/glide/load/Key;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/bumptech/glide/load/Key;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$WebpFrameCacheKey;->frameIndex:I

    .line 10
    .line 11
    add-int/2addr v0, v1

    .line 12
    return v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 2
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$WebpFrameCacheKey;->frameIndex:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$WebpFrameCacheKey;->sourceKey:Lcom/bumptech/glide/load/Key;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/Key;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
