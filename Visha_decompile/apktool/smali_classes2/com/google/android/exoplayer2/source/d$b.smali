.class public final Lcom/google/android/exoplayer2/source/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnk3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/k;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/d$b;->a:Lcom/google/android/exoplayer2/k;

    return-void
.end method


# virtual methods
.method public a(Lqk3;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-interface {p1, v0, v1}, Lqk3;->track(II)Lfva;

    move-result-object v0

    new-instance v1, Lja9$b;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Lja9$b;-><init>(J)V

    invoke-interface {p1, v1}, Lqk3;->d(Lja9;)V

    invoke-interface {p1}, Lqk3;->endTracks()V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/d$b;->a:Lcom/google/android/exoplayer2/k;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/k;->b()Lcom/google/android/exoplayer2/k$b;

    move-result-object p1

    const-string/jumbo v1, "text/x-unknown"

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/k$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/d$b;->a:Lcom/google/android/exoplayer2/k;

    iget-object p0, p0, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/k$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k$b;->E()Lcom/google/android/exoplayer2/k;

    move-result-object p0

    invoke-interface {v0, p0}, Lfva;->b(Lcom/google/android/exoplayer2/k;)V

    return-void
.end method

.method public b(Lpk3;Lid8;)I
    .locals 0

    const p0, 0x7fffffff

    invoke-interface {p1, p0}, Lpk3;->skip(I)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public c(Lpk3;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    return-void
.end method
