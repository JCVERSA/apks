.class public final synthetic Lorg/proninyaroslav/libretorrent/core/model/session/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$CallListener;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/u;->a:I

    return-void
.end method


# virtual methods
.method public final apply(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/u;->a:I

    invoke-static {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->i(ILorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method
