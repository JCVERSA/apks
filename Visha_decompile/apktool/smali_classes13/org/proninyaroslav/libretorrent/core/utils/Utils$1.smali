.class Lorg/proninyaroslav/libretorrent/core/utils/Utils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/proninyaroslav/libretorrent/core/HttpConnection$Listener;


# instance fields
.field public final synthetic a:[[B

.field public final synthetic b:Ljava/util/ArrayList;


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/io/IOException;)V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/utils/Utils$1;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Ljava/net/HttpURLConnection;)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 2

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/utils/Utils$1;->b:Ljava/util/ArrayList;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/exception/FetchLinkException;

    const-string v1, "Too many redirects"

    invoke-direct {v0, v1}, Lorg/proninyaroslav/libretorrent/core/exception/FetchLinkException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e(Ljava/net/HttpURLConnection;ILjava/lang/String;)V
    .locals 1

    const/16 p3, 0xc8

    if-ne p2, p3, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/utils/Utils$1;->a:[[B

    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/utils/Utils$1;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/utils/Utils$1;->b:Ljava/util/ArrayList;

    new-instance p1, Lorg/proninyaroslav/libretorrent/core/exception/FetchLinkException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to fetch link, response code: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/proninyaroslav/libretorrent/core/exception/FetchLinkException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    return-void
.end method
