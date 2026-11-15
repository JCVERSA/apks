.class public final Lcom/google/android/exoplayer2/source/hls/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/hls/f;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/k$a;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/k$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/c;->a:Lcom/google/android/exoplayer2/upstream/k$a;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/android/exoplayer2/upstream/k;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/c;->a:Lcom/google/android/exoplayer2/upstream/k$a;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/k$a;->createDataSource()Lcom/google/android/exoplayer2/upstream/k;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
