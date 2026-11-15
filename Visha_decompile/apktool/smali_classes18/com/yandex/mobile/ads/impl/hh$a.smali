.class public final Lcom/yandex/mobile/ads/impl/hh$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/gv0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/hh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/t32;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/t32<",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/t32;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/t32<",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    new-instance v0, Lrhd;

    invoke-direct {v0, p1}, Lrhd;-><init>(I)V

    new-instance v1, Lshd;

    invoke-direct {v1, p1}, Lshd;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/hh$a;-><init>(Lcom/yandex/mobile/ads/impl/t32;Lcom/yandex/mobile/ads/impl/t32;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/t32;Lcom/yandex/mobile/ads/impl/t32;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hh$a;->a:Lcom/yandex/mobile/ads/impl/t32;

    .line 4
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/hh$a;->b:Lcom/yandex/mobile/ads/impl/t32;

    return-void
.end method

.method private static a(I)Landroid/os/HandlerThread;
    .locals 3

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ExoPlayer:MediaCodecAsyncAdapter:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    .line 4
    const-string p0, "Audio"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    .line 5
    const-string p0, "Video"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6
    :cond_1
    const-string v2, "Unknown("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static b(I)Landroid/os/HandlerThread;
    .locals 3

    .line 12
    new-instance v0, Landroid/os/HandlerThread;

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ExoPlayer:MediaCodecQueueingThread:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    .line 14
    const-string p0, "Audio"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    .line 15
    const-string p0, "Video"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 16
    :cond_1
    const-string v2, "Unknown("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 18
    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic c(I)Landroid/os/HandlerThread;
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hh$a;->a(I)Landroid/os/HandlerThread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(I)Landroid/os/HandlerThread;
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hh$a;->b(I)Landroid/os/HandlerThread;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/yandex/mobile/ads/impl/gv0$a;)Lcom/yandex/mobile/ads/impl/gv0;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/hh$a;->b(Lcom/yandex/mobile/ads/impl/gv0$a;)Lcom/yandex/mobile/ads/impl/hh;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/gv0$a;)Lcom/yandex/mobile/ads/impl/hh;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "createCodec:"

    iget-object v1, p1, Lcom/yandex/mobile/ads/impl/gv0$a;->a:Lcom/yandex/mobile/ads/impl/kv0;

    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/kv0;->a:Ljava/lang/String;

    const/4 v2, 0x0

    .line 2
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/u52;->a(Ljava/lang/String;)V

    .line 3
    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4
    :try_start_1
    new-instance v1, Lcom/yandex/mobile/ads/impl/hh;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/hh$a;->a:Lcom/yandex/mobile/ads/impl/t32;

    .line 5
    invoke-interface {v3}, Lcom/yandex/mobile/ads/impl/t32;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/os/HandlerThread;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hh$a;->b:Lcom/yandex/mobile/ads/impl/t32;

    .line 6
    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/t32;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Landroid/os/HandlerThread;

    const/4 v8, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    move-object v4, v0

    invoke-direct/range {v3 .. v8}, Lcom/yandex/mobile/ads/impl/hh;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroid/os/HandlerThread;ZLthd;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 7
    :try_start_2
    invoke-static {}, Lcom/yandex/mobile/ads/impl/u52;->a()V

    .line 8
    iget-object p0, p1, Lcom/yandex/mobile/ads/impl/gv0$a;->b:Landroid/media/MediaFormat;

    iget-object v2, p1, Lcom/yandex/mobile/ads/impl/gv0$a;->d:Landroid/view/Surface;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/gv0$a;->e:Landroid/media/MediaCrypto;

    invoke-static {v1, p0, v2, p1}, Lcom/yandex/mobile/ads/impl/hh;->b(Lcom/yandex/mobile/ads/impl/hh;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    move-object v2, v1

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    move-object v0, v2

    :goto_0
    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/hh;->release()V

    .line 11
    :cond_1
    :goto_1
    throw p0
.end method
