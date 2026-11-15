.class public final synthetic Lbsa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld5;


# instance fields
.field public final synthetic a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;


# direct methods
.method public synthetic constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsa;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lbsa;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->l(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;)V

    return-void
.end method
