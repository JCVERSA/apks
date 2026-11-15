.class public Lcom/google/android/exoplayer2/offline/SegmentDownloader$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/SegmentDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "b"
.end annotation


# instance fields
.field public final a:J

.field public final b:Lcom/google/android/exoplayer2/upstream/n;


# direct methods
.method public constructor <init>(JLcom/google/android/exoplayer2/upstream/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$b;->a:J

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$b;->b:Lcom/google/android/exoplayer2/upstream/n;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/offline/SegmentDownloader$b;)I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloader$b;->a:J

    .line 2
    .line 3
    iget-wide v2, p1, Lcom/google/android/exoplayer2/offline/SegmentDownloader$b;->a:J

    .line 4
    .line 5
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/p0;->o(JJ)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/offline/SegmentDownloader$b;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/offline/SegmentDownloader$b;->a(Lcom/google/android/exoplayer2/offline/SegmentDownloader$b;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
