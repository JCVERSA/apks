.class public final synthetic Lcom/google/android/exoplayer2/e2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/f2;

.field public final synthetic b:Lcom/google/common/collect/ImmutableList$a;

.field public final synthetic c:Lcom/google/android/exoplayer2/source/o$b;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/f2;Lcom/google/common/collect/ImmutableList$a;Lcom/google/android/exoplayer2/source/o$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/e2;->a:Lcom/google/android/exoplayer2/f2;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/exoplayer2/e2;->b:Lcom/google/common/collect/ImmutableList$a;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/exoplayer2/e2;->c:Lcom/google/android/exoplayer2/source/o$b;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/e2;->a:Lcom/google/android/exoplayer2/f2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/e2;->b:Lcom/google/common/collect/ImmutableList$a;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/exoplayer2/e2;->c:Lcom/google/android/exoplayer2/source/o$b;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/f2;->a(Lcom/google/android/exoplayer2/f2;Lcom/google/common/collect/ImmutableList$a;Lcom/google/android/exoplayer2/source/o$b;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
