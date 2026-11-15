.class public final synthetic Lorg/proninyaroslav/libretorrent/core/model/session/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$CallListener;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    invoke-virtual {p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;->onSessionStopped()V

    return-void
.end method
