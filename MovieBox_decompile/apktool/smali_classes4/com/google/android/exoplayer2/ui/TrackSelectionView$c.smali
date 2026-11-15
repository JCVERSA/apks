.class final Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/TrackSelectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/q3$a;

.field public final b:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/q3$a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;->a:Lcom/google/android/exoplayer2/q3$a;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/p1;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;->a:Lcom/google/android/exoplayer2/q3$a;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;->b:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/q3$a;->c(I)Lcom/google/android/exoplayer2/p1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
