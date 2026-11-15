.class public final synthetic Ljua;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

.field public final synthetic c:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljua;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

    iput-object p2, p0, Ljua;->c:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ljua;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

    iget-object p0, p0, Ljua;->c:Landroid/net/Uri;

    invoke-static {v0, p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->a(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;Landroid/net/Uri;)V

    return-void
.end method
