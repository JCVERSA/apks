.class Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$1;
.super Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;


# direct methods
.method public constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$1;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTorrentRemoved(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$1;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->p(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
