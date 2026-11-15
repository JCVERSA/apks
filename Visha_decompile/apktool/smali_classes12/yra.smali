.class public final synthetic Lyra;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljn9;


# instance fields
.field public final synthetic a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyra;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    iput-object p2, p0, Lyra;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final subscribe(Lzm9;)V
    .locals 1

    iget-object v0, p0, Lyra;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    iget-object p0, p0, Lyra;->b:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->e(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;Ljava/lang/String;Lzm9;)V

    return-void
.end method
