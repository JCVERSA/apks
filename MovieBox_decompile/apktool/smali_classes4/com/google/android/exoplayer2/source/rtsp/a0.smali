.class final Lcom/google/android/exoplayer2/source/rtsp/a0;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/exoplayer2/source/rtsp/d0;

.field public final c:Lcom/google/common/collect/ImmutableList;


# direct methods
.method public constructor <init>(ILcom/google/android/exoplayer2/source/rtsp/d0;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/android/exoplayer2/source/rtsp/a0;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/a0;->b:Lcom/google/android/exoplayer2/source/rtsp/d0;

    .line 7
    .line 8
    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/a0;->c:Lcom/google/common/collect/ImmutableList;

    .line 13
    .line 14
    return-void
.end method
