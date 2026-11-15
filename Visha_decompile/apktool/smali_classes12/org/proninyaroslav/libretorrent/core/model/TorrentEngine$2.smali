.class Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$2;
.super Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->L(Ljava/lang/String;)Lxm9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lzm9;

.field public final synthetic c:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;


# direct methods
.method public constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;Ljava/lang/String;Lzm9;)V
    .locals 0

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$2;->c:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    iput-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$2;->b:Lzm9;

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMagnetLoaded(Ljava/lang/String;[B)V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$2;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$2;->b:Lzm9;

    invoke-interface {p1}, Lzm9;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_2

    if-nez p2, :cond_1

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$2;->b:Lzm9;

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/NullPointerException;

    const-string v0, "bencode is null"

    invoke-direct {p2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, p1}, Lzm9;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$2;->c:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$2;->b:Lzm9;

    invoke-static {p1, p0, p2}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->A(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;Lzm9;[B)V

    :cond_2
    :goto_0
    return-void
.end method
