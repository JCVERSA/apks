.class public final synthetic Lorg/proninyaroslav/libretorrent/core/model/session/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;


# direct methods
.method public synthetic constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/a;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/a;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;->a(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;)V

    return-void
.end method
