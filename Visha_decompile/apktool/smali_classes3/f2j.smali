.class public final Lf2j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt7j;


# instance fields
.field public final a:Lnrj;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:Ljava/util/HashMap;

.field public h:J


# direct methods
.method public constructor <init>()V
    .locals 9

    new-instance v0, Lnrj;

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Lnrj;-><init>(ZI)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    const-string v3, "bufferForPlaybackMs"

    const-string v4, "0"

    invoke-static {v1, v2, v3, v4}, Lf2j;->k(IILjava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x7d0

    const-string v6, "bufferForPlaybackAfterRebufferMs"

    invoke-static {v5, v2, v6, v4}, Lf2j;->k(IILjava/lang/String;Ljava/lang/String;)V

    const v7, 0xc350

    const-string v8, "minBufferMs"

    invoke-static {v7, v1, v8, v3}, Lf2j;->k(IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v5, v8, v6}, Lf2j;->k(IILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "maxBufferMs"

    invoke-static {v7, v7, v1, v8}, Lf2j;->k(IILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "backBufferDurationMs"

    invoke-static {v2, v2, v1, v4}, Lf2j;->k(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lf2j;->a:Lnrj;

    const-wide/32 v0, 0xc350

    invoke-static {v0, v1}, Lkfh;->N(J)J

    move-result-wide v2

    iput-wide v2, p0, Lf2j;->b:J

    invoke-static {v0, v1}, Lkfh;->N(J)J

    move-result-wide v0

    iput-wide v0, p0, Lf2j;->c:J

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Lkfh;->N(J)J

    move-result-wide v0

    iput-wide v0, p0, Lf2j;->d:J

    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Lkfh;->N(J)J

    move-result-wide v0

    iput-wide v0, p0, Lf2j;->e:J

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lkfh;->N(J)J

    move-result-wide v0

    iput-wide v0, p0, Lf2j;->f:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lf2j;->g:Ljava/util/HashMap;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lf2j;->h:J

    return-void
.end method

.method public static k(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be less than "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0, p2}, Ln7g;->e(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Ltfj;)V
    .locals 0

    invoke-virtual {p0, p1}, Lf2j;->l(Ltfj;)V

    return-void
.end method

.method public final b(Ltfj;)V
    .locals 7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lf2j;->h:J

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v6, v5

    :cond_1
    :goto_0
    const-string v2, "Players that share the same LoadControl must share the same playback thread. See ExoPlayer.Builder.setPlaybackLooper(Looper)."

    invoke-static {v6, v2}, Ln7g;->g(ZLjava/lang/Object;)V

    iput-wide v0, p0, Lf2j;->h:J

    iget-object p0, p0, Lf2j;->g:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lz1j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz1j;-><init>(Lb2j;)V

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz1j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 p1, 0xc80000

    iput p1, p0, Lz1j;->b:I

    iput-boolean v5, p0, Lz1j;->a:Z

    return-void
.end method

.method public final c(Ltfj;)V
    .locals 2

    invoke-virtual {p0, p1}, Lf2j;->l(Ltfj;)V

    iget-object p1, p0, Lf2j;->g:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lf2j;->h:J

    :cond_0
    return-void
.end method

.method public final d(Ltfj;)J
    .locals 0

    iget-wide p0, p0, Lf2j;->f:J

    return-wide p0
.end method

.method public final e(Lw4f;Lbnj;J)Z
    .locals 0

    iget-object p0, p0, Lf2j;->g:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz1j;

    iget-boolean p1, p1, Lz1j;->a:Z

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final f(Lr7j;)Z
    .locals 9

    iget-boolean v0, p1, Lr7j;->d:Z

    iget-wide v1, p1, Lr7j;->b:J

    iget v3, p1, Lr7j;->c:F

    invoke-static {v1, v2, v3}, Lkfh;->M(JF)J

    move-result-wide v1

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lf2j;->e:J

    goto :goto_0

    :cond_0
    iget-wide v3, p0, Lf2j;->d:J

    :goto_0
    iget-wide v5, p1, Lr7j;->e:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v5, v7

    if-eqz p1, :cond_1

    const-wide/16 v7, 0x2

    div-long/2addr v5, v7

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_1
    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_3

    cmp-long p1, v1, v3

    if-gez p1, :cond_3

    iget-object p1, p0, Lf2j;->a:Lnrj;

    invoke-virtual {p1}, Lnrj;->a()I

    move-result p1

    invoke-virtual {p0}, Lf2j;->j()I

    move-result p0

    if-lt p1, p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final g(Lr7j;)Z
    .locals 9

    iget-object v0, p0, Lf2j;->g:Ljava/util/HashMap;

    iget-object v1, p1, Lr7j;->a:Ltfj;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lf2j;->a:Lnrj;

    invoke-virtual {v1}, Lnrj;->a()I

    move-result v1

    invoke-virtual {p0}, Lf2j;->j()I

    move-result v2

    iget-wide v3, p0, Lf2j;->b:J

    iget v5, p1, Lr7j;->c:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v5, v6

    if-lez v6, :cond_0

    invoke-static {v3, v4, v5}, Lkfh;->L(JF)J

    move-result-wide v3

    iget-wide v5, p0, Lf2j;->c:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_0
    iget-wide v5, p1, Lr7j;->b:J

    const-wide/32 v7, 0x7a120

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    cmp-long p1, v5, v3

    const/4 v3, 0x0

    if-gez p1, :cond_2

    if-ge v1, v2, :cond_1

    const/4 v3, 0x1

    :cond_1
    iput-boolean v3, v0, Lz1j;->a:Z

    if-nez v3, :cond_4

    cmp-long p0, v5, v7

    if-gez p0, :cond_4

    const-string p0, "DefaultLoadControl"

    const-string p1, "Target buffer size reached with less than 500ms of buffered media data."

    invoke-static {p0, p1}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-wide p0, p0, Lf2j;->c:J

    cmp-long p0, v5, p0

    if-gez p0, :cond_3

    if-lt v1, v2, :cond_4

    :cond_3
    iput-boolean v3, v0, Lz1j;->a:Z

    :cond_4
    :goto_0
    iget-boolean p0, v0, Lz1j;->a:Z

    return p0
.end method

.method public final h(Lr7j;Lnpj;[Ltqj;)V
    .locals 5

    iget-object p2, p0, Lf2j;->g:Ljava/util/HashMap;

    iget-object p1, p1, Lr7j;->a:Ltfj;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz1j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length p2, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/high16 v2, 0xc80000

    if-ge v0, p2, :cond_1

    aget-object v3, p3, v0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lxqj;->zzg()Ln5f;

    move-result-object v3

    iget v3, v3, Ln5f;->c:I

    const/high16 v4, 0x20000

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move v2, v4

    goto :goto_1

    :pswitch_1
    const/high16 v2, 0x7d00000

    goto :goto_1

    :pswitch_2
    const/high16 v2, 0x89a0000

    :goto_1
    :pswitch_3
    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Lz1j;->b:I

    invoke-virtual {p0}, Lf2j;->m()V

    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Ltfj;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final j()I
    .locals 2

    iget-object p0, p0, Lf2j;->g:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz1j;

    iget v1, v1, Lz1j;->b:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final l(Ltfj;)V
    .locals 1

    iget-object v0, p0, Lf2j;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lf2j;->m()V

    :cond_0
    return-void
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Lf2j;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lf2j;->a:Lnrj;

    invoke-virtual {p0}, Lnrj;->e()V

    return-void

    :cond_0
    iget-object v0, p0, Lf2j;->a:Lnrj;

    invoke-virtual {p0}, Lf2j;->j()I

    move-result p0

    invoke-virtual {v0, p0}, Lnrj;->f(I)V

    return-void
.end method

.method public final zzk()Lnrj;
    .locals 0

    iget-object p0, p0, Lf2j;->a:Lnrj;

    return-object p0
.end method
