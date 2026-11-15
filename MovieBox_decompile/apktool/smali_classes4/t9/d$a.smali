.class final Lt9/d$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt9/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:J


# direct methods
.method private constructor <init>(IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lt9/d$a;->a:I

    .line 5
    .line 6
    iput-wide p2, p0, Lt9/d$a;->b:J

    .line 7
    .line 8
    return-void
.end method

.method public static a(Li9/m;Lcom/google/android/exoplayer2/util/d0;)Lt9/d$a;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {p0, v0, v2, v1}, Li9/m;->peekFully([BII)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->n()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->t()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    new-instance p1, Lt9/d$a;

    .line 23
    .line 24
    invoke-direct {p1, p0, v0, v1}, Lt9/d$a;-><init>(IJ)V

    .line 25
    .line 26
    .line 27
    return-object p1
.end method
