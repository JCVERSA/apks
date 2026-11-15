.class public final synthetic Lwra;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwra;->b:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    iput-object p2, p0, Lwra;->c:Ljava/lang/String;

    iput-object p3, p0, Lwra;->d:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lwra;->b:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    iget-object v1, p0, Lwra;->c:Ljava/lang/String;

    iget-object p0, p0, Lwra;->d:Landroid/net/Uri;

    invoke-static {v0, v1, p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->d(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method
