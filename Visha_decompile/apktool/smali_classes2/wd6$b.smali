.class public final Lwd6$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/mediacodec/c$c;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwd6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final b:Landroid/os/Handler;

.field public final synthetic c:Lwd6;


# direct methods
.method public constructor <init>(Lwd6;Lcom/google/android/exoplayer2/mediacodec/c;)V
    .locals 0

    iput-object p1, p0, Lwd6$b;->c:Lwd6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lblb;->v(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lwd6$b;->b:Landroid/os/Handler;

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/mediacodec/c;->b(Lcom/google/android/exoplayer2/mediacodec/c$c;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/mediacodec/c;JJ)V
    .locals 0

    sget p1, Lblb;->a:I

    const/16 p4, 0x1e

    if-ge p1, p4, :cond_0

    iget-object p1, p0, Lwd6$b;->b:Landroid/os/Handler;

    const/16 p4, 0x20

    shr-long p4, p2, p4

    long-to-int p4, p4

    long-to-int p2, p2

    const/4 p3, 0x0

    invoke-static {p1, p3, p4, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lwd6$b;->b:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p3}, Lwd6$b;->b(J)V

    :goto_0
    return-void
.end method

.method public final b(J)V
    .locals 3

    iget-object v0, p0, Lwd6$b;->c:Lwd6;

    iget-object v1, v0, Lwd6;->o1:Lwd6$b;

    if-eq p0, v1, :cond_0

    return-void

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lwd6;->V0(Lwd6;)V

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lwd6;->u1(J)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lwd6$b;->c:Lwd6;

    invoke-static {p0, p1}, Lwd6;->W0(Lwd6;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p1}, Lblb;->L0(II)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lwd6$b;->b(J)V

    const/4 p0, 0x1

    return p0
.end method
