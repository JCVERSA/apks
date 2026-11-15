.class public final synthetic Lorg/proninyaroslav/libretorrent/core/model/session/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$CallListener;


# instance fields
.field public final synthetic a:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;


# direct methods
.method public synthetic constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/a0;->a:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;

    return-void
.end method


# virtual methods
.method public final apply(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/a0;->a:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;

    invoke-static {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;->a(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$LoadTorrentTask;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method
