.class final Lcom/yandex/mobile/ads/impl/t60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/yandex/mobile/ads/impl/pw0$a;
.implements Lcom/yandex/mobile/ads/impl/f62$a;
.implements Lcom/yandex/mobile/ads/impl/yw0$d;
.implements Lcom/yandex/mobile/ads/impl/e00$a;
.implements Lcom/yandex/mobile/ads/impl/ni1$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/t60$e;,
        Lcom/yandex/mobile/ads/impl/t60$d;,
        Lcom/yandex/mobile/ads/impl/t60$g;,
        Lcom/yandex/mobile/ads/impl/t60$a;,
        Lcom/yandex/mobile/ads/impl/t60$b;,
        Lcom/yandex/mobile/ads/impl/t60$c;,
        Lcom/yandex/mobile/ads/impl/t60$f;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:I

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:I

.field private L:Lcom/yandex/mobile/ads/impl/t60$g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private M:J

.field private N:I

.field private O:Z

.field private P:Lcom/yandex/mobile/ads/impl/m60;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private Q:J

.field private final b:[Lcom/yandex/mobile/ads/impl/yo1;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/yandex/mobile/ads/impl/yo1;",
            ">;"
        }
    .end annotation
.end field

.field private final d:[Lcom/yandex/mobile/ads/impl/zo1;

.field private final e:Lcom/yandex/mobile/ads/impl/f62;

.field private final f:Lcom/yandex/mobile/ads/impl/g62;

.field private final g:Lcom/yandex/mobile/ads/impl/cs0;

.field private final h:Lcom/yandex/mobile/ads/impl/wi;

.field private final i:Lcom/yandex/mobile/ads/impl/hf0;

.field private final j:Landroid/os/HandlerThread;

.field private final k:Landroid/os/Looper;

.field private final l:Lcom/yandex/mobile/ads/impl/i52$d;

.field private final m:Lcom/yandex/mobile/ads/impl/i52$b;

.field private final n:J

.field private final o:Z

.field private final p:Lcom/yandex/mobile/ads/impl/e00;

.field private final q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/yandex/mobile/ads/impl/t60$c;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Lcom/yandex/mobile/ads/impl/jp;

.field private final s:Lcom/yandex/mobile/ads/impl/t60$e;

.field private final t:Lcom/yandex/mobile/ads/impl/tw0;

.field private final u:Lcom/yandex/mobile/ads/impl/yw0;

.field private final v:Lcom/yandex/mobile/ads/impl/bs0;

.field private final w:J

.field private x:Lcom/yandex/mobile/ads/impl/fx1;

.field private y:Lcom/yandex/mobile/ads/impl/zh1;

.field private z:Lcom/yandex/mobile/ads/impl/t60$d;


# direct methods
.method public constructor <init>([Lcom/yandex/mobile/ads/impl/yo1;Lcom/yandex/mobile/ads/impl/f62;Lcom/yandex/mobile/ads/impl/g62;Lcom/yandex/mobile/ads/impl/cs0;Lcom/yandex/mobile/ads/impl/wi;ILcom/yandex/mobile/ads/impl/ed;Lcom/yandex/mobile/ads/impl/fx1;Lcom/yandex/mobile/ads/impl/b00;JLandroid/os/Looper;Lcom/yandex/mobile/ads/impl/y32;Lcom/yandex/mobile/ads/impl/t60$e;Lcom/yandex/mobile/ads/impl/mi1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p14, p0, Lcom/yandex/mobile/ads/impl/t60;->s:Lcom/yandex/mobile/ads/impl/t60$e;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/t60;->b:[Lcom/yandex/mobile/ads/impl/yo1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/t60;->e:Lcom/yandex/mobile/ads/impl/f62;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/t60;->f:Lcom/yandex/mobile/ads/impl/g62;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/t60;->g:Lcom/yandex/mobile/ads/impl/cs0;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/t60;->h:Lcom/yandex/mobile/ads/impl/wi;

    iput p6, p0, Lcom/yandex/mobile/ads/impl/t60;->F:I

    const/4 p6, 0x0

    iput-boolean p6, p0, Lcom/yandex/mobile/ads/impl/t60;->G:Z

    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/t60;->x:Lcom/yandex/mobile/ads/impl/fx1;

    iput-object p9, p0, Lcom/yandex/mobile/ads/impl/t60;->v:Lcom/yandex/mobile/ads/impl/bs0;

    iput-wide p10, p0, Lcom/yandex/mobile/ads/impl/t60;->w:J

    iput-boolean p6, p0, Lcom/yandex/mobile/ads/impl/t60;->B:Z

    iput-object p13, p0, Lcom/yandex/mobile/ads/impl/t60;->r:Lcom/yandex/mobile/ads/impl/jp;

    const-wide p8, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p8, p0, Lcom/yandex/mobile/ads/impl/t60;->Q:J

    invoke-interface {p4}, Lcom/yandex/mobile/ads/impl/cs0;->e()J

    move-result-wide p8

    iput-wide p8, p0, Lcom/yandex/mobile/ads/impl/t60;->n:J

    invoke-interface {p4}, Lcom/yandex/mobile/ads/impl/cs0;->a()Z

    move-result p4

    iput-boolean p4, p0, Lcom/yandex/mobile/ads/impl/t60;->o:Z

    invoke-static {p3}, Lcom/yandex/mobile/ads/impl/zh1;->a(Lcom/yandex/mobile/ads/impl/g62;)Lcom/yandex/mobile/ads/impl/zh1;

    move-result-object p3

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    new-instance p4, Lcom/yandex/mobile/ads/impl/t60$d;

    invoke-direct {p4, p3}, Lcom/yandex/mobile/ads/impl/t60$d;-><init>(Lcom/yandex/mobile/ads/impl/zh1;)V

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/t60;->z:Lcom/yandex/mobile/ads/impl/t60$d;

    array-length p3, p1

    new-array p3, p3, [Lcom/yandex/mobile/ads/impl/zo1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/t60;->d:[Lcom/yandex/mobile/ads/impl/zo1;

    :goto_0
    array-length p3, p1

    if-ge p6, p3, :cond_0

    aget-object p3, p1, p6

    invoke-interface {p3, p6, p15}, Lcom/yandex/mobile/ads/impl/yo1;->a(ILcom/yandex/mobile/ads/impl/mi1;)V

    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/t60;->d:[Lcom/yandex/mobile/ads/impl/zo1;

    aget-object p4, p1, p6

    invoke-interface {p4}, Lcom/yandex/mobile/ads/impl/yo1;->n()Lcom/yandex/mobile/ads/impl/sk;

    move-result-object p4

    aput-object p4, p3, p6

    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/yandex/mobile/ads/impl/e00;

    invoke-direct {p1, p0, p13}, Lcom/yandex/mobile/ads/impl/e00;-><init>(Lcom/yandex/mobile/ads/impl/e00$a;Lcom/yandex/mobile/ads/impl/y32;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/t60;->p:Lcom/yandex/mobile/ads/impl/e00;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/t60;->q:Ljava/util/ArrayList;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/wx1;->a()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/t60;->c:Ljava/util/Set;

    new-instance p1, Lcom/yandex/mobile/ads/impl/i52$d;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/i52$d;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/t60;->l:Lcom/yandex/mobile/ads/impl/i52$d;

    new-instance p1, Lcom/yandex/mobile/ads/impl/i52$b;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/i52$b;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/t60;->m:Lcom/yandex/mobile/ads/impl/i52$b;

    invoke-virtual {p2, p0, p5}, Lcom/yandex/mobile/ads/impl/f62;->a(Lcom/yandex/mobile/ads/impl/f62$a;Lcom/yandex/mobile/ads/impl/wi;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/t60;->O:Z

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/yandex/mobile/ads/impl/tw0;

    invoke-direct {p2, p7, p1}, Lcom/yandex/mobile/ads/impl/tw0;-><init>(Lcom/yandex/mobile/ads/impl/ed;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    new-instance p2, Lcom/yandex/mobile/ads/impl/yw0;

    invoke-direct {p2, p0, p7, p1, p15}, Lcom/yandex/mobile/ads/impl/yw0;-><init>(Lcom/yandex/mobile/ads/impl/yw0$d;Lcom/yandex/mobile/ads/impl/ed;Landroid/os/Handler;Lcom/yandex/mobile/ads/impl/mi1;)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/t60;->u:Lcom/yandex/mobile/ads/impl/yw0;

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "ExoPlayer:Playback"

    const/16 p3, -0x10

    invoke-direct {p1, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/t60;->j:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/t60;->k:Landroid/os/Looper;

    invoke-virtual {p13, p1, p0}, Lcom/yandex/mobile/ads/impl/y32;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/yandex/mobile/ads/impl/hf0;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/t60;->i:Lcom/yandex/mobile/ads/impl/hf0;

    return-void
.end method

.method private a(J)J
    .locals 5

    .line 70
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tw0;->d()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 71
    :cond_0
    iget-wide v3, p0, Lcom/yandex/mobile/ads/impl/t60;->M:J

    .line 72
    invoke-virtual {v0, v3, v4}, Lcom/yandex/mobile/ads/impl/qw0;->c(J)J

    move-result-wide v3

    sub-long/2addr p1, v3

    .line 73
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private a(Lcom/yandex/mobile/ads/impl/i52;Ljava/lang/Object;J)J
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->m:Lcom/yandex/mobile/ads/impl/i52$b;

    invoke-virtual {p1, p2, v0}, Lcom/yandex/mobile/ads/impl/i52;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/i52$b;)Lcom/yandex/mobile/ads/impl/i52$b;

    move-result-object p2

    iget p2, p2, Lcom/yandex/mobile/ads/impl/i52$b;->d:I

    .line 48
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->l:Lcom/yandex/mobile/ads/impl/i52$d;

    const-wide/16 v1, 0x0

    .line 49
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/yandex/mobile/ads/impl/i52;->a(ILcom/yandex/mobile/ads/impl/i52$d;J)Lcom/yandex/mobile/ads/impl/i52$d;

    .line 50
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/t60;->l:Lcom/yandex/mobile/ads/impl/i52$d;

    iget-wide v0, p1, Lcom/yandex/mobile/ads/impl/i52$d;->g:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/i52$d;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/t60;->l:Lcom/yandex/mobile/ads/impl/i52$d;

    iget-boolean p2, p1, Lcom/yandex/mobile/ads/impl/i52$d;->j:Z

    if-nez p2, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    iget-wide p1, p1, Lcom/yandex/mobile/ads/impl/i52$d;->h:J

    .line 52
    sget v0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    goto :goto_0

    .line 54
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr p1, v0

    .line 55
    :goto_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->l:Lcom/yandex/mobile/ads/impl/i52$d;

    iget-wide v0, v0, Lcom/yandex/mobile/ads/impl/i52$d;->g:J

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Lcom/yandex/mobile/ads/impl/f92;->a(J)J

    move-result-wide p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/t60;->m:Lcom/yandex/mobile/ads/impl/i52$b;

    .line 56
    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/i52$b;->f:J

    add-long/2addr p3, v0

    sub-long/2addr p1, p3

    return-wide p1

    :cond_2
    :goto_1
    return-wide v2
.end method

.method private a(Lcom/yandex/mobile/ads/impl/vw0$b;JZZ)J
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/m60;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v14, p2

    .line 386
    invoke-direct/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/t60;->q()V

    const/4 v13, 0x0

    .line 387
    iput-boolean v13, v0, Lcom/yandex/mobile/ads/impl/t60;->D:Z

    const/4 v12, 0x2

    if-nez p5, :cond_0

    .line 388
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget v1, v1, Lcom/yandex/mobile/ads/impl/zh1;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 389
    :cond_0
    invoke-direct {v0, v12}, Lcom/yandex/mobile/ads/impl/t60;->b(I)V

    .line 390
    :cond_1
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/tw0;->e()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v1

    move-object v11, v1

    :goto_0
    if-eqz v11, :cond_3

    .line 391
    iget-object v2, v11, Lcom/yandex/mobile/ads/impl/qw0;->f:Lcom/yandex/mobile/ads/impl/sw0;

    iget-object v2, v2, Lcom/yandex/mobile/ads/impl/sw0;->a:Lcom/yandex/mobile/ads/impl/vw0$b;

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Lcom/yandex/mobile/ads/impl/rw0;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 392
    :cond_2
    invoke-virtual {v11}, Lcom/yandex/mobile/ads/impl/qw0;->b()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v11

    goto :goto_0

    :cond_3
    :goto_1
    if-nez p4, :cond_4

    if-ne v1, v11, :cond_4

    if-eqz v11, :cond_7

    .line 393
    invoke-virtual {v11, v14, v15}, Lcom/yandex/mobile/ads/impl/qw0;->d(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_7

    .line 394
    :cond_4
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/t60;->b:[Lcom/yandex/mobile/ads/impl/yo1;

    array-length v2, v1

    move v3, v13

    :goto_2
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    .line 395
    invoke-direct {v0, v4}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/yo1;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    if-eqz v11, :cond_7

    .line 396
    :goto_3
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/tw0;->e()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v1

    if-eq v1, v11, :cond_6

    .line 397
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/tw0;->a()Lcom/yandex/mobile/ads/impl/qw0;

    goto :goto_3

    .line 398
    :cond_6
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v1, v11}, Lcom/yandex/mobile/ads/impl/tw0;->a(Lcom/yandex/mobile/ads/impl/qw0;)Z

    .line 399
    invoke-virtual {v11}, Lcom/yandex/mobile/ads/impl/qw0;->h()V

    .line 400
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/t60;->b:[Lcom/yandex/mobile/ads/impl/yo1;

    array-length v1, v1

    new-array v1, v1, [Z

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/t60;->a([Z)V

    :cond_7
    if-eqz v11, :cond_b

    .line 401
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v1, v11}, Lcom/yandex/mobile/ads/impl/tw0;->a(Lcom/yandex/mobile/ads/impl/qw0;)Z

    .line 402
    iget-boolean v1, v11, Lcom/yandex/mobile/ads/impl/qw0;->d:Z

    if-nez v1, :cond_a

    .line 403
    iget-object v1, v11, Lcom/yandex/mobile/ads/impl/qw0;->f:Lcom/yandex/mobile/ads/impl/sw0;

    .line 404
    iget-wide v2, v1, Lcom/yandex/mobile/ads/impl/sw0;->b:J

    cmp-long v2, v14, v2

    if-nez v2, :cond_8

    move-object v15, v11

    goto :goto_4

    .line 405
    :cond_8
    new-instance v16, Lcom/yandex/mobile/ads/impl/sw0;

    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/sw0;->a:Lcom/yandex/mobile/ads/impl/vw0$b;

    iget-wide v5, v1, Lcom/yandex/mobile/ads/impl/sw0;->c:J

    iget-wide v7, v1, Lcom/yandex/mobile/ads/impl/sw0;->d:J

    iget-wide v9, v1, Lcom/yandex/mobile/ads/impl/sw0;->e:J

    iget-boolean v3, v1, Lcom/yandex/mobile/ads/impl/sw0;->f:Z

    iget-boolean v4, v1, Lcom/yandex/mobile/ads/impl/sw0;->g:Z

    iget-boolean v13, v1, Lcom/yandex/mobile/ads/impl/sw0;->h:Z

    iget-boolean v1, v1, Lcom/yandex/mobile/ads/impl/sw0;->i:Z

    move/from16 v17, v1

    move-object/from16 v1, v16

    move/from16 v18, v3

    move/from16 v19, v4

    move-wide/from16 v3, p2

    move-object v15, v11

    move/from16 v11, v18

    move v14, v12

    move/from16 v12, v19

    move/from16 v14, v17

    invoke-direct/range {v1 .. v14}, Lcom/yandex/mobile/ads/impl/sw0;-><init>(Lcom/yandex/mobile/ads/impl/vw0$b;JJJJZZZZ)V

    .line 406
    :goto_4
    iput-object v1, v15, Lcom/yandex/mobile/ads/impl/qw0;->f:Lcom/yandex/mobile/ads/impl/sw0;

    :cond_9
    move-wide/from16 v2, p2

    goto :goto_5

    :cond_a
    move-object v15, v11

    .line 407
    iget-boolean v1, v15, Lcom/yandex/mobile/ads/impl/qw0;->e:Z

    if-eqz v1, :cond_9

    .line 408
    iget-object v1, v15, Lcom/yandex/mobile/ads/impl/qw0;->a:Lcom/yandex/mobile/ads/impl/pw0;

    move-wide/from16 v2, p2

    invoke-interface {v1, v2, v3}, Lcom/yandex/mobile/ads/impl/pw0;->seekToUs(J)J

    move-result-wide v1

    .line 409
    iget-object v3, v15, Lcom/yandex/mobile/ads/impl/qw0;->a:Lcom/yandex/mobile/ads/impl/pw0;

    iget-wide v4, v0, Lcom/yandex/mobile/ads/impl/t60;->n:J

    sub-long v4, v1, v4

    iget-boolean v6, v0, Lcom/yandex/mobile/ads/impl/t60;->o:Z

    invoke-interface {v3, v4, v5, v6}, Lcom/yandex/mobile/ads/impl/pw0;->discardBuffer(JZ)V

    goto :goto_6

    :goto_5
    move-wide v1, v2

    .line 410
    :goto_6
    invoke-direct {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/t60;->b(J)V

    .line 411
    invoke-direct/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/t60;->f()V

    :goto_7
    const/4 v3, 0x0

    goto :goto_8

    :cond_b
    move-wide v2, v14

    .line 412
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/tw0;->c()V

    .line 413
    invoke-direct {v0, v2, v3}, Lcom/yandex/mobile/ads/impl/t60;->b(J)V

    move-wide v1, v2

    goto :goto_7

    .line 414
    :goto_8
    invoke-direct {v0, v3}, Lcom/yandex/mobile/ads/impl/t60;->a(Z)V

    .line 415
    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/t60;->i:Lcom/yandex/mobile/ads/impl/hf0;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Lcom/yandex/mobile/ads/impl/hf0;->a(I)Z

    return-wide v1
.end method

.method private a(Lcom/yandex/mobile/ads/impl/i52;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/i52;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/yandex/mobile/ads/impl/vw0$b;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 57
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/i52;->c()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {}, Lcom/yandex/mobile/ads/impl/zh1;->a()Lcom/yandex/mobile/ads/impl/vw0$b;

    move-result-object p0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 59
    :cond_0
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/t60;->G:Z

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/i52;->a(Z)I

    move-result v6

    .line 60
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/t60;->l:Lcom/yandex/mobile/ads/impl/i52$d;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/t60;->m:Lcom/yandex/mobile/ads/impl/i52$b;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p1

    .line 61
    invoke-virtual/range {v3 .. v8}, Lcom/yandex/mobile/ads/impl/i52;->a(Lcom/yandex/mobile/ads/impl/i52$d;Lcom/yandex/mobile/ads/impl/i52$b;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 62
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 63
    invoke-virtual {v3, p1, v4, v1, v2}, Lcom/yandex/mobile/ads/impl/tw0;->a(Lcom/yandex/mobile/ads/impl/i52;Ljava/lang/Object;J)Lcom/yandex/mobile/ads/impl/vw0$b;

    move-result-object v3

    .line 64
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 65
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/rw0;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, v3, Lcom/yandex/mobile/ads/impl/rw0;->a:Ljava/lang/Object;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/t60;->m:Lcom/yandex/mobile/ads/impl/i52$b;

    invoke-virtual {p1, v0, v4}, Lcom/yandex/mobile/ads/impl/i52;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/i52$b;)Lcom/yandex/mobile/ads/impl/i52$b;

    .line 67
    iget p1, v3, Lcom/yandex/mobile/ads/impl/rw0;->c:I

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->m:Lcom/yandex/mobile/ads/impl/i52$b;

    iget v4, v3, Lcom/yandex/mobile/ads/impl/rw0;->b:I

    invoke-virtual {v0, v4}, Lcom/yandex/mobile/ads/impl/i52$b;->d(I)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 68
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/t60;->m:Lcom/yandex/mobile/ads/impl/i52$b;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/i52$b;->b()J

    move-result-wide v1

    goto :goto_0

    :cond_1
    move-wide v1, v4

    .line 69
    :cond_2
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/yandex/mobile/ads/impl/i52;Lcom/yandex/mobile/ads/impl/t60$g;ZIZLcom/yandex/mobile/ads/impl/i52$d;Lcom/yandex/mobile/ads/impl/i52$b;)Landroid/util/Pair;
    .locals 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/i52;",
            "Lcom/yandex/mobile/ads/impl/t60$g;",
            "ZIZ",
            "Lcom/yandex/mobile/ads/impl/i52$d;",
            "Lcom/yandex/mobile/ads/impl/i52$b;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object v7, p0

    move-object v0, p1

    move-object/from16 v8, p6

    .line 324
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/t60$g;->a:Lcom/yandex/mobile/ads/impl/i52;

    .line 325
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/i52;->c()Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    return-object v9

    .line 326
    :cond_0
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/i52;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v10, v7

    goto :goto_0

    :cond_1
    move-object v10, v1

    .line 327
    :goto_0
    :try_start_0
    iget v4, v0, Lcom/yandex/mobile/ads/impl/t60$g;->b:I

    iget-wide v5, v0, Lcom/yandex/mobile/ads/impl/t60$g;->c:J

    move-object v1, v10

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 328
    invoke-virtual/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/i52;->a(Lcom/yandex/mobile/ads/impl/i52$d;Lcom/yandex/mobile/ads/impl/i52$b;IJ)Landroid/util/Pair;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    invoke-virtual {p0, v10}, Lcom/yandex/mobile/ads/impl/i52;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    .line 330
    :cond_2
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/yandex/mobile/ads/impl/i52;->a(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 331
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v10, v2, v8}, Lcom/yandex/mobile/ads/impl/i52;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/i52$b;)Lcom/yandex/mobile/ads/impl/i52$b;

    move-result-object v2

    iget-boolean v2, v2, Lcom/yandex/mobile/ads/impl/i52$b;->g:Z

    if-eqz v2, :cond_3

    iget v2, v8, Lcom/yandex/mobile/ads/impl/i52$b;->d:I

    const-wide/16 v3, 0x0

    move-object/from16 v11, p5

    .line 332
    invoke-virtual {v10, v2, v11, v3, v4}, Lcom/yandex/mobile/ads/impl/i52;->a(ILcom/yandex/mobile/ads/impl/i52$d;J)Lcom/yandex/mobile/ads/impl/i52$d;

    move-result-object v2

    .line 333
    iget v2, v2, Lcom/yandex/mobile/ads/impl/i52$d;->p:I

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 334
    invoke-virtual {v10, v3}, Lcom/yandex/mobile/ads/impl/i52;->a(Ljava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 335
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v1, v8}, Lcom/yandex/mobile/ads/impl/i52;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/i52$b;)Lcom/yandex/mobile/ads/impl/i52$b;

    move-result-object v1

    iget v3, v1, Lcom/yandex/mobile/ads/impl/i52$b;->d:I

    .line 336
    iget-wide v4, v0, Lcom/yandex/mobile/ads/impl/t60$g;->c:J

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 337
    invoke-virtual/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/i52;->a(Lcom/yandex/mobile/ads/impl/i52$d;Lcom/yandex/mobile/ads/impl/i52$b;IJ)Landroid/util/Pair;

    move-result-object v1

    :cond_3
    return-object v1

    :cond_4
    move-object/from16 v11, p5

    if-eqz p2, :cond_5

    .line 338
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move v2, p3

    move/from16 v3, p4

    move-object v5, v10

    move-object v6, p0

    .line 339
    invoke-static/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/i52$d;Lcom/yandex/mobile/ads/impl/i52$b;IZLjava/lang/Object;Lcom/yandex/mobile/ads/impl/i52;Lcom/yandex/mobile/ads/impl/i52;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 340
    invoke-virtual {p0, v0, v8}, Lcom/yandex/mobile/ads/impl/i52;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/i52$b;)Lcom/yandex/mobile/ads/impl/i52$b;

    move-result-object v0

    iget v3, v0, Lcom/yandex/mobile/ads/impl/i52$b;->d:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 341
    invoke-virtual/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/i52;->a(Lcom/yandex/mobile/ads/impl/i52$d;Lcom/yandex/mobile/ads/impl/i52$b;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :catch_0
    :cond_5
    return-object v9
.end method

.method private a(Lcom/yandex/mobile/ads/impl/vw0$b;JJJZI)Lcom/yandex/mobile/ads/impl/zh1;
    .locals 23
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v15, p9

    .line 230
    iget-boolean v2, v0, Lcom/yandex/mobile/ads/impl/t60;->O:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-wide v4, v2, Lcom/yandex/mobile/ads/impl/zh1;->r:J

    cmp-long v2, p2, v4

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v2, v2, Lcom/yandex/mobile/ads/impl/zh1;->b:Lcom/yandex/mobile/ads/impl/vw0$b;

    .line 231
    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/rw0;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 232
    :goto_1
    iput-boolean v2, v0, Lcom/yandex/mobile/ads/impl/t60;->O:Z

    .line 233
    invoke-direct/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/t60;->n()V

    .line 234
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v4, v2, Lcom/yandex/mobile/ads/impl/zh1;->h:Lcom/yandex/mobile/ads/impl/z52;

    .line 235
    iget-object v5, v2, Lcom/yandex/mobile/ads/impl/zh1;->i:Lcom/yandex/mobile/ads/impl/g62;

    .line 236
    iget-object v2, v2, Lcom/yandex/mobile/ads/impl/zh1;->j:Ljava/util/List;

    .line 237
    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/t60;->u:Lcom/yandex/mobile/ads/impl/yw0;

    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/yw0;->c()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 238
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/tw0;->e()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v13

    if-nez v13, :cond_2

    .line 239
    sget-object v2, Lcom/yandex/mobile/ads/impl/z52;->e:Lcom/yandex/mobile/ads/impl/z52;

    :goto_2
    move-object/from16 v16, v2

    goto :goto_3

    .line 240
    :cond_2
    invoke-virtual {v13}, Lcom/yandex/mobile/ads/impl/qw0;->e()Lcom/yandex/mobile/ads/impl/z52;

    move-result-object v2

    goto :goto_2

    :goto_3
    if-nez v13, :cond_3

    .line 241
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/t60;->f:Lcom/yandex/mobile/ads/impl/g62;

    :goto_4
    move-object v12, v2

    goto :goto_5

    .line 242
    :cond_3
    invoke-virtual {v13}, Lcom/yandex/mobile/ads/impl/qw0;->f()Lcom/yandex/mobile/ads/impl/g62;

    move-result-object v2

    goto :goto_4

    .line 243
    :goto_5
    iget-object v2, v12, Lcom/yandex/mobile/ads/impl/g62;->c:[Lcom/yandex/mobile/ads/impl/h70;

    .line 244
    new-instance v4, Lcom/yandex/mobile/ads/impl/kk0$a;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/kk0$a;-><init>()V

    .line 245
    array-length v5, v2

    move v6, v3

    move v7, v6

    :goto_6
    if-ge v6, v5, :cond_6

    aget-object v8, v2, v6

    if-eqz v8, :cond_5

    .line 246
    invoke-interface {v8, v3}, Lcom/yandex/mobile/ads/impl/c62;->a(I)Lcom/yandex/mobile/ads/impl/jc0;

    move-result-object v8

    .line 247
    iget-object v8, v8, Lcom/yandex/mobile/ads/impl/jc0;->k:Lcom/yandex/mobile/ads/impl/k01;

    if-nez v8, :cond_4

    .line 248
    new-instance v8, Lcom/yandex/mobile/ads/impl/k01;

    new-array v9, v3, [Lcom/yandex/mobile/ads/impl/k01$b;

    invoke-direct {v8, v9}, Lcom/yandex/mobile/ads/impl/k01;-><init>([Lcom/yandex/mobile/ads/impl/k01$b;)V

    invoke-virtual {v4, v8}, Lcom/yandex/mobile/ads/impl/ik0$a;->b(Ljava/lang/Object;)V

    goto :goto_7

    .line 249
    :cond_4
    invoke-virtual {v4, v8}, Lcom/yandex/mobile/ads/impl/ik0$a;->b(Ljava/lang/Object;)V

    const/4 v7, 0x1

    :cond_5
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_6
    if-eqz v7, :cond_7

    .line 250
    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/kk0$a;->a()Lcom/yandex/mobile/ads/impl/kk0;

    move-result-object v2

    :goto_8
    move-object/from16 v17, v2

    goto :goto_9

    :cond_7
    invoke-static {}, Lcom/yandex/mobile/ads/impl/kk0;->h()Lcom/yandex/mobile/ads/impl/kk0;

    move-result-object v2

    goto :goto_8

    :goto_9
    if-eqz v13, :cond_9

    .line 251
    iget-object v2, v13, Lcom/yandex/mobile/ads/impl/qw0;->f:Lcom/yandex/mobile/ads/impl/sw0;

    iget-wide v3, v2, Lcom/yandex/mobile/ads/impl/sw0;->c:J

    cmp-long v5, v3, p4

    if-eqz v5, :cond_9

    cmp-long v3, p4, v3

    if-nez v3, :cond_8

    move-object/from16 v22, v12

    move-object v1, v13

    goto :goto_a

    .line 252
    :cond_8
    new-instance v18, Lcom/yandex/mobile/ads/impl/sw0;

    iget-object v3, v2, Lcom/yandex/mobile/ads/impl/sw0;->a:Lcom/yandex/mobile/ads/impl/vw0$b;

    iget-wide v4, v2, Lcom/yandex/mobile/ads/impl/sw0;->b:J

    iget-wide v8, v2, Lcom/yandex/mobile/ads/impl/sw0;->d:J

    iget-wide v10, v2, Lcom/yandex/mobile/ads/impl/sw0;->e:J

    iget-boolean v6, v2, Lcom/yandex/mobile/ads/impl/sw0;->f:Z

    iget-boolean v7, v2, Lcom/yandex/mobile/ads/impl/sw0;->g:Z

    iget-boolean v14, v2, Lcom/yandex/mobile/ads/impl/sw0;->h:Z

    iget-boolean v2, v2, Lcom/yandex/mobile/ads/impl/sw0;->i:Z

    move/from16 v19, v2

    move-object/from16 v2, v18

    move/from16 v20, v6

    move/from16 v21, v7

    move-wide/from16 v6, p4

    move-object/from16 v22, v12

    move/from16 v12, v20

    move-object v1, v13

    move/from16 v13, v21

    move/from16 v15, v19

    invoke-direct/range {v2 .. v15}, Lcom/yandex/mobile/ads/impl/sw0;-><init>(Lcom/yandex/mobile/ads/impl/vw0$b;JJJJZZZZ)V

    .line 253
    :goto_a
    iput-object v2, v1, Lcom/yandex/mobile/ads/impl/qw0;->f:Lcom/yandex/mobile/ads/impl/sw0;

    goto :goto_b

    :cond_9
    move-object/from16 v22, v12

    :goto_b
    move-object/from16 v3, p1

    move-object/from16 v10, v16

    move-object/from16 v12, v17

    move-object/from16 v11, v22

    goto :goto_c

    .line 254
    :cond_a
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/zh1;->b:Lcom/yandex/mobile/ads/impl/vw0$b;

    move-object/from16 v3, p1

    invoke-virtual {v3, v1}, Lcom/yandex/mobile/ads/impl/rw0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 255
    sget-object v1, Lcom/yandex/mobile/ads/impl/z52;->e:Lcom/yandex/mobile/ads/impl/z52;

    .line 256
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/t60;->f:Lcom/yandex/mobile/ads/impl/g62;

    .line 257
    invoke-static {}, Lcom/yandex/mobile/ads/impl/kk0;->h()Lcom/yandex/mobile/ads/impl/kk0;

    move-result-object v4

    move-object v10, v1

    move-object v11, v2

    move-object v12, v4

    goto :goto_c

    :cond_b
    move-object v12, v2

    move-object v10, v4

    move-object v11, v5

    :goto_c
    if-eqz p8, :cond_e

    .line 258
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/t60;->z:Lcom/yandex/mobile/ads/impl/t60$d;

    .line 259
    iget-boolean v2, v1, Lcom/yandex/mobile/ads/impl/t60$d;->d:Z

    if-eqz v2, :cond_d

    .line 260
    iget v2, v1, Lcom/yandex/mobile/ads/impl/t60$d;->e:I

    const/4 v4, 0x5

    if-eq v2, v4, :cond_d

    move/from16 v2, p9

    if-ne v2, v4, :cond_c

    goto :goto_d

    .line 261
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_d
    move/from16 v2, p9

    const/4 v4, 0x1

    .line 262
    invoke-static {v1, v4}, Lcom/yandex/mobile/ads/impl/t60$d;->b(Lcom/yandex/mobile/ads/impl/t60$d;Z)V

    .line 263
    iput-boolean v4, v1, Lcom/yandex/mobile/ads/impl/t60$d;->d:Z

    .line 264
    iput v2, v1, Lcom/yandex/mobile/ads/impl/t60$d;->e:I

    .line 265
    :cond_e
    :goto_d
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    .line 266
    iget-wide v4, v1, Lcom/yandex/mobile/ads/impl/zh1;->p:J

    invoke-direct {v0, v4, v5}, Lcom/yandex/mobile/ads/impl/t60;->a(J)J

    move-result-wide v8

    move-object v0, v1

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 267
    invoke-virtual/range {v0 .. v12}, Lcom/yandex/mobile/ads/impl/zh1;->a(Lcom/yandex/mobile/ads/impl/vw0$b;JJJJLcom/yandex/mobile/ads/impl/z52;Lcom/yandex/mobile/ads/impl/g62;Ljava/util/List;)Lcom/yandex/mobile/ads/impl/zh1;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/yandex/mobile/ads/impl/t60;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/t60;->e()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/yandex/mobile/ads/impl/i52$d;Lcom/yandex/mobile/ads/impl/i52$b;IZLjava/lang/Object;Lcom/yandex/mobile/ads/impl/i52;Lcom/yandex/mobile/ads/impl/i52;)Ljava/lang/Object;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 342
    invoke-virtual {p5, p4}, Lcom/yandex/mobile/ads/impl/i52;->a(Ljava/lang/Object;)I

    move-result p4

    .line 343
    invoke-virtual {p5}, Lcom/yandex/mobile/ads/impl/i52;->a()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, p4

    move p4, v1

    :goto_0
    if-ge v2, v0, :cond_1

    if-ne p4, v1, :cond_1

    move-object v3, p5

    move-object v5, p1

    move-object v6, p0

    move v7, p2

    move v8, p3

    .line 344
    invoke-virtual/range {v3 .. v8}, Lcom/yandex/mobile/ads/impl/i52;->a(ILcom/yandex/mobile/ads/impl/i52$b;Lcom/yandex/mobile/ads/impl/i52$d;IZ)I

    move-result v4

    if-ne v4, v1, :cond_0

    goto :goto_1

    .line 345
    :cond_0
    invoke-virtual {p5, v4}, Lcom/yandex/mobile/ads/impl/i52;->a(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p6, p4}, Lcom/yandex/mobile/ads/impl/i52;->a(Ljava/lang/Object;)I

    move-result p4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne p4, v1, :cond_2

    const/4 p0, 0x0

    goto :goto_2

    .line 346
    :cond_2
    invoke-virtual {p6, p4}, Lcom/yandex/mobile/ads/impl/i52;->a(I)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/m60;
        }
    .end annotation

    .line 463
    iput p1, p0, Lcom/yandex/mobile/ads/impl/t60;->F:I

    .line 464
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/zh1;->a:Lcom/yandex/mobile/ads/impl/i52;

    invoke-virtual {v0, v1, p1}, Lcom/yandex/mobile/ads/impl/tw0;->a(Lcom/yandex/mobile/ads/impl/i52;I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 465
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/t60;->b(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 466
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/t60;->a(Z)V

    return-void
.end method

.method private a(IILcom/yandex/mobile/ads/impl/iy1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/m60;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->z:Lcom/yandex/mobile/ads/impl/t60$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/t60$d;->a(I)V

    .line 280
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->u:Lcom/yandex/mobile/ads/impl/yw0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/yw0;->a(IILcom/yandex/mobile/ads/impl/iy1;)Lcom/yandex/mobile/ads/impl/i52;

    move-result-object p1

    const/4 p2, 0x0

    .line 281
    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/i52;Z)V

    return-void
.end method

.method private a(Lcom/yandex/mobile/ads/impl/bi1;FZZ)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/m60;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 217
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/t60;->z:Lcom/yandex/mobile/ads/impl/t60$d;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/t60$d;->a(I)V

    .line 218
    :cond_0
    iget-object v14, v0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    .line 219
    new-instance v13, Lcom/yandex/mobile/ads/impl/zh1;

    move-object v1, v13

    .line 220
    iget-object v2, v14, Lcom/yandex/mobile/ads/impl/zh1;->a:Lcom/yandex/mobile/ads/impl/i52;

    .line 221
    iget-object v3, v14, Lcom/yandex/mobile/ads/impl/zh1;->b:Lcom/yandex/mobile/ads/impl/vw0$b;

    iget-wide v4, v14, Lcom/yandex/mobile/ads/impl/zh1;->c:J

    iget-wide v6, v14, Lcom/yandex/mobile/ads/impl/zh1;->d:J

    iget v8, v14, Lcom/yandex/mobile/ads/impl/zh1;->e:I

    iget-object v9, v14, Lcom/yandex/mobile/ads/impl/zh1;->f:Lcom/yandex/mobile/ads/impl/m60;

    iget-boolean v10, v14, Lcom/yandex/mobile/ads/impl/zh1;->g:Z

    iget-object v11, v14, Lcom/yandex/mobile/ads/impl/zh1;->h:Lcom/yandex/mobile/ads/impl/z52;

    iget-object v12, v14, Lcom/yandex/mobile/ads/impl/zh1;->i:Lcom/yandex/mobile/ads/impl/g62;

    move-object/from16 p3, v13

    iget-object v13, v14, Lcom/yandex/mobile/ads/impl/zh1;->j:Ljava/util/List;

    move-object/from16 v25, p3

    iget-object v15, v14, Lcom/yandex/mobile/ads/impl/zh1;->k:Lcom/yandex/mobile/ads/impl/vw0$b;

    move-object v0, v14

    move-object v14, v15

    iget-boolean v15, v0, Lcom/yandex/mobile/ads/impl/zh1;->l:Z

    move-object/from16 p3, v1

    iget v1, v0, Lcom/yandex/mobile/ads/impl/zh1;->m:I

    move/from16 v16, v1

    move-object/from16 p4, v2

    iget-wide v1, v0, Lcom/yandex/mobile/ads/impl/zh1;->p:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/yandex/mobile/ads/impl/zh1;->q:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/yandex/mobile/ads/impl/zh1;->r:J

    move-wide/from16 v22, v1

    iget-boolean v0, v0, Lcom/yandex/mobile/ads/impl/zh1;->o:Z

    move/from16 v24, v0

    move-object/from16 v17, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct/range {v1 .. v24}, Lcom/yandex/mobile/ads/impl/zh1;-><init>(Lcom/yandex/mobile/ads/impl/i52;Lcom/yandex/mobile/ads/impl/vw0$b;JJILcom/yandex/mobile/ads/impl/m60;ZLcom/yandex/mobile/ads/impl/z52;Lcom/yandex/mobile/ads/impl/g62;Ljava/util/List;Lcom/yandex/mobile/ads/impl/vw0$b;ZILcom/yandex/mobile/ads/impl/bi1;JJJZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    .line 222
    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    :cond_1
    move-object/from16 v1, p1

    .line 223
    iget v2, v1, Lcom/yandex/mobile/ads/impl/bi1;->b:F

    .line 224
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/tw0;->e()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v3

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 225
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/qw0;->f()Lcom/yandex/mobile/ads/impl/g62;

    move-result-object v5

    iget-object v5, v5, Lcom/yandex/mobile/ads/impl/g62;->c:[Lcom/yandex/mobile/ads/impl/h70;

    array-length v6, v5

    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v7, v5, v4

    if-eqz v7, :cond_2

    .line 226
    invoke-interface {v7, v2}, Lcom/yandex/mobile/ads/impl/h70;->a(F)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 227
    :cond_3
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/qw0;->b()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v3

    goto :goto_0

    .line 228
    :cond_4
    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/t60;->b:[Lcom/yandex/mobile/ads/impl/yo1;

    array-length v2, v0

    :goto_2
    if-ge v4, v2, :cond_6

    aget-object v3, v0, v4

    if-eqz v3, :cond_5

    .line 229
    iget v5, v1, Lcom/yandex/mobile/ads/impl/bi1;->b:F

    move/from16 v6, p2

    invoke-interface {v3, v6, v5}, Lcom/yandex/mobile/ads/impl/yo1;->a(FF)V

    goto :goto_3

    :cond_5
    move/from16 v6, p2

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method private a(Lcom/yandex/mobile/ads/impl/i52;Lcom/yandex/mobile/ads/impl/i52;)V
    .locals 0

    .line 317
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/i52;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/i52;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 318
    :cond_0
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/t60;->q:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_1

    .line 319
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/t60;->q:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void

    .line 320
    :cond_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/t60;->q:Ljava/util/ArrayList;

    .line 321
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/t60$c;

    .line 322
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    .line 323
    throw p0
.end method

.method private a(Lcom/yandex/mobile/ads/impl/i52;Lcom/yandex/mobile/ads/impl/vw0$b;Lcom/yandex/mobile/ads/impl/i52;Lcom/yandex/mobile/ads/impl/vw0$b;J)V
    .locals 5

    .line 479
    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/i52;Lcom/yandex/mobile/ads/impl/vw0$b;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 480
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/rw0;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/yandex/mobile/ads/impl/bi1;->e:Lcom/yandex/mobile/ads/impl/bi1;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/zh1;->n:Lcom/yandex/mobile/ads/impl/bi1;

    .line 481
    :goto_0
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/t60;->p:Lcom/yandex/mobile/ads/impl/e00;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/e00;->getPlaybackParameters()Lcom/yandex/mobile/ads/impl/bi1;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/yandex/mobile/ads/impl/bi1;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 482
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/t60;->p:Lcom/yandex/mobile/ads/impl/e00;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/e00;->a(Lcom/yandex/mobile/ads/impl/bi1;)V

    :cond_1
    return-void

    .line 483
    :cond_2
    iget-object v0, p2, Lcom/yandex/mobile/ads/impl/rw0;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/t60;->m:Lcom/yandex/mobile/ads/impl/i52$b;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/mobile/ads/impl/i52;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/i52$b;)Lcom/yandex/mobile/ads/impl/i52$b;

    move-result-object v0

    iget v0, v0, Lcom/yandex/mobile/ads/impl/i52$b;->d:I

    .line 484
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/t60;->l:Lcom/yandex/mobile/ads/impl/i52$d;

    const-wide/16 v2, 0x0

    .line 485
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/yandex/mobile/ads/impl/i52;->a(ILcom/yandex/mobile/ads/impl/i52$d;J)Lcom/yandex/mobile/ads/impl/i52$d;

    .line 486
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->v:Lcom/yandex/mobile/ads/impl/bs0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/t60;->l:Lcom/yandex/mobile/ads/impl/i52$d;

    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/i52$d;->l:Lcom/yandex/mobile/ads/impl/jw0$e;

    sget v4, Lcom/yandex/mobile/ads/impl/f92;->a:I

    .line 487
    check-cast v0, Lcom/yandex/mobile/ads/impl/b00;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/b00;->a(Lcom/yandex/mobile/ads/impl/jw0$e;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p5, v0

    if-eqz v4, :cond_3

    .line 488
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/t60;->v:Lcom/yandex/mobile/ads/impl/bs0;

    iget-object p2, p2, Lcom/yandex/mobile/ads/impl/rw0;->a:Ljava/lang/Object;

    .line 489
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/i52;Ljava/lang/Object;J)J

    move-result-wide p0

    .line 490
    check-cast p3, Lcom/yandex/mobile/ads/impl/b00;

    invoke-virtual {p3, p0, p1}, Lcom/yandex/mobile/ads/impl/b00;->a(J)V

    goto :goto_2

    .line 491
    :cond_3
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/t60;->l:Lcom/yandex/mobile/ads/impl/i52$d;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/i52$d;->b:Ljava/lang/Object;

    .line 492
    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/i52;->c()Z

    move-result p2

    if-nez p2, :cond_4

    .line 493
    iget-object p2, p4, Lcom/yandex/mobile/ads/impl/rw0;->a:Ljava/lang/Object;

    iget-object p4, p0, Lcom/yandex/mobile/ads/impl/t60;->m:Lcom/yandex/mobile/ads/impl/i52$b;

    invoke-virtual {p3, p2, p4}, Lcom/yandex/mobile/ads/impl/i52;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/i52$b;)Lcom/yandex/mobile/ads/impl/i52$b;

    move-result-object p2

    iget p2, p2, Lcom/yandex/mobile/ads/impl/i52$b;->d:I

    .line 494
    iget-object p4, p0, Lcom/yandex/mobile/ads/impl/t60;->l:Lcom/yandex/mobile/ads/impl/i52$d;

    .line 495
    invoke-virtual {p3, p2, p4, v2, v3}, Lcom/yandex/mobile/ads/impl/i52;->a(ILcom/yandex/mobile/ads/impl/i52$d;J)Lcom/yandex/mobile/ads/impl/i52$d;

    move-result-object p2

    .line 496
    iget-object p2, p2, Lcom/yandex/mobile/ads/impl/i52$d;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    .line 497
    :goto_1
    invoke-static {p2, p1}, Lcom/yandex/mobile/ads/impl/f92;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 498
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/t60;->v:Lcom/yandex/mobile/ads/impl/bs0;

    check-cast p0, Lcom/yandex/mobile/ads/impl/b00;

    invoke-virtual {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/b00;->a(J)V

    :cond_5
    :goto_2
    return-void
.end method

.method private a(Lcom/yandex/mobile/ads/impl/i52;Z)V
    .locals 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/m60;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 98
    iget-object v0, v11, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v8, v11, Lcom/yandex/mobile/ads/impl/t60;->L:Lcom/yandex/mobile/ads/impl/t60$g;

    iget-object v9, v11, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    iget v4, v11, Lcom/yandex/mobile/ads/impl/t60;->F:I

    iget-boolean v10, v11, Lcom/yandex/mobile/ads/impl/t60;->G:Z

    iget-object v13, v11, Lcom/yandex/mobile/ads/impl/t60;->l:Lcom/yandex/mobile/ads/impl/i52$d;

    iget-object v14, v11, Lcom/yandex/mobile/ads/impl/t60;->m:Lcom/yandex/mobile/ads/impl/i52$b;

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/i52;->c()Z

    move-result v1

    const/4 v15, 0x4

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_0

    .line 100
    new-instance v0, Lcom/yandex/mobile/ads/impl/t60$f;

    .line 101
    invoke-static {}, Lcom/yandex/mobile/ads/impl/zh1;->a()Lcom/yandex/mobile/ads/impl/vw0$b;

    move-result-object v19

    const/16 v25, 0x1

    const/16 v26, 0x0

    const-wide/16 v20, 0x0

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v24, 0x0

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v26}, Lcom/yandex/mobile/ads/impl/t60$f;-><init>(Lcom/yandex/mobile/ads/impl/vw0$b;JJZZZ)V

    move-object v7, v0

    const/4 v15, -0x1

    goto/16 :goto_16

    .line 102
    :cond_0
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/zh1;->b:Lcom/yandex/mobile/ads/impl/vw0$b;

    .line 103
    iget-object v2, v3, Lcom/yandex/mobile/ads/impl/rw0;->a:Ljava/lang/Object;

    .line 104
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/zh1;->a:Lcom/yandex/mobile/ads/impl/i52;

    .line 105
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/i52;->c()Z

    move-result v18

    if-nez v18, :cond_2

    iget-object v5, v3, Lcom/yandex/mobile/ads/impl/rw0;->a:Ljava/lang/Object;

    invoke-virtual {v1, v5, v14}, Lcom/yandex/mobile/ads/impl/i52;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/i52$b;)Lcom/yandex/mobile/ads/impl/i52$b;

    move-result-object v1

    iget-boolean v1, v1, Lcom/yandex/mobile/ads/impl/i52$b;->g:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v19, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v19, 0x1

    .line 106
    :goto_1
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/zh1;->b:Lcom/yandex/mobile/ads/impl/vw0$b;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/rw0;->a()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v19, :cond_3

    goto :goto_3

    .line 107
    :cond_3
    iget-wide v6, v0, Lcom/yandex/mobile/ads/impl/zh1;->r:J

    :goto_2
    move-wide/from16 v22, v6

    goto :goto_4

    .line 108
    :cond_4
    :goto_3
    iget-wide v6, v0, Lcom/yandex/mobile/ads/impl/zh1;->c:J

    goto :goto_2

    :goto_4
    const-wide/16 v6, 0x0

    if-eqz v8, :cond_8

    const/4 v5, 0x1

    move-object/from16 v1, p1

    move-object/from16 v27, v2

    move-object v2, v8

    move-object/from16 v28, v3

    move v3, v5

    move v5, v10

    const/4 v7, 0x1

    move-object v6, v13

    move-object v7, v14

    .line 109
    invoke-static/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/i52;Lcom/yandex/mobile/ads/impl/t60$g;ZIZLcom/yandex/mobile/ads/impl/i52$d;Lcom/yandex/mobile/ads/impl/i52$b;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_5

    .line 110
    invoke-virtual {v12, v10}, Lcom/yandex/mobile/ads/impl/i52;->a(Z)I

    move-result v1

    move v5, v1

    move-wide/from16 v3, v22

    move-object/from16 v2, v27

    move-object/from16 v7, v28

    const/4 v15, -0x1

    const-wide/16 v24, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x1

    :goto_5
    const/16 v37, 0x0

    goto/16 :goto_c

    .line 111
    :cond_5
    iget-wide v2, v8, Lcom/yandex/mobile/ads/impl/t60$g;->c:J

    cmp-long v2, v2, v16

    if-nez v2, :cond_6

    .line 112
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 113
    invoke-virtual {v12, v1, v14}, Lcom/yandex/mobile/ads/impl/i52;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/i52$b;)Lcom/yandex/mobile/ads/impl/i52$b;

    move-result-object v1

    iget v7, v1, Lcom/yandex/mobile/ads/impl/i52$b;->d:I

    move-wide/from16 v3, v22

    move-object/from16 v2, v27

    const/4 v6, 0x0

    goto :goto_6

    .line 114
    :cond_6
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 115
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v6, 0x1

    const/4 v7, -0x1

    .line 116
    :goto_6
    iget v1, v0, Lcom/yandex/mobile/ads/impl/zh1;->e:I

    move/from16 v37, v6

    move v5, v7

    move-object/from16 v7, v28

    if-ne v1, v15, :cond_7

    const/4 v15, -0x1

    const-wide/16 v24, 0x0

    const/16 v35, 0x1

    :goto_7
    const/16 v36, 0x0

    goto/16 :goto_c

    :cond_7
    const/4 v15, -0x1

    const-wide/16 v24, 0x0

    const/16 v35, 0x0

    goto :goto_7

    :cond_8
    move-object/from16 v27, v2

    move-object/from16 v28, v3

    .line 117
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/zh1;->a:Lcom/yandex/mobile/ads/impl/i52;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/i52;->c()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 118
    invoke-virtual {v12, v10}, Lcom/yandex/mobile/ads/impl/i52;->a(Z)I

    move-result v1

    move v5, v1

    move-wide/from16 v3, v22

    move-object/from16 v2, v27

    move-object/from16 v7, v28

    const/4 v15, -0x1

    :goto_8
    const-wide/16 v24, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    goto :goto_5

    :cond_9
    move-object/from16 v8, v27

    .line 119
    invoke-virtual {v12, v8}, Lcom/yandex/mobile/ads/impl/i52;->a(Ljava/lang/Object;)I

    move-result v1

    const/4 v7, -0x1

    if-ne v1, v7, :cond_b

    .line 120
    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/zh1;->a:Lcom/yandex/mobile/ads/impl/i52;

    move-object v1, v13

    move-object v2, v14

    move v3, v4

    move v4, v10

    move-object v5, v8

    move v15, v7

    move-object/from16 v7, p1

    .line 121
    invoke-static/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/i52$d;Lcom/yandex/mobile/ads/impl/i52$b;IZLjava/lang/Object;Lcom/yandex/mobile/ads/impl/i52;Lcom/yandex/mobile/ads/impl/i52;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_a

    .line 122
    invoke-virtual {v12, v10}, Lcom/yandex/mobile/ads/impl/i52;->a(Z)I

    move-result v7

    move v1, v7

    move-object/from16 v7, v28

    const/4 v6, 0x1

    :goto_9
    const-wide/16 v24, 0x0

    goto/16 :goto_b

    .line 123
    :cond_a
    invoke-virtual {v12, v1, v14}, Lcom/yandex/mobile/ads/impl/i52;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/i52$b;)Lcom/yandex/mobile/ads/impl/i52$b;

    move-result-object v1

    iget v7, v1, Lcom/yandex/mobile/ads/impl/i52$b;->d:I

    move v1, v7

    move-object/from16 v7, v28

    const/4 v6, 0x0

    goto :goto_9

    :cond_b
    move v15, v7

    cmp-long v1, v22, v16

    if-nez v1, :cond_c

    .line 124
    invoke-virtual {v12, v8, v14}, Lcom/yandex/mobile/ads/impl/i52;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/i52$b;)Lcom/yandex/mobile/ads/impl/i52$b;

    move-result-object v1

    iget v1, v1, Lcom/yandex/mobile/ads/impl/i52$b;->d:I

    move v5, v1

    move-object v2, v8

    move-wide/from16 v3, v22

    move-object/from16 v7, v28

    goto :goto_8

    :cond_c
    if-eqz v19, :cond_e

    .line 125
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/zh1;->a:Lcom/yandex/mobile/ads/impl/i52;

    move-object/from16 v7, v28

    iget-object v2, v7, Lcom/yandex/mobile/ads/impl/rw0;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v14}, Lcom/yandex/mobile/ads/impl/i52;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/i52$b;)Lcom/yandex/mobile/ads/impl/i52$b;

    .line 126
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/zh1;->a:Lcom/yandex/mobile/ads/impl/i52;

    iget v2, v14, Lcom/yandex/mobile/ads/impl/i52$b;->d:I

    const-wide/16 v5, 0x0

    .line 127
    invoke-virtual {v1, v2, v13, v5, v6}, Lcom/yandex/mobile/ads/impl/i52;->a(ILcom/yandex/mobile/ads/impl/i52$d;J)Lcom/yandex/mobile/ads/impl/i52$d;

    move-result-object v1

    .line 128
    iget v1, v1, Lcom/yandex/mobile/ads/impl/i52$d;->p:I

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/zh1;->a:Lcom/yandex/mobile/ads/impl/i52;

    iget-object v3, v7, Lcom/yandex/mobile/ads/impl/rw0;->a:Ljava/lang/Object;

    .line 129
    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/impl/i52;->a(Ljava/lang/Object;)I

    move-result v2

    if-ne v1, v2, :cond_d

    .line 130
    iget-wide v1, v14, Lcom/yandex/mobile/ads/impl/i52$b;->f:J

    add-long v20, v22, v1

    .line 131
    invoke-virtual {v12, v8, v14}, Lcom/yandex/mobile/ads/impl/i52;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/i52$b;)Lcom/yandex/mobile/ads/impl/i52$b;

    move-result-object v1

    iget v4, v1, Lcom/yandex/mobile/ads/impl/i52$b;->d:I

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v3, v14

    move-wide/from16 v24, v5

    move-wide/from16 v5, v20

    .line 132
    invoke-virtual/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/i52;->a(Lcom/yandex/mobile/ads/impl/i52$d;Lcom/yandex/mobile/ads/impl/i52$b;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 133
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 134
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_a

    :cond_d
    move-wide/from16 v24, v5

    move-object v2, v8

    move-wide/from16 v3, v22

    :goto_a
    move v5, v15

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x1

    goto :goto_c

    :cond_e
    move-object/from16 v7, v28

    const-wide/16 v24, 0x0

    move v1, v15

    const/4 v6, 0x0

    :goto_b
    move v5, v1

    move/from16 v36, v6

    move-object v2, v8

    move-wide/from16 v3, v22

    const/16 v35, 0x0

    goto/16 :goto_5

    :goto_c
    if-eq v5, v15, :cond_f

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v3, v14

    move v4, v5

    move-wide/from16 v5, v20

    .line 135
    invoke-virtual/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/i52;->a(Lcom/yandex/mobile/ads/impl/i52$d;Lcom/yandex/mobile/ads/impl/i52$b;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 136
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 137
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-wide/from16 v33, v16

    goto :goto_d

    :cond_f
    move-wide/from16 v33, v3

    .line 138
    :goto_d
    invoke-virtual {v9, v12, v2, v3, v4}, Lcom/yandex/mobile/ads/impl/tw0;->a(Lcom/yandex/mobile/ads/impl/i52;Ljava/lang/Object;J)Lcom/yandex/mobile/ads/impl/vw0$b;

    move-result-object v1

    .line 139
    iget v5, v1, Lcom/yandex/mobile/ads/impl/rw0;->e:I

    if-eq v5, v15, :cond_11

    iget v6, v7, Lcom/yandex/mobile/ads/impl/rw0;->e:I

    if-eq v6, v15, :cond_10

    if-lt v5, v6, :cond_10

    goto :goto_e

    :cond_10
    const/4 v6, 0x0

    goto :goto_f

    :cond_11
    :goto_e
    const/4 v6, 0x1

    .line 140
    :goto_f
    iget-object v5, v7, Lcom/yandex/mobile/ads/impl/rw0;->a:Ljava/lang/Object;

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 141
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/rw0;->a()Z

    move-result v5

    if-nez v5, :cond_12

    .line 142
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/rw0;->a()Z

    move-result v5

    if-nez v5, :cond_12

    if-eqz v6, :cond_12

    const/4 v6, 0x1

    goto :goto_10

    :cond_12
    const/4 v6, 0x0

    .line 143
    :goto_10
    invoke-virtual {v12, v2, v14}, Lcom/yandex/mobile/ads/impl/i52;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/i52$b;)Lcom/yandex/mobile/ads/impl/i52$b;

    move-result-object v2

    if-nez v19, :cond_15

    cmp-long v5, v22, v33

    if-nez v5, :cond_15

    .line 144
    iget-object v5, v7, Lcom/yandex/mobile/ads/impl/rw0;->a:Ljava/lang/Object;

    iget-object v8, v1, Lcom/yandex/mobile/ads/impl/rw0;->a:Ljava/lang/Object;

    .line 145
    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    goto :goto_12

    .line 146
    :cond_13
    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/rw0;->a()Z

    move-result v5

    if-eqz v5, :cond_14

    iget v5, v7, Lcom/yandex/mobile/ads/impl/rw0;->b:I

    invoke-virtual {v2, v5}, Lcom/yandex/mobile/ads/impl/i52$b;->f(I)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 147
    iget v5, v7, Lcom/yandex/mobile/ads/impl/rw0;->b:I

    iget v8, v7, Lcom/yandex/mobile/ads/impl/rw0;->c:I

    invoke-virtual {v2, v5, v8}, Lcom/yandex/mobile/ads/impl/i52$b;->b(II)I

    move-result v5

    const/4 v8, 0x4

    if-eq v5, v8, :cond_15

    iget v5, v7, Lcom/yandex/mobile/ads/impl/rw0;->b:I

    iget v8, v7, Lcom/yandex/mobile/ads/impl/rw0;->c:I

    .line 148
    invoke-virtual {v2, v5, v8}, Lcom/yandex/mobile/ads/impl/i52$b;->b(II)I

    move-result v2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_15

    goto :goto_11

    .line 149
    :cond_14
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/rw0;->a()Z

    move-result v5

    if-eqz v5, :cond_15

    iget v5, v1, Lcom/yandex/mobile/ads/impl/rw0;->b:I

    invoke-virtual {v2, v5}, Lcom/yandex/mobile/ads/impl/i52$b;->f(I)Z

    move-result v2

    if-eqz v2, :cond_15

    :goto_11
    const/4 v2, 0x1

    goto :goto_13

    :cond_15
    :goto_12
    const/4 v2, 0x0

    :goto_13
    if-nez v6, :cond_16

    if-eqz v2, :cond_17

    :cond_16
    move-object v1, v7

    .line 150
    :cond_17
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/rw0;->a()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 151
    invoke-virtual {v1, v7}, Lcom/yandex/mobile/ads/impl/rw0;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 152
    iget-wide v6, v0, Lcom/yandex/mobile/ads/impl/zh1;->r:J

    :goto_14
    move-wide/from16 v31, v6

    goto :goto_15

    .line 153
    :cond_18
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/rw0;->a:Ljava/lang/Object;

    invoke-virtual {v12, v0, v14}, Lcom/yandex/mobile/ads/impl/i52;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/i52$b;)Lcom/yandex/mobile/ads/impl/i52$b;

    .line 154
    iget v0, v1, Lcom/yandex/mobile/ads/impl/rw0;->c:I

    iget v2, v1, Lcom/yandex/mobile/ads/impl/rw0;->b:I

    invoke-virtual {v14, v2}, Lcom/yandex/mobile/ads/impl/i52$b;->d(I)I

    move-result v2

    if-ne v0, v2, :cond_19

    .line 155
    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/i52$b;->b()J

    move-result-wide v6

    goto :goto_14

    :cond_19
    move-wide/from16 v31, v24

    goto :goto_15

    :cond_1a
    move-wide/from16 v31, v3

    .line 156
    :goto_15
    new-instance v0, Lcom/yandex/mobile/ads/impl/t60$f;

    move-object/from16 v29, v0

    move-object/from16 v30, v1

    invoke-direct/range {v29 .. v37}, Lcom/yandex/mobile/ads/impl/t60$f;-><init>(Lcom/yandex/mobile/ads/impl/vw0$b;JJZZZ)V

    move-object v7, v0

    .line 157
    :goto_16
    iget-object v8, v7, Lcom/yandex/mobile/ads/impl/t60$f;->a:Lcom/yandex/mobile/ads/impl/vw0$b;

    .line 158
    iget-wide v9, v7, Lcom/yandex/mobile/ads/impl/t60$f;->c:J

    .line 159
    iget-boolean v6, v7, Lcom/yandex/mobile/ads/impl/t60$f;->d:Z

    .line 160
    iget-wide v13, v7, Lcom/yandex/mobile/ads/impl/t60$f;->b:J

    .line 161
    iget-object v0, v11, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/zh1;->b:Lcom/yandex/mobile/ads/impl/vw0$b;

    .line 162
    invoke-virtual {v0, v8}, Lcom/yandex/mobile/ads/impl/rw0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, v11, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-wide v0, v0, Lcom/yandex/mobile/ads/impl/zh1;->r:J

    cmp-long v0, v13, v0

    if-eqz v0, :cond_1b

    goto :goto_17

    :cond_1b
    const/16 v19, 0x0

    goto :goto_18

    :cond_1c
    :goto_17
    const/16 v19, 0x1

    :goto_18
    const/4 v5, 0x0

    const/16 v20, 0x3

    .line 163
    :try_start_0
    iget-boolean v0, v7, Lcom/yandex/mobile/ads/impl/t60$f;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz v0, :cond_1e

    .line 164
    :try_start_1
    iget-object v0, v11, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget v0, v0, Lcom/yandex/mobile/ads/impl/zh1;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1d

    const/4 v4, 0x4

    .line 165
    :try_start_2
    invoke-direct {v11, v4}, Lcom/yandex/mobile/ads/impl/t60;->b(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_19
    const/4 v2, 0x0

    goto :goto_1a

    :catchall_0
    move-exception v0

    move/from16 v21, v3

    move/from16 v18, v4

    move-object v6, v5

    const/4 v15, 0x0

    goto/16 :goto_24

    :cond_1d
    const/4 v4, 0x4

    goto :goto_19

    .line 166
    :goto_1a
    :try_start_3
    invoke-direct {v11, v2, v2, v2, v3}, Lcom/yandex/mobile/ads/impl/t60;->a(ZZZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1c

    :catchall_1
    move-exception v0

    :goto_1b
    move v15, v2

    move/from16 v21, v3

    move/from16 v18, v4

    move-object v6, v5

    goto/16 :goto_24

    :catchall_2
    move-exception v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    goto :goto_1b

    :cond_1e
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    :goto_1c
    if-nez v19, :cond_1f

    .line 167
    :try_start_4
    iget-object v1, v11, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    iget-wide v3, v11, Lcom/yandex/mobile/ads/impl/t60;->M:J

    .line 168
    invoke-direct/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/t60;->c()J

    move-result-wide v22
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move v6, v2

    move-object/from16 v2, p1

    const/16 v18, 0x4

    const/16 v21, 0x1

    move v15, v6

    move-wide/from16 v5, v22

    .line 169
    :try_start_6
    invoke-virtual/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/tw0;->a(Lcom/yandex/mobile/ads/impl/i52;JJ)Z

    move-result v0

    if-nez v0, :cond_24

    .line 170
    invoke-direct {v11, v15}, Lcom/yandex/mobile/ads/impl/t60;->b(Z)V

    goto/16 :goto_20

    :catchall_3
    move-exception v0

    :goto_1d
    const/4 v6, 0x0

    goto/16 :goto_24

    :catchall_4
    move-exception v0

    move v15, v2

    const/16 v18, 0x4

    const/16 v21, 0x1

    goto :goto_1d

    :catchall_5
    move-exception v0

    move v15, v2

    move/from16 v21, v3

    move/from16 v18, v4

    goto :goto_1d

    :cond_1f
    move v15, v2

    move/from16 v21, v3

    move/from16 v18, v4

    .line 171
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/i52;->c()Z

    move-result v0

    if-nez v0, :cond_24

    .line 172
    iget-object v0, v11, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tw0;->e()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v0

    :goto_1e
    if-eqz v0, :cond_22

    .line 173
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/qw0;->f:Lcom/yandex/mobile/ads/impl/sw0;

    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/sw0;->a:Lcom/yandex/mobile/ads/impl/vw0$b;

    invoke-virtual {v1, v8}, Lcom/yandex/mobile/ads/impl/rw0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 174
    iget-object v1, v11, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/qw0;->f:Lcom/yandex/mobile/ads/impl/sw0;

    invoke-virtual {v1, v12, v2}, Lcom/yandex/mobile/ads/impl/tw0;->a(Lcom/yandex/mobile/ads/impl/i52;Lcom/yandex/mobile/ads/impl/sw0;)Lcom/yandex/mobile/ads/impl/sw0;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/qw0;->f:Lcom/yandex/mobile/ads/impl/sw0;

    .line 175
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/qw0;->a:Lcom/yandex/mobile/ads/impl/pw0;

    instance-of v3, v2, Lcom/yandex/mobile/ads/impl/ip;

    if-eqz v3, :cond_21

    .line 176
    iget-wide v3, v1, Lcom/yandex/mobile/ads/impl/sw0;->d:J

    cmp-long v1, v3, v16

    if-nez v1, :cond_20

    const-wide/high16 v3, -0x8000000000000000L

    .line 177
    :cond_20
    check-cast v2, Lcom/yandex/mobile/ads/impl/ip;

    invoke-virtual {v2, v3, v4}, Lcom/yandex/mobile/ads/impl/ip;->a(J)V

    .line 178
    :cond_21
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qw0;->b()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v0

    goto :goto_1e

    .line 179
    :cond_22
    iget-object v0, v11, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    .line 180
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tw0;->e()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v0

    iget-object v1, v11, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/tw0;->f()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v1

    if-eq v0, v1, :cond_23

    move/from16 v5, v21

    goto :goto_1f

    :cond_23
    move v5, v15

    :goto_1f
    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v13

    .line 181
    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/vw0$b;JZZ)J

    move-result-wide v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-wide v13, v0

    .line 182
    :cond_24
    :goto_20
    iget-object v0, v11, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/zh1;->a:Lcom/yandex/mobile/ads/impl/i52;

    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/zh1;->b:Lcom/yandex/mobile/ads/impl/vw0$b;

    .line 183
    iget-boolean v0, v7, Lcom/yandex/mobile/ads/impl/t60$f;->f:Z

    if-eqz v0, :cond_25

    move-wide v6, v13

    goto :goto_21

    :cond_25
    move-wide/from16 v6, v16

    :goto_21
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    .line 184
    invoke-direct/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/i52;Lcom/yandex/mobile/ads/impl/vw0$b;Lcom/yandex/mobile/ads/impl/i52;Lcom/yandex/mobile/ads/impl/vw0$b;J)V

    if-nez v19, :cond_26

    .line 185
    iget-object v0, v11, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-wide v0, v0, Lcom/yandex/mobile/ads/impl/zh1;->c:J

    cmp-long v0, v9, v0

    if-eqz v0, :cond_29

    .line 186
    :cond_26
    iget-object v0, v11, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/zh1;->b:Lcom/yandex/mobile/ads/impl/vw0$b;

    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/rw0;->a:Ljava/lang/Object;

    .line 187
    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/zh1;->a:Lcom/yandex/mobile/ads/impl/i52;

    if-eqz v19, :cond_27

    if-eqz p2, :cond_27

    .line 188
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/i52;->c()Z

    move-result v2

    if-nez v2, :cond_27

    iget-object v2, v11, Lcom/yandex/mobile/ads/impl/t60;->m:Lcom/yandex/mobile/ads/impl/i52$b;

    .line 189
    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/i52;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/i52$b;)Lcom/yandex/mobile/ads/impl/i52$b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/yandex/mobile/ads/impl/i52$b;->g:Z

    if-nez v0, :cond_27

    goto :goto_22

    :cond_27
    move/from16 v21, v15

    .line 190
    :goto_22
    iget-object v0, v11, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-wide v5, v0, Lcom/yandex/mobile/ads/impl/zh1;->d:J

    .line 191
    invoke-virtual {v12, v1}, Lcom/yandex/mobile/ads/impl/i52;->a(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_28

    goto :goto_23

    :cond_28
    move/from16 v18, v20

    :goto_23
    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v13

    move-wide v7, v5

    move-wide v5, v9

    move/from16 v9, v21

    move/from16 v10, v18

    .line 192
    invoke-direct/range {v1 .. v10}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/vw0$b;JJJZI)Lcom/yandex/mobile/ads/impl/zh1;

    move-result-object v0

    iput-object v0, v11, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    .line 193
    :cond_29
    invoke-direct/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/t60;->n()V

    .line 194
    iget-object v0, v11, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/zh1;->a:Lcom/yandex/mobile/ads/impl/i52;

    invoke-direct {v11, v12, v0}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/i52;Lcom/yandex/mobile/ads/impl/i52;)V

    .line 195
    iget-object v0, v11, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    invoke-virtual {v0, v12}, Lcom/yandex/mobile/ads/impl/zh1;->a(Lcom/yandex/mobile/ads/impl/i52;)Lcom/yandex/mobile/ads/impl/zh1;

    move-result-object v0

    iput-object v0, v11, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    .line 196
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/i52;->c()Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 v6, 0x0

    .line 197
    iput-object v6, v11, Lcom/yandex/mobile/ads/impl/t60;->L:Lcom/yandex/mobile/ads/impl/t60$g;

    .line 198
    :cond_2a
    invoke-direct {v11, v15}, Lcom/yandex/mobile/ads/impl/t60;->a(Z)V

    return-void

    :catchall_6
    move-exception v0

    move-object v6, v5

    const/4 v15, 0x0

    const/16 v18, 0x4

    const/16 v21, 0x1

    .line 199
    :goto_24
    iget-object v1, v11, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v4, v1, Lcom/yandex/mobile/ads/impl/zh1;->a:Lcom/yandex/mobile/ads/impl/i52;

    iget-object v5, v1, Lcom/yandex/mobile/ads/impl/zh1;->b:Lcom/yandex/mobile/ads/impl/vw0$b;

    .line 200
    iget-boolean v1, v7, Lcom/yandex/mobile/ads/impl/t60$f;->f:Z

    if-eqz v1, :cond_2b

    move-wide/from16 v16, v13

    :cond_2b
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    move-object v15, v6

    move-wide/from16 v6, v16

    .line 201
    invoke-direct/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/i52;Lcom/yandex/mobile/ads/impl/vw0$b;Lcom/yandex/mobile/ads/impl/i52;Lcom/yandex/mobile/ads/impl/vw0$b;J)V

    if-nez v19, :cond_2c

    .line 202
    iget-object v1, v11, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-wide v1, v1, Lcom/yandex/mobile/ads/impl/zh1;->c:J

    cmp-long v1, v9, v1

    if-eqz v1, :cond_2f

    .line 203
    :cond_2c
    iget-object v1, v11, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/zh1;->b:Lcom/yandex/mobile/ads/impl/vw0$b;

    iget-object v2, v2, Lcom/yandex/mobile/ads/impl/rw0;->a:Ljava/lang/Object;

    .line 204
    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/zh1;->a:Lcom/yandex/mobile/ads/impl/i52;

    if-eqz v19, :cond_2d

    if-eqz p2, :cond_2d

    .line 205
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/i52;->c()Z

    move-result v3

    if-nez v3, :cond_2d

    iget-object v3, v11, Lcom/yandex/mobile/ads/impl/t60;->m:Lcom/yandex/mobile/ads/impl/i52$b;

    .line 206
    invoke-virtual {v1, v2, v3}, Lcom/yandex/mobile/ads/impl/i52;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/i52$b;)Lcom/yandex/mobile/ads/impl/i52$b;

    move-result-object v1

    iget-boolean v1, v1, Lcom/yandex/mobile/ads/impl/i52$b;->g:Z

    if-nez v1, :cond_2d

    goto :goto_25

    :cond_2d
    const/16 v21, 0x0

    .line 207
    :goto_25
    iget-object v1, v11, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-wide v5, v1, Lcom/yandex/mobile/ads/impl/zh1;->d:J

    .line 208
    invoke-virtual {v12, v2}, Lcom/yandex/mobile/ads/impl/i52;->a(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2e

    goto :goto_26

    :cond_2e
    move/from16 v18, v20

    :goto_26
    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v13

    move-wide v7, v5

    move-wide v5, v9

    move/from16 v9, v21

    move/from16 v10, v18

    .line 209
    invoke-direct/range {v1 .. v10}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/vw0$b;JJJZI)Lcom/yandex/mobile/ads/impl/zh1;

    move-result-object v1

    iput-object v1, v11, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    .line 210
    :cond_2f
    invoke-direct/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/t60;->n()V

    .line 211
    iget-object v1, v11, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/zh1;->a:Lcom/yandex/mobile/ads/impl/i52;

    invoke-direct {v11, v12, v1}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/i52;Lcom/yandex/mobile/ads/impl/i52;)V

    .line 212
    iget-object v1, v11, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    invoke-virtual {v1, v12}, Lcom/yandex/mobile/ads/impl/zh1;->a(Lcom/yandex/mobile/ads/impl/i52;)Lcom/yandex/mobile/ads/impl/zh1;

    move-result-object v1

    iput-object v1, v11, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    .line 213
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/mobile/ads/impl/i52;->c()Z

    move-result v1

    if-nez v1, :cond_30

    .line 214
    iput-object v15, v11, Lcom/yandex/mobile/ads/impl/t60;->L:Lcom/yandex/mobile/ads/impl/t60$g;

    :cond_30
    const/4 v1, 0x0

    .line 215
    invoke-direct {v11, v1}, Lcom/yandex/mobile/ads/impl/t60;->a(Z)V

    .line 216
    throw v0
.end method

.method private a(Lcom/yandex/mobile/ads/impl/iy1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/m60;
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->z:Lcom/yandex/mobile/ads/impl/t60$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/t60$d;->a(I)V

    .line 468
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->u:Lcom/yandex/mobile/ads/impl/yw0;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/yw0;->a(Lcom/yandex/mobile/ads/impl/iy1;)Lcom/yandex/mobile/ads/impl/i52;

    move-result-object p1

    const/4 v0, 0x0

    .line 469
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/i52;Z)V

    return-void
.end method

.method private static a(Lcom/yandex/mobile/ads/impl/ni1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/m60;
        }
    .end annotation

    .line 7
    monitor-enter p0

    .line 8
    monitor-exit p0

    const/4 v0, 0x1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ni1;->c()Lcom/yandex/mobile/ads/impl/ni1$b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ni1;->d()I

    move-result v2

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ni1;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/yandex/mobile/ads/impl/ni1$b;->a(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/ni1;->a(Z)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/ni1;->a(Z)V

    .line 11
    throw v1
.end method

.method private declared-synchronized a(Lcom/yandex/mobile/ads/impl/t32;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/t32<",
            "Ljava/lang/Boolean;",
            ">;J)V"
        }
    .end annotation

    monitor-enter p0

    .line 499
    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->r:Lcom/yandex/mobile/ads/impl/jp;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/jp;->b()J

    move-result-wide v0

    add-long/2addr v0, p2

    const/4 v2, 0x0

    .line 500
    :goto_0
    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/t32;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-lez v3, :cond_0

    .line 501
    :try_start_1
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/t60;->r:Lcom/yandex/mobile/ads/impl/jp;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 502
    invoke-virtual {p0, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    const/4 p2, 0x1

    move v2, p2

    .line 503
    :goto_1
    :try_start_2
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/t60;->r:Lcom/yandex/mobile/ads/impl/jp;

    invoke-interface {p2}, Lcom/yandex/mobile/ads/impl/jp;->b()J

    move-result-wide p2

    sub-long p2, v0, p2

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 504
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private a(Lcom/yandex/mobile/ads/impl/t60$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/m60;
        }
    .end annotation

    .line 425
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->z:Lcom/yandex/mobile/ads/impl/t60$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/t60$d;->a(I)V

    .line 426
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/t60$a;->c(Lcom/yandex/mobile/ads/impl/t60$a;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 427
    new-instance v0, Lcom/yandex/mobile/ads/impl/t60$g;

    new-instance v1, Lcom/yandex/mobile/ads/impl/ij1;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/t60$a;->a(Lcom/yandex/mobile/ads/impl/t60$a;)Ljava/util/List;

    move-result-object v2

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/t60$a;->b(Lcom/yandex/mobile/ads/impl/t60$a;)Lcom/yandex/mobile/ads/impl/iy1;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/yandex/mobile/ads/impl/ij1;-><init>(Ljava/util/List;Lcom/yandex/mobile/ads/impl/iy1;)V

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/t60$a;->c(Lcom/yandex/mobile/ads/impl/t60$a;)I

    move-result v2

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/t60$a;->d(Lcom/yandex/mobile/ads/impl/t60$a;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yandex/mobile/ads/impl/t60$g;-><init>(Lcom/yandex/mobile/ads/impl/i52;IJ)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->L:Lcom/yandex/mobile/ads/impl/t60$g;

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->u:Lcom/yandex/mobile/ads/impl/yw0;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/t60$a;->a(Lcom/yandex/mobile/ads/impl/t60$a;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/t60$a;->b(Lcom/yandex/mobile/ads/impl/t60$a;)Lcom/yandex/mobile/ads/impl/iy1;

    move-result-object p1

    .line 429
    invoke-virtual {v0, v1, p1}, Lcom/yandex/mobile/ads/impl/yw0;->a(Ljava/util/List;Lcom/yandex/mobile/ads/impl/iy1;)Lcom/yandex/mobile/ads/impl/i52;

    move-result-object p1

    const/4 v0, 0x0

    .line 430
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/i52;Z)V

    return-void
.end method

.method private a(Lcom/yandex/mobile/ads/impl/t60$a;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/m60;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->z:Lcom/yandex/mobile/ads/impl/t60$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/t60$d;->a(I)V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->u:Lcom/yandex/mobile/ads/impl/yw0;

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/yw0;->b()I

    move-result p2

    :cond_0
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/t60$a;->a(Lcom/yandex/mobile/ads/impl/t60$a;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/t60$a;->b(Lcom/yandex/mobile/ads/impl/t60$a;)Lcom/yandex/mobile/ads/impl/iy1;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p2, v1, p1}, Lcom/yandex/mobile/ads/impl/yw0;->a(ILjava/util/List;Lcom/yandex/mobile/ads/impl/iy1;)Lcom/yandex/mobile/ads/impl/i52;

    move-result-object p1

    const/4 p2, 0x0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/i52;Z)V

    return-void
.end method

.method private a(Lcom/yandex/mobile/ads/impl/t60$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/m60;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->z:Lcom/yandex/mobile/ads/impl/t60$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/t60$d;->a(I)V

    .line 269
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->u:Lcom/yandex/mobile/ads/impl/yw0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/yw0;->d()Lcom/yandex/mobile/ads/impl/i52;

    move-result-object p1

    const/4 v0, 0x0

    .line 271
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/i52;Z)V

    return-void
.end method

.method private a(Lcom/yandex/mobile/ads/impl/t60$g;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/m60;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    .line 347
    iget-object v1, v11, Lcom/yandex/mobile/ads/impl/t60;->z:Lcom/yandex/mobile/ads/impl/t60$d;

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/yandex/mobile/ads/impl/t60$d;->a(I)V

    .line 348
    iget-object v1, v11, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/zh1;->a:Lcom/yandex/mobile/ads/impl/i52;

    iget v4, v11, Lcom/yandex/mobile/ads/impl/t60;->F:I

    iget-boolean v5, v11, Lcom/yandex/mobile/ads/impl/t60;->G:Z

    iget-object v6, v11, Lcom/yandex/mobile/ads/impl/t60;->l:Lcom/yandex/mobile/ads/impl/i52$d;

    iget-object v7, v11, Lcom/yandex/mobile/ads/impl/t60;->m:Lcom/yandex/mobile/ads/impl/i52$b;

    const/4 v3, 0x1

    move-object/from16 v2, p1

    .line 349
    invoke-static/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/i52;Lcom/yandex/mobile/ads/impl/t60$g;ZIZLcom/yandex/mobile/ads/impl/i52$d;Lcom/yandex/mobile/ads/impl/i52$b;)Landroid/util/Pair;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    if-nez v1, :cond_0

    .line 350
    iget-object v6, v11, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v6, v6, Lcom/yandex/mobile/ads/impl/zh1;->a:Lcom/yandex/mobile/ads/impl/i52;

    .line 351
    invoke-direct {v11, v6}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/i52;)Landroid/util/Pair;

    move-result-object v6

    .line 352
    iget-object v9, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lcom/yandex/mobile/ads/impl/vw0$b;

    .line 353
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 354
    iget-object v6, v11, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v6, v6, Lcom/yandex/mobile/ads/impl/zh1;->a:Lcom/yandex/mobile/ads/impl/i52;

    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/i52;->c()Z

    move-result v6

    xor-int/2addr v6, v8

    move v10, v6

    move-wide v14, v12

    move-wide v12, v4

    goto :goto_2

    .line 355
    :cond_0
    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 356
    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 357
    iget-wide v9, v0, Lcom/yandex/mobile/ads/impl/t60$g;->c:J

    cmp-long v9, v9, v4

    if-nez v9, :cond_1

    move-wide v9, v4

    goto :goto_0

    :cond_1
    move-wide v9, v12

    .line 358
    :goto_0
    iget-object v14, v11, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    iget-object v15, v11, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v15, v15, Lcom/yandex/mobile/ads/impl/zh1;->a:Lcom/yandex/mobile/ads/impl/i52;

    .line 359
    invoke-virtual {v14, v15, v6, v12, v13}, Lcom/yandex/mobile/ads/impl/tw0;->a(Lcom/yandex/mobile/ads/impl/i52;Ljava/lang/Object;J)Lcom/yandex/mobile/ads/impl/vw0$b;

    move-result-object v6

    .line 360
    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/rw0;->a()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 361
    iget-object v4, v11, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v4, v4, Lcom/yandex/mobile/ads/impl/zh1;->a:Lcom/yandex/mobile/ads/impl/i52;

    iget-object v5, v6, Lcom/yandex/mobile/ads/impl/rw0;->a:Ljava/lang/Object;

    iget-object v12, v11, Lcom/yandex/mobile/ads/impl/t60;->m:Lcom/yandex/mobile/ads/impl/i52$b;

    invoke-virtual {v4, v5, v12}, Lcom/yandex/mobile/ads/impl/i52;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/i52$b;)Lcom/yandex/mobile/ads/impl/i52$b;

    .line 362
    iget-object v4, v11, Lcom/yandex/mobile/ads/impl/t60;->m:Lcom/yandex/mobile/ads/impl/i52$b;

    iget v5, v6, Lcom/yandex/mobile/ads/impl/rw0;->b:I

    invoke-virtual {v4, v5}, Lcom/yandex/mobile/ads/impl/i52$b;->d(I)I

    move-result v4

    iget v5, v6, Lcom/yandex/mobile/ads/impl/rw0;->c:I

    if-ne v4, v5, :cond_2

    .line 363
    iget-object v4, v11, Lcom/yandex/mobile/ads/impl/t60;->m:Lcom/yandex/mobile/ads/impl/i52$b;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/i52$b;->b()J

    move-result-wide v4

    move-wide v12, v4

    goto :goto_1

    :cond_2
    move-wide v12, v2

    goto :goto_1

    .line 364
    :cond_3
    iget-wide v14, v0, Lcom/yandex/mobile/ads/impl/t60$g;->c:J

    cmp-long v4, v14, v4

    if-nez v4, :cond_4

    :goto_1
    move-wide v14, v12

    move-wide v12, v9

    move-object v9, v6

    move v10, v8

    goto :goto_2

    :cond_4
    move-wide v14, v12

    move-wide v12, v9

    move-object v9, v6

    move v10, v7

    .line 365
    :goto_2
    :try_start_0
    iget-object v4, v11, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v4, v4, Lcom/yandex/mobile/ads/impl/zh1;->a:Lcom/yandex/mobile/ads/impl/i52;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/i52;->c()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 366
    iput-object v0, v11, Lcom/yandex/mobile/ads/impl/t60;->L:Lcom/yandex/mobile/ads/impl/t60$g;

    goto :goto_3

    :catchall_0
    move-exception v0

    move-wide v7, v14

    goto/16 :goto_a

    :cond_5
    const/4 v0, 0x4

    if-nez v1, :cond_7

    .line 367
    iget-object v1, v11, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget v1, v1, Lcom/yandex/mobile/ads/impl/zh1;->e:I

    if-eq v1, v8, :cond_6

    .line 368
    invoke-direct {v11, v0}, Lcom/yandex/mobile/ads/impl/t60;->b(I)V

    .line 369
    :cond_6
    invoke-direct {v11, v7, v8, v7, v8}, Lcom/yandex/mobile/ads/impl/t60;->a(ZZZZ)V

    :goto_3
    move-wide v7, v14

    goto/16 :goto_9

    .line 370
    :cond_7
    iget-object v1, v11, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/zh1;->b:Lcom/yandex/mobile/ads/impl/vw0$b;

    invoke-virtual {v9, v1}, Lcom/yandex/mobile/ads/impl/rw0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 371
    iget-object v1, v11, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/tw0;->e()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 372
    iget-boolean v4, v1, Lcom/yandex/mobile/ads/impl/qw0;->d:Z

    if-eqz v4, :cond_8

    cmp-long v2, v14, v2

    if-eqz v2, :cond_8

    .line 373
    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/qw0;->a:Lcom/yandex/mobile/ads/impl/pw0;

    iget-object v2, v11, Lcom/yandex/mobile/ads/impl/t60;->x:Lcom/yandex/mobile/ads/impl/fx1;

    .line 374
    invoke-interface {v1, v14, v15, v2}, Lcom/yandex/mobile/ads/impl/pw0;->a(JLcom/yandex/mobile/ads/impl/fx1;)J

    move-result-wide v1

    goto :goto_4

    :cond_8
    move-wide v1, v14

    .line 375
    :goto_4
    invoke-static {v1, v2}, Lcom/yandex/mobile/ads/impl/f92;->b(J)J

    move-result-wide v3

    iget-object v5, v11, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-wide v5, v5, Lcom/yandex/mobile/ads/impl/zh1;->r:J

    invoke-static {v5, v6}, Lcom/yandex/mobile/ads/impl/f92;->b(J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    iget-object v3, v11, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget v4, v3, Lcom/yandex/mobile/ads/impl/zh1;->e:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_9

    const/4 v5, 0x3

    if-ne v4, v5, :cond_a

    .line 376
    :cond_9
    iget-wide v7, v3, Lcom/yandex/mobile/ads/impl/zh1;->r:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v12

    move v9, v10

    move v10, v0

    .line 377
    invoke-direct/range {v1 .. v10}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/vw0$b;JJJZI)Lcom/yandex/mobile/ads/impl/zh1;

    move-result-object v0

    iput-object v0, v11, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    return-void

    :cond_a
    move-wide v3, v1

    goto :goto_5

    :cond_b
    move-wide v3, v14

    .line 378
    :goto_5
    :try_start_1
    iget-object v1, v11, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget v1, v1, Lcom/yandex/mobile/ads/impl/zh1;->e:I

    if-ne v1, v0, :cond_c

    move v6, v8

    goto :goto_6

    :cond_c
    move v6, v7

    .line 379
    :goto_6
    iget-object v0, v11, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    .line 380
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tw0;->e()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v0

    iget-object v1, v11, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/tw0;->f()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v1

    if-eq v0, v1, :cond_d

    move v5, v8

    goto :goto_7

    :cond_d
    move v5, v7

    :goto_7
    move-object/from16 v1, p0

    move-object v2, v9

    .line 381
    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/vw0$b;JZZ)J

    move-result-wide v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v14, v16

    if-eqz v0, :cond_e

    goto :goto_8

    :cond_e
    move v8, v7

    :goto_8
    or-int/2addr v8, v10

    .line 382
    :try_start_2
    iget-object v0, v11, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/zh1;->a:Lcom/yandex/mobile/ads/impl/i52;

    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/zh1;->b:Lcom/yandex/mobile/ads/impl/vw0$b;

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v9

    move-wide v6, v12

    invoke-direct/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/i52;Lcom/yandex/mobile/ads/impl/vw0$b;Lcom/yandex/mobile/ads/impl/i52;Lcom/yandex/mobile/ads/impl/vw0$b;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v10, v8

    move-wide/from16 v7, v16

    :goto_9
    const/4 v0, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v12

    move v9, v10

    move v10, v0

    .line 383
    invoke-direct/range {v1 .. v10}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/vw0$b;JJJZI)Lcom/yandex/mobile/ads/impl/zh1;

    move-result-object v0

    iput-object v0, v11, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    return-void

    :catchall_1
    move-exception v0

    move v10, v8

    move-wide/from16 v7, v16

    :goto_a
    const/4 v14, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v12

    move v9, v10

    move v10, v14

    .line 384
    invoke-direct/range {v1 .. v10}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/vw0$b;JJJZI)Lcom/yandex/mobile/ads/impl/zh1;

    move-result-object v1

    iput-object v1, v11, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    .line 385
    throw v0
.end method

.method private a(Lcom/yandex/mobile/ads/impl/yo1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/m60;
        }
    .end annotation

    .line 12
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/t60;->b(Lcom/yandex/mobile/ads/impl/yo1;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->p:Lcom/yandex/mobile/ads/impl/e00;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/e00;->a(Lcom/yandex/mobile/ads/impl/yo1;)V

    .line 14
    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/yo1;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 15
    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/yo1;->stop()V

    .line 16
    :cond_1
    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/yo1;->c()V

    .line 17
    iget p1, p0, Lcom/yandex/mobile/ads/impl/t60;->K:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/yandex/mobile/ads/impl/t60;->K:I

    return-void
.end method

.method private a(Ljava/io/IOException;I)V
    .locals 1

    .line 74
    invoke-static {p1, p2}, Lcom/yandex/mobile/ads/impl/m60;->a(Ljava/io/IOException;I)Lcom/yandex/mobile/ads/impl/m60;

    move-result-object p1

    .line 75
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/tw0;->e()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 76
    iget-object p2, p2, Lcom/yandex/mobile/ads/impl/qw0;->f:Lcom/yandex/mobile/ads/impl/sw0;

    iget-object p2, p2, Lcom/yandex/mobile/ads/impl/sw0;->a:Lcom/yandex/mobile/ads/impl/vw0$b;

    invoke-virtual {p1, p2}, Lcom/yandex/mobile/ads/impl/m60;->a(Lcom/yandex/mobile/ads/impl/vw0$b;)Lcom/yandex/mobile/ads/impl/m60;

    move-result-object p1

    .line 77
    :cond_0
    const-string p2, "ExoPlayerImplInternal"

    const-string v0, "Playback error"

    invoke-static {p2, v0, p1}, Lcom/yandex/mobile/ads/impl/et0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    .line 78
    invoke-direct {p0, p2, p2}, Lcom/yandex/mobile/ads/impl/t60;->a(ZZ)V

    .line 79
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    invoke-virtual {p2, p1}, Lcom/yandex/mobile/ads/impl/zh1;->a(Lcom/yandex/mobile/ads/impl/m60;)Lcom/yandex/mobile/ads/impl/zh1;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    return-void
.end method

.method private a(Z)V
    .locals 8

    .line 80
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tw0;->d()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v0

    if-nez v0, :cond_0

    .line 81
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/zh1;->b:Lcom/yandex/mobile/ads/impl/vw0$b;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/qw0;->f:Lcom/yandex/mobile/ads/impl/sw0;

    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/sw0;->a:Lcom/yandex/mobile/ads/impl/vw0$b;

    .line 82
    :goto_0
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v2, v2, Lcom/yandex/mobile/ads/impl/zh1;->k:Lcom/yandex/mobile/ads/impl/vw0$b;

    .line 83
    invoke-virtual {v2, v1}, Lcom/yandex/mobile/ads/impl/rw0;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 84
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    invoke-virtual {v3, v1}, Lcom/yandex/mobile/ads/impl/zh1;->a(Lcom/yandex/mobile/ads/impl/vw0$b;)Lcom/yandex/mobile/ads/impl/zh1;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    if-nez v0, :cond_2

    .line 86
    iget-wide v3, v1, Lcom/yandex/mobile/ads/impl/zh1;->r:J

    goto :goto_2

    .line 87
    :cond_2
    iget-boolean v3, v0, Lcom/yandex/mobile/ads/impl/qw0;->d:Z

    if-nez v3, :cond_3

    .line 88
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/qw0;->f:Lcom/yandex/mobile/ads/impl/sw0;

    iget-wide v3, v3, Lcom/yandex/mobile/ads/impl/sw0;->b:J

    goto :goto_2

    .line 89
    :cond_3
    iget-boolean v3, v0, Lcom/yandex/mobile/ads/impl/qw0;->e:Z

    const-wide/high16 v4, -0x8000000000000000L

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/qw0;->a:Lcom/yandex/mobile/ads/impl/pw0;

    invoke-interface {v3}, Lcom/yandex/mobile/ads/impl/mx1;->getBufferedPositionUs()J

    move-result-wide v6

    goto :goto_1

    :cond_4
    move-wide v6, v4

    :goto_1
    cmp-long v3, v6, v4

    if-nez v3, :cond_5

    .line 90
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/qw0;->f:Lcom/yandex/mobile/ads/impl/sw0;

    iget-wide v3, v3, Lcom/yandex/mobile/ads/impl/sw0;->e:J

    goto :goto_2

    :cond_5
    move-wide v3, v6

    .line 91
    :goto_2
    iput-wide v3, v1, Lcom/yandex/mobile/ads/impl/zh1;->p:J

    .line 92
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    .line 93
    iget-wide v3, v1, Lcom/yandex/mobile/ads/impl/zh1;->p:J

    invoke-direct {p0, v3, v4}, Lcom/yandex/mobile/ads/impl/t60;->a(J)J

    move-result-wide v3

    .line 94
    iput-wide v3, v1, Lcom/yandex/mobile/ads/impl/zh1;->q:J

    if-eqz v2, :cond_6

    if-eqz p1, :cond_7

    :cond_6
    if-eqz v0, :cond_7

    .line 95
    iget-boolean p1, v0, Lcom/yandex/mobile/ads/impl/qw0;->d:Z

    if-eqz p1, :cond_7

    .line 96
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qw0;->f()Lcom/yandex/mobile/ads/impl/g62;

    move-result-object p1

    .line 97
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->g:Lcom/yandex/mobile/ads/impl/cs0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/t60;->b:[Lcom/yandex/mobile/ads/impl/yo1;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/g62;->c:[Lcom/yandex/mobile/ads/impl/h70;

    invoke-interface {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/cs0;->a([Lcom/yandex/mobile/ads/impl/yo1;[Lcom/yandex/mobile/ads/impl/h70;)V

    :cond_7
    return-void
.end method

.method private a(ZIZI)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/m60;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v15, p1

    move/from16 v16, p2

    .line 437
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/t60;->z:Lcom/yandex/mobile/ads/impl/t60$d;

    move/from16 v2, p3

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/t60$d;->a(I)V

    .line 438
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/t60;->z:Lcom/yandex/mobile/ads/impl/t60$d;

    const/4 v2, 0x1

    .line 439
    invoke-static {v1, v2}, Lcom/yandex/mobile/ads/impl/t60$d;->b(Lcom/yandex/mobile/ads/impl/t60$d;Z)V

    .line 440
    iput-boolean v2, v1, Lcom/yandex/mobile/ads/impl/t60$d;->f:Z

    move/from16 v2, p4

    .line 441
    iput v2, v1, Lcom/yandex/mobile/ads/impl/t60$d;->g:I

    .line 442
    iget-object v14, v0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    .line 443
    new-instance v13, Lcom/yandex/mobile/ads/impl/zh1;

    move-object v1, v13

    .line 444
    iget-object v2, v14, Lcom/yandex/mobile/ads/impl/zh1;->a:Lcom/yandex/mobile/ads/impl/i52;

    .line 445
    iget-object v3, v14, Lcom/yandex/mobile/ads/impl/zh1;->b:Lcom/yandex/mobile/ads/impl/vw0$b;

    iget-wide v4, v14, Lcom/yandex/mobile/ads/impl/zh1;->c:J

    iget-wide v6, v14, Lcom/yandex/mobile/ads/impl/zh1;->d:J

    iget v8, v14, Lcom/yandex/mobile/ads/impl/zh1;->e:I

    iget-object v9, v14, Lcom/yandex/mobile/ads/impl/zh1;->f:Lcom/yandex/mobile/ads/impl/m60;

    iget-boolean v10, v14, Lcom/yandex/mobile/ads/impl/zh1;->g:Z

    iget-object v11, v14, Lcom/yandex/mobile/ads/impl/zh1;->h:Lcom/yandex/mobile/ads/impl/z52;

    iget-object v12, v14, Lcom/yandex/mobile/ads/impl/zh1;->i:Lcom/yandex/mobile/ads/impl/g62;

    move-object/from16 p2, v13

    iget-object v13, v14, Lcom/yandex/mobile/ads/impl/zh1;->j:Ljava/util/List;

    move-object/from16 v25, p2

    iget-object v0, v14, Lcom/yandex/mobile/ads/impl/zh1;->k:Lcom/yandex/mobile/ads/impl/vw0$b;

    move-object/from16 p2, v1

    move-object v1, v14

    move-object v14, v0

    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/zh1;->n:Lcom/yandex/mobile/ads/impl/bi1;

    move-object/from16 v17, v0

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    iget-wide v2, v1, Lcom/yandex/mobile/ads/impl/zh1;->p:J

    move-wide/from16 v18, v2

    iget-wide v2, v1, Lcom/yandex/mobile/ads/impl/zh1;->q:J

    move-wide/from16 v20, v2

    iget-wide v2, v1, Lcom/yandex/mobile/ads/impl/zh1;->r:J

    move-wide/from16 v22, v2

    iget-boolean v0, v1, Lcom/yandex/mobile/ads/impl/zh1;->o:Z

    move/from16 v24, v0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct/range {v1 .. v24}, Lcom/yandex/mobile/ads/impl/zh1;-><init>(Lcom/yandex/mobile/ads/impl/i52;Lcom/yandex/mobile/ads/impl/vw0$b;JJILcom/yandex/mobile/ads/impl/m60;ZLcom/yandex/mobile/ads/impl/z52;Lcom/yandex/mobile/ads/impl/g62;Ljava/util/List;Lcom/yandex/mobile/ads/impl/vw0$b;ZILcom/yandex/mobile/ads/impl/bi1;JJJZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    .line 446
    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    const/4 v1, 0x0

    .line 447
    iput-boolean v1, v0, Lcom/yandex/mobile/ads/impl/t60;->D:Z

    .line 448
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/tw0;->e()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    .line 449
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/qw0;->f()Lcom/yandex/mobile/ads/impl/g62;

    move-result-object v3

    iget-object v3, v3, Lcom/yandex/mobile/ads/impl/g62;->c:[Lcom/yandex/mobile/ads/impl/h70;

    array-length v4, v3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    move/from16 v7, p1

    if-eqz v6, :cond_0

    .line 450
    invoke-interface {v6, v7}, Lcom/yandex/mobile/ads/impl/h70;->a(Z)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move/from16 v7, p1

    .line 451
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/qw0;->b()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v2

    goto :goto_0

    .line 452
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/t60;->o()Z

    move-result v2

    if-nez v2, :cond_3

    .line 453
    invoke-direct/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/t60;->q()V

    .line 454
    invoke-direct/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/t60;->s()V

    goto :goto_3

    .line 455
    :cond_3
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget v2, v2, Lcom/yandex/mobile/ads/impl/zh1;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne v2, v3, :cond_6

    .line 456
    iput-boolean v1, v0, Lcom/yandex/mobile/ads/impl/t60;->D:Z

    .line 457
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/t60;->p:Lcom/yandex/mobile/ads/impl/e00;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/e00;->a()V

    .line 458
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/t60;->b:[Lcom/yandex/mobile/ads/impl/yo1;

    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_5

    aget-object v5, v2, v1

    .line 459
    invoke-static {v5}, Lcom/yandex/mobile/ads/impl/t60;->b(Lcom/yandex/mobile/ads/impl/yo1;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 460
    invoke-interface {v5}, Lcom/yandex/mobile/ads/impl/yo1;->start()V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 461
    :cond_5
    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/t60;->i:Lcom/yandex/mobile/ads/impl/hf0;

    invoke-interface {v0, v4}, Lcom/yandex/mobile/ads/impl/hf0;->a(I)Z

    goto :goto_3

    :cond_6
    if-ne v2, v4, :cond_7

    .line 462
    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/t60;->i:Lcom/yandex/mobile/ads/impl/hf0;

    invoke-interface {v0, v4}, Lcom/yandex/mobile/ads/impl/hf0;->a(I)Z

    :cond_7
    :goto_3
    return-void
.end method

.method private a(ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 4
    .param p2    # Ljava/util/concurrent/atomic/AtomicBoolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 416
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/t60;->H:Z

    if-eq v0, p1, :cond_1

    .line 417
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/t60;->H:Z

    if-nez p1, :cond_1

    .line 418
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/t60;->b:[Lcom/yandex/mobile/ads/impl/yo1;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 419
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/t60;->b(Lcom/yandex/mobile/ads/impl/yo1;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/t60;->c:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 420
    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/yo1;->b()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 421
    monitor-enter p0

    const/4 p1, 0x1

    .line 422
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 423
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 424
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method private a(ZZ)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 475
    iget-boolean p1, p0, Lcom/yandex/mobile/ads/impl/t60;->H:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    :goto_1
    invoke-direct {p0, p1, v1, v0, v1}, Lcom/yandex/mobile/ads/impl/t60;->a(ZZZZ)V

    .line 476
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/t60;->z:Lcom/yandex/mobile/ads/impl/t60$d;

    invoke-virtual {p1, p2}, Lcom/yandex/mobile/ads/impl/t60$d;->a(I)V

    .line 477
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/t60;->g:Lcom/yandex/mobile/ads/impl/cs0;

    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/cs0;->d()V

    .line 478
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/t60;->b(I)V

    return-void
.end method

.method private a(ZZZZ)V
    .locals 28

    move-object/from16 v1, p0

    .line 282
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/t60;->i:Lcom/yandex/mobile/ads/impl/hf0;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/hf0;->c()V

    const/4 v2, 0x0

    .line 283
    iput-object v2, v1, Lcom/yandex/mobile/ads/impl/t60;->P:Lcom/yandex/mobile/ads/impl/m60;

    const/4 v3, 0x0

    .line 284
    iput-boolean v3, v1, Lcom/yandex/mobile/ads/impl/t60;->D:Z

    .line 285
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/t60;->p:Lcom/yandex/mobile/ads/impl/e00;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/e00;->b()V

    const-wide v4, 0xe8d4a51000L

    .line 286
    iput-wide v4, v1, Lcom/yandex/mobile/ads/impl/t60;->M:J

    .line 287
    iget-object v4, v1, Lcom/yandex/mobile/ads/impl/t60;->b:[Lcom/yandex/mobile/ads/impl/yo1;

    array-length v5, v4

    move v6, v3

    :goto_0
    const-string v7, "ExoPlayerImplInternal"

    if-ge v6, v5, :cond_0

    aget-object v0, v4, v6

    .line 288
    :try_start_0
    invoke-direct {v1, v0}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/yo1;)V
    :try_end_0
    .catch Lcom/yandex/mobile/ads/impl/m60; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 289
    const-string v8, "Disable failed."

    invoke-static {v7, v8, v0}, Lcom/yandex/mobile/ads/impl/et0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 290
    iget-object v4, v1, Lcom/yandex/mobile/ads/impl/t60;->b:[Lcom/yandex/mobile/ads/impl/yo1;

    array-length v5, v4

    move v6, v3

    :goto_2
    if-ge v6, v5, :cond_2

    aget-object v0, v4, v6

    .line 291
    iget-object v8, v1, Lcom/yandex/mobile/ads/impl/t60;->c:Ljava/util/Set;

    invoke-interface {v8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 292
    :try_start_1
    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/yo1;->b()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v8, v0

    .line 293
    const-string v0, "Reset failed."

    invoke-static {v7, v0, v8}, Lcom/yandex/mobile/ads/impl/et0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 294
    :cond_2
    iput v3, v1, Lcom/yandex/mobile/ads/impl/t60;->K:I

    .line 295
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/zh1;->b:Lcom/yandex/mobile/ads/impl/vw0$b;

    .line 296
    iget-wide v5, v0, Lcom/yandex/mobile/ads/impl/zh1;->r:J

    .line 297
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/zh1;->b:Lcom/yandex/mobile/ads/impl/vw0$b;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rw0;->a()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v7, v1, Lcom/yandex/mobile/ads/impl/t60;->m:Lcom/yandex/mobile/ads/impl/i52$b;

    .line 298
    iget-object v8, v0, Lcom/yandex/mobile/ads/impl/zh1;->b:Lcom/yandex/mobile/ads/impl/vw0$b;

    .line 299
    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/zh1;->a:Lcom/yandex/mobile/ads/impl/i52;

    .line 300
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/i52;->c()Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v8, v8, Lcom/yandex/mobile/ads/impl/rw0;->a:Ljava/lang/Object;

    invoke-virtual {v0, v8, v7}, Lcom/yandex/mobile/ads/impl/i52;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/i52$b;)Lcom/yandex/mobile/ads/impl/i52$b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/yandex/mobile/ads/impl/i52$b;->g:Z

    if-eqz v0, :cond_3

    goto :goto_4

    .line 301
    :cond_3
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-wide v7, v0, Lcom/yandex/mobile/ads/impl/zh1;->r:J

    goto :goto_5

    .line 302
    :cond_4
    :goto_4
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-wide v7, v0, Lcom/yandex/mobile/ads/impl/zh1;->c:J

    :goto_5
    if-eqz p2, :cond_5

    .line 303
    iput-object v2, v1, Lcom/yandex/mobile/ads/impl/t60;->L:Lcom/yandex/mobile/ads/impl/t60$g;

    .line 304
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/zh1;->a:Lcom/yandex/mobile/ads/impl/i52;

    .line 305
    invoke-direct {v1, v0}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/i52;)Landroid/util/Pair;

    move-result-object v0

    .line 306
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/yandex/mobile/ads/impl/vw0$b;

    .line 307
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 308
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/zh1;->b:Lcom/yandex/mobile/ads/impl/vw0$b;

    invoke-virtual {v4, v0}, Lcom/yandex/mobile/ads/impl/rw0;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_6
    move-object/from16 v17, v4

    move-wide/from16 v25, v5

    goto :goto_7

    :cond_5
    move v0, v3

    goto :goto_6

    .line 309
    :goto_7
    iget-object v4, v1, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/tw0;->c()V

    .line 310
    iput-boolean v3, v1, Lcom/yandex/mobile/ads/impl/t60;->E:Z

    .line 311
    new-instance v3, Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v4, v1, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v5, v4, Lcom/yandex/mobile/ads/impl/zh1;->a:Lcom/yandex/mobile/ads/impl/i52;

    iget v11, v4, Lcom/yandex/mobile/ads/impl/zh1;->e:I

    if-eqz p4, :cond_6

    :goto_8
    move-object v12, v2

    goto :goto_9

    .line 312
    :cond_6
    iget-object v2, v4, Lcom/yandex/mobile/ads/impl/zh1;->f:Lcom/yandex/mobile/ads/impl/m60;

    goto :goto_8

    :goto_9
    if-eqz v0, :cond_7

    .line 313
    sget-object v2, Lcom/yandex/mobile/ads/impl/z52;->e:Lcom/yandex/mobile/ads/impl/z52;

    :goto_a
    move-object v14, v2

    goto :goto_b

    :cond_7
    iget-object v2, v4, Lcom/yandex/mobile/ads/impl/zh1;->h:Lcom/yandex/mobile/ads/impl/z52;

    goto :goto_a

    :goto_b
    if-eqz v0, :cond_8

    .line 314
    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/t60;->f:Lcom/yandex/mobile/ads/impl/g62;

    :goto_c
    move-object v15, v2

    goto :goto_d

    :cond_8
    iget-object v2, v4, Lcom/yandex/mobile/ads/impl/zh1;->i:Lcom/yandex/mobile/ads/impl/g62;

    goto :goto_c

    :goto_d
    if-eqz v0, :cond_9

    .line 315
    invoke-static {}, Lcom/yandex/mobile/ads/impl/kk0;->h()Lcom/yandex/mobile/ads/impl/kk0;

    move-result-object v0

    :goto_e
    move-object/from16 v16, v0

    goto :goto_f

    :cond_9
    iget-object v0, v4, Lcom/yandex/mobile/ads/impl/zh1;->j:Ljava/util/List;

    goto :goto_e

    :goto_f
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-boolean v2, v0, Lcom/yandex/mobile/ads/impl/zh1;->l:Z

    move/from16 v18, v2

    iget v2, v0, Lcom/yandex/mobile/ads/impl/zh1;->m:I

    move/from16 v19, v2

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/zh1;->n:Lcom/yandex/mobile/ads/impl/bi1;

    move-object/from16 v20, v0

    const-wide/16 v23, 0x0

    const/16 v27, 0x0

    const/4 v13, 0x0

    move-object v4, v3

    move-object/from16 v6, v17

    move-wide/from16 v9, v25

    move-wide/from16 v21, v25

    invoke-direct/range {v4 .. v27}, Lcom/yandex/mobile/ads/impl/zh1;-><init>(Lcom/yandex/mobile/ads/impl/i52;Lcom/yandex/mobile/ads/impl/vw0$b;JJILcom/yandex/mobile/ads/impl/m60;ZLcom/yandex/mobile/ads/impl/z52;Lcom/yandex/mobile/ads/impl/g62;Ljava/util/List;Lcom/yandex/mobile/ads/impl/vw0$b;ZILcom/yandex/mobile/ads/impl/bi1;JJJZ)V

    iput-object v3, v1, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    if-eqz p3, :cond_a

    .line 316
    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/t60;->u:Lcom/yandex/mobile/ads/impl/yw0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/yw0;->e()V

    :cond_a
    return-void
.end method

.method private a([Z)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/m60;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 18
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/tw0;->f()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/qw0;->f()Lcom/yandex/mobile/ads/impl/g62;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    .line 20
    :goto_0
    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/t60;->b:[Lcom/yandex/mobile/ads/impl/yo1;

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 21
    invoke-virtual {v2, v4}, Lcom/yandex/mobile/ads/impl/g62;->a(I)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/t60;->c:Ljava/util/Set;

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/t60;->b:[Lcom/yandex/mobile/ads/impl/yo1;

    aget-object v6, v6, v4

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 22
    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/t60;->b:[Lcom/yandex/mobile/ads/impl/yo1;

    aget-object v5, v5, v4

    invoke-interface {v5}, Lcom/yandex/mobile/ads/impl/yo1;->b()V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v3

    .line 23
    :goto_1
    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/t60;->b:[Lcom/yandex/mobile/ads/impl/yo1;

    array-length v5, v5

    const/4 v6, 0x1

    if-ge v4, v5, :cond_9

    .line 24
    invoke-virtual {v2, v4}, Lcom/yandex/mobile/ads/impl/g62;->a(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 25
    aget-boolean v5, p1, v4

    .line 26
    iget-object v7, v0, Lcom/yandex/mobile/ads/impl/t60;->b:[Lcom/yandex/mobile/ads/impl/yo1;

    aget-object v7, v7, v4

    .line 27
    invoke-static {v7}, Lcom/yandex/mobile/ads/impl/t60;->b(Lcom/yandex/mobile/ads/impl/yo1;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto/16 :goto_7

    .line 28
    :cond_2
    iget-object v8, v0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v8}, Lcom/yandex/mobile/ads/impl/tw0;->f()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v8

    .line 29
    iget-object v9, v0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v9}, Lcom/yandex/mobile/ads/impl/tw0;->e()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v9

    if-ne v8, v9, :cond_3

    move v15, v6

    goto :goto_2

    :cond_3
    move v15, v3

    .line 30
    :goto_2
    invoke-virtual {v8}, Lcom/yandex/mobile/ads/impl/qw0;->f()Lcom/yandex/mobile/ads/impl/g62;

    move-result-object v9

    .line 31
    iget-object v10, v9, Lcom/yandex/mobile/ads/impl/g62;->b:[Lcom/yandex/mobile/ads/impl/ap1;

    aget-object v10, v10, v4

    .line 32
    iget-object v9, v9, Lcom/yandex/mobile/ads/impl/g62;->c:[Lcom/yandex/mobile/ads/impl/h70;

    aget-object v9, v9, v4

    if-eqz v9, :cond_4

    .line 33
    invoke-interface {v9}, Lcom/yandex/mobile/ads/impl/c62;->b()I

    move-result v11

    goto :goto_3

    :cond_4
    move v11, v3

    .line 34
    :goto_3
    new-array v12, v11, [Lcom/yandex/mobile/ads/impl/jc0;

    move v13, v3

    :goto_4
    if-ge v13, v11, :cond_5

    .line 35
    invoke-interface {v9, v13}, Lcom/yandex/mobile/ads/impl/c62;->a(I)Lcom/yandex/mobile/ads/impl/jc0;

    move-result-object v14

    aput-object v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 36
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/t60;->o()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget v9, v9, Lcom/yandex/mobile/ads/impl/zh1;->e:I

    const/4 v11, 0x3

    if-ne v9, v11, :cond_6

    move/from16 v20, v6

    goto :goto_5

    :cond_6
    move/from16 v20, v3

    :goto_5
    if-nez v5, :cond_7

    if-eqz v20, :cond_7

    move v14, v6

    goto :goto_6

    :cond_7
    move v14, v3

    .line 37
    :goto_6
    iget v5, v0, Lcom/yandex/mobile/ads/impl/t60;->K:I

    add-int/2addr v5, v6

    iput v5, v0, Lcom/yandex/mobile/ads/impl/t60;->K:I

    .line 38
    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/t60;->c:Ljava/util/Set;

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v5, v8, Lcom/yandex/mobile/ads/impl/qw0;->c:[Lcom/yandex/mobile/ads/impl/lt1;

    aget-object v11, v5, v4

    iget-wide v5, v0, Lcom/yandex/mobile/ads/impl/t60;->M:J

    .line 40
    invoke-virtual {v8}, Lcom/yandex/mobile/ads/impl/qw0;->d()J

    move-result-wide v16

    .line 41
    invoke-virtual {v8}, Lcom/yandex/mobile/ads/impl/qw0;->c()J

    move-result-wide v18

    move-object v8, v7

    move-object v9, v10

    move-object v10, v12

    move-wide v12, v5

    .line 42
    invoke-interface/range {v8 .. v19}, Lcom/yandex/mobile/ads/impl/yo1;->a(Lcom/yandex/mobile/ads/impl/ap1;[Lcom/yandex/mobile/ads/impl/jc0;Lcom/yandex/mobile/ads/impl/lt1;JZZJJ)V

    .line 43
    new-instance v5, Lcom/yandex/mobile/ads/impl/s60;

    invoke-direct {v5, v0}, Lcom/yandex/mobile/ads/impl/s60;-><init>(Lcom/yandex/mobile/ads/impl/t60;)V

    const/16 v6, 0xb

    invoke-interface {v7, v6, v5}, Lcom/yandex/mobile/ads/impl/ni1$b;->a(ILjava/lang/Object;)V

    .line 44
    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/t60;->p:Lcom/yandex/mobile/ads/impl/e00;

    invoke-virtual {v5, v7}, Lcom/yandex/mobile/ads/impl/e00;->b(Lcom/yandex/mobile/ads/impl/yo1;)V

    if-eqz v20, :cond_8

    .line 45
    invoke-interface {v7}, Lcom/yandex/mobile/ads/impl/yo1;->start()V

    :cond_8
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 46
    :cond_9
    iput-boolean v6, v1, Lcom/yandex/mobile/ads/impl/qw0;->g:Z

    return-void
.end method

.method private a(Lcom/yandex/mobile/ads/impl/i52;Lcom/yandex/mobile/ads/impl/vw0$b;)Z
    .locals 4

    .line 470
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/rw0;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/i52;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 471
    :cond_0
    iget-object p2, p2, Lcom/yandex/mobile/ads/impl/rw0;->a:Ljava/lang/Object;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->m:Lcom/yandex/mobile/ads/impl/i52$b;

    invoke-virtual {p1, p2, v0}, Lcom/yandex/mobile/ads/impl/i52;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/i52$b;)Lcom/yandex/mobile/ads/impl/i52$b;

    move-result-object p2

    iget p2, p2, Lcom/yandex/mobile/ads/impl/i52$b;->d:I

    .line 472
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->l:Lcom/yandex/mobile/ads/impl/i52$d;

    const-wide/16 v2, 0x0

    .line 473
    invoke-virtual {p1, p2, v0, v2, v3}, Lcom/yandex/mobile/ads/impl/i52;->a(ILcom/yandex/mobile/ads/impl/i52$d;J)Lcom/yandex/mobile/ads/impl/i52$d;

    .line 474
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/t60;->l:Lcom/yandex/mobile/ads/impl/i52$d;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/i52$d;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/t60;->l:Lcom/yandex/mobile/ads/impl/i52$d;

    iget-boolean p1, p0, Lcom/yandex/mobile/ads/impl/i52$d;->j:Z

    if-eqz p1, :cond_1

    iget-wide p0, p0, Lcom/yandex/mobile/ads/impl/i52$d;->g:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method private b()V
    .locals 46
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/m60;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v10, p0

    .line 2
    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->r:Lcom/yandex/mobile/ads/impl/jp;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/jp;->a()J

    move-result-wide v11

    .line 3
    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->i:Lcom/yandex/mobile/ads/impl/hf0;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/hf0;->c()V

    .line 4
    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/zh1;->a:Lcom/yandex/mobile/ads/impl/i52;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/i52;->c()Z

    move-result v0

    const-wide/high16 v15, -0x8000000000000000L

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    if-nez v0, :cond_0

    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->u:Lcom/yandex/mobile/ads/impl/yw0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/yw0;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    const/4 v13, 0x1

    goto/16 :goto_16

    .line 5
    :cond_1
    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    iget-wide v1, v10, Lcom/yandex/mobile/ads/impl/t60;->M:J

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/tw0;->a(J)V

    .line 6
    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tw0;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    iget-wide v1, v10, Lcom/yandex/mobile/ads/impl/t60;->M:J

    iget-object v3, v10, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    invoke-virtual {v0, v1, v2, v3}, Lcom/yandex/mobile/ads/impl/tw0;->a(JLcom/yandex/mobile/ads/impl/zh1;)Lcom/yandex/mobile/ads/impl/sw0;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v1, v10, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    iget-object v2, v10, Lcom/yandex/mobile/ads/impl/t60;->d:[Lcom/yandex/mobile/ads/impl/zo1;

    iget-object v3, v10, Lcom/yandex/mobile/ads/impl/t60;->e:Lcom/yandex/mobile/ads/impl/f62;

    iget-object v4, v10, Lcom/yandex/mobile/ads/impl/t60;->g:Lcom/yandex/mobile/ads/impl/cs0;

    .line 9
    invoke-interface {v4}, Lcom/yandex/mobile/ads/impl/cs0;->c()Lcom/yandex/mobile/ads/impl/dz;

    move-result-object v20

    iget-object v4, v10, Lcom/yandex/mobile/ads/impl/t60;->u:Lcom/yandex/mobile/ads/impl/yw0;

    iget-object v6, v10, Lcom/yandex/mobile/ads/impl/t60;->f:Lcom/yandex/mobile/ads/impl/g62;

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v0

    move-object/from16 v23, v6

    .line 10
    invoke-virtual/range {v17 .. v23}, Lcom/yandex/mobile/ads/impl/tw0;->a([Lcom/yandex/mobile/ads/impl/zo1;Lcom/yandex/mobile/ads/impl/f62;Lcom/yandex/mobile/ads/impl/cd;Lcom/yandex/mobile/ads/impl/yw0;Lcom/yandex/mobile/ads/impl/sw0;Lcom/yandex/mobile/ads/impl/g62;)Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v1

    .line 11
    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/qw0;->a:Lcom/yandex/mobile/ads/impl/pw0;

    iget-wide v3, v0, Lcom/yandex/mobile/ads/impl/sw0;->b:J

    invoke-interface {v2, v10, v3, v4}, Lcom/yandex/mobile/ads/impl/pw0;->a(Lcom/yandex/mobile/ads/impl/pw0$a;J)V

    .line 12
    iget-object v2, v10, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/tw0;->e()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v2

    if-ne v2, v1, :cond_2

    .line 13
    iget-wide v0, v0, Lcom/yandex/mobile/ads/impl/sw0;->b:J

    invoke-direct {v10, v0, v1}, Lcom/yandex/mobile/ads/impl/t60;->b(J)V

    .line 14
    :cond_2
    invoke-direct {v10, v5}, Lcom/yandex/mobile/ads/impl/t60;->a(Z)V

    .line 15
    :cond_3
    iget-boolean v0, v10, Lcom/yandex/mobile/ads/impl/t60;->E:Z

    if-eqz v0, :cond_7

    .line 16
    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tw0;->d()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 17
    :cond_4
    iget-boolean v1, v0, Lcom/yandex/mobile/ads/impl/qw0;->d:Z

    if-nez v1, :cond_5

    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_5
    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/qw0;->a:Lcom/yandex/mobile/ads/impl/pw0;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/mx1;->getNextLoadPositionUs()J

    move-result-wide v0

    :goto_1
    cmp-long v0, v0, v15

    if-nez v0, :cond_6

    :goto_2
    move v0, v5

    goto :goto_3

    :cond_6
    const/4 v0, 0x1

    .line 18
    :goto_3
    iput-boolean v0, v10, Lcom/yandex/mobile/ads/impl/t60;->E:Z

    .line 19
    invoke-direct/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/t60;->r()V

    goto :goto_4

    .line 20
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/t60;->f()V

    .line 21
    :goto_4
    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tw0;->f()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v0

    if-nez v0, :cond_8

    goto/16 :goto_c

    .line 22
    :cond_8
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qw0;->b()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v1

    if-eqz v1, :cond_13

    iget-boolean v1, v10, Lcom/yandex/mobile/ads/impl/t60;->C:Z

    if-eqz v1, :cond_9

    goto/16 :goto_9

    .line 23
    :cond_9
    iget-object v1, v10, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/tw0;->f()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v1

    .line 24
    iget-boolean v2, v1, Lcom/yandex/mobile/ads/impl/qw0;->d:Z

    if-nez v2, :cond_a

    goto/16 :goto_c

    :cond_a
    move v2, v5

    .line 25
    :goto_5
    iget-object v3, v10, Lcom/yandex/mobile/ads/impl/t60;->b:[Lcom/yandex/mobile/ads/impl/yo1;

    array-length v4, v3

    if-ge v2, v4, :cond_c

    .line 26
    aget-object v3, v3, v2

    .line 27
    iget-object v4, v1, Lcom/yandex/mobile/ads/impl/qw0;->c:[Lcom/yandex/mobile/ads/impl/lt1;

    aget-object v4, v4, v2

    .line 28
    invoke-interface {v3}, Lcom/yandex/mobile/ads/impl/yo1;->g()Lcom/yandex/mobile/ads/impl/lt1;

    move-result-object v6

    if-ne v6, v4, :cond_17

    if-eqz v4, :cond_b

    .line 29
    invoke-interface {v3}, Lcom/yandex/mobile/ads/impl/yo1;->e()Z

    move-result v4

    if-nez v4, :cond_b

    .line 30
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/qw0;->b()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v4

    .line 31
    iget-object v6, v1, Lcom/yandex/mobile/ads/impl/qw0;->f:Lcom/yandex/mobile/ads/impl/sw0;

    iget-boolean v6, v6, Lcom/yandex/mobile/ads/impl/sw0;->f:Z

    if-eqz v6, :cond_17

    iget-boolean v6, v4, Lcom/yandex/mobile/ads/impl/qw0;->d:Z

    if-eqz v6, :cond_17

    instance-of v6, v3, Lcom/yandex/mobile/ads/impl/v42;

    if-nez v6, :cond_b

    instance-of v6, v3, Lcom/yandex/mobile/ads/impl/p01;

    if-nez v6, :cond_b

    .line 32
    invoke-interface {v3}, Lcom/yandex/mobile/ads/impl/yo1;->j()J

    move-result-wide v17

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/qw0;->d()J

    move-result-wide v3

    cmp-long v3, v17, v3

    if-ltz v3, :cond_17

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 33
    :cond_c
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qw0;->b()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v1

    iget-boolean v1, v1, Lcom/yandex/mobile/ads/impl/qw0;->d:Z

    if-nez v1, :cond_d

    iget-wide v1, v10, Lcom/yandex/mobile/ads/impl/t60;->M:J

    .line 34
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qw0;->b()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/qw0;->d()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_d

    goto/16 :goto_c

    .line 35
    :cond_d
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qw0;->f()Lcom/yandex/mobile/ads/impl/g62;

    move-result-object v6

    .line 36
    iget-object v1, v10, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/tw0;->b()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v4

    .line 37
    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/qw0;->f()Lcom/yandex/mobile/ads/impl/g62;

    move-result-object v3

    .line 38
    iget-object v1, v10, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/zh1;->a:Lcom/yandex/mobile/ads/impl/i52;

    iget-object v1, v4, Lcom/yandex/mobile/ads/impl/qw0;->f:Lcom/yandex/mobile/ads/impl/sw0;

    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/sw0;->a:Lcom/yandex/mobile/ads/impl/vw0$b;

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/qw0;->f:Lcom/yandex/mobile/ads/impl/sw0;

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/sw0;->a:Lcom/yandex/mobile/ads/impl/vw0$b;

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v20, v1

    move-object v1, v2

    move-object/from16 v21, v2

    move-object/from16 v2, v20

    move-object v13, v3

    move-object/from16 v3, v21

    move-object v14, v4

    move-object/from16 v4, v19

    move-object v7, v6

    move-wide/from16 v5, v17

    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/i52;Lcom/yandex/mobile/ads/impl/vw0$b;Lcom/yandex/mobile/ads/impl/i52;Lcom/yandex/mobile/ads/impl/vw0$b;J)V

    .line 39
    iget-boolean v0, v14, Lcom/yandex/mobile/ads/impl/qw0;->d:Z

    if-eqz v0, :cond_f

    iget-object v0, v14, Lcom/yandex/mobile/ads/impl/qw0;->a:Lcom/yandex/mobile/ads/impl/pw0;

    .line 40
    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/pw0;->readDiscontinuity()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_f

    .line 41
    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/qw0;->d()J

    move-result-wide v0

    .line 42
    iget-object v2, v10, Lcom/yandex/mobile/ads/impl/t60;->b:[Lcom/yandex/mobile/ads/impl/yo1;

    array-length v3, v2

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v3, :cond_17

    aget-object v4, v2, v5

    .line 43
    invoke-interface {v4}, Lcom/yandex/mobile/ads/impl/yo1;->g()Lcom/yandex/mobile/ads/impl/lt1;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 44
    invoke-interface {v4}, Lcom/yandex/mobile/ads/impl/yo1;->h()V

    .line 45
    instance-of v6, v4, Lcom/yandex/mobile/ads/impl/v42;

    if-eqz v6, :cond_e

    .line 46
    check-cast v4, Lcom/yandex/mobile/ads/impl/v42;

    invoke-virtual {v4, v0, v1}, Lcom/yandex/mobile/ads/impl/v42;->c(J)V

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_f
    const/4 v5, 0x0

    .line 47
    :goto_7
    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->b:[Lcom/yandex/mobile/ads/impl/yo1;

    array-length v0, v0

    if-ge v5, v0, :cond_17

    .line 48
    invoke-virtual {v7, v5}, Lcom/yandex/mobile/ads/impl/g62;->a(I)Z

    move-result v0

    .line 49
    invoke-virtual {v13, v5}, Lcom/yandex/mobile/ads/impl/g62;->a(I)Z

    move-result v1

    if-eqz v0, :cond_12

    .line 50
    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->b:[Lcom/yandex/mobile/ads/impl/yo1;

    aget-object v0, v0, v5

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/yo1;->k()Z

    move-result v0

    if-nez v0, :cond_12

    .line 51
    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->d:[Lcom/yandex/mobile/ads/impl/zo1;

    aget-object v0, v0, v5

    check-cast v0, Lcom/yandex/mobile/ads/impl/sk;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/sk;->m()I

    move-result v0

    const/4 v2, -0x2

    if-ne v0, v2, :cond_10

    const/4 v0, 0x1

    goto :goto_8

    :cond_10
    const/4 v0, 0x0

    .line 52
    :goto_8
    iget-object v2, v7, Lcom/yandex/mobile/ads/impl/g62;->b:[Lcom/yandex/mobile/ads/impl/ap1;

    aget-object v2, v2, v5

    .line 53
    iget-object v3, v13, Lcom/yandex/mobile/ads/impl/g62;->b:[Lcom/yandex/mobile/ads/impl/ap1;

    aget-object v3, v3, v5

    if-eqz v1, :cond_11

    .line 54
    invoke-virtual {v3, v2}, Lcom/yandex/mobile/ads/impl/ap1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    if-eqz v0, :cond_12

    .line 55
    :cond_11
    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->b:[Lcom/yandex/mobile/ads/impl/yo1;

    aget-object v0, v0, v5

    .line 56
    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/qw0;->d()J

    move-result-wide v1

    .line 57
    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/yo1;->h()V

    .line 58
    instance-of v3, v0, Lcom/yandex/mobile/ads/impl/v42;

    if-eqz v3, :cond_12

    .line 59
    check-cast v0, Lcom/yandex/mobile/ads/impl/v42;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/v42;->c(J)V

    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 60
    :cond_13
    :goto_9
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/qw0;->f:Lcom/yandex/mobile/ads/impl/sw0;

    iget-boolean v1, v1, Lcom/yandex/mobile/ads/impl/sw0;->i:Z

    if-nez v1, :cond_14

    iget-boolean v1, v10, Lcom/yandex/mobile/ads/impl/t60;->C:Z

    if-eqz v1, :cond_17

    :cond_14
    const/4 v5, 0x0

    .line 61
    :goto_a
    iget-object v1, v10, Lcom/yandex/mobile/ads/impl/t60;->b:[Lcom/yandex/mobile/ads/impl/yo1;

    array-length v2, v1

    if-ge v5, v2, :cond_17

    .line 62
    aget-object v1, v1, v5

    .line 63
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/qw0;->c:[Lcom/yandex/mobile/ads/impl/lt1;

    aget-object v2, v2, v5

    if-eqz v2, :cond_16

    .line 64
    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/yo1;->g()Lcom/yandex/mobile/ads/impl/lt1;

    move-result-object v3

    if-ne v3, v2, :cond_16

    .line 65
    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/yo1;->e()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 66
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/qw0;->f:Lcom/yandex/mobile/ads/impl/sw0;

    iget-wide v2, v2, Lcom/yandex/mobile/ads/impl/sw0;->e:J

    cmp-long v4, v2, v8

    if-eqz v4, :cond_15

    cmp-long v2, v2, v15

    if-eqz v2, :cond_15

    .line 67
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qw0;->c()J

    move-result-wide v2

    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/qw0;->f:Lcom/yandex/mobile/ads/impl/sw0;

    iget-wide v6, v4, Lcom/yandex/mobile/ads/impl/sw0;->e:J

    add-long/2addr v2, v6

    goto :goto_b

    :cond_15
    move-wide v2, v8

    .line 68
    :goto_b
    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/yo1;->h()V

    .line 69
    instance-of v4, v1, Lcom/yandex/mobile/ads/impl/v42;

    if-eqz v4, :cond_16

    .line 70
    check-cast v1, Lcom/yandex/mobile/ads/impl/v42;

    invoke-virtual {v1, v2, v3}, Lcom/yandex/mobile/ads/impl/v42;->c(J)V

    :cond_16
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 71
    :cond_17
    :goto_c
    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tw0;->f()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 72
    iget-object v1, v10, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    .line 73
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/tw0;->e()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v1

    if-eq v1, v0, :cond_21

    iget-boolean v0, v0, Lcom/yandex/mobile/ads/impl/qw0;->g:Z

    if-eqz v0, :cond_18

    goto/16 :goto_12

    .line 74
    :cond_18
    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tw0;->f()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qw0;->f()Lcom/yandex/mobile/ads/impl/g62;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 76
    :goto_d
    iget-object v3, v10, Lcom/yandex/mobile/ads/impl/t60;->b:[Lcom/yandex/mobile/ads/impl/yo1;

    array-length v4, v3

    if-ge v5, v4, :cond_20

    .line 77
    aget-object v3, v3, v5

    .line 78
    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/t60;->b(Lcom/yandex/mobile/ads/impl/yo1;)Z

    move-result v4

    if-nez v4, :cond_19

    goto :goto_11

    .line 79
    :cond_19
    invoke-interface {v3}, Lcom/yandex/mobile/ads/impl/yo1;->g()Lcom/yandex/mobile/ads/impl/lt1;

    move-result-object v4

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/qw0;->c:[Lcom/yandex/mobile/ads/impl/lt1;

    aget-object v6, v6, v5

    if-eq v4, v6, :cond_1a

    const/4 v4, 0x1

    goto :goto_e

    :cond_1a
    const/4 v4, 0x0

    .line 80
    :goto_e
    invoke-virtual {v1, v5}, Lcom/yandex/mobile/ads/impl/g62;->a(I)Z

    move-result v6

    if-eqz v6, :cond_1b

    if-nez v4, :cond_1b

    goto :goto_11

    .line 81
    :cond_1b
    invoke-interface {v3}, Lcom/yandex/mobile/ads/impl/yo1;->k()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 82
    iget-object v4, v1, Lcom/yandex/mobile/ads/impl/g62;->c:[Lcom/yandex/mobile/ads/impl/h70;

    aget-object v4, v4, v5

    if-eqz v4, :cond_1c

    .line 83
    invoke-interface {v4}, Lcom/yandex/mobile/ads/impl/c62;->b()I

    move-result v6

    goto :goto_f

    :cond_1c
    const/4 v6, 0x0

    .line 84
    :goto_f
    new-array v7, v6, [Lcom/yandex/mobile/ads/impl/jc0;

    const/4 v13, 0x0

    :goto_10
    if-ge v13, v6, :cond_1d

    .line 85
    invoke-interface {v4, v13}, Lcom/yandex/mobile/ads/impl/c62;->a(I)Lcom/yandex/mobile/ads/impl/jc0;

    move-result-object v14

    aput-object v14, v7, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_10

    .line 86
    :cond_1d
    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/qw0;->c:[Lcom/yandex/mobile/ads/impl/lt1;

    aget-object v27, v4, v5

    .line 87
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qw0;->d()J

    move-result-wide v28

    .line 88
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qw0;->c()J

    move-result-wide v30

    move-object/from16 v25, v3

    move-object/from16 v26, v7

    .line 89
    invoke-interface/range {v25 .. v31}, Lcom/yandex/mobile/ads/impl/yo1;->a([Lcom/yandex/mobile/ads/impl/jc0;Lcom/yandex/mobile/ads/impl/lt1;JJ)V

    goto :goto_11

    .line 90
    :cond_1e
    invoke-interface {v3}, Lcom/yandex/mobile/ads/impl/yo1;->a()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 91
    invoke-direct {v10, v3}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/yo1;)V

    goto :goto_11

    :cond_1f
    const/4 v2, 0x1

    :goto_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_20
    if-nez v2, :cond_21

    .line 92
    array-length v0, v3

    new-array v0, v0, [Z

    invoke-direct {v10, v0}, Lcom/yandex/mobile/ads/impl/t60;->a([Z)V

    :cond_21
    :goto_12
    const/4 v5, 0x0

    .line 93
    :goto_13
    invoke-direct/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/t60;->o()Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_0

    .line 94
    :cond_22
    iget-boolean v0, v10, Lcom/yandex/mobile/ads/impl/t60;->C:Z

    if-eqz v0, :cond_23

    goto/16 :goto_0

    .line 95
    :cond_23
    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tw0;->e()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v0

    if-nez v0, :cond_24

    goto/16 :goto_0

    .line 96
    :cond_24
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qw0;->b()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-wide v1, v10, Lcom/yandex/mobile/ads/impl/t60;->M:J

    .line 98
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qw0;->d()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    iget-boolean v0, v0, Lcom/yandex/mobile/ads/impl/qw0;->g:Z

    if-eqz v0, :cond_0

    if-eqz v5, :cond_26

    .line 99
    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->z:Lcom/yandex/mobile/ads/impl/t60$d;

    iget-object v1, v10, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    .line 100
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/t60$d;->a(Lcom/yandex/mobile/ads/impl/t60$d;)Z

    move-result v2

    .line 101
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/t60$d;->b:Lcom/yandex/mobile/ads/impl/zh1;

    if-eq v3, v1, :cond_25

    const/4 v5, 0x1

    goto :goto_14

    :cond_25
    const/4 v5, 0x0

    :goto_14
    or-int/2addr v2, v5

    invoke-static {v0, v2}, Lcom/yandex/mobile/ads/impl/t60$d;->b(Lcom/yandex/mobile/ads/impl/t60$d;Z)V

    .line 102
    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/t60$d;->b:Lcom/yandex/mobile/ads/impl/zh1;

    if-eqz v2, :cond_26

    .line 103
    iget-object v1, v10, Lcom/yandex/mobile/ads/impl/t60;->s:Lcom/yandex/mobile/ads/impl/t60$e;

    invoke-interface {v1, v0}, Lcom/yandex/mobile/ads/impl/t60$e;->a(Lcom/yandex/mobile/ads/impl/t60$d;)V

    .line 104
    new-instance v0, Lcom/yandex/mobile/ads/impl/t60$d;

    iget-object v1, v10, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/t60$d;-><init>(Lcom/yandex/mobile/ads/impl/zh1;)V

    iput-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->z:Lcom/yandex/mobile/ads/impl/t60$d;

    .line 105
    :cond_26
    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tw0;->a()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    iget-object v1, v10, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/zh1;->b:Lcom/yandex/mobile/ads/impl/vw0$b;

    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/rw0;->a:Ljava/lang/Object;

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/qw0;->f:Lcom/yandex/mobile/ads/impl/sw0;

    iget-object v2, v2, Lcom/yandex/mobile/ads/impl/sw0;->a:Lcom/yandex/mobile/ads/impl/vw0$b;

    iget-object v2, v2, Lcom/yandex/mobile/ads/impl/rw0;->a:Ljava/lang/Object;

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, v10, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/zh1;->b:Lcom/yandex/mobile/ads/impl/vw0$b;

    iget v2, v1, Lcom/yandex/mobile/ads/impl/rw0;->b:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_27

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/qw0;->f:Lcom/yandex/mobile/ads/impl/sw0;

    iget-object v2, v2, Lcom/yandex/mobile/ads/impl/sw0;->a:Lcom/yandex/mobile/ads/impl/vw0$b;

    iget v4, v2, Lcom/yandex/mobile/ads/impl/rw0;->b:I

    if-ne v4, v3, :cond_27

    iget v1, v1, Lcom/yandex/mobile/ads/impl/rw0;->e:I

    iget v2, v2, Lcom/yandex/mobile/ads/impl/rw0;->e:I

    if-eq v1, v2, :cond_27

    const/4 v5, 0x1

    goto :goto_15

    :cond_27
    const/4 v5, 0x0

    .line 109
    :goto_15
    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/qw0;->f:Lcom/yandex/mobile/ads/impl/sw0;

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/sw0;->a:Lcom/yandex/mobile/ads/impl/vw0$b;

    iget-wide v6, v0, Lcom/yandex/mobile/ads/impl/sw0;->b:J

    iget-wide v13, v0, Lcom/yandex/mobile/ads/impl/sw0;->c:J

    const/16 v17, 0x1

    xor-int/lit8 v18, v5, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-wide v2, v6

    move-wide v4, v13

    move/from16 v13, v17

    move/from16 v8, v18

    move/from16 v9, v19

    .line 110
    invoke-direct/range {v0 .. v9}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/vw0$b;JJJZI)Lcom/yandex/mobile/ads/impl/zh1;

    move-result-object v0

    iput-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    .line 111
    invoke-direct/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/t60;->n()V

    .line 112
    invoke-direct/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/t60;->s()V

    move v5, v13

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_13

    .line 113
    :goto_16
    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget v0, v0, Lcom/yandex/mobile/ads/impl/zh1;->e:I

    if-eq v0, v13, :cond_59

    const/4 v1, 0x4

    if-ne v0, v1, :cond_28

    goto/16 :goto_33

    .line 114
    :cond_28
    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tw0;->e()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v0

    const-wide/16 v2, 0xa

    if-nez v0, :cond_29

    .line 115
    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->i:Lcom/yandex/mobile/ads/impl/hf0;

    add-long/2addr v11, v2

    invoke-interface {v0, v11, v12}, Lcom/yandex/mobile/ads/impl/hf0;->a(J)Z

    return-void

    .line 116
    :cond_29
    const-string v4, "doSomeWork"

    invoke-static {v4}, Lcom/yandex/mobile/ads/impl/u52;->a(Ljava/lang/String;)V

    .line 117
    invoke-direct/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/t60;->s()V

    .line 118
    iget-boolean v4, v0, Lcom/yandex/mobile/ads/impl/qw0;->d:Z

    const-wide/16 v5, 0x3e8

    if-eqz v4, :cond_33

    .line 119
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    mul-long/2addr v7, v5

    .line 120
    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/qw0;->a:Lcom/yandex/mobile/ads/impl/pw0;

    iget-object v9, v10, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-wide v13, v9, Lcom/yandex/mobile/ads/impl/zh1;->r:J

    iget-wide v2, v10, Lcom/yandex/mobile/ads/impl/t60;->n:J

    sub-long/2addr v13, v2

    iget-boolean v2, v10, Lcom/yandex/mobile/ads/impl/t60;->o:Z

    invoke-interface {v4, v13, v14, v2}, Lcom/yandex/mobile/ads/impl/pw0;->discardBuffer(JZ)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 121
    :goto_17
    iget-object v9, v10, Lcom/yandex/mobile/ads/impl/t60;->b:[Lcom/yandex/mobile/ads/impl/yo1;

    array-length v13, v9

    if-ge v2, v13, :cond_32

    .line 122
    aget-object v9, v9, v2

    .line 123
    invoke-static {v9}, Lcom/yandex/mobile/ads/impl/t60;->b(Lcom/yandex/mobile/ads/impl/yo1;)Z

    move-result v13

    if-nez v13, :cond_2a

    goto :goto_1e

    .line 124
    :cond_2a
    iget-wide v13, v10, Lcom/yandex/mobile/ads/impl/t60;->M:J

    invoke-interface {v9, v13, v14, v7, v8}, Lcom/yandex/mobile/ads/impl/yo1;->a(JJ)V

    if-eqz v3, :cond_2b

    .line 125
    invoke-interface {v9}, Lcom/yandex/mobile/ads/impl/yo1;->a()Z

    move-result v3

    if-eqz v3, :cond_2b

    const/4 v3, 0x1

    goto :goto_18

    :cond_2b
    const/4 v3, 0x0

    .line 126
    :goto_18
    iget-object v13, v0, Lcom/yandex/mobile/ads/impl/qw0;->c:[Lcom/yandex/mobile/ads/impl/lt1;

    aget-object v13, v13, v2

    invoke-interface {v9}, Lcom/yandex/mobile/ads/impl/yo1;->g()Lcom/yandex/mobile/ads/impl/lt1;

    move-result-object v14

    if-eq v13, v14, :cond_2c

    const/4 v13, 0x1

    goto :goto_19

    :cond_2c
    const/4 v13, 0x0

    :goto_19
    if-nez v13, :cond_2d

    .line 127
    invoke-interface {v9}, Lcom/yandex/mobile/ads/impl/yo1;->e()Z

    move-result v14

    if-eqz v14, :cond_2d

    const/4 v14, 0x1

    goto :goto_1a

    :cond_2d
    const/4 v14, 0x0

    :goto_1a
    if-nez v13, :cond_2f

    if-nez v14, :cond_2f

    .line 128
    invoke-interface {v9}, Lcom/yandex/mobile/ads/impl/yo1;->d()Z

    move-result v13

    if-nez v13, :cond_2f

    invoke-interface {v9}, Lcom/yandex/mobile/ads/impl/yo1;->a()Z

    move-result v13

    if-eqz v13, :cond_2e

    goto :goto_1b

    :cond_2e
    const/4 v13, 0x0

    goto :goto_1c

    :cond_2f
    :goto_1b
    const/4 v13, 0x1

    :goto_1c
    if-eqz v4, :cond_30

    if-eqz v13, :cond_30

    const/4 v4, 0x1

    goto :goto_1d

    :cond_30
    const/4 v4, 0x0

    :goto_1d
    if-nez v13, :cond_31

    .line 129
    invoke-interface {v9}, Lcom/yandex/mobile/ads/impl/yo1;->i()V

    :cond_31
    :goto_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_32
    move v7, v3

    goto :goto_1f

    .line 130
    :cond_33
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/qw0;->a:Lcom/yandex/mobile/ads/impl/pw0;

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/pw0;->maybeThrowPrepareError()V

    const/4 v4, 0x1

    const/4 v7, 0x1

    .line 131
    :goto_1f
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/qw0;->f:Lcom/yandex/mobile/ads/impl/sw0;

    iget-wide v2, v2, Lcom/yandex/mobile/ads/impl/sw0;->e:J

    if-eqz v7, :cond_35

    .line 132
    iget-boolean v7, v0, Lcom/yandex/mobile/ads/impl/qw0;->d:Z

    if-eqz v7, :cond_35

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v2, v7

    if-eqz v9, :cond_34

    iget-object v9, v10, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-wide v13, v9, Lcom/yandex/mobile/ads/impl/zh1;->r:J

    cmp-long v2, v2, v13

    if-gtz v2, :cond_36

    :cond_34
    const/4 v2, 0x1

    goto :goto_20

    :cond_35
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    :cond_36
    const/4 v2, 0x0

    :goto_20
    if-eqz v2, :cond_37

    .line 133
    iget-boolean v3, v10, Lcom/yandex/mobile/ads/impl/t60;->C:Z

    if-eqz v3, :cond_37

    const/4 v3, 0x0

    .line 134
    iput-boolean v3, v10, Lcom/yandex/mobile/ads/impl/t60;->C:Z

    .line 135
    iget-object v9, v10, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget v9, v9, Lcom/yandex/mobile/ads/impl/zh1;->m:I

    const/4 v13, 0x5

    invoke-direct {v10, v3, v9, v3, v13}, Lcom/yandex/mobile/ads/impl/t60;->a(ZIZI)V

    goto :goto_21

    :cond_37
    const/4 v3, 0x0

    :goto_21
    const/4 v9, 0x3

    const/4 v13, 0x2

    if-eqz v2, :cond_38

    .line 136
    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/qw0;->f:Lcom/yandex/mobile/ads/impl/sw0;

    iget-boolean v2, v2, Lcom/yandex/mobile/ads/impl/sw0;->i:Z

    if-eqz v2, :cond_38

    .line 137
    invoke-direct {v10, v1}, Lcom/yandex/mobile/ads/impl/t60;->b(I)V

    .line 138
    invoke-direct/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/t60;->q()V

    goto/16 :goto_2a

    .line 139
    :cond_38
    iget-object v2, v10, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget v14, v2, Lcom/yandex/mobile/ads/impl/zh1;->e:I

    if-ne v14, v13, :cond_42

    .line 140
    iget v14, v10, Lcom/yandex/mobile/ads/impl/t60;->K:I

    if-nez v14, :cond_39

    .line 141
    iget-object v2, v10, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/tw0;->e()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v2

    .line 142
    iget-object v14, v2, Lcom/yandex/mobile/ads/impl/qw0;->f:Lcom/yandex/mobile/ads/impl/sw0;

    iget-wide v5, v14, Lcom/yandex/mobile/ads/impl/sw0;->e:J

    .line 143
    iget-boolean v2, v2, Lcom/yandex/mobile/ads/impl/qw0;->d:Z

    if-eqz v2, :cond_42

    cmp-long v2, v5, v7

    if-eqz v2, :cond_40

    iget-object v2, v10, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-wide v1, v2, Lcom/yandex/mobile/ads/impl/zh1;->r:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_40

    .line 144
    invoke-direct/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/t60;->o()Z

    move-result v1

    if-nez v1, :cond_42

    goto/16 :goto_25

    :cond_39
    if-nez v4, :cond_3a

    goto/16 :goto_27

    .line 145
    :cond_3a
    iget-boolean v1, v2, Lcom/yandex/mobile/ads/impl/zh1;->g:Z

    if-nez v1, :cond_3b

    goto/16 :goto_25

    .line 146
    :cond_3b
    iget-object v1, v2, Lcom/yandex/mobile/ads/impl/zh1;->a:Lcom/yandex/mobile/ads/impl/i52;

    iget-object v2, v10, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/tw0;->e()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/mobile/ads/impl/qw0;->f:Lcom/yandex/mobile/ads/impl/sw0;

    iget-object v2, v2, Lcom/yandex/mobile/ads/impl/sw0;->a:Lcom/yandex/mobile/ads/impl/vw0$b;

    invoke-direct {v10, v1, v2}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/i52;Lcom/yandex/mobile/ads/impl/vw0$b;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 147
    iget-object v1, v10, Lcom/yandex/mobile/ads/impl/t60;->v:Lcom/yandex/mobile/ads/impl/bs0;

    check-cast v1, Lcom/yandex/mobile/ads/impl/b00;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/b00;->a()J

    move-result-wide v1

    move-wide/from16 v29, v1

    goto :goto_22

    :cond_3c
    move-wide/from16 v29, v7

    .line 148
    :goto_22
    iget-object v1, v10, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/tw0;->d()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v1

    .line 149
    iget-boolean v2, v1, Lcom/yandex/mobile/ads/impl/qw0;->d:Z

    if-eqz v2, :cond_3e

    .line 150
    iget-boolean v2, v1, Lcom/yandex/mobile/ads/impl/qw0;->e:Z

    if-eqz v2, :cond_3d

    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/qw0;->a:Lcom/yandex/mobile/ads/impl/pw0;

    .line 151
    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/mx1;->getBufferedPositionUs()J

    move-result-wide v5

    cmp-long v2, v5, v15

    if-nez v2, :cond_3e

    .line 152
    :cond_3d
    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/qw0;->f:Lcom/yandex/mobile/ads/impl/sw0;

    iget-boolean v2, v2, Lcom/yandex/mobile/ads/impl/sw0;->i:Z

    if-eqz v2, :cond_3e

    const/4 v2, 0x1

    goto :goto_23

    :cond_3e
    move v2, v3

    .line 153
    :goto_23
    iget-object v5, v1, Lcom/yandex/mobile/ads/impl/qw0;->f:Lcom/yandex/mobile/ads/impl/sw0;

    iget-object v5, v5, Lcom/yandex/mobile/ads/impl/sw0;->a:Lcom/yandex/mobile/ads/impl/vw0$b;

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/rw0;->a()Z

    move-result v5

    if-eqz v5, :cond_3f

    iget-boolean v1, v1, Lcom/yandex/mobile/ads/impl/qw0;->d:Z

    if-nez v1, :cond_3f

    const/4 v1, 0x1

    goto :goto_24

    :cond_3f
    move v1, v3

    :goto_24
    if-nez v2, :cond_40

    if-nez v1, :cond_40

    .line 154
    iget-object v1, v10, Lcom/yandex/mobile/ads/impl/t60;->g:Lcom/yandex/mobile/ads/impl/cs0;

    .line 155
    iget-object v2, v10, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-wide v5, v2, Lcom/yandex/mobile/ads/impl/zh1;->p:J

    invoke-direct {v10, v5, v6}, Lcom/yandex/mobile/ads/impl/t60;->a(J)J

    move-result-wide v25

    .line 156
    iget-object v2, v10, Lcom/yandex/mobile/ads/impl/t60;->p:Lcom/yandex/mobile/ads/impl/e00;

    .line 157
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/e00;->getPlaybackParameters()Lcom/yandex/mobile/ads/impl/bi1;

    move-result-object v2

    iget v2, v2, Lcom/yandex/mobile/ads/impl/bi1;->b:F

    iget-boolean v5, v10, Lcom/yandex/mobile/ads/impl/t60;->D:Z

    move-object/from16 v24, v1

    move/from16 v27, v2

    move/from16 v28, v5

    .line 158
    invoke-interface/range {v24 .. v30}, Lcom/yandex/mobile/ads/impl/cs0;->a(JFZJ)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 159
    :cond_40
    :goto_25
    invoke-direct {v10, v9}, Lcom/yandex/mobile/ads/impl/t60;->b(I)V

    const/4 v1, 0x0

    .line 160
    iput-object v1, v10, Lcom/yandex/mobile/ads/impl/t60;->P:Lcom/yandex/mobile/ads/impl/m60;

    .line 161
    invoke-direct/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/t60;->o()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 162
    iput-boolean v3, v10, Lcom/yandex/mobile/ads/impl/t60;->D:Z

    .line 163
    iget-object v1, v10, Lcom/yandex/mobile/ads/impl/t60;->p:Lcom/yandex/mobile/ads/impl/e00;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/e00;->a()V

    .line 164
    iget-object v1, v10, Lcom/yandex/mobile/ads/impl/t60;->b:[Lcom/yandex/mobile/ads/impl/yo1;

    array-length v2, v1

    move v5, v3

    :goto_26
    if-ge v5, v2, :cond_49

    aget-object v4, v1, v5

    .line 165
    invoke-static {v4}, Lcom/yandex/mobile/ads/impl/t60;->b(Lcom/yandex/mobile/ads/impl/yo1;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 166
    invoke-interface {v4}, Lcom/yandex/mobile/ads/impl/yo1;->start()V

    :cond_41
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 167
    :cond_42
    :goto_27
    iget-object v1, v10, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget v1, v1, Lcom/yandex/mobile/ads/impl/zh1;->e:I

    if-ne v1, v9, :cond_49

    iget v1, v10, Lcom/yandex/mobile/ads/impl/t60;->K:I

    if-nez v1, :cond_43

    .line 168
    iget-object v1, v10, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/tw0;->e()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v1

    .line 169
    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/qw0;->f:Lcom/yandex/mobile/ads/impl/sw0;

    iget-wide v4, v2, Lcom/yandex/mobile/ads/impl/sw0;->e:J

    .line 170
    iget-boolean v1, v1, Lcom/yandex/mobile/ads/impl/qw0;->d:Z

    if-eqz v1, :cond_44

    cmp-long v1, v4, v7

    if-eqz v1, :cond_49

    iget-object v1, v10, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-wide v1, v1, Lcom/yandex/mobile/ads/impl/zh1;->r:J

    cmp-long v1, v1, v4

    if-ltz v1, :cond_49

    .line 171
    invoke-direct/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/t60;->o()Z

    move-result v1

    if-nez v1, :cond_44

    goto :goto_2a

    :cond_43
    if-nez v4, :cond_49

    .line 172
    :cond_44
    invoke-direct/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/t60;->o()Z

    move-result v1

    iput-boolean v1, v10, Lcom/yandex/mobile/ads/impl/t60;->D:Z

    .line 173
    invoke-direct {v10, v13}, Lcom/yandex/mobile/ads/impl/t60;->b(I)V

    .line 174
    iget-boolean v1, v10, Lcom/yandex/mobile/ads/impl/t60;->D:Z

    if-eqz v1, :cond_48

    .line 175
    iget-object v1, v10, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/tw0;->e()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v1

    :goto_28
    if-eqz v1, :cond_47

    .line 176
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/qw0;->f()Lcom/yandex/mobile/ads/impl/g62;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/mobile/ads/impl/g62;->c:[Lcom/yandex/mobile/ads/impl/h70;

    array-length v4, v2

    move v5, v3

    :goto_29
    if-ge v5, v4, :cond_46

    aget-object v6, v2, v5

    if-eqz v6, :cond_45

    .line 177
    invoke-interface {v6}, Lcom/yandex/mobile/ads/impl/h70;->g()V

    :cond_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    .line 178
    :cond_46
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/qw0;->b()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v1

    goto :goto_28

    .line 179
    :cond_47
    iget-object v1, v10, Lcom/yandex/mobile/ads/impl/t60;->v:Lcom/yandex/mobile/ads/impl/bs0;

    check-cast v1, Lcom/yandex/mobile/ads/impl/b00;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/b00;->c()V

    .line 180
    :cond_48
    invoke-direct/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/t60;->q()V

    .line 181
    :cond_49
    :goto_2a
    iget-object v1, v10, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget v1, v1, Lcom/yandex/mobile/ads/impl/zh1;->e:I

    if-ne v1, v13, :cond_51

    move v5, v3

    .line 182
    :goto_2b
    iget-object v1, v10, Lcom/yandex/mobile/ads/impl/t60;->b:[Lcom/yandex/mobile/ads/impl/yo1;

    array-length v2, v1

    if-ge v5, v2, :cond_4b

    .line 183
    aget-object v1, v1, v5

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/t60;->b(Lcom/yandex/mobile/ads/impl/yo1;)Z

    move-result v1

    if-eqz v1, :cond_4a

    iget-object v1, v10, Lcom/yandex/mobile/ads/impl/t60;->b:[Lcom/yandex/mobile/ads/impl/yo1;

    aget-object v1, v1, v5

    .line 184
    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/yo1;->g()Lcom/yandex/mobile/ads/impl/lt1;

    move-result-object v1

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/qw0;->c:[Lcom/yandex/mobile/ads/impl/lt1;

    aget-object v2, v2, v5

    if-ne v1, v2, :cond_4a

    .line 185
    iget-object v1, v10, Lcom/yandex/mobile/ads/impl/t60;->b:[Lcom/yandex/mobile/ads/impl/yo1;

    aget-object v1, v1, v5

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/yo1;->i()V

    :cond_4a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 186
    :cond_4b
    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-boolean v1, v0, Lcom/yandex/mobile/ads/impl/zh1;->g:Z

    if-nez v1, :cond_51

    iget-wide v0, v0, Lcom/yandex/mobile/ads/impl/zh1;->q:J

    const-wide/32 v4, 0x7a120

    cmp-long v0, v0, v4

    if-gez v0, :cond_51

    .line 187
    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tw0;->d()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v0

    if-nez v0, :cond_4c

    goto :goto_2d

    .line 188
    :cond_4c
    iget-boolean v1, v0, Lcom/yandex/mobile/ads/impl/qw0;->d:Z

    if-nez v1, :cond_4d

    const-wide/16 v0, 0x0

    goto :goto_2c

    :cond_4d
    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/qw0;->a:Lcom/yandex/mobile/ads/impl/pw0;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/mx1;->getNextLoadPositionUs()J

    move-result-wide v0

    :goto_2c
    cmp-long v0, v0, v15

    if-nez v0, :cond_4e

    goto :goto_2d

    .line 189
    :cond_4e
    iget-wide v0, v10, Lcom/yandex/mobile/ads/impl/t60;->Q:J

    cmp-long v0, v0, v7

    if-nez v0, :cond_4f

    .line 190
    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->r:Lcom/yandex/mobile/ads/impl/jp;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/jp;->b()J

    move-result-wide v0

    iput-wide v0, v10, Lcom/yandex/mobile/ads/impl/t60;->Q:J

    goto :goto_2e

    .line 191
    :cond_4f
    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->r:Lcom/yandex/mobile/ads/impl/jp;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/jp;->b()J

    move-result-wide v0

    iget-wide v4, v10, Lcom/yandex/mobile/ads/impl/t60;->Q:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0xfa0

    cmp-long v0, v0, v4

    if-gez v0, :cond_50

    goto :goto_2e

    .line 192
    :cond_50
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Playback stuck buffering and not loading"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_51
    :goto_2d
    iput-wide v7, v10, Lcom/yandex/mobile/ads/impl/t60;->Q:J

    .line 194
    :goto_2e
    invoke-direct/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/t60;->o()Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget v0, v0, Lcom/yandex/mobile/ads/impl/zh1;->e:I

    if-ne v0, v9, :cond_52

    const/4 v7, 0x1

    goto :goto_2f

    :cond_52
    move v7, v3

    .line 195
    :goto_2f
    iget-boolean v0, v10, Lcom/yandex/mobile/ads/impl/t60;->J:Z

    if-eqz v0, :cond_53

    iget-boolean v0, v10, Lcom/yandex/mobile/ads/impl/t60;->I:Z

    if-eqz v0, :cond_53

    if-eqz v7, :cond_53

    const/4 v0, 0x1

    goto :goto_30

    :cond_53
    move v0, v3

    .line 196
    :goto_30
    iget-object v1, v10, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-boolean v2, v1, Lcom/yandex/mobile/ads/impl/zh1;->o:Z

    if-eq v2, v0, :cond_54

    .line 197
    new-instance v2, Lcom/yandex/mobile/ads/impl/zh1;

    move-object/from16 v22, v2

    .line 198
    iget-object v4, v1, Lcom/yandex/mobile/ads/impl/zh1;->a:Lcom/yandex/mobile/ads/impl/i52;

    move-object/from16 v23, v4

    .line 199
    iget-object v4, v1, Lcom/yandex/mobile/ads/impl/zh1;->b:Lcom/yandex/mobile/ads/impl/vw0$b;

    move-object/from16 v24, v4

    iget-wide v4, v1, Lcom/yandex/mobile/ads/impl/zh1;->c:J

    move-wide/from16 v25, v4

    iget-wide v4, v1, Lcom/yandex/mobile/ads/impl/zh1;->d:J

    move-wide/from16 v27, v4

    iget v4, v1, Lcom/yandex/mobile/ads/impl/zh1;->e:I

    move/from16 v29, v4

    iget-object v4, v1, Lcom/yandex/mobile/ads/impl/zh1;->f:Lcom/yandex/mobile/ads/impl/m60;

    move-object/from16 v30, v4

    iget-boolean v4, v1, Lcom/yandex/mobile/ads/impl/zh1;->g:Z

    move/from16 v31, v4

    iget-object v4, v1, Lcom/yandex/mobile/ads/impl/zh1;->h:Lcom/yandex/mobile/ads/impl/z52;

    move-object/from16 v32, v4

    iget-object v4, v1, Lcom/yandex/mobile/ads/impl/zh1;->i:Lcom/yandex/mobile/ads/impl/g62;

    move-object/from16 v33, v4

    iget-object v4, v1, Lcom/yandex/mobile/ads/impl/zh1;->j:Ljava/util/List;

    move-object/from16 v34, v4

    iget-object v4, v1, Lcom/yandex/mobile/ads/impl/zh1;->k:Lcom/yandex/mobile/ads/impl/vw0$b;

    move-object/from16 v35, v4

    iget-boolean v4, v1, Lcom/yandex/mobile/ads/impl/zh1;->l:Z

    move/from16 v36, v4

    iget v4, v1, Lcom/yandex/mobile/ads/impl/zh1;->m:I

    move/from16 v37, v4

    iget-object v4, v1, Lcom/yandex/mobile/ads/impl/zh1;->n:Lcom/yandex/mobile/ads/impl/bi1;

    move-object/from16 v38, v4

    iget-wide v4, v1, Lcom/yandex/mobile/ads/impl/zh1;->p:J

    move-wide/from16 v39, v4

    iget-wide v4, v1, Lcom/yandex/mobile/ads/impl/zh1;->q:J

    move-wide/from16 v41, v4

    iget-wide v4, v1, Lcom/yandex/mobile/ads/impl/zh1;->r:J

    move-wide/from16 v43, v4

    move/from16 v45, v0

    invoke-direct/range {v22 .. v45}, Lcom/yandex/mobile/ads/impl/zh1;-><init>(Lcom/yandex/mobile/ads/impl/i52;Lcom/yandex/mobile/ads/impl/vw0$b;JJILcom/yandex/mobile/ads/impl/m60;ZLcom/yandex/mobile/ads/impl/z52;Lcom/yandex/mobile/ads/impl/g62;Ljava/util/List;Lcom/yandex/mobile/ads/impl/vw0$b;ZILcom/yandex/mobile/ads/impl/bi1;JJJZ)V

    .line 200
    iput-object v2, v10, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    .line 201
    :cond_54
    iput-boolean v3, v10, Lcom/yandex/mobile/ads/impl/t60;->I:Z

    if-nez v0, :cond_59

    .line 202
    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget v0, v0, Lcom/yandex/mobile/ads/impl/zh1;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_55

    goto :goto_33

    :cond_55
    if-nez v7, :cond_57

    if-ne v0, v13, :cond_56

    goto :goto_31

    :cond_56
    if-ne v0, v9, :cond_58

    .line 203
    iget v0, v10, Lcom/yandex/mobile/ads/impl/t60;->K:I

    if-eqz v0, :cond_58

    .line 204
    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->i:Lcom/yandex/mobile/ads/impl/hf0;

    const-wide/16 v1, 0x3e8

    add-long/2addr v11, v1

    invoke-interface {v0, v11, v12}, Lcom/yandex/mobile/ads/impl/hf0;->a(J)Z

    goto :goto_32

    .line 205
    :cond_57
    :goto_31
    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->i:Lcom/yandex/mobile/ads/impl/hf0;

    const-wide/16 v1, 0xa

    add-long/2addr v11, v1

    invoke-interface {v0, v11, v12}, Lcom/yandex/mobile/ads/impl/hf0;->a(J)Z

    .line 206
    :cond_58
    :goto_32
    invoke-static {}, Lcom/yandex/mobile/ads/impl/u52;->a()V

    :cond_59
    :goto_33
    return-void
.end method

.method private b(I)V
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget v1, v0, Lcom/yandex/mobile/ads/impl/zh1;->e:I

    if-eq v1, p1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 234
    iput-wide v1, p0, Lcom/yandex/mobile/ads/impl/t60;->Q:J

    .line 235
    :cond_0
    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/zh1;->a(I)Lcom/yandex/mobile/ads/impl/zh1;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    :cond_1
    return-void
.end method

.method private b(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/m60;
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tw0;->e()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide v0, 0xe8d4a51000L

    add-long/2addr p1, v0

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/qw0;->d(J)J

    move-result-wide p1

    :goto_0
    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/t60;->M:J

    .line 216
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->p:Lcom/yandex/mobile/ads/impl/e00;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/e00;->a(J)V

    .line 217
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/t60;->b:[Lcom/yandex/mobile/ads/impl/yo1;

    array-length p2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, p2, :cond_2

    aget-object v2, p1, v1

    .line 218
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/t60;->b(Lcom/yandex/mobile/ads/impl/yo1;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 219
    iget-wide v3, p0, Lcom/yandex/mobile/ads/impl/t60;->M:J

    invoke-interface {v2, v3, v4}, Lcom/yandex/mobile/ads/impl/yo1;->a(J)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 220
    :cond_2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/tw0;->e()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object p0

    :goto_2
    if-eqz p0, :cond_5

    .line 221
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/qw0;->f()Lcom/yandex/mobile/ads/impl/g62;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/g62;->c:[Lcom/yandex/mobile/ads/impl/h70;

    array-length p2, p1

    move v1, v0

    :goto_3
    if-ge v1, p2, :cond_4

    aget-object v2, p1, v1

    if-eqz v2, :cond_3

    .line 222
    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/h70;->f()V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 223
    :cond_4
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/qw0;->b()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object p0

    goto :goto_2

    :cond_5
    return-void
.end method

.method private b(Lcom/yandex/mobile/ads/impl/bi1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/m60;
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->p:Lcom/yandex/mobile/ads/impl/e00;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/e00;->a(Lcom/yandex/mobile/ads/impl/bi1;)V

    .line 231
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/t60;->p:Lcom/yandex/mobile/ads/impl/e00;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/e00;->getPlaybackParameters()Lcom/yandex/mobile/ads/impl/bi1;

    move-result-object p1

    .line 232
    iget v0, p1, Lcom/yandex/mobile/ads/impl/bi1;->b:F

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/bi1;FZZ)V

    return-void
.end method

.method private synthetic b(Lcom/yandex/mobile/ads/impl/ni1;)V
    .locals 1

    .line 211
    :try_start_0
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/ni1;)V
    :try_end_0
    .catch Lcom/yandex/mobile/ads/impl/m60; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 212
    const-string p1, "ExoPlayerImplInternal"

    const-string v0, "Unexpected error delivering message on external thread."

    invoke-static {p1, v0, p0}, Lcom/yandex/mobile/ads/impl/et0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private b(Lcom/yandex/mobile/ads/impl/pw0;)V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/tw0;->a(Lcom/yandex/mobile/ads/impl/pw0;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 208
    :cond_0
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/t60;->M:J

    invoke-virtual {p1, v0, v1}, Lcom/yandex/mobile/ads/impl/tw0;->a(J)V

    .line 209
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/t60;->f()V

    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/t60;Lcom/yandex/mobile/ads/impl/ni1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/t60;->b(Lcom/yandex/mobile/ads/impl/ni1;)V

    return-void
.end method

.method private b(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/m60;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tw0;->e()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v0

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/qw0;->f:Lcom/yandex/mobile/ads/impl/sw0;

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/sw0;->a:Lcom/yandex/mobile/ads/impl/vw0$b;

    .line 225
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-wide v3, v1, Lcom/yandex/mobile/ads/impl/zh1;->r:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    .line 226
    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/vw0$b;JZZ)J

    move-result-wide v3

    .line 227
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-wide v1, v1, Lcom/yandex/mobile/ads/impl/zh1;->r:J

    cmp-long v1, v3, v1

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-wide v5, v1, Lcom/yandex/mobile/ads/impl/zh1;->c:J

    iget-wide v7, v1, Lcom/yandex/mobile/ads/impl/zh1;->d:J

    const/4 v10, 0x5

    move-object v1, p0

    move-object v2, v0

    move v9, p1

    .line 229
    invoke-direct/range {v1 .. v10}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/vw0$b;JJJZI)Lcom/yandex/mobile/ads/impl/zh1;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    :cond_0
    return-void
.end method

.method private static b(Lcom/yandex/mobile/ads/impl/yo1;)Z
    .locals 0

    .line 210
    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/yo1;->getState()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private c()J
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tw0;->f()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qw0;->c()J

    move-result-wide v1

    .line 4
    iget-boolean v3, v0, Lcom/yandex/mobile/ads/impl/qw0;->d:Z

    if-nez v3, :cond_1

    return-wide v1

    :cond_1
    const/4 v3, 0x0

    .line 5
    :goto_0
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/t60;->b:[Lcom/yandex/mobile/ads/impl/yo1;

    array-length v5, v4

    if-ge v3, v5, :cond_5

    .line 6
    aget-object v4, v4, v3

    invoke-static {v4}, Lcom/yandex/mobile/ads/impl/t60;->b(Lcom/yandex/mobile/ads/impl/yo1;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/t60;->b:[Lcom/yandex/mobile/ads/impl/yo1;

    aget-object v4, v4, v3

    .line 7
    invoke-interface {v4}, Lcom/yandex/mobile/ads/impl/yo1;->g()Lcom/yandex/mobile/ads/impl/lt1;

    move-result-object v4

    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/qw0;->c:[Lcom/yandex/mobile/ads/impl/lt1;

    aget-object v5, v5, v3

    if-eq v4, v5, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/t60;->b:[Lcom/yandex/mobile/ads/impl/yo1;

    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/yandex/mobile/ads/impl/yo1;->j()J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_3

    return-wide v6

    .line 9
    :cond_3
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-wide v1
.end method

.method public static bridge synthetic c(Lcom/yandex/mobile/ads/impl/t60;)Lcom/yandex/mobile/ads/impl/hf0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/t60;->i:Lcom/yandex/mobile/ads/impl/hf0;

    return-object p0
.end method

.method private c(Lcom/yandex/mobile/ads/impl/pw0;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/m60;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/tw0;->a(Lcom/yandex/mobile/ads/impl/pw0;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/tw0;->d()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->p:Lcom/yandex/mobile/ads/impl/e00;

    .line 13
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/e00;->getPlaybackParameters()Lcom/yandex/mobile/ads/impl/bi1;

    move-result-object v0

    iget v0, v0, Lcom/yandex/mobile/ads/impl/bi1;->b:F

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/zh1;->a:Lcom/yandex/mobile/ads/impl/i52;

    .line 14
    invoke-virtual {p1, v0, v1}, Lcom/yandex/mobile/ads/impl/qw0;->a(FLcom/yandex/mobile/ads/impl/i52;)V

    .line 15
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/qw0;->f()Lcom/yandex/mobile/ads/impl/g62;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/t60;->g:Lcom/yandex/mobile/ads/impl/cs0;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/t60;->b:[Lcom/yandex/mobile/ads/impl/yo1;

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/g62;->c:[Lcom/yandex/mobile/ads/impl/h70;

    invoke-interface {v1, v2, v0}, Lcom/yandex/mobile/ads/impl/cs0;->a([Lcom/yandex/mobile/ads/impl/yo1;[Lcom/yandex/mobile/ads/impl/h70;)V

    .line 17
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tw0;->e()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 18
    iget-object v0, p1, Lcom/yandex/mobile/ads/impl/qw0;->f:Lcom/yandex/mobile/ads/impl/sw0;

    iget-wide v0, v0, Lcom/yandex/mobile/ads/impl/sw0;->b:J

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/t60;->b(J)V

    .line 19
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->b:[Lcom/yandex/mobile/ads/impl/yo1;

    array-length v0, v0

    new-array v0, v0, [Z

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/t60;->a([Z)V

    .line 20
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/zh1;->b:Lcom/yandex/mobile/ads/impl/vw0$b;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/qw0;->f:Lcom/yandex/mobile/ads/impl/sw0;

    iget-wide v7, p1, Lcom/yandex/mobile/ads/impl/sw0;->b:J

    iget-wide v5, v0, Lcom/yandex/mobile/ads/impl/zh1;->c:J

    const/4 v9, 0x0

    const/4 v10, 0x5

    move-object v1, p0

    move-wide v3, v7

    .line 21
    invoke-direct/range {v1 .. v10}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/vw0$b;JJJZI)Lcom/yandex/mobile/ads/impl/zh1;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    .line 22
    :cond_1
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/t60;->f()V

    return-void
.end method

.method private c(Z)V
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/t60;->J:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 28
    :cond_0
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/t60;->J:Z

    if-nez p1, :cond_1

    .line 29
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-boolean p1, p1, Lcom/yandex/mobile/ads/impl/zh1;->o:Z

    if-eqz p1, :cond_1

    .line 30
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/t60;->i:Lcom/yandex/mobile/ads/impl/hf0;

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/hf0;->a(I)Z

    :cond_1
    return-void
.end method

.method private d(Lcom/yandex/mobile/ads/impl/ni1;)V
    .locals 3

    .line 3
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ni1;->a()Landroid/os/Looper;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    const-string p0, "TAG"

    const-string v0, "Trying to send message on a dead thread."

    invoke-static {p0, v0}, Lcom/yandex/mobile/ads/impl/et0;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 6
    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/ni1;->a(Z)V

    return-void

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/t60;->r:Lcom/yandex/mobile/ads/impl/jp;

    const/4 v2, 0x0

    .line 8
    invoke-interface {v1, v0, v2}, Lcom/yandex/mobile/ads/impl/jp;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/yandex/mobile/ads/impl/hf0;

    move-result-object v0

    new-instance v1, Lcom/yandex/mobile/ads/impl/wr2;

    invoke-direct {v1, p0, p1}, Lcom/yandex/mobile/ads/impl/wr2;-><init>(Lcom/yandex/mobile/ads/impl/t60;Lcom/yandex/mobile/ads/impl/ni1;)V

    .line 9
    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/hf0;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static bridge synthetic d(Lcom/yandex/mobile/ads/impl/t60;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/t60;->I:Z

    return-void
.end method

.method private d(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/m60;
        }
    .end annotation

    .line 10
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/t60;->B:Z

    .line 11
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/t60;->n()V

    .line 12
    iget-boolean p1, p0, Lcom/yandex/mobile/ads/impl/t60;->C:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/tw0;->f()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object p1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tw0;->e()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    .line 13
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/t60;->b(Z)V

    const/4 p1, 0x0

    .line 14
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/t60;->a(Z)V

    :cond_0
    return-void
.end method

.method private synthetic e()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/t60;->A:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private e(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/m60;
        }
    .end annotation

    .line 2
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/t60;->G:Z

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/zh1;->a:Lcom/yandex/mobile/ads/impl/i52;

    invoke-virtual {v0, v1, p1}, Lcom/yandex/mobile/ads/impl/tw0;->a(Lcom/yandex/mobile/ads/impl/i52;Z)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/t60;->b(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/t60;->a(Z)V

    return-void
.end method

.method private f()V
    .locals 6

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tw0;->d()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v1, v0, Lcom/yandex/mobile/ads/impl/qw0;->d:Z

    const-wide/16 v2, 0x0

    if-nez v1, :cond_1

    move-wide v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/qw0;->a:Lcom/yandex/mobile/ads/impl/pw0;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/mx1;->getNextLoadPositionUs()J

    move-result-wide v0

    :goto_0
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    :goto_1
    const/4 v0, 0x0

    goto :goto_4

    :cond_2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tw0;->d()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v0

    iget-boolean v1, v0, Lcom/yandex/mobile/ads/impl/qw0;->d:Z

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/qw0;->a:Lcom/yandex/mobile/ads/impl/pw0;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/mx1;->getNextLoadPositionUs()J

    move-result-wide v2

    :goto_2
    invoke-direct {p0, v2, v3}, Lcom/yandex/mobile/ads/impl/t60;->a(J)J

    move-result-wide v1

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/tw0;->e()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v3

    if-ne v0, v3, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/qw0;->f:Lcom/yandex/mobile/ads/impl/sw0;

    iget-wide v3, v0, Lcom/yandex/mobile/ads/impl/sw0;->b:J

    :goto_3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->g:Lcom/yandex/mobile/ads/impl/cs0;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/t60;->p:Lcom/yandex/mobile/ads/impl/e00;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/e00;->getPlaybackParameters()Lcom/yandex/mobile/ads/impl/bi1;

    move-result-object v3

    iget v3, v3, Lcom/yandex/mobile/ads/impl/bi1;->b:F

    invoke-interface {v0, v1, v2, v3}, Lcom/yandex/mobile/ads/impl/cs0;->a(JF)Z

    move-result v0

    :goto_4
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/t60;->E:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tw0;->d()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v0

    iget-wide v1, p0, Lcom/yandex/mobile/ads/impl/t60;->M:J

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/qw0;->a(J)V

    :cond_5
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/t60;->r()V

    return-void
.end method

.method private g()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/m60;
        }
    .end annotation

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->u:Lcom/yandex/mobile/ads/impl/yw0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/yw0;->a()Lcom/yandex/mobile/ads/impl/i52;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/i52;Z)V

    return-void
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->z:Lcom/yandex/mobile/ads/impl/t60$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/t60$d;->a(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v1}, Lcom/yandex/mobile/ads/impl/t60;->a(ZZZZ)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->g:Lcom/yandex/mobile/ads/impl/cs0;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/cs0;->f()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/zh1;->a:Lcom/yandex/mobile/ads/impl/i52;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/i52;->c()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/t60;->b(I)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->u:Lcom/yandex/mobile/ads/impl/yw0;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/t60;->h:Lcom/yandex/mobile/ads/impl/wi;

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/wi;->a()Lcom/yandex/mobile/ads/impl/jz;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yandex/mobile/ads/impl/yw0;->a(Lcom/yandex/mobile/ads/impl/d72;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/t60;->i:Lcom/yandex/mobile/ads/impl/hf0;

    invoke-interface {p0, v1}, Lcom/yandex/mobile/ads/impl/hf0;->a(I)Z

    return-void
.end method

.method private l()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, v1, v0}, Lcom/yandex/mobile/ads/impl/t60;->a(ZZZZ)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->g:Lcom/yandex/mobile/ads/impl/cs0;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/cs0;->b()V

    invoke-direct {p0, v1}, Lcom/yandex/mobile/ads/impl/t60;->b(I)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    monitor-enter p0

    :try_start_0
    iput-boolean v1, p0, Lcom/yandex/mobile/ads/impl/t60;->A:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private m()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/m60;
        }
    .end annotation

    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->p:Lcom/yandex/mobile/ads/impl/e00;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/e00;->getPlaybackParameters()Lcom/yandex/mobile/ads/impl/bi1;

    move-result-object v0

    iget v0, v0, Lcom/yandex/mobile/ads/impl/bi1;->b:F

    iget-object v1, v10, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/tw0;->e()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v1

    iget-object v2, v10, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/tw0;->f()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v2

    const/4 v3, 0x1

    :goto_0
    if-eqz v1, :cond_c

    iget-boolean v4, v1, Lcom/yandex/mobile/ads/impl/qw0;->d:Z

    if-nez v4, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v4, v10, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v4, v4, Lcom/yandex/mobile/ads/impl/zh1;->a:Lcom/yandex/mobile/ads/impl/i52;

    invoke-virtual {v1, v0, v4}, Lcom/yandex/mobile/ads/impl/qw0;->b(FLcom/yandex/mobile/ads/impl/i52;)Lcom/yandex/mobile/ads/impl/g62;

    move-result-object v13

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/qw0;->f()Lcom/yandex/mobile/ads/impl/g62;

    move-result-object v4

    const/16 v18, 0x0

    if-eqz v4, :cond_4

    iget-object v5, v4, Lcom/yandex/mobile/ads/impl/g62;->c:[Lcom/yandex/mobile/ads/impl/h70;

    array-length v5, v5

    iget-object v6, v13, Lcom/yandex/mobile/ads/impl/g62;->c:[Lcom/yandex/mobile/ads/impl/h70;

    array-length v6, v6

    if-eq v5, v6, :cond_1

    goto :goto_2

    :cond_1
    move/from16 v5, v18

    :goto_1
    iget-object v6, v13, Lcom/yandex/mobile/ads/impl/g62;->c:[Lcom/yandex/mobile/ads/impl/h70;

    array-length v6, v6

    if-ge v5, v6, :cond_2

    iget-object v6, v13, Lcom/yandex/mobile/ads/impl/g62;->b:[Lcom/yandex/mobile/ads/impl/ap1;

    aget-object v6, v6, v5

    iget-object v7, v4, Lcom/yandex/mobile/ads/impl/g62;->b:[Lcom/yandex/mobile/ads/impl/ap1;

    aget-object v7, v7, v5

    invoke-static {v6, v7}, Lcom/yandex/mobile/ads/impl/f92;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v13, Lcom/yandex/mobile/ads/impl/g62;->c:[Lcom/yandex/mobile/ads/impl/h70;

    aget-object v6, v6, v5

    iget-object v7, v4, Lcom/yandex/mobile/ads/impl/g62;->c:[Lcom/yandex/mobile/ads/impl/h70;

    aget-object v7, v7, v5

    invoke-static {v6, v7}, Lcom/yandex/mobile/ads/impl/f92;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    if-ne v1, v2, :cond_3

    move/from16 v3, v18

    :cond_3
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/qw0;->b()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v1

    goto :goto_0

    :cond_4
    :goto_2
    const/4 v9, 0x4

    if-eqz v3, :cond_b

    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tw0;->e()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v8

    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v0, v8}, Lcom/yandex/mobile/ads/impl/tw0;->a(Lcom/yandex/mobile/ads/impl/qw0;)Z

    move-result v16

    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->b:[Lcom/yandex/mobile/ads/impl/yo1;

    array-length v0, v0

    new-array v6, v0, [Z

    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-wide v14, v0, Lcom/yandex/mobile/ads/impl/zh1;->r:J

    move-object v12, v8

    move-object/from16 v17, v6

    invoke-virtual/range {v12 .. v17}, Lcom/yandex/mobile/ads/impl/qw0;->a(Lcom/yandex/mobile/ads/impl/g62;JZ[Z)J

    move-result-wide v12

    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget v1, v0, Lcom/yandex/mobile/ads/impl/zh1;->e:I

    if-eq v1, v9, :cond_5

    iget-wide v0, v0, Lcom/yandex/mobile/ads/impl/zh1;->r:J

    cmp-long v0, v12, v0

    if-eqz v0, :cond_5

    const/4 v14, 0x1

    goto :goto_3

    :cond_5
    move/from16 v14, v18

    :goto_3
    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/zh1;->b:Lcom/yandex/mobile/ads/impl/vw0$b;

    iget-wide v4, v0, Lcom/yandex/mobile/ads/impl/zh1;->c:J

    iget-wide v2, v0, Lcom/yandex/mobile/ads/impl/zh1;->d:J

    const/4 v15, 0x5

    move-object/from16 v0, p0

    move-wide/from16 v16, v2

    move-wide v2, v12

    move-object/from16 v19, v6

    move-wide/from16 v6, v16

    move-object v11, v8

    move v8, v14

    move v9, v15

    invoke-direct/range {v0 .. v9}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/vw0$b;JJJZI)Lcom/yandex/mobile/ads/impl/zh1;

    move-result-object v0

    iput-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    if-eqz v14, :cond_6

    invoke-direct {v10, v12, v13}, Lcom/yandex/mobile/ads/impl/t60;->b(J)V

    :cond_6
    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->b:[Lcom/yandex/mobile/ads/impl/yo1;

    array-length v0, v0

    new-array v0, v0, [Z

    move/from16 v1, v18

    :goto_4
    iget-object v2, v10, Lcom/yandex/mobile/ads/impl/t60;->b:[Lcom/yandex/mobile/ads/impl/yo1;

    array-length v3, v2

    if-ge v1, v3, :cond_9

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/t60;->b(Lcom/yandex/mobile/ads/impl/yo1;)Z

    move-result v3

    aput-boolean v3, v0, v1

    iget-object v4, v11, Lcom/yandex/mobile/ads/impl/qw0;->c:[Lcom/yandex/mobile/ads/impl/lt1;

    aget-object v4, v4, v1

    if-eqz v3, :cond_8

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/yo1;->g()Lcom/yandex/mobile/ads/impl/lt1;

    move-result-object v3

    if-eq v4, v3, :cond_7

    invoke-direct {v10, v2}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/yo1;)V

    goto :goto_5

    :cond_7
    aget-boolean v3, v19, v1

    if-eqz v3, :cond_8

    iget-wide v3, v10, Lcom/yandex/mobile/ads/impl/t60;->M:J

    invoke-interface {v2, v3, v4}, Lcom/yandex/mobile/ads/impl/yo1;->a(J)V

    :cond_8
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    invoke-direct {v10, v0}, Lcom/yandex/mobile/ads/impl/t60;->a([Z)V

    :cond_a
    :goto_6
    const/4 v0, 0x1

    goto :goto_7

    :cond_b
    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/tw0;->a(Lcom/yandex/mobile/ads/impl/qw0;)Z

    iget-boolean v0, v1, Lcom/yandex/mobile/ads/impl/qw0;->d:Z

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/qw0;->f:Lcom/yandex/mobile/ads/impl/sw0;

    iget-wide v2, v0, Lcom/yandex/mobile/ads/impl/sw0;->b:J

    iget-wide v4, v10, Lcom/yandex/mobile/ads/impl/t60;->M:J

    invoke-virtual {v1, v4, v5}, Lcom/yandex/mobile/ads/impl/qw0;->c(J)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v1, v13, v2, v3}, Lcom/yandex/mobile/ads/impl/qw0;->a(Lcom/yandex/mobile/ads/impl/g62;J)V

    goto :goto_6

    :goto_7
    invoke-direct {v10, v0}, Lcom/yandex/mobile/ads/impl/t60;->a(Z)V

    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget v0, v0, Lcom/yandex/mobile/ads/impl/zh1;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/t60;->f()V

    invoke-direct/range {p0 .. p0}, Lcom/yandex/mobile/ads/impl/t60;->s()V

    iget-object v0, v10, Lcom/yandex/mobile/ads/impl/t60;->i:Lcom/yandex/mobile/ads/impl/hf0;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/hf0;->a(I)Z

    :cond_c
    :goto_8
    return-void
.end method

.method private n()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tw0;->e()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/qw0;->f:Lcom/yandex/mobile/ads/impl/sw0;

    iget-boolean v0, v0, Lcom/yandex/mobile/ads/impl/sw0;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/t60;->B:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/t60;->C:Z

    return-void
.end method

.method private o()Z
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/zh1;->l:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/zh1;->m:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private q()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/m60;
        }
    .end annotation

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->p:Lcom/yandex/mobile/ads/impl/e00;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/e00;->b()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/t60;->b:[Lcom/yandex/mobile/ads/impl/yo1;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/t60;->b(Lcom/yandex/mobile/ads/impl/yo1;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/yo1;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/yo1;->stop()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private r()V
    .locals 28

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/tw0;->d()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v1

    iget-boolean v2, v0, Lcom/yandex/mobile/ads/impl/t60;->E:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/qw0;->a:Lcom/yandex/mobile/ads/impl/pw0;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/mx1;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v11, v1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :goto_2
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-boolean v2, v1, Lcom/yandex/mobile/ads/impl/zh1;->g:Z

    if-eq v11, v2, :cond_2

    new-instance v15, Lcom/yandex/mobile/ads/impl/zh1;

    move-object v2, v15

    iget-object v3, v1, Lcom/yandex/mobile/ads/impl/zh1;->a:Lcom/yandex/mobile/ads/impl/i52;

    iget-object v4, v1, Lcom/yandex/mobile/ads/impl/zh1;->b:Lcom/yandex/mobile/ads/impl/vw0$b;

    iget-wide v5, v1, Lcom/yandex/mobile/ads/impl/zh1;->c:J

    iget-wide v7, v1, Lcom/yandex/mobile/ads/impl/zh1;->d:J

    iget v9, v1, Lcom/yandex/mobile/ads/impl/zh1;->e:I

    iget-object v10, v1, Lcom/yandex/mobile/ads/impl/zh1;->f:Lcom/yandex/mobile/ads/impl/m60;

    iget-object v12, v1, Lcom/yandex/mobile/ads/impl/zh1;->h:Lcom/yandex/mobile/ads/impl/z52;

    iget-object v13, v1, Lcom/yandex/mobile/ads/impl/zh1;->i:Lcom/yandex/mobile/ads/impl/g62;

    iget-object v14, v1, Lcom/yandex/mobile/ads/impl/zh1;->j:Ljava/util/List;

    move-object/from16 v16, v15

    iget-object v15, v1, Lcom/yandex/mobile/ads/impl/zh1;->k:Lcom/yandex/mobile/ads/impl/vw0$b;

    move-object/from16 v26, v16

    iget-boolean v0, v1, Lcom/yandex/mobile/ads/impl/zh1;->l:Z

    move/from16 v16, v0

    iget v0, v1, Lcom/yandex/mobile/ads/impl/zh1;->m:I

    move/from16 v17, v0

    iget-object v0, v1, Lcom/yandex/mobile/ads/impl/zh1;->n:Lcom/yandex/mobile/ads/impl/bi1;

    move-object/from16 v18, v0

    move-object v0, v2

    move-object/from16 v27, v3

    iget-wide v2, v1, Lcom/yandex/mobile/ads/impl/zh1;->p:J

    move-wide/from16 v19, v2

    iget-wide v2, v1, Lcom/yandex/mobile/ads/impl/zh1;->q:J

    move-wide/from16 v21, v2

    iget-wide v2, v1, Lcom/yandex/mobile/ads/impl/zh1;->r:J

    move-wide/from16 v23, v2

    iget-boolean v1, v1, Lcom/yandex/mobile/ads/impl/zh1;->o:Z

    move/from16 v25, v1

    move-object v2, v0

    move-object/from16 v3, v27

    invoke-direct/range {v2 .. v25}, Lcom/yandex/mobile/ads/impl/zh1;-><init>(Lcom/yandex/mobile/ads/impl/i52;Lcom/yandex/mobile/ads/impl/vw0$b;JJILcom/yandex/mobile/ads/impl/m60;ZLcom/yandex/mobile/ads/impl/z52;Lcom/yandex/mobile/ads/impl/g62;Ljava/util/List;Lcom/yandex/mobile/ads/impl/vw0$b;ZILcom/yandex/mobile/ads/impl/bi1;JJJZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    :cond_2
    return-void
.end method

.method private s()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/m60;
        }
    .end annotation

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tw0;->e()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/yandex/mobile/ads/impl/qw0;->d:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/qw0;->a:Lcom/yandex/mobile/ads/impl/pw0;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/pw0;->readDiscontinuity()J

    move-result-wide v4

    move-wide v6, v4

    goto :goto_0

    :cond_1
    move-wide v6, v2

    :goto_0
    cmp-long v1, v6, v2

    const/4 v10, 0x0

    if-eqz v1, :cond_2

    invoke-direct {p0, v6, v7}, Lcom/yandex/mobile/ads/impl/t60;->b(J)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-wide v0, v0, Lcom/yandex/mobile/ads/impl/zh1;->r:J

    cmp-long v0, v6, v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/zh1;->b:Lcom/yandex/mobile/ads/impl/vw0$b;

    iget-wide v4, v0, Lcom/yandex/mobile/ads/impl/zh1;->c:J

    const/4 v8, 0x1

    const/4 v9, 0x5

    move-object v0, p0

    move-wide v2, v6

    invoke-direct/range {v0 .. v9}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/vw0$b;JJJZI)Lcom/yandex/mobile/ads/impl/zh1;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    goto/16 :goto_5

    :cond_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/t60;->p:Lcom/yandex/mobile/ads/impl/e00;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/tw0;->f()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v10

    :goto_1
    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/e00;->a(Z)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/yandex/mobile/ads/impl/t60;->M:J

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/qw0;->c(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-wide v2, v2, Lcom/yandex/mobile/ads/impl/zh1;->r:J

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/t60;->q:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v4, v4, Lcom/yandex/mobile/ads/impl/zh1;->b:Lcom/yandex/mobile/ads/impl/vw0$b;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/rw0;->a()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    iget-boolean v4, p0, Lcom/yandex/mobile/ads/impl/t60;->O:Z

    if-eqz v4, :cond_5

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-boolean v10, p0, Lcom/yandex/mobile/ads/impl/t60;->O:Z

    :cond_5
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v5, v4, Lcom/yandex/mobile/ads/impl/zh1;->a:Lcom/yandex/mobile/ads/impl/i52;

    iget-object v4, v4, Lcom/yandex/mobile/ads/impl/zh1;->b:Lcom/yandex/mobile/ads/impl/vw0$b;

    iget-object v4, v4, Lcom/yandex/mobile/ads/impl/rw0;->a:Ljava/lang/Object;

    invoke-virtual {v5, v4}, Lcom/yandex/mobile/ads/impl/i52;->a(Ljava/lang/Object;)I

    move-result v4

    iget v5, p0, Lcom/yandex/mobile/ads/impl/t60;->N:I

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/t60;->q:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    if-lez v5, :cond_6

    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/t60;->q:Ljava/util/ArrayList;

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/yandex/mobile/ads/impl/t60$c;

    goto :goto_2

    :cond_6
    move-object v7, v6

    :goto_2
    if-eqz v7, :cond_9

    if-ltz v4, :cond_7

    if-nez v4, :cond_9

    const-wide/16 v7, 0x0

    cmp-long v7, v7, v2

    if-lez v7, :cond_9

    :cond_7
    add-int/lit8 v7, v5, -0x1

    if-lez v7, :cond_8

    iget-object v8, p0, Lcom/yandex/mobile/ads/impl/t60;->q:Ljava/util/ArrayList;

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/mobile/ads/impl/t60$c;

    goto :goto_3

    :cond_8
    move-object v5, v6

    :goto_3
    move v11, v7

    move-object v7, v5

    move v5, v11

    goto :goto_2

    :cond_9
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/t60;->q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_a

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/t60;->q:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/t60$c;

    :cond_a
    iput v5, p0, Lcom/yandex/mobile/ads/impl/t60;->N:I

    :cond_b
    :goto_4
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iput-wide v0, v2, Lcom/yandex/mobile/ads/impl/zh1;->r:J

    :cond_c
    :goto_5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tw0;->d()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-boolean v2, v0, Lcom/yandex/mobile/ads/impl/qw0;->d:Z

    if-nez v2, :cond_d

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/qw0;->f:Lcom/yandex/mobile/ads/impl/sw0;

    iget-wide v2, v0, Lcom/yandex/mobile/ads/impl/sw0;->b:J

    goto :goto_7

    :cond_d
    iget-boolean v2, v0, Lcom/yandex/mobile/ads/impl/qw0;->e:Z

    const-wide/high16 v3, -0x8000000000000000L

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/qw0;->a:Lcom/yandex/mobile/ads/impl/pw0;

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/mx1;->getBufferedPositionUs()J

    move-result-wide v5

    goto :goto_6

    :cond_e
    move-wide v5, v3

    :goto_6
    cmp-long v2, v5, v3

    if-nez v2, :cond_f

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/qw0;->f:Lcom/yandex/mobile/ads/impl/sw0;

    iget-wide v2, v0, Lcom/yandex/mobile/ads/impl/sw0;->e:J

    goto :goto_7

    :cond_f
    move-wide v2, v5

    :goto_7
    iput-wide v2, v1, Lcom/yandex/mobile/ads/impl/zh1;->p:J

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-wide v1, v0, Lcom/yandex/mobile/ads/impl/zh1;->p:J

    invoke-direct {p0, v1, v2}, Lcom/yandex/mobile/ads/impl/t60;->a(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/yandex/mobile/ads/impl/zh1;->q:J

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-boolean v1, v0, Lcom/yandex/mobile/ads/impl/zh1;->l:Z

    if-eqz v1, :cond_10

    iget v1, v0, Lcom/yandex/mobile/ads/impl/zh1;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_10

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/zh1;->a:Lcom/yandex/mobile/ads/impl/i52;

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/zh1;->b:Lcom/yandex/mobile/ads/impl/vw0$b;

    invoke-direct {p0, v1, v0}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/i52;Lcom/yandex/mobile/ads/impl/vw0$b;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/zh1;->n:Lcom/yandex/mobile/ads/impl/bi1;

    iget v1, v1, Lcom/yandex/mobile/ads/impl/bi1;->b:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/t60;->v:Lcom/yandex/mobile/ads/impl/bs0;

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/zh1;->a:Lcom/yandex/mobile/ads/impl/i52;

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/zh1;->b:Lcom/yandex/mobile/ads/impl/vw0$b;

    iget-object v3, v3, Lcom/yandex/mobile/ads/impl/rw0;->a:Ljava/lang/Object;

    iget-wide v4, v0, Lcom/yandex/mobile/ads/impl/zh1;->r:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/i52;Ljava/lang/Object;J)J

    move-result-wide v2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-wide v4, v0, Lcom/yandex/mobile/ads/impl/zh1;->p:J

    invoke-direct {p0, v4, v5}, Lcom/yandex/mobile/ads/impl/t60;->a(J)J

    move-result-wide v4

    check-cast v1, Lcom/yandex/mobile/ads/impl/b00;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/yandex/mobile/ads/impl/b00;->a(JJ)F

    move-result v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/t60;->p:Lcom/yandex/mobile/ads/impl/e00;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/e00;->getPlaybackParameters()Lcom/yandex/mobile/ads/impl/bi1;

    move-result-object v1

    iget v1, v1, Lcom/yandex/mobile/ads/impl/bi1;->b:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/t60;->p:Lcom/yandex/mobile/ads/impl/e00;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v2, v2, Lcom/yandex/mobile/ads/impl/zh1;->n:Lcom/yandex/mobile/ads/impl/bi1;

    new-instance v3, Lcom/yandex/mobile/ads/impl/bi1;

    iget v2, v2, Lcom/yandex/mobile/ads/impl/bi1;->c:F

    invoke-direct {v3, v0, v2}, Lcom/yandex/mobile/ads/impl/bi1;-><init>(FF)V

    invoke-virtual {v1, v3}, Lcom/yandex/mobile/ads/impl/e00;->a(Lcom/yandex/mobile/ads/impl/bi1;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/zh1;->n:Lcom/yandex/mobile/ads/impl/bi1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/t60;->p:Lcom/yandex/mobile/ads/impl/e00;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/e00;->getPlaybackParameters()Lcom/yandex/mobile/ads/impl/bi1;

    move-result-object v1

    iget v1, v1, Lcom/yandex/mobile/ads/impl/bi1;->b:F

    invoke-direct {p0, v0, v1, v10, v10}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/bi1;FZZ)V

    :cond_10
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 278
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/t60;->i:Lcom/yandex/mobile/ads/impl/hf0;

    const/16 v0, 0xa

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/hf0;->a(I)Z

    return-void
.end method

.method public final a(IJLcom/yandex/mobile/ads/impl/iy1;Ljava/util/ArrayList;)V
    .locals 8

    .line 431
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/t60;->i:Lcom/yandex/mobile/ads/impl/hf0;

    new-instance v7, Lcom/yandex/mobile/ads/impl/t60$a;

    const/4 v6, 0x0

    move-object v0, v7

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/t60$a;-><init>(IJLcom/yandex/mobile/ads/impl/iy1;Ljava/util/ArrayList;Ldud;)V

    const/16 p1, 0x11

    .line 432
    invoke-interface {p0, p1, v7}, Lcom/yandex/mobile/ads/impl/hf0;->a(ILjava/lang/Object;)Lcom/yandex/mobile/ads/impl/hf0$a;

    move-result-object p0

    .line 433
    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/hf0$a;->a()V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/bi1;)V
    .locals 1

    .line 274
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/t60;->i:Lcom/yandex/mobile/ads/impl/hf0;

    const/16 v0, 0x10

    .line 275
    invoke-interface {p0, v0, p1}, Lcom/yandex/mobile/ads/impl/hf0;->a(ILjava/lang/Object;)Lcom/yandex/mobile/ads/impl/hf0$a;

    move-result-object p0

    .line 276
    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/hf0$a;->a()V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/mx1;)V
    .locals 1

    .line 272
    check-cast p1, Lcom/yandex/mobile/ads/impl/pw0;

    .line 273
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/t60;->i:Lcom/yandex/mobile/ads/impl/hf0;

    const/16 v0, 0x9

    invoke-interface {p0, v0, p1}, Lcom/yandex/mobile/ads/impl/hf0;->a(ILjava/lang/Object;)Lcom/yandex/mobile/ads/impl/hf0$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/hf0$a;->a()V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/pw0;)V
    .locals 1

    .line 277
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/t60;->i:Lcom/yandex/mobile/ads/impl/hf0;

    const/16 v0, 0x8

    invoke-interface {p0, v0, p1}, Lcom/yandex/mobile/ads/impl/hf0;->a(ILjava/lang/Object;)Lcom/yandex/mobile/ads/impl/hf0$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/hf0$a;->a()V

    return-void
.end method

.method public final a(ZI)V
    .locals 0

    .line 434
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/t60;->i:Lcom/yandex/mobile/ads/impl/hf0;

    .line 435
    invoke-interface {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/hf0;->a(II)Lcom/yandex/mobile/ads/impl/hf0$a;

    move-result-object p0

    .line 436
    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/hf0$a;->a()V

    return-void
.end method

.method public final declared-synchronized c(Lcom/yandex/mobile/ads/impl/ni1;)V
    .locals 2

    monitor-enter p0

    .line 23
    :try_start_0
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/t60;->A:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->i:Lcom/yandex/mobile/ads/impl/hf0;

    const/16 v1, 0xe

    invoke-interface {v0, v1, p1}, Lcom/yandex/mobile/ads/impl/hf0;->a(ILjava/lang/Object;)Lcom/yandex/mobile/ads/impl/hf0$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/hf0$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Ignoring messages sent after release."

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/et0;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/ni1;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final d()Landroid/os/Looper;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/t60;->k:Landroid/os/Looper;

    return-object p0
.end method

.method public final h()V
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/t60;->i:Lcom/yandex/mobile/ads/impl/hf0;

    const/16 v0, 0x16

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/hf0;->a(I)Z

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 7

    const-string v0, "Playback error"

    const-string v1, "ExoPlayerImplInternal"

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    return v3

    :pswitch_0
    invoke-direct {p0, v4}, Lcom/yandex/mobile/ads/impl/t60;->b(Z)V

    goto/16 :goto_c

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :catch_1
    move-exception p1

    goto/16 :goto_6

    :catch_2
    move-exception p1

    goto/16 :goto_7

    :catch_3
    move-exception p1

    goto/16 :goto_8

    :catch_4
    move-exception p1

    goto/16 :goto_a

    :catch_5
    move-exception p1

    goto/16 :goto_b

    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_0

    move p1, v4

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/t60;->c(Z)V

    goto/16 :goto_c

    :pswitch_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    move p1, v4

    goto :goto_1

    :cond_1
    move p1, v3

    :goto_1
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/t60;->d(Z)V

    goto/16 :goto_c

    :pswitch_3
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/t60;->g()V

    goto/16 :goto_c

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/yandex/mobile/ads/impl/iy1;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/iy1;)V

    goto/16 :goto_c

    :pswitch_5
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/yandex/mobile/ads/impl/iy1;

    invoke-direct {p0, v5, v6, p1}, Lcom/yandex/mobile/ads/impl/t60;->a(IILcom/yandex/mobile/ads/impl/iy1;)V

    goto/16 :goto_c

    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/yandex/mobile/ads/impl/t60$b;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/t60$b;)V

    goto/16 :goto_c

    :pswitch_7
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/yandex/mobile/ads/impl/t60$a;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v5, p1}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/t60$a;I)V

    goto/16 :goto_c

    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/yandex/mobile/ads/impl/t60$a;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/t60$a;)V

    goto/16 :goto_c

    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/yandex/mobile/ads/impl/bi1;

    iget v5, p1, Lcom/yandex/mobile/ads/impl/bi1;->b:F

    invoke-direct {p0, p1, v5, v4, v3}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/bi1;FZZ)V

    goto/16 :goto_c

    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/yandex/mobile/ads/impl/ni1;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/t60;->d(Lcom/yandex/mobile/ads/impl/ni1;)V

    goto/16 :goto_c

    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/yandex/mobile/ads/impl/ni1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ni1;->a()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/t60;->k:Landroid/os/Looper;

    if-ne v5, v6, :cond_3

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/ni1;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    iget p1, p1, Lcom/yandex/mobile/ads/impl/zh1;->e:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq p1, v5, :cond_2

    if-ne p1, v6, :cond_10

    :cond_2
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/t60;->i:Lcom/yandex/mobile/ads/impl/hf0;

    invoke-interface {p1, v6}, Lcom/yandex/mobile/ads/impl/hf0;->a(I)Z

    goto/16 :goto_c

    :cond_3
    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/t60;->i:Lcom/yandex/mobile/ads/impl/hf0;

    const/16 v6, 0xf

    invoke-interface {v5, v6, p1}, Lcom/yandex/mobile/ads/impl/hf0;->a(ILjava/lang/Object;)Lcom/yandex/mobile/ads/impl/hf0$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/hf0$a;->a()V

    goto/16 :goto_c

    :pswitch_c
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v3

    :goto_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0, v5, p1}, Lcom/yandex/mobile/ads/impl/t60;->a(ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_c

    :pswitch_d
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_5

    move p1, v4

    goto :goto_3

    :cond_5
    move p1, v3

    :goto_3
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/t60;->e(Z)V

    goto/16 :goto_c

    :pswitch_e
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/t60;->a(I)V

    goto/16 :goto_c

    :pswitch_f
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/t60;->m()V

    goto/16 :goto_c

    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/yandex/mobile/ads/impl/pw0;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/t60;->b(Lcom/yandex/mobile/ads/impl/pw0;)V

    goto/16 :goto_c

    :pswitch_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/yandex/mobile/ads/impl/pw0;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/t60;->c(Lcom/yandex/mobile/ads/impl/pw0;)V

    goto/16 :goto_c

    :pswitch_12
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/t60;->l()V

    return v4

    :pswitch_13
    invoke-direct {p0, v3, v4}, Lcom/yandex/mobile/ads/impl/t60;->a(ZZ)V

    goto/16 :goto_c

    :pswitch_14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/yandex/mobile/ads/impl/fx1;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/t60;->x:Lcom/yandex/mobile/ads/impl/fx1;

    goto/16 :goto_c

    :pswitch_15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/yandex/mobile/ads/impl/bi1;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/t60;->b(Lcom/yandex/mobile/ads/impl/bi1;)V

    goto/16 :goto_c

    :pswitch_16
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/yandex/mobile/ads/impl/t60$g;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/t60$g;)V

    goto/16 :goto_c

    :pswitch_17
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/t60;->b()V

    goto/16 :goto_c

    :pswitch_18
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_6

    move v5, v4

    goto :goto_4

    :cond_6
    move v5, v3

    :goto_4
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v5, p1, v4, v4}, Lcom/yandex/mobile/ads/impl/t60;->a(ZIZI)V

    goto/16 :goto_c

    :pswitch_19
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/t60;->j()V
    :try_end_0
    .catch Lcom/yandex/mobile/ads/impl/m60; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/yandex/mobile/ads/impl/g40$a; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/yandex/mobile/ads/impl/eg1; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/yandex/mobile/ads/impl/uv; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_c

    :goto_5
    instance-of v5, p1, Ljava/lang/IllegalStateException;

    if-nez v5, :cond_7

    instance-of v5, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v5, :cond_8

    :cond_7
    const/16 v2, 0x3ec

    :cond_8
    invoke-static {p1, v2}, Lcom/yandex/mobile/ads/impl/m60;->a(Ljava/lang/RuntimeException;I)Lcom/yandex/mobile/ads/impl/m60;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/yandex/mobile/ads/impl/et0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v4, v3}, Lcom/yandex/mobile/ads/impl/t60;->a(ZZ)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/zh1;->a(Lcom/yandex/mobile/ads/impl/m60;)Lcom/yandex/mobile/ads/impl/zh1;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    goto/16 :goto_c

    :goto_6
    const/16 v0, 0x7d0

    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/t60;->a(Ljava/io/IOException;I)V

    goto/16 :goto_c

    :goto_7
    iget v0, p1, Lcom/yandex/mobile/ads/impl/uv;->b:I

    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/t60;->a(Ljava/io/IOException;I)V

    goto/16 :goto_c

    :goto_8
    iget v0, p1, Lcom/yandex/mobile/ads/impl/eg1;->c:I

    if-ne v0, v4, :cond_a

    iget-boolean v0, p1, Lcom/yandex/mobile/ads/impl/eg1;->b:Z

    if-eqz v0, :cond_9

    const/16 v2, 0xbb9

    goto :goto_9

    :cond_9
    const/16 v2, 0xbbb

    goto :goto_9

    :cond_a
    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    iget-boolean v0, p1, Lcom/yandex/mobile/ads/impl/eg1;->b:Z

    if-eqz v0, :cond_b

    const/16 v2, 0xbba

    goto :goto_9

    :cond_b
    const/16 v2, 0xbbc

    :cond_c
    :goto_9
    invoke-direct {p0, p1, v2}, Lcom/yandex/mobile/ads/impl/t60;->a(Ljava/io/IOException;I)V

    goto :goto_c

    :goto_a
    iget v0, p1, Lcom/yandex/mobile/ads/impl/g40$a;->b:I

    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/t60;->a(Ljava/io/IOException;I)V

    goto :goto_c

    :goto_b
    iget v2, p1, Lcom/yandex/mobile/ads/impl/m60;->d:I

    if-ne v2, v4, :cond_d

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/t60;->t:Lcom/yandex/mobile/ads/impl/tw0;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/tw0;->f()Lcom/yandex/mobile/ads/impl/qw0;

    move-result-object v2

    if-eqz v2, :cond_d

    iget-object v2, v2, Lcom/yandex/mobile/ads/impl/qw0;->f:Lcom/yandex/mobile/ads/impl/sw0;

    iget-object v2, v2, Lcom/yandex/mobile/ads/impl/sw0;->a:Lcom/yandex/mobile/ads/impl/vw0$b;

    invoke-virtual {p1, v2}, Lcom/yandex/mobile/ads/impl/m60;->a(Lcom/yandex/mobile/ads/impl/vw0$b;)Lcom/yandex/mobile/ads/impl/m60;

    move-result-object p1

    :cond_d
    iget-boolean v2, p1, Lcom/yandex/mobile/ads/impl/m60;->j:Z

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/t60;->P:Lcom/yandex/mobile/ads/impl/m60;

    if-nez v2, :cond_e

    const-string v0, "Recoverable renderer error"

    invoke-static {v1, v0, p1}, Lcom/yandex/mobile/ads/impl/et0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/t60;->P:Lcom/yandex/mobile/ads/impl/m60;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->i:Lcom/yandex/mobile/ads/impl/hf0;

    const/16 v1, 0x19

    invoke-interface {v0, v1, p1}, Lcom/yandex/mobile/ads/impl/hf0;->a(ILjava/lang/Object;)Lcom/yandex/mobile/ads/impl/hf0$a;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/hf0;->a(Lcom/yandex/mobile/ads/impl/hf0$a;)Z

    goto :goto_c

    :cond_e
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/t60;->P:Lcom/yandex/mobile/ads/impl/m60;

    if-eqz v2, :cond_f

    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/t60;->P:Lcom/yandex/mobile/ads/impl/m60;

    :cond_f
    invoke-static {v1, v0, p1}, Lcom/yandex/mobile/ads/impl/et0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v4, v3}, Lcom/yandex/mobile/ads/impl/t60;->a(ZZ)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/zh1;->a(Lcom/yandex/mobile/ads/impl/m60;)Lcom/yandex/mobile/ads/impl/zh1;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    :cond_10
    :goto_c
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/t60;->z:Lcom/yandex/mobile/ads/impl/t60$d;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/t60$d;->a(Lcom/yandex/mobile/ads/impl/t60$d;)Z

    move-result v1

    iget-object v2, p1, Lcom/yandex/mobile/ads/impl/t60$d;->b:Lcom/yandex/mobile/ads/impl/zh1;

    if-eq v2, v0, :cond_11

    move v3, v4

    :cond_11
    or-int/2addr v1, v3

    invoke-static {p1, v1}, Lcom/yandex/mobile/ads/impl/t60$d;->b(Lcom/yandex/mobile/ads/impl/t60$d;Z)V

    iput-object v0, p1, Lcom/yandex/mobile/ads/impl/t60$d;->b:Lcom/yandex/mobile/ads/impl/zh1;

    if-eqz v1, :cond_12

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->s:Lcom/yandex/mobile/ads/impl/t60$e;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/t60$e;->a(Lcom/yandex/mobile/ads/impl/t60$d;)V

    new-instance p1, Lcom/yandex/mobile/ads/impl/t60$d;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->y:Lcom/yandex/mobile/ads/impl/zh1;

    invoke-direct {p1, v0}, Lcom/yandex/mobile/ads/impl/t60$d;-><init>(Lcom/yandex/mobile/ads/impl/zh1;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/t60;->z:Lcom/yandex/mobile/ads/impl/t60$d;

    :cond_12
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i()V
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/t60;->i:Lcom/yandex/mobile/ads/impl/hf0;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/hf0;->b(I)Lcom/yandex/mobile/ads/impl/hf0$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/hf0$a;->a()V

    return-void
.end method

.method public final declared-synchronized k()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/t60;->A:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t60;->i:Lcom/yandex/mobile/ads/impl/hf0;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/hf0;->a(I)Z

    new-instance v0, Lcom/yandex/mobile/ads/impl/vr2;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/vr2;-><init>(Lcom/yandex/mobile/ads/impl/t60;)V

    iget-wide v1, p0, Lcom/yandex/mobile/ads/impl/t60;->w:J

    invoke-direct {p0, v0, v1, v2}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/t32;J)V

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/t60;->A:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final p()V
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/t60;->i:Lcom/yandex/mobile/ads/impl/hf0;

    const/4 v0, 0x6

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/hf0;->b(I)Lcom/yandex/mobile/ads/impl/hf0$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/hf0$a;->a()V

    return-void
.end method
