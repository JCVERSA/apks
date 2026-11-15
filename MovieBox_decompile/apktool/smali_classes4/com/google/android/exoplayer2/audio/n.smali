.class public final synthetic Lcom/google/android/exoplayer2/audio/n;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/audio/r$a;

.field public final synthetic b:Lcom/google/android/exoplayer2/p1;

.field public final synthetic c:Lcom/google/android/exoplayer2/decoder/g;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/r$a;Lcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/decoder/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/n;->a:Lcom/google/android/exoplayer2/audio/r$a;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/n;->b:Lcom/google/android/exoplayer2/p1;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/exoplayer2/audio/n;->c:Lcom/google/android/exoplayer2/decoder/g;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/n;->a:Lcom/google/android/exoplayer2/audio/r$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/n;->b:Lcom/google/android/exoplayer2/p1;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/n;->c:Lcom/google/android/exoplayer2/decoder/g;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/r$a;->d(Lcom/google/android/exoplayer2/audio/r$a;Lcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/decoder/g;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
