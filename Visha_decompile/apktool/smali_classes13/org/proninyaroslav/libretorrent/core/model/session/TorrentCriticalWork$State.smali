.class public Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$State;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field public changeTime:J

.field public moving:Z

.field public saveResume:Z


# direct methods
.method public constructor <init>(ZZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$State;->moving:Z

    iput-boolean p2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$State;->saveResume:Z

    iput-wide p3, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$State;->changeTime:J

    return-void
.end method


# virtual methods
.method public isDuringChange()Z
    .locals 1

    iget-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$State;->moving:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$State;->saveResume:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
