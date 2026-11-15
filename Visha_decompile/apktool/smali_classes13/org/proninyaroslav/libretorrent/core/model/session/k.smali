.class public final synthetic Lorg/proninyaroslav/libretorrent/core/model/session/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$CallListener;


# instance fields
.field public final synthetic a:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

.field public final synthetic b:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/k;->a:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

    iput-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/k;->b:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final apply(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/k;->a:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/k;->b:Ljava/lang/Exception;

    invoke-static {v0, p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->f(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Ljava/lang/Exception;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method
