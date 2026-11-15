.class public final synthetic Lhua;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhua;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lhua;->b:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->b(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;Ljava/lang/Throwable;)V

    return-void
.end method
