.class public final Lcom/yandex/mobile/ads/impl/hb0;
.super Lcom/yandex/mobile/ads/impl/jk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/hb0$c;,
        Lcom/yandex/mobile/ads/impl/hb0$a;,
        Lcom/yandex/mobile/ads/impl/hb0$b;
    }
.end annotation


# instance fields
.field private e:Ljava/io/RandomAccessFile;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:J

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/jk;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/xv;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/hb0$c;
        }
    .end annotation

    iget-object v0, p1, Lcom/yandex/mobile/ads/impl/xv;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/hb0;->f:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/jk;->b(Lcom/yandex/mobile/ads/impl/xv;)V

    const/16 v1, 0x7d6

    const/16 v2, 0x7d0

    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "r"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    iput-object v3, p0, Lcom/yandex/mobile/ads/impl/hb0;->e:Ljava/io/RandomAccessFile;

    :try_start_1
    iget-wide v0, p1, Lcom/yandex/mobile/ads/impl/xv;->f:J

    invoke-virtual {v3, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-wide v0, p1, Lcom/yandex/mobile/ads/impl/xv;->g:J

    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hb0;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget-wide v3, p1, Lcom/yandex/mobile/ads/impl/xv;->f:J

    sub-long/2addr v0, v3

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v0, p0, Lcom/yandex/mobile/ads/impl/hb0;->g:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/hb0;->h:Z

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/jk;->c(Lcom/yandex/mobile/ads/impl/xv;)V

    iget-wide p0, p0, Lcom/yandex/mobile/ads/impl/hb0;->g:J

    return-wide p0

    :cond_1
    new-instance p0, Lcom/yandex/mobile/ads/impl/hb0$c;

    const/16 p1, 0x7d8

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/yandex/mobile/ads/impl/hb0$c;-><init>(ILjava/lang/String;Ljava/io/FileNotFoundException;)V

    throw p0

    :goto_1
    new-instance p1, Lcom/yandex/mobile/ads/impl/hb0$c;

    invoke-direct {p1, p0, v2}, Lcom/yandex/mobile/ads/impl/hb0$c;-><init>(Ljava/lang/Exception;I)V

    throw p1

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_3

    :catch_3
    move-exception p0

    goto :goto_4

    :goto_2
    new-instance p1, Lcom/yandex/mobile/ads/impl/hb0$c;

    invoke-direct {p1, p0, v2}, Lcom/yandex/mobile/ads/impl/hb0$c;-><init>(Ljava/lang/Exception;I)V

    throw p1

    :goto_3
    new-instance p1, Lcom/yandex/mobile/ads/impl/hb0$c;

    invoke-direct {p1, p0, v1}, Lcom/yandex/mobile/ads/impl/hb0$c;-><init>(Ljava/lang/Exception;I)V

    throw p1

    :goto_4
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/yandex/mobile/ads/impl/hb0$c;

    sget v0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/hb0$a;->b(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_5

    :cond_2
    const/16 v1, 0x7d5

    :goto_5
    invoke-direct {p1, p0, v1}, Lcom/yandex/mobile/ads/impl/hb0$c;-><init>(Ljava/lang/Exception;I)V

    throw p1

    :cond_3
    new-instance p1, Lcom/yandex/mobile/ads/impl/hb0$c;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing \'?\' or \'#\'? Use Uri.fromFile(new File(path)) to avoid this. path="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",query="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",fragment="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3ec

    invoke-direct {p1, v1, v0, p0}, Lcom/yandex/mobile/ads/impl/hb0$c;-><init>(ILjava/lang/String;Ljava/io/FileNotFoundException;)V

    throw p1
.end method

.method public final close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/hb0$c;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/hb0;->f:Landroid/net/Uri;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/hb0;->e:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
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
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/hb0;->e:Ljava/io/RandomAccessFile;

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/hb0;->h:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/yandex/mobile/ads/impl/hb0;->h:Z

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/jk;->e()V

    :cond_1
    return-void

    :goto_1
    :try_start_1
    new-instance v3, Lcom/yandex/mobile/ads/impl/hb0$c;

    const/16 v4, 0x7d0

    invoke-direct {v3, v2, v4}, Lcom/yandex/mobile/ads/impl/hb0$c;-><init>(Ljava/lang/Exception;I)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/hb0;->e:Ljava/io/RandomAccessFile;

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/hb0;->h:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/yandex/mobile/ads/impl/hb0;->h:Z

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/jk;->e()V

    :cond_2
    throw v2
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hb0;->f:Landroid/net/Uri;

    return-object p0
.end method

.method public final read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/hb0$c;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/hb0;->g:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/hb0;->e:Ljava/io/RandomAccessFile;

    sget v3, Lcom/yandex/mobile/ads/impl/f92;->a:I

    int-to-long v3, p3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_2

    iget-wide p2, p0, Lcom/yandex/mobile/ads/impl/hb0;->g:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/yandex/mobile/ads/impl/hb0;->g:J

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/jk;->c(I)V

    :cond_2
    return p1

    :catch_0
    move-exception p0

    new-instance p1, Lcom/yandex/mobile/ads/impl/hb0$c;

    const/16 p2, 0x7d0

    invoke-direct {p1, p0, p2}, Lcom/yandex/mobile/ads/impl/hb0$c;-><init>(Ljava/lang/Exception;I)V

    throw p1
.end method
