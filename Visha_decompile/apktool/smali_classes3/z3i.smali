.class public final Lz3i;
.super Lp4i;
.source "SourceFile"


# instance fields
.field public final e:Landroid/content/res/AssetManager;

.field public f:Landroid/net/Uri;

.field public g:Ljava/io/InputStream;

.field public h:J

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lp4i;-><init>(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lz3i;->e:Landroid/content/res/AssetManager;

    return-void
.end method


# virtual methods
.method public final b([BII)I
    .locals 8

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-wide v0, p0, Lz3i;->h:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, -0x1

    if-eqz v2, :cond_4

    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    int-to-long v6, p3

    :try_start_0
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lz3i;->g:Ljava/io/InputStream;

    sget v1, Lkfh;->a:I

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v3, :cond_2

    return v3

    :cond_2
    iget-wide p2, p0, Lz3i;->h:J

    cmp-long v0, p2, v4

    if-eqz v0, :cond_3

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lz3i;->h:J

    :cond_3
    invoke-virtual {p0, p1}, Lp4i;->zzg(I)V

    return p1

    :goto_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfv;

    const/16 p2, 0x7d0

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/ads/zzfv;-><init>(Ljava/lang/Throwable;I)V

    throw p1

    :cond_4
    return v3
.end method

.method public final j(Lcfi;)J
    .locals 7

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p1, Lcfi;->a:Landroid/net/Uri;

    iput-object v1, p0, Lz3i;->f:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    const-string v3, "/android_asset/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xf

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_4

    :cond_0
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lp4i;->l(Lcfi;)V

    iget-object v3, p0, Lz3i;->e:Landroid/content/res/AssetManager;

    invoke-virtual {v3, v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lz3i;->g:Ljava/io/InputStream;

    iget-wide v3, p1, Lcfi;->e:J

    invoke-virtual {v1, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-ltz v1, :cond_4

    iget-wide v1, p1, Lcfi;->f:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    iput-wide v1, p0, Lz3i;->h:J

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lz3i;->g:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lz3i;->h:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v1, v1, v5

    if-nez v1, :cond_3

    iput-wide v3, p0, Lz3i;->h:J
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfv; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    iput-boolean v0, p0, Lz3i;->i:Z

    invoke-virtual {p0, p1}, Lp4i;->m(Lcfi;)V

    iget-wide p0, p0, Lz3i;->h:J

    return-wide p0

    :cond_4
    :try_start_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzfv;

    const/16 p1, 0x7d8

    invoke-direct {p0, v2, p1}, Lcom/google/android/gms/internal/ads/zzfv;-><init>(Ljava/lang/Throwable;I)V

    throw p0

    :cond_5
    throw v2
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzfv; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfv;

    instance-of v1, p0, Ljava/io/FileNotFoundException;

    if-eq v0, v1, :cond_6

    const/16 v0, 0x7d0

    goto :goto_3

    :cond_6
    const/16 v0, 0x7d5

    :goto_3
    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/ads/zzfv;-><init>(Ljava/lang/Throwable;I)V

    throw p1

    :goto_4
    throw p0
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lz3i;->f:Landroid/net/Uri;

    return-object p0
.end method

.method public final zzd()V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lz3i;->f:Landroid/net/Uri;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lz3i;->g:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    iput-object v0, p0, Lz3i;->g:Ljava/io/InputStream;

    iget-boolean v0, p0, Lz3i;->i:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lz3i;->i:Z

    invoke-virtual {p0}, Lp4i;->k()V

    :cond_1
    return-void

    :goto_1
    :try_start_1
    new-instance v3, Lcom/google/android/gms/internal/ads/zzfv;

    const/16 v4, 0x7d0

    invoke-direct {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzfv;-><init>(Ljava/lang/Throwable;I)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    iput-object v0, p0, Lz3i;->g:Ljava/io/InputStream;

    iget-boolean v0, p0, Lz3i;->i:Z

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    iput-boolean v1, p0, Lz3i;->i:Z

    invoke-virtual {p0}, Lp4i;->k()V

    :goto_3
    throw v2
.end method
