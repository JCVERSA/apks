.class public Lorg/proninyaroslav/libretorrent/core/HttpConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/proninyaroslav/libretorrent/core/HttpConnection$Listener;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT:I = 0x4e20

.field private static final MAX_REDIRECTS:I = 0x5


# instance fields
.field private listener:Lorg/proninyaroslav/libretorrent/core/HttpConnection$Listener;

.field private sslContext:Ljavax/net/ssl/SSLContext;

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/HttpConnection;->url:Ljava/net/URL;

    invoke-static {}, Lorg/proninyaroslav/libretorrent/core/utils/Utils;->d()Ljavax/net/ssl/SSLContext;

    move-result-object p1

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/HttpConnection;->sslContext:Ljavax/net/ssl/SSLContext;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x5

    if-ge v1, v3, :cond_7

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lorg/proninyaroslav/libretorrent/core/HttpConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v1, 0x4e20

    invoke-virtual {v3, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v3, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    instance-of v1, v3, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_0

    move-object v1, v3

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v4, p0, Lorg/proninyaroslav/libretorrent/core/HttpConnection;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v1, v3

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v3

    goto :goto_2

    :cond_0
    :goto_1
    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/HttpConnection;->listener:Lorg/proninyaroslav/libretorrent/core/HttpConnection$Listener;

    if-eqz v1, :cond_1

    invoke-interface {v1, v3}, Lorg/proninyaroslav/libretorrent/core/HttpConnection$Listener;->c(Ljava/net/HttpURLConnection;)V

    :cond_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/HttpConnection;->listener:Lorg/proninyaroslav/libretorrent/core/HttpConnection$Listener;

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v1, v2}, Lorg/proninyaroslav/libretorrent/core/HttpConnection$Listener;->e(Ljava/net/HttpURLConnection;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :pswitch_0
    :try_start_2
    const-string v4, "Location"

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lorg/proninyaroslav/libretorrent/core/HttpConnection;->url:Ljava/net/URL;

    invoke-direct {v5, v6, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v5, p0, Lorg/proninyaroslav/libretorrent/core/HttpConnection;->url:Ljava/net/URL;

    const/16 v4, 0x12d

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/HttpConnection;->listener:Lorg/proninyaroslav/libretorrent/core/HttpConnection$Listener;

    if-eqz v1, :cond_3

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/proninyaroslav/libretorrent/core/HttpConnection$Listener;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    move v1, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_2
    :try_start_3
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/HttpConnection;->listener:Lorg/proninyaroslav/libretorrent/core/HttpConnection$Listener;

    if-eqz p0, :cond_4

    invoke-interface {p0, v0}, Lorg/proninyaroslav/libretorrent/core/HttpConnection$Listener;->b(Ljava/io/IOException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    return-void

    :goto_3
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw p0

    :cond_7
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/HttpConnection;->listener:Lorg/proninyaroslav/libretorrent/core/HttpConnection$Listener;

    if-eqz p0, :cond_8

    invoke-interface {p0}, Lorg/proninyaroslav/libretorrent/core/HttpConnection$Listener;->d()V

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setListener(Lorg/proninyaroslav/libretorrent/core/HttpConnection$Listener;)V
    .locals 0

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/HttpConnection;->listener:Lorg/proninyaroslav/libretorrent/core/HttpConnection$Listener;

    return-void
.end method
