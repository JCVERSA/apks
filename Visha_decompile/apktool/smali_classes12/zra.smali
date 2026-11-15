.class public final synthetic Lzra;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzra;->b:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    iput-boolean p2, p0, Lzra;->c:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lzra;->b:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    iget-boolean p0, p0, Lzra;->c:Z

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->g(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;ZLjava/lang/String;)V

    return-void
.end method
