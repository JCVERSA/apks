.class final Lcom/google/android/exoplayer2/source/w$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lv9/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final a:I

.field final synthetic b:Lcom/google/android/exoplayer2/source/w;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/w;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/w$c;->b:Lcom/google/android/exoplayer2/source/w;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/exoplayer2/source/w$c;->a:I

    .line 7
    .line 8
    return-void
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/source/w$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/source/w$c;->a:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/q1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w$c;->b:Lcom/google/android/exoplayer2/source/w;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/exoplayer2/source/w$c;->a:I

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/source/w;->R(ILcom/google/android/exoplayer2/q1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public isReady()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w$c;->b:Lcom/google/android/exoplayer2/source/w;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/exoplayer2/source/w$c;->a:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/w;->D(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public maybeThrowError()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w$c;->b:Lcom/google/android/exoplayer2/source/w;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/exoplayer2/source/w$c;->a:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/w;->L(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public skipData(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w$c;->b:Lcom/google/android/exoplayer2/source/w;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/exoplayer2/source/w$c;->a:I

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/source/w;->V(IJ)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
