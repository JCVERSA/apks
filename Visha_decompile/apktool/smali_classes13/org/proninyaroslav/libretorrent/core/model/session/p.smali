.class public final synthetic Lorg/proninyaroslav/libretorrent/core/model/session/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$CallListener;


# instance fields
.field public final synthetic a:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/p;->a:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;

    iput p2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/p;->b:I

    return-void
.end method


# virtual methods
.method public final apply(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/p;->a:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/p;->b:I

    invoke-static {v0, p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;->d(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;ILorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method
