.class public final synthetic Lvra;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;


# direct methods
.method public synthetic constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvra;->b:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lvra;->b:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->a(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;Ljava/lang/String;)V

    return-void
.end method
