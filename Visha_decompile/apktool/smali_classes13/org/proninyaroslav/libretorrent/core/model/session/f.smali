.class public final synthetic Lorg/proninyaroslav/libretorrent/core/model/session/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

.field public final synthetic c:Llb1;


# direct methods
.method public synthetic constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Llb1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/f;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

    iput-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/f;->c:Llb1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/f;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/f;->c:Llb1;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->h(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Llb1;Ljava/lang/Throwable;)V

    return-void
.end method
