.class public final Lcom/yandex/mobile/ads/impl/rv;
.super Lcom/yandex/mobile/ads/impl/jk;
.source "SourceFile"


# instance fields
.field private e:Lcom/yandex/mobile/ads/impl/xv;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/jk;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/xv;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/jk;->b(Lcom/yandex/mobile/ads/impl/xv;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/rv;->e:Lcom/yandex/mobile/ads/impl/xv;

    iget-object v0, p1, Lcom/yandex/mobile/ads/impl/xv;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported scheme: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/yandex/mobile/ads/impl/hg;->a(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/yandex/mobile/ads/impl/f92;->a:I

    const/4 v2, -0x1

    const-string v3, ","

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_4

    const/4 v0, 0x1

    aget-object v0, v1, v0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v3, ";base64"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/rv;->f:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Error while parsing Base64 encoded string: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/IllegalArgumentException;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object p0

    throw p0

    :cond_0
    sget-object v1, Lcom/yandex/mobile/ads/impl/lo;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/f92;->c(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/rv;->f:[B

    :goto_0
    iget-wide v0, p1, Lcom/yandex/mobile/ads/impl/xv;->f:J

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/rv;->f:[B

    array-length v3, v2

    int-to-long v5, v3

    cmp-long v3, v0, v5

    if-gtz v3, :cond_3

    long-to-int v0, v0

    iput v0, p0, Lcom/yandex/mobile/ads/impl/rv;->g:I

    array-length v1, v2

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/yandex/mobile/ads/impl/rv;->h:I

    iget-wide v2, p1, Lcom/yandex/mobile/ads/impl/xv;->g:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    int-to-long v0, v1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/yandex/mobile/ads/impl/rv;->h:I

    :cond_1
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/jk;->c(Lcom/yandex/mobile/ads/impl/xv;)V

    iget-wide v0, p1, Lcom/yandex/mobile/ads/impl/xv;->g:J

    cmp-long p1, v0, v4

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget p0, p0, Lcom/yandex/mobile/ads/impl/rv;->h:I

    int-to-long v0, p0

    :goto_1
    return-wide v0

    :cond_3
    iput-object v4, p0, Lcom/yandex/mobile/ads/impl/rv;->f:[B

    new-instance p0, Lcom/yandex/mobile/ads/impl/uv;

    const/16 p1, 0x7d8

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/uv;-><init>(I)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unexpected URI format: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/IllegalArgumentException;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object p0

    throw p0
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rv;->f:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/rv;->f:[B

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/jk;->e()V

    :cond_0
    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/rv;->e:Lcom/yandex/mobile/ads/impl/xv;

    return-void
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rv;->e:Lcom/yandex/mobile/ads/impl/xv;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xv;->a:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final read([BII)I
    .locals 2

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Lcom/yandex/mobile/ads/impl/rv;->h:I

    if-nez v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rv;->f:[B

    sget v1, Lcom/yandex/mobile/ads/impl/f92;->a:I

    iget v1, p0, Lcom/yandex/mobile/ads/impl/rv;->g:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/yandex/mobile/ads/impl/rv;->g:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/yandex/mobile/ads/impl/rv;->g:I

    iget p1, p0, Lcom/yandex/mobile/ads/impl/rv;->h:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/yandex/mobile/ads/impl/rv;->h:I

    invoke-virtual {p0, p3}, Lcom/yandex/mobile/ads/impl/jk;->c(I)V

    return p3
.end method
