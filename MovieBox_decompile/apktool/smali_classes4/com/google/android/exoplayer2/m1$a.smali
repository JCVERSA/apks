.class Lcom/google/android/exoplayer2/m1$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/exoplayer2/y2$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/m1;->o(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/m1;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/m1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/m1$a;->a:Lcom/google/android/exoplayer2/m1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1$a;->a:Lcom/google/android/exoplayer2/m1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/m1;->f(Lcom/google/android/exoplayer2/m1;Z)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/m1$a;->a:Lcom/google/android/exoplayer2/m1;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/m1;->i(Lcom/google/android/exoplayer2/m1;)Lcom/google/android/exoplayer2/util/o;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/o;->sendEmptyMessage(I)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
