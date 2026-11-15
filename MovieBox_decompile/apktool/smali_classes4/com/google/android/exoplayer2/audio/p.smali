.class public final synthetic Lcom/google/android/exoplayer2/audio/p;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/audio/r$a;

.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/r$a;IJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/p;->a:Lcom/google/android/exoplayer2/audio/r$a;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/exoplayer2/audio/p;->b:I

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/google/android/exoplayer2/audio/p;->c:J

    .line 9
    .line 10
    iput-wide p5, p0, Lcom/google/android/exoplayer2/audio/p;->d:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/p;->a:Lcom/google/android/exoplayer2/audio/r$a;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/exoplayer2/audio/p;->b:I

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/p;->c:J

    .line 6
    .line 7
    iget-wide v4, p0, Lcom/google/android/exoplayer2/audio/p;->d:J

    .line 8
    .line 9
    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/r$a;->f(Lcom/google/android/exoplayer2/audio/r$a;IJJ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
