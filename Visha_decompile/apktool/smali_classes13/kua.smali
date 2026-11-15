.class public final synthetic Lkua;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

.field public final synthetic c:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;


# direct methods
.method public synthetic constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkua;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

    iput-object p2, p0, Lkua;->c:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lkua;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

    iget-object p0, p0, Lkua;->c:Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    invoke-static {v0, p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->h(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;)V

    return-void
.end method
