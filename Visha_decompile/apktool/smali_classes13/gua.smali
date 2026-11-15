.class public final synthetic Lgua;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld5;


# instance fields
.field public final synthetic a:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgua;->a:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lgua;->a:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->f(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;)V

    return-void
.end method
