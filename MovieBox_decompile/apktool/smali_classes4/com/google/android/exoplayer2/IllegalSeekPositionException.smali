.class public final Lcom/google/android/exoplayer2/IllegalSeekPositionException;
.super Ljava/lang/IllegalStateException;
.source "source.java"


# instance fields
.field public final positionMs:J

.field public final timeline:Lcom/google/android/exoplayer2/l3;

.field public final windowIndex:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/l3;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/IllegalSeekPositionException;->timeline:Lcom/google/android/exoplayer2/l3;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/exoplayer2/IllegalSeekPositionException;->windowIndex:I

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/google/android/exoplayer2/IllegalSeekPositionException;->positionMs:J

    .line 9
    .line 10
    return-void
.end method
