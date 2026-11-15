.class public final synthetic Lorg/proninyaroslav/libretorrent/core/model/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld5;


# instance fields
.field public final synthetic a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$4;

.field public final synthetic b:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$4;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/d;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$4;

    iput-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/d;->b:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/d;->a:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$4;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/d;->b:Landroid/net/Uri;

    invoke-static {v0, p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$4;->a(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine$4;Landroid/net/Uri;)V

    return-void
.end method
