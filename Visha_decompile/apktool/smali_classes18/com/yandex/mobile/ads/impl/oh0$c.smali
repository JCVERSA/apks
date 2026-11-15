.class public final Lcom/yandex/mobile/ads/impl/oh0$c;
.super Lokio/AsyncTimeout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/oh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/oh0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/oh0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/oh0$c;->a:Lcom/yandex/mobile/ads/impl/oh0;

    invoke-direct {p0}, Lokio/AsyncTimeout;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lokio/AsyncTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/oh0$c;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public final newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1

    new-instance p0, Ljava/net/SocketTimeoutException;

    const-string v0, "timeout"

    invoke-direct {p0, v0}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object p0
.end method

.method public final timedOut()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/oh0$c;->a:Lcom/yandex/mobile/ads/impl/oh0;

    sget-object v1, Lcom/yandex/mobile/ads/impl/t50;->i:Lcom/yandex/mobile/ads/impl/t50;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/oh0;->a(Lcom/yandex/mobile/ads/impl/t50;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/oh0$c;->a:Lcom/yandex/mobile/ads/impl/oh0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/oh0;->c()Lcom/yandex/mobile/ads/impl/hh0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/hh0;->l()V

    return-void
.end method
