.class public final synthetic Lgsa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;


# direct methods
.method public synthetic constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgsa;->b:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lgsa;->b:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->b(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)V

    return-void
.end method
