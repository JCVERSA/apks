.class public final synthetic Liua;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liua;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Liua;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->e(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;)V

    return-void
.end method
