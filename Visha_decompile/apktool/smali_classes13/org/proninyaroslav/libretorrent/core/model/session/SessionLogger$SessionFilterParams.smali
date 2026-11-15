.class public Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionFilterParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionFilterParams"
.end annotation


# instance fields
.field final filterDhtLog:Z

.field final filterPeerLog:Z

.field final filterPortmapLog:Z

.field final filterSessionLog:Z

.field final filterTorrentLog:Z


# direct methods
.method public constructor <init>(ZZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionFilterParams;->filterSessionLog:Z

    iput-boolean p2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionFilterParams;->filterDhtLog:Z

    iput-boolean p3, p0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionFilterParams;->filterPeerLog:Z

    iput-boolean p4, p0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionFilterParams;->filterPortmapLog:Z

    iput-boolean p5, p0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionFilterParams;->filterTorrentLog:Z

    return-void
.end method
