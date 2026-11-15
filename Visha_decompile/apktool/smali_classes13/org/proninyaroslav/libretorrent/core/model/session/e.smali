.class public final synthetic Lorg/proninyaroslav/libretorrent/core/model/session/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicLong;

.field public final synthetic d:Llb1;


# direct methods
.method public synthetic constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Ljava/util/concurrent/atomic/AtomicLong;Llb1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/e;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

    iput-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/e;->c:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p3, p0, Lorg/proninyaroslav/libretorrent/core/model/session/e;->d:Llb1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/e;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/e;->c:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/e;->d:Llb1;

    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$State;

    invoke-static {v0, v1, p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->b(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Ljava/util/concurrent/atomic/AtomicLong;Llb1;Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$State;)V

    return-void
.end method
