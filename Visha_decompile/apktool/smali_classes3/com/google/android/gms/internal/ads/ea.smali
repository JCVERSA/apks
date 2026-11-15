.class public final Lcom/google/android/gms/internal/ads/ea;
.super Lvri;
.source "SourceFile"


# instance fields
.field public final e:Ljava/io/InputStream;

.field public final f:[B

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I


# direct methods
.method public synthetic constructor <init>(Ljava/io/InputStream;ILuri;)V
    .locals 0

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lvri;-><init>(Luri;)V

    const p2, 0x7fffffff

    iput p2, p0, Lcom/google/android/gms/internal/ads/ea;->l:I

    sget-object p2, Lzsi;->a:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ea;->e:Ljava/io/InputStream;

    const/16 p1, 0x1000

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ea;->f:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/ea;->g:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/ea;->k:I

    return-void
.end method

.method private final D()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/ea;->g:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/ea;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/ea;->g:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/ea;->k:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/ea;->l:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/ea;->h:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/ea;->g:I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/ea;->h:I

    return-void
.end method


# virtual methods
.method public final A(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/ea;->l:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ea;->D()V

    return-void
.end method

.method public final B(I)V
    .locals 8

    iget v0, p0, Lcom/google/android/gms/internal/ads/ea;->g:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    return-void

    :cond_1
    :goto_0
    if-ltz p1, :cond_8

    iget v2, p0, Lcom/google/android/gms/internal/ads/ea;->k:I

    add-int v3, v2, v1

    iget v4, p0, Lcom/google/android/gms/internal/ads/ea;->l:I

    add-int v5, v3, p1

    if-gt v5, v4, :cond_7

    iput v3, p0, Lcom/google/android/gms/internal/ads/ea;->k:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/ads/ea;->g:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    :goto_1
    if-ge v0, p1, :cond_4

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ea;->e:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int v2, p1, v0

    int-to-long v2, v2

    :try_start_1
    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzgyk; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_3

    cmp-long v2, v4, v2

    if-gtz v2, :cond_3

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    long-to-int v1, v4

    add-int/2addr v0, v1

    goto :goto_1

    :cond_3
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ea;->e:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#skip returned invalid result: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nThe InputStream implementation is buggy."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgyk;->zza()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    iget v1, p0, Lcom/google/android/gms/internal/ads/ea;->k:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/ea;->k:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ea;->D()V

    throw p1

    :cond_4
    :goto_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/ea;->k:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/ea;->k:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ea;->D()V

    if-ge v0, p1, :cond_6

    iget v0, p0, Lcom/google/android/gms/internal/ads/ea;->g:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    sub-int v1, v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ea;->E(I)V

    :goto_4
    sub-int v2, p1, v1

    iget v3, p0, Lcom/google/android/gms/internal/ads/ea;->g:I

    if-le v2, v3, :cond_5

    add-int/2addr v1, v3

    iput v3, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ea;->E(I)V

    goto :goto_4

    :cond_5
    iput v2, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    :cond_6
    return-void

    :cond_7
    sub-int/2addr v4, v2

    sub-int/2addr v4, v1

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/ea;->B(I)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyk;

    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyk;

    const-string p1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final C(I)Ljava/util/List;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-lez p1, :cond_2

    const/16 v1, 0x1000

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ea;->e:Ljava/io/InputStream;

    sub-int v5, v1, v3

    invoke-virtual {v4, v2, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    iget v5, p0, Lcom/google/android/gms/internal/ads/ea;->k:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/google/android/gms/internal/ads/ea;->k:I

    add-int/2addr v3, v4

    goto :goto_1

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyk;

    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sub-int/2addr p1, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final E(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ea;->F(I)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7fffffff

    iget v1, p0, Lcom/google/android/gms/internal/ads/ea;->k:I

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    sub-int/2addr v0, p0

    if-le p1, v0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyk;

    const-string p1, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit. If reading multiple messages, consider resetting the counter between each message using CodedInputStream.resetSizeCounter()."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyk;

    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public final F(I)Z
    .locals 7

    iget v0, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/google/android/gms/internal/ads/ea;->g:I

    if-le v1, v2, :cond_7

    iget v1, p0, Lcom/google/android/gms/internal/ads/ea;->k:I

    const v3, 0x7fffffff

    sub-int v4, v3, v1

    sub-int/2addr v4, v0

    const/4 v5, 0x0

    if-le p1, v4, :cond_0

    return v5

    :cond_0
    add-int v4, v1, v0

    iget v6, p0, Lcom/google/android/gms/internal/ads/ea;->l:I

    add-int/2addr v4, p1

    if-le v4, v6, :cond_1

    return v5

    :cond_1
    if-lez v0, :cond_3

    if-le v2, v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ea;->f:[B

    sub-int/2addr v2, v0

    invoke-static {v1, v0, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/ads/ea;->k:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/ea;->k:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/ea;->g:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/ads/ea;->g:I

    iput v5, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ea;->e:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ea;->f:[B

    sub-int/2addr v3, v1

    rsub-int v1, v2, 0x1000

    sub-int/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :try_start_0
    invoke-virtual {v0, v4, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgyk; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_6

    const/4 v1, -0x1

    if-lt v0, v1, :cond_6

    const/16 v1, 0x1000

    if-gt v0, v1, :cond_6

    if-lez v0, :cond_5

    iget v1, p0, Lcom/google/android/gms/internal/ads/ea;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/ea;->g:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ea;->D()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/ea;->g:I

    if-lt v0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ea;->F(I)Z

    move-result p0

    return p0

    :cond_5
    return v5

    :cond_6
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ea;->e:Ljava/io/InputStream;

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "#read(byte[]) returned invalid result: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\nThe InputStream implementation is buggy."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyk;->zza()V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refillBuffer() called when "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes were already available in buffer"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final G(IZ)[B
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ea;->H(I)[B

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    iget p2, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/ea;->g:I

    sub-int v1, v0, p2

    iget v2, p0, Lcom/google/android/gms/internal/ads/ea;->k:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/ads/ea;->k:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/ea;->g:I

    sub-int v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/ea;->C(I)Ljava/util/List;

    move-result-object v2

    new-array p1, p1, [B

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ea;->f:[B

    invoke-static {p0, p2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    array-length v2, p2

    invoke-static {p2, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public final H(I)[B
    .locals 6

    if-nez p1, :cond_0

    sget-object p0, Lzsi;->b:[B

    return-object p0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/ea;->k:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    add-int v2, v0, v1

    add-int/2addr v2, p1

    const v3, -0x7fffffff

    add-int/2addr v3, v2

    if-gtz v3, :cond_6

    iget v3, p0, Lcom/google/android/gms/internal/ads/ea;->l:I

    const-string v4, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    if-gt v2, v3, :cond_5

    iget v0, p0, Lcom/google/android/gms/internal/ads/ea;->g:I

    sub-int/2addr v0, v1

    sub-int v1, p1, v0

    const/16 v2, 0x1000

    if-lt v1, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ea;->e:Ljava/io/InputStream;

    :try_start_0
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgyk; {:try_start_0 .. :try_end_0} :catch_0

    if-gt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyk;->zza()V

    throw p0

    :cond_2
    :goto_0
    new-array v1, p1, [B

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ea;->f:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    const/4 v5, 0x0

    invoke-static {v2, v3, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/ea;->k:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/ea;->g:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/ads/ea;->k:I

    iput v5, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    iput v5, p0, Lcom/google/android/gms/internal/ads/ea;->g:I

    :goto_1
    if-ge v0, p1, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ea;->e:Ljava/io/InputStream;

    sub-int v3, p1, v0

    :try_start_1
    invoke-virtual {v2, v1, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzgyk; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    iget v3, p0, Lcom/google/android/gms/internal/ads/ea;->k:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/gms/internal/ads/ea;->k:I

    add-int/2addr v0, v2

    goto :goto_1

    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyk;

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyk;->zza()V

    throw p0

    :cond_4
    return-object v1

    :cond_5
    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/ea;->B(I)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyk;

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyk;

    const-string p1, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit. If reading multiple messages, consider resetting the counter between each message using CodedInputStream.resetSizeCounter()."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final I()I
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/ea;->g:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/ea;->E(I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ea;->f:[B

    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    aget-byte p0, v1, v0

    and-int/lit16 p0, p0, 0xff

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr p0, v1

    shl-int/lit8 v1, v3, 0x10

    or-int/2addr p0, v1

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public final J()I
    .locals 7

    iget v0, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/ea;->g:I

    if-ne v1, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ea;->f:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v4, v2, v0

    if-ltz v4, :cond_1

    iput v3, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    return v4

    :cond_1
    sub-int/2addr v1, v3

    const/16 v5, 0x9

    if-lt v1, v5, :cond_8

    add-int/lit8 v1, v0, 0x2

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v3, v4

    if-gez v3, :cond_2

    xor-int/lit8 v0, v3, -0x80

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v0, 0x3

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v1, v3

    if-ltz v1, :cond_3

    xor-int/lit16 v0, v1, 0x3f80

    :goto_0
    move v1, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v0, 0x4

    aget-byte v4, v2, v4

    shl-int/lit8 v4, v4, 0x15

    xor-int/2addr v1, v4

    if-gez v1, :cond_4

    const v0, -0x1fc080

    xor-int/2addr v0, v1

    :goto_1
    move v1, v3

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v0, 0x5

    aget-byte v3, v2, v3

    shl-int/lit8 v5, v3, 0x1c

    xor-int/2addr v1, v5

    const v5, 0xfe03f80

    xor-int/2addr v1, v5

    if-gez v3, :cond_6

    add-int/lit8 v3, v0, 0x6

    aget-byte v4, v2, v4

    if-gez v4, :cond_7

    add-int/lit8 v4, v0, 0x7

    aget-byte v3, v2, v3

    if-gez v3, :cond_6

    add-int/lit8 v3, v0, 0x8

    aget-byte v4, v2, v4

    if-gez v4, :cond_7

    add-int/lit8 v4, v0, 0x9

    aget-byte v3, v2, v3

    if-gez v3, :cond_6

    add-int/lit8 v0, v0, 0xa

    aget-byte v2, v2, v4

    if-gez v2, :cond_5

    goto :goto_3

    :cond_5
    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_1

    :goto_2
    iput v1, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    return v0

    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ea;->M()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public final K()J
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/gms/internal/ads/ea;->i:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/ea;->g:I

    sub-int/2addr v2, v1

    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/ea;->E(I)V

    iget v1, v0, Lcom/google/android/gms/internal/ads/ea;->i:I

    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/ea;->f:[B

    add-int/lit8 v4, v1, 0x8

    iput v4, v0, Lcom/google/android/gms/internal/ads/ea;->i:I

    aget-byte v0, v2, v1

    int-to-long v4, v0

    add-int/lit8 v0, v1, 0x1

    aget-byte v0, v2, v0

    int-to-long v6, v0

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    and-long/2addr v4, v8

    shl-long/2addr v6, v3

    add-int/lit8 v0, v1, 0x2

    aget-byte v0, v2, v0

    int-to-long v10, v0

    add-int/lit8 v0, v1, 0x3

    aget-byte v0, v2, v0

    int-to-long v12, v0

    add-int/lit8 v0, v1, 0x4

    aget-byte v0, v2, v0

    int-to-long v14, v0

    add-int/lit8 v0, v1, 0x5

    aget-byte v0, v2, v0

    int-to-long v8, v0

    add-int/lit8 v0, v1, 0x6

    aget-byte v0, v2, v0

    move-wide/from16 v16, v8

    int-to-long v8, v0

    add-int/lit8 v1, v1, 0x7

    aget-byte v0, v2, v1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v10, v2

    or-long/2addr v4, v6

    and-long v6, v12, v2

    const/16 v12, 0x10

    shl-long/2addr v10, v12

    or-long/2addr v4, v10

    and-long v10, v14, v2

    const/16 v12, 0x18

    shl-long/2addr v6, v12

    or-long/2addr v4, v6

    and-long v6, v16, v2

    const/16 v12, 0x20

    shl-long/2addr v10, v12

    or-long/2addr v4, v10

    and-long/2addr v8, v2

    const/16 v10, 0x28

    shl-long/2addr v6, v10

    or-long/2addr v4, v6

    and-long/2addr v0, v2

    const/16 v2, 0x30

    shl-long v2, v8, v2

    or-long/2addr v2, v4

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final L()J
    .locals 13

    iget v0, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/ea;->g:I

    if-ne v1, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ea;->f:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v4, v2, v0

    if-ltz v4, :cond_1

    iput v3, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    int-to-long v0, v4

    return-wide v0

    :cond_1
    sub-int/2addr v1, v3

    const/16 v5, 0x9

    if-lt v1, v5, :cond_a

    add-int/lit8 v1, v0, 0x2

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v3, v4

    if-gez v3, :cond_2

    xor-int/lit8 v0, v3, -0x80

    int-to-long v2, v0

    goto/16 :goto_3

    :cond_2
    add-int/lit8 v4, v0, 0x3

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v1, v3

    if-ltz v1, :cond_3

    xor-int/lit16 v0, v1, 0x3f80

    int-to-long v2, v0

    :goto_0
    move v1, v4

    goto/16 :goto_3

    :cond_3
    add-int/lit8 v3, v0, 0x4

    aget-byte v4, v2, v4

    shl-int/lit8 v4, v4, 0x15

    xor-int/2addr v1, v4

    if-gez v1, :cond_4

    const v0, -0x1fc080

    xor-int/2addr v0, v1

    int-to-long v0, v0

    move-wide v11, v0

    move v1, v3

    move-wide v2, v11

    goto/16 :goto_3

    :cond_4
    add-int/lit8 v4, v0, 0x5

    aget-byte v3, v2, v3

    int-to-long v5, v3

    int-to-long v7, v1

    const/16 v1, 0x1c

    shl-long/2addr v5, v1

    xor-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-ltz v1, :cond_5

    const-wide/32 v0, 0xfe03f80

    xor-long v2, v5, v0

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v0, 0x6

    aget-byte v3, v2, v4

    int-to-long v3, v3

    const/16 v9, 0x23

    shl-long/2addr v3, v9

    xor-long/2addr v3, v5

    cmp-long v5, v3, v7

    if-gez v5, :cond_6

    const-wide v5, -0x7f01fc080L

    :goto_1
    xor-long v2, v3, v5

    goto :goto_3

    :cond_6
    add-int/lit8 v5, v0, 0x7

    aget-byte v1, v2, v1

    int-to-long v9, v1

    const/16 v1, 0x2a

    shl-long/2addr v9, v1

    xor-long/2addr v3, v9

    cmp-long v1, v3, v7

    if-ltz v1, :cond_7

    const-wide v0, 0x3f80fe03f80L

    xor-long v2, v3, v0

    :goto_2
    move v1, v5

    goto :goto_3

    :cond_7
    add-int/lit8 v1, v0, 0x8

    aget-byte v5, v2, v5

    int-to-long v5, v5

    const/16 v9, 0x31

    shl-long/2addr v5, v9

    xor-long/2addr v3, v5

    cmp-long v5, v3, v7

    if-gez v5, :cond_8

    const-wide v5, -0x1fc07f01fc080L

    goto :goto_1

    :cond_8
    add-int/lit8 v5, v0, 0x9

    aget-byte v1, v2, v1

    int-to-long v9, v1

    const/16 v1, 0x38

    shl-long/2addr v9, v1

    xor-long/2addr v3, v9

    const-wide v9, 0xfe03f80fe03f80L

    xor-long/2addr v3, v9

    cmp-long v1, v3, v7

    if-gez v1, :cond_9

    add-int/lit8 v1, v0, 0xa

    aget-byte v0, v2, v5

    int-to-long v5, v0

    cmp-long v0, v5, v7

    if-ltz v0, :cond_a

    move-wide v2, v3

    goto :goto_3

    :cond_9
    move-wide v2, v3

    goto :goto_2

    :goto_3
    iput v1, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    return-wide v2

    :cond_a
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ea;->M()J

    move-result-wide v0

    return-wide v0
.end method

.method public final M()J
    .locals 6

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v0, v3, :cond_2

    iget v3, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/ea;->g:I

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/ea;->E(I)V

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ea;->f:[B

    iget v4, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    aget-byte v3, v3, v4

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_1

    return-wide v1

    :cond_1
    add-int/lit8 v0, v0, 0x7

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyk;

    const-string v0, "CodedInputStream encountered a malformed varint."

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/ea;->g:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ea;->F(I)Z

    move-result p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b()Z
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ea;->L()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final g()D
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ea;->K()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final h()F
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ea;->I()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/ea;->k:I

    iget p0, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final j(I)I
    .locals 2

    if-ltz p1, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/ea;->k:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/ea;->l:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/ads/ea;->l:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ea;->D()V

    return v0

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyk;

    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyk;

    const-string p1, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit. If reading multiple messages, consider resetting the counter between each message using CodedInputStream.resetSizeCounter()."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyk;

    const-string p1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final k()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ea;->J()I

    move-result p0

    return p0
.end method

.method public final l()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ea;->I()I

    move-result p0

    return p0
.end method

.method public final m()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ea;->J()I

    move-result p0

    return p0
.end method

.method public final n()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ea;->I()I

    move-result p0

    return p0
.end method

.method public final o()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ea;->J()I

    move-result p0

    invoke-static {p0}, Lvri;->c(I)I

    move-result p0

    return p0
.end method

.method public final p()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ea;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/ea;->j:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ea;->J()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/ea;->j:I

    ushr-int/lit8 p0, v0, 0x3

    if-eqz p0, :cond_1

    return v0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyk;

    const-string v0, "Protocol message contained an invalid tag (zero)."

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final q()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ea;->J()I

    move-result p0

    return p0
.end method

.method public final r()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ea;->K()J

    move-result-wide v0

    return-wide v0
.end method

.method public final s()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ea;->L()J

    move-result-wide v0

    return-wide v0
.end method

.method public final t()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ea;->K()J

    move-result-wide v0

    return-wide v0
.end method

.method public final u()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ea;->L()J

    move-result-wide v0

    invoke-static {v0, v1}, Lvri;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final v()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ea;->L()J

    move-result-wide v0

    return-wide v0
.end method

.method public final w()Lcom/google/android/gms/internal/ads/zzgwn;
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ea;->J()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/ea;->g:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ea;->f:[B

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgwn;->zzv([BII)Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    return-object v1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgwn;->zzb:Lcom/google/android/gms/internal/ads/zzgwn;

    return-object p0

    :cond_2
    if-ltz v0, :cond_5

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ea;->H(I)[B

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    array-length p0, v1

    invoke-static {v1, v2, p0}, Lcom/google/android/gms/internal/ads/zzgwn;->zzv([BII)Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object p0

    goto :goto_2

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/ea;->g:I

    sub-int v4, v3, v1

    iget v5, p0, Lcom/google/android/gms/internal/ads/ea;->k:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/google/android/gms/internal/ads/ea;->k:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/ea;->g:I

    sub-int v3, v0, v4

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/ea;->C(I)Ljava/util/List;

    move-result-object v3

    new-array v0, v0, [B

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ea;->f:[B

    invoke-static {p0, v1, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v3, v1

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v3

    goto :goto_1

    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgwn;->zzb:Lcom/google/android/gms/internal/ads/zzgwn;

    new-instance p0, Lcom/google/android/gms/internal/ads/zzgwk;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgwk;-><init>([B)V

    :goto_2
    return-object p0

    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyk;

    const-string v0, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final x()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ea;->J()I

    move-result v0

    if-lez v0, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/ea;->g:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ea;->f:[B

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lzsi;->a:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    return-object v3

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    const-string p0, ""

    return-object p0

    :cond_2
    if-ltz v0, :cond_4

    iget v1, p0, Lcom/google/android/gms/internal/ads/ea;->g:I

    if-gt v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ea;->E(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ea;->f:[B

    new-instance v2, Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    sget-object v4, Lzsi;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    return-object v2

    :cond_3
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/ads/ea;->G(IZ)[B

    move-result-object p0

    sget-object v0, Lzsi;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyk;

    const-string v0, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final y()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ea;->J()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/ea;->g:I

    sub-int v3, v2, v1

    if-gt v0, v3, :cond_0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ea;->f:[B

    add-int v3, v1, v0

    iput v3, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    if-ltz v0, :cond_3

    const/4 v1, 0x0

    if-gt v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ea;->E(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ea;->f:[B

    iput v0, p0, Lcom/google/android/gms/internal/ads/ea;->i:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/ea;->G(IZ)[B

    move-result-object v2

    :goto_0
    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/ra;->h([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyk;

    const-string v0, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final z(I)V
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/ea;->j:I

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyk;

    const-string p1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw p0
.end method
