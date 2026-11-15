.class public final synthetic Lorg/proninyaroslav/libretorrent/core/model/session/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$CallListener;


# instance fields
.field public final synthetic a:Lorg/libtorrent4j/TorrentHandle;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/libtorrent4j/TorrentHandle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/z;->a:Lorg/libtorrent4j/TorrentHandle;

    iput-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/z;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/z;->a:Lorg/libtorrent4j/TorrentHandle;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/z;->b:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$InnerListener;->b(Lorg/libtorrent4j/TorrentHandle;Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method
