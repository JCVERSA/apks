.class public final synthetic Lorg/proninyaroslav/libretorrent/core/model/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;

.field public final synthetic c:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/p;->b:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;

    iput-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/p;->c:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/p;->b:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/p;->c:Ljava/lang/Exception;

    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;

    invoke-static {v0, p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;->k(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$5;Ljava/lang/Exception;Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;)V

    return-void
.end method
