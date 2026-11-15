.class final Lcom/google/android/exoplayer2/source/rtsp/z;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public final a:I

.field public final b:Lcom/google/common/collect/ImmutableList;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/android/exoplayer2/source/rtsp/z;->a:I

    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/z;->b:Lcom/google/common/collect/ImmutableList;

    .line 11
    .line 12
    return-void
.end method
