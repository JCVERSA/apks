.class public final Lsij;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lshj;


# instance fields
.field public final synthetic a:Lxij;


# direct methods
.method public synthetic constructor <init>(Lxij;Lwij;)V
    .locals 0

    iput-object p1, p0, Lsij;->a:Lxij;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    iget-object p0, p0, Lsij;->a:Lxij;

    invoke-static {p0}, Lxij;->u(Lxij;)Lohj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lxij;->u(Lxij;)Lohj;

    move-result-object p0

    check-cast p0, Lbjj;

    iget-object p0, p0, Lbjj;->a:Ldjj;

    invoke-static {p0}, Ldjj;->N0(Ldjj;)Lchj;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lchj;->v(J)V

    :cond_0
    return-void
.end method

.method public final b(J)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring impossibly large audio latency: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DefaultAudioSink"

    invoke-static {p1, p0}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c(IJ)V
    .locals 10

    iget-object p0, p0, Lsij;->a:Lxij;

    invoke-static {p0}, Lxij;->u(Lxij;)Lohj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p0}, Lxij;->q(Lxij;)J

    move-result-wide v2

    sub-long v8, v0, v2

    invoke-static {p0}, Lxij;->u(Lxij;)Lohj;

    move-result-object p0

    check-cast p0, Lbjj;

    iget-object p0, p0, Lbjj;->a:Ldjj;

    invoke-static {p0}, Ldjj;->N0(Ldjj;)Lchj;

    move-result-object v4

    move v5, p1

    move-wide v6, p2

    invoke-virtual/range {v4 .. v9}, Lchj;->x(IJJ)V

    :cond_0
    return-void
.end method

.method public final d(JJJJ)V
    .locals 5

    iget-object p0, p0, Lsij;->a:Lxij;

    invoke-static {p0}, Lxij;->r(Lxij;)J

    move-result-wide v0

    invoke-static {p0}, Lxij;->s(Lxij;)J

    move-result-wide v2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Spurious audio timestamp (frame position mismatch): "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DefaultAudioSink"

    invoke-static {p1, p0}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final e(JJJJ)V
    .locals 5

    iget-object p0, p0, Lsij;->a:Lxij;

    invoke-static {p0}, Lxij;->r(Lxij;)J

    move-result-wide v0

    invoke-static {p0}, Lxij;->s(Lxij;)J

    move-result-wide v2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Spurious audio timestamp (system clock mismatch): "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DefaultAudioSink"

    invoke-static {p1, p0}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
