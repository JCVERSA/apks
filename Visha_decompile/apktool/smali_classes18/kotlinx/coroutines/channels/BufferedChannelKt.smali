.class public abstract Lkotlinx/coroutines/channels/BufferedChannelKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Leu0;

.field public static final b:I

.field public static final c:I

.field public static final d:Ly7a;

.field public static final e:Ly7a;

.field public static final f:Ly7a;

.field public static final g:Ly7a;

.field public static final h:Ly7a;

.field public static final i:Ly7a;

.field public static final j:Ly7a;

.field public static final k:Ly7a;

.field public static final l:Ly7a;

.field public static final m:Ly7a;

.field public static final n:Ly7a;

.field public static final o:Ly7a;

.field public static final p:Ly7a;

.field public static final q:Ly7a;

.field public static final r:Ly7a;

.field public static final s:Ly7a;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v6, Leu0;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Leu0;-><init>(JLeu0;Lkotlinx/coroutines/channels/BufferedChannel;I)V

    sput-object v6, Lkotlinx/coroutines/channels/BufferedChannelKt;->a:Leu0;

    const/16 v11, 0xc

    const/4 v12, 0x0

    const-string v7, "kotlinx.coroutines.bufferedChannel.segmentSize"

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lnaa;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    const/16 v5, 0xc

    const/4 v6, 0x0

    const-string v1, "kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations"

    const/16 v2, 0x2710

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lnaa;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->c:I

    new-instance v0, Ly7a;

    const-string v1, "BUFFERED"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->d:Ly7a;

    new-instance v0, Ly7a;

    const-string v1, "SHOULD_BUFFER"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->e:Ly7a;

    new-instance v0, Ly7a;

    const-string v1, "S_RESUMING_BY_RCV"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->f:Ly7a;

    new-instance v0, Ly7a;

    const-string v1, "RESUMING_BY_EB"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->g:Ly7a;

    new-instance v0, Ly7a;

    const-string v1, "POISONED"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->h:Ly7a;

    new-instance v0, Ly7a;

    const-string v1, "DONE_RCV"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->i:Ly7a;

    new-instance v0, Ly7a;

    const-string v1, "INTERRUPTED_SEND"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->j:Ly7a;

    new-instance v0, Ly7a;

    const-string v1, "INTERRUPTED_RCV"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->k:Ly7a;

    new-instance v0, Ly7a;

    const-string v1, "CHANNEL_CLOSED"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->l:Ly7a;

    new-instance v0, Ly7a;

    const-string v1, "SUSPEND"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->m:Ly7a;

    new-instance v0, Ly7a;

    const-string v1, "SUSPEND_NO_WAITER"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->n:Ly7a;

    new-instance v0, Ly7a;

    const-string v1, "FAILED"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->o:Ly7a;

    new-instance v0, Ly7a;

    const-string v1, "NO_RECEIVE_RESULT"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->p:Ly7a;

    new-instance v0, Ly7a;

    const-string v1, "CLOSE_HANDLER_CLOSED"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->q:Ly7a;

    new-instance v0, Ly7a;

    const-string v1, "CLOSE_HANDLER_INVOKED"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->r:Ly7a;

    new-instance v0, Ly7a;

    const-string v1, "NO_CLOSE_CAUSE"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->s:Ly7a;

    return-void
.end method

.method public static final A(I)J
    .locals 2

    if-eqz p0, :cond_1

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_0

    int-to-long v0, p0

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static final B(Lcr0;Ljava/lang/Object;Lu74;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, p2}, Lcr0;->tryResume(Ljava/lang/Object;Ljava/lang/Object;Lu74;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lcr0;->completeResume(Ljava/lang/Object;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic C(Lcr0;Ljava/lang/Object;Lu74;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannelKt;->B(Lcr0;Ljava/lang/Object;Lu74;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic a(JZ)J
    .locals 0

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannelKt;->v(JZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic b(JI)J
    .locals 0

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannelKt;->w(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic c(JLeu0;)Leu0;
    .locals 0

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannelKt;->x(JLeu0;)Leu0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d()Ly7a;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->q:Ly7a;

    return-object v0
.end method

.method public static final synthetic e()Ly7a;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->r:Ly7a;

    return-object v0
.end method

.method public static final synthetic f()Ly7a;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->i:Ly7a;

    return-object v0
.end method

.method public static final synthetic g()I
    .locals 1

    sget v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->c:I

    return v0
.end method

.method public static final synthetic h()Ly7a;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->o:Ly7a;

    return-object v0
.end method

.method public static final synthetic i()Ly7a;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->k:Ly7a;

    return-object v0
.end method

.method public static final synthetic j()Ly7a;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->j:Ly7a;

    return-object v0
.end method

.method public static final synthetic k()Ly7a;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->e:Ly7a;

    return-object v0
.end method

.method public static final synthetic l()Ly7a;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->s:Ly7a;

    return-object v0
.end method

.method public static final synthetic m()Ly7a;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->p:Ly7a;

    return-object v0
.end method

.method public static final synthetic n()Leu0;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->a:Leu0;

    return-object v0
.end method

.method public static final synthetic o()Ly7a;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->h:Ly7a;

    return-object v0
.end method

.method public static final synthetic p()Ly7a;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->g:Ly7a;

    return-object v0
.end method

.method public static final synthetic q()Ly7a;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->f:Ly7a;

    return-object v0
.end method

.method public static final synthetic r()Ly7a;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->m:Ly7a;

    return-object v0
.end method

.method public static final synthetic s()Ly7a;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->n:Ly7a;

    return-object v0
.end method

.method public static final synthetic t(I)J
    .locals 2

    invoke-static {p0}, Lkotlinx/coroutines/channels/BufferedChannelKt;->A(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic u(Lcr0;Ljava/lang/Object;Lu74;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannelKt;->B(Lcr0;Ljava/lang/Object;Lu74;)Z

    move-result p0

    return p0
.end method

.method public static final v(JZ)J
    .locals 2

    if-eqz p2, :cond_0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static final w(JI)J
    .locals 2

    int-to-long v0, p2

    const/16 p2, 0x3c

    shl-long/2addr v0, p2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static final x(JLeu0;)Leu0;
    .locals 7

    new-instance v6, Leu0;

    invoke-virtual {p2}, Leu0;->y()Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    move-wide v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Leu0;-><init>(JLeu0;Lkotlinx/coroutines/channels/BufferedChannel;I)V

    return-object v6
.end method

.method public static final y()Lle5;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt$createSegmentFunction$1;->INSTANCE:Lkotlinx/coroutines/channels/BufferedChannelKt$createSegmentFunction$1;

    return-object v0
.end method

.method public static final z()Ly7a;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->l:Ly7a;

    return-object v0
.end method
