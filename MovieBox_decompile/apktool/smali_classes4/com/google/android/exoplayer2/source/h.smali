.class public final synthetic Lcom/google/android/exoplayer2/source/h;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/common/base/q;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/source/i$a;

.field public final synthetic b:Lcom/google/android/exoplayer2/upstream/k$a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/i$a;Lcom/google/android/exoplayer2/upstream/k$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/h;->a:Lcom/google/android/exoplayer2/source/i$a;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/h;->b:Lcom/google/android/exoplayer2/upstream/k$a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/h;->a:Lcom/google/android/exoplayer2/source/i$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/h;->b:Lcom/google/android/exoplayer2/upstream/k$a;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/i$a;->d(Lcom/google/android/exoplayer2/source/i$a;Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/source/o$a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
