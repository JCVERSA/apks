.class public final Lcom/transsion/vishatransfers/manager/TransferNotificationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/vishatransfers/manager/TransferNotificationManager$a;
    }
.end annotation


# static fields
.field public static final s:Lcom/transsion/vishatransfers/manager/TransferNotificationManager$a;

.field public static volatile t:Lcom/transsion/vishatransfers/manager/TransferNotificationManager;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/os/Handler;

.field public c:Lcom/transsion/vishatransfers/service/TransferService;

.field public d:Z

.field public e:Landroid/content/Context;

.field public f:Lcom/transsion/vishatransfer/manager/ITransferHelper;

.field public g:I

.field public h:I

.field public i:J

.field public j:J

.field public k:I

.field public final l:I

.field public m:I

.field public n:I

.field public final o:Ljava/lang/Object;

.field public final p:Lcom/transsion/vishatransfers/manager/TransferNotificationManager$b;

.field public final q:Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;

.field public r:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->s:Lcom/transsion/vishatransfers/manager/TransferNotificationManager$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, "TransferNotificationManager"

    iput-object v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->a:Ljava/lang/String;

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->b:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->g:I

    const/16 v0, 0x1f4

    .line 6
    iput v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->l:I

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->o:Ljava/lang/Object;

    .line 8
    new-instance v0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager$b;

    invoke-direct {v0, p0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager$b;-><init>(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)V

    iput-object v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->p:Lcom/transsion/vishatransfers/manager/TransferNotificationManager$b;

    .line 9
    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->e:Landroid/content/Context;

    .line 10
    sget-object v0, Lcom/transsion/vishatransfer/manager/TransferManager;->INSTANCE:Lcom/transsion/vishatransfer/manager/TransferManager;

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/transsion/vishatransfer/manager/TransferManager;->getInstance$default(Lcom/transsion/vishatransfer/manager/TransferManager;Landroid/app/Application;IILjava/lang/Object;)Lcom/transsion/vishatransfer/manager/ITransferHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->f:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    .line 11
    new-instance v0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager$transferListener$1;

    invoke-direct {v0, p0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager$transferListener$1;-><init>(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)V

    iput-object v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->q:Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;ZLjava/lang/String;I)Lzfb;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->x(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;ZLjava/lang/String;I)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->u(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)V

    return-void
.end method

.method public static final synthetic c(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->v()V

    return-void
.end method

.method public static final synthetic d()Lcom/transsion/vishatransfers/manager/TransferNotificationManager;
    .locals 1

    sget-object v0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->t:Lcom/transsion/vishatransfers/manager/TransferNotificationManager;

    return-object v0
.end method

.method public static final synthetic e(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;II)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->y(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)Lcom/transsion/vishatransfer/manager/ITransferHelper;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->f:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)Lcom/transsion/vishatransfers/service/TransferService;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->c:Lcom/transsion/vishatransfers/service/TransferService;

    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)I
    .locals 0

    iget p0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->m:I

    return p0
.end method

.method public static final synthetic j(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)I
    .locals 0

    iget p0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->n:I

    return p0
.end method

.method public static final synthetic k(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->B()Z

    move-result p0

    return p0
.end method

.method public static final synthetic l(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->d:Z

    return-void
.end method

.method public static final synthetic m(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)V
    .locals 0

    sput-object p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->t:Lcom/transsion/vishatransfers/manager/TransferNotificationManager;

    return-void
.end method

.method public static final synthetic n(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->i:J

    return-void
.end method

.method public static final synthetic o(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;Lcom/transsion/vishatransfers/service/TransferService;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->c:Lcom/transsion/vishatransfers/service/TransferService;

    return-void
.end method

.method public static final synthetic p(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->m:I

    return-void
.end method

.method public static final synthetic q(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->n:I

    return-void
.end method

.method public static final synthetic r(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->H()V

    return-void
.end method

.method public static final u(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->f:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->g:I

    invoke-interface {v0, p0}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->cancelTransfer(I)V

    :cond_0
    return-void
.end method

.method public static final x(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;ZLjava/lang/String;I)Lzfb;
    .locals 0

    const-string p3, "reason"

    invoke-static {p2, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "disconnectAsync: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method


# virtual methods
.method public final A()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->i:J

    sub-long/2addr v0, v2

    const/16 p0, 0x3e8

    int-to-long v2, p0

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final B()Z
    .locals 1

    iget p0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->g:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final C()V
    .locals 10

    iget v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->h:I

    iget v1, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->r:I

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->f:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->B()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->getRecentSpeedPerSecond(Z)J

    move-result-wide v0

    const/16 v2, 0x400

    int-to-long v2, v2

    div-long v6, v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->i:J

    sub-long v8, v0, v2

    sget-object v4, Lcom/transsion/dbdata/markpoint/a;->a:Lcom/transsion/dbdata/markpoint/a$a;

    iget v5, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->h:I

    invoke-virtual/range {v4 .. v9}, Lcom/transsion/dbdata/markpoint/a$a;->r(IJJ)V

    iget v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->h:I

    iput v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->r:I

    :cond_0
    return-void
.end method

.method public final D()V
    .locals 12

    iget-object v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->f:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->B()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->getAverageSpeedPerSecond(Z)J

    move-result-wide v0

    const/16 v2, 0x400

    int-to-long v2, v2

    div-long v8, v0, v2

    invoke-virtual {p0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->A()J

    move-result-wide v6

    iget v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->n:I

    iget v10, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->m:I

    sub-int v11, v0, v10

    if-ne v10, v0, :cond_0

    const/4 p0, 0x1

    :goto_0
    move v5, p0

    goto :goto_1

    :cond_0
    if-lez v11, :cond_1

    const/4 p0, 0x3

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    sget-object v4, Lcom/transsion/dbdata/markpoint/a;->a:Lcom/transsion/dbdata/markpoint/a$a;

    invoke-virtual/range {v4 .. v11}, Lcom/transsion/dbdata/markpoint/a$a;->q(IJJII)V

    :cond_2
    return-void
.end method

.method public final E(IJ)Z
    .locals 4

    const/16 v0, 0x64

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->j:J

    sub-long/2addr p2, v2

    iget v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->l:I

    int-to-long v2, v0

    cmp-long p2, p2, v2

    const/4 p3, 0x0

    if-gez p2, :cond_1

    return p3

    :cond_1
    iget p0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->k:I

    sub-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-lt p0, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, p3

    :goto_0
    return v1
.end method

.method public final F()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->a:Ljava/lang/String;

    const-string v1, "startReceiveFile"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->I()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->g:I

    invoke-virtual {p0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->s()V

    iget-object v1, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->f:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->q:Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;

    invoke-interface {v1, p0, v0}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->registerListener(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;I)V

    :cond_0
    return-void
.end method

.method public final G()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->a:Ljava/lang/String;

    const-string v1, "startSendFile"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->I()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->g:I

    invoke-virtual {p0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->s()V

    iget-object v1, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->f:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->q:Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;

    invoke-interface {v1, p0, v0}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->registerListener(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;I)V

    :cond_0
    return-void
.end method

.method public final H()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->w()V

    return-void
.end method

.method public final I()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->e:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v2, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->p:Lcom/transsion/vishatransfers/manager/TransferNotificationManager$b;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->d:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->c:Lcom/transsion/vishatransfers/service/TransferService;

    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final J(JJII)V
    .locals 2

    invoke-virtual {p0, p5, p6}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->y(II)Ljava/lang/String;

    move-result-object p5

    iget-object p6, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->e:Landroid/content/Context;

    invoke-static {p6, p3, p4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p6

    iget-object v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->e:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, "/"

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    int-to-long v0, v0

    mul-long/2addr p3, v0

    div-long/2addr p3, p1

    long-to-int p1, p3

    :goto_0
    iput p1, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->h:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->E(IJ)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->c:Lcom/transsion/vishatransfers/service/TransferService;

    if-eqz p1, :cond_1

    iget p2, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->h:I

    invoke-virtual {p1, p5, p6, p2}, Lcom/transsion/vishatransfers/service/TransferService;->d(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->j:J

    iget p1, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->h:I

    iput p1, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->k:I

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->C()V

    return-void
.end method

.method public final s()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->e:Landroid/content/Context;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->e:Landroid/content/Context;

    const-class v2, Lcom/transsion/vishatransfers/service/TransferService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->e:Landroid/content/Context;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    iget-object v1, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->e:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->p:Lcom/transsion/vishatransfers/manager/TransferNotificationManager$b;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_1
    return-void
.end method

.method public final t()V
    .locals 12

    iget-object v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->a:Ljava/lang/String;

    const-string v1, "cancelTransfer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/transsion/vishatransfers/R$string;->visha_trans_has_cancel:I

    invoke-static {v0}, Lcom/transsion/utils/ToastUtils;->q(I)V

    iget-object v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->c:Lcom/transsion/vishatransfers/service/TransferService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/vishatransfers/service/TransferService;->c()V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/transsion/vishatransfer/data/Conversation;

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const/4 v2, 0x5

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/transsion/vishatransfer/data/Conversation;-><init>(IJZIILcom/transsion/vishatransfer/data/DeviceInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->f:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->sendConversationToService(Lcom/transsion/vishatransfer/data/Conversation;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->f:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->g:I

    invoke-interface {v0, v1}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->cancelTransfer(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/transsion/vishatransfer/data/Conversation;

    const/16 v10, 0x3e

    const/4 v11, 0x0

    const/4 v3, 0x4

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/transsion/vishatransfer/data/Conversation;-><init>(IJZIILcom/transsion/vishatransfer/data/DeviceInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->f:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    if-eqz v1, :cond_3

    invoke-interface {v1, v0}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->sendConversationToClient(Lcom/transsion/vishatransfer/data/Conversation;)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->b:Landroid/os/Handler;

    new-instance v1, Lc6b;

    invoke-direct {v1, p0}, Lc6b;-><init>(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    sget-object v0, Lcom/transsion/dbdata/markpoint/a;->a:Lcom/transsion/dbdata/markpoint/a$a;

    const-string v1, "transferring"

    invoke-virtual {p0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->z()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/dbdata/markpoint/a$a;->b(Ljava/lang/String;I)V

    sget-object v3, Lqi4;->b:Lqi4;

    new-instance v6, Lcom/transsion/vishatransfers/manager/TransferNotificationManager$cancelTransfer$2;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager$cancelTransfer$2;-><init>(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;Lwh1;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public final v()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/vishatransfers/R$string;->visha_send_success:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/vishatransfers/R$string;->visha_receive_success:I

    :goto_0
    invoke-static {v0}, Lcom/transsion/utils/ToastUtils;->q(I)V

    iget-object v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->c:Lcom/transsion/vishatransfers/service/TransferService;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/vishatransfers/service/TransferService;->c()V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->D()V

    invoke-virtual {p0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->w()V

    return-void
.end method

.method public final w()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->a:Ljava/lang/String;

    const-string v1, "disconnect: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->c:Lcom/transsion/vishatransfers/service/TransferService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/vishatransfers/service/TransferService;->c()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->f:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->g:I

    invoke-interface {v0, v1}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->cancelTransfer(I)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->f:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->q:Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;

    invoke-interface {v0, v1}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->unregisterCallback(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->f:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    if-eqz v0, :cond_3

    new-instance v1, Ld6b;

    invoke-direct {v1, p0}, Ld6b;-><init>(Lcom/transsion/vishatransfers/manager/TransferNotificationManager;)V

    invoke-interface {v0, v1}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->disconnectAsync(Lu74;)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->I()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->h:I

    iput v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->r:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->i:J

    iput-wide v1, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->j:J

    iput v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->k:I

    iput v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->m:I

    iput v0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->n:I

    return-void
.end method

.method public final y(II)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move p1, v0

    :cond_0
    if-nez p2, :cond_1

    move p2, v0

    :cond_1
    if-ne p2, v0, :cond_2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->B()Z

    move-result p2

    if-eqz p2, :cond_3

    sget p2, Lcom/transsion/vishatransfers/R$string;->visha_sending_files:I

    goto :goto_1

    :cond_3
    sget p2, Lcom/transsion/vishatransfers/R$string;->visha_receiving_files:I

    :goto_1
    iget-object p0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->e:Landroid/content/Context;

    if-eqz p0, :cond_4

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    :cond_4
    const-string p0, ""

    :cond_5
    return-object p0
.end method

.method public final z()I
    .locals 0

    iget p0, p0, Lcom/transsion/vishatransfers/manager/TransferNotificationManager;->h:I

    return p0
.end method
