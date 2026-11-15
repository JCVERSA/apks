.class public final Lcom/yandex/mobile/ads/impl/v42;
.super Lcom/yandex/mobile/ads/impl/sk;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private A:I

.field private B:J

.field private final n:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final o:Lcom/yandex/mobile/ads/impl/u42;

.field private final p:Lcom/yandex/mobile/ads/impl/q32;

.field private final q:Lcom/yandex/mobile/ads/impl/kc0;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:I

.field private v:Lcom/yandex/mobile/ads/impl/jc0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private w:Lcom/yandex/mobile/ads/impl/o32;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private x:Lcom/yandex/mobile/ads/impl/r32;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private y:Lcom/yandex/mobile/ads/impl/s32;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private z:Lcom/yandex/mobile/ads/impl/s32;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/u42;Landroid/os/Looper;)V
    .locals 2
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/yandex/mobile/ads/impl/q32;->a:Lcom/yandex/mobile/ads/impl/q32;

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/yandex/mobile/ads/impl/sk;-><init>(I)V

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/hg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/mobile/ads/impl/u42;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/v42;->o:Lcom/yandex/mobile/ads/impl/u42;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p2, p0}, Lcom/yandex/mobile/ads/impl/f92;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/v42;->n:Landroid/os/Handler;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/v42;->p:Lcom/yandex/mobile/ads/impl/q32;

    new-instance p1, Lcom/yandex/mobile/ads/impl/kc0;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/kc0;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/v42;->q:Lcom/yandex/mobile/ads/impl/kc0;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/v42;->B:J

    return-void
.end method

.method private A()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/v42;->x:Lcom/yandex/mobile/ads/impl/r32;

    const/4 v1, -0x1

    iput v1, p0, Lcom/yandex/mobile/ads/impl/v42;->A:I

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/v42;->y:Lcom/yandex/mobile/ads/impl/s32;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/sy;->h()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/v42;->y:Lcom/yandex/mobile/ads/impl/s32;

    :cond_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/v42;->z:Lcom/yandex/mobile/ads/impl/s32;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/sy;->h()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/v42;->z:Lcom/yandex/mobile/ads/impl/s32;

    :cond_1
    return-void
.end method

.method private B()V
    .locals 1

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/v42;->A()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v42;->w:Lcom/yandex/mobile/ads/impl/o32;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/oy;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/v42;->w:Lcom/yandex/mobile/ads/impl/o32;

    const/4 v0, 0x0

    iput v0, p0, Lcom/yandex/mobile/ads/impl/v42;->u:I

    return-void
.end method

.method private y()J
    .locals 4

    iget v0, p0, Lcom/yandex/mobile/ads/impl/v42;->A:I

    const/4 v1, -0x1

    const-wide v2, 0x7fffffffffffffffL

    if-ne v0, v1, :cond_0

    return-wide v2

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v42;->y:Lcom/yandex/mobile/ads/impl/s32;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/yandex/mobile/ads/impl/v42;->A:I

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/v42;->y:Lcom/yandex/mobile/ads/impl/s32;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/s32;->a()I

    move-result v1

    if-lt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v42;->y:Lcom/yandex/mobile/ads/impl/s32;

    iget p0, p0, Lcom/yandex/mobile/ads/impl/v42;->A:I

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/s32;->a(I)J

    move-result-wide v2

    :goto_0
    return-wide v2
.end method

.method private z()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/v42;->t:Z

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v42;->p:Lcom/yandex/mobile/ads/impl/q32;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/v42;->v:Lcom/yandex/mobile/ads/impl/jc0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/yandex/mobile/ads/impl/q32$a;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/q32$a;->a(Lcom/yandex/mobile/ads/impl/jc0;)Lcom/yandex/mobile/ads/impl/o32;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/v42;->w:Lcom/yandex/mobile/ads/impl/o32;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/jc0;)I
    .locals 1

    .line 101
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v42;->p:Lcom/yandex/mobile/ads/impl/q32;

    check-cast p0, Lcom/yandex/mobile/ads/impl/q32$a;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/q32$a;->b(Lcom/yandex/mobile/ads/impl/jc0;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 102
    iget p0, p1, Lcom/yandex/mobile/ads/impl/jc0;->F:I

    if-nez p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    .line 103
    :goto_0
    invoke-static {p0, v0, v0}, Lcom/yandex/mobile/ads/impl/zo1;->a(III)I

    move-result p0

    return p0

    .line 104
    :cond_1
    iget-object p0, p1, Lcom/yandex/mobile/ads/impl/jc0;->m:Ljava/lang/String;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/w01;->e(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    .line 105
    invoke-static {p0, v0, v0}, Lcom/yandex/mobile/ads/impl/zo1;->a(III)I

    move-result p0

    return p0

    .line 106
    :cond_2
    invoke-static {v0, v0, v0}, Lcom/yandex/mobile/ads/impl/zo1;->a(III)I

    move-result p0

    return p0
.end method

.method public final a(JJ)V
    .locals 10

    .line 21
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/sk;->k()Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/v42;->B:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v0, v2

    if-eqz p3, :cond_0

    cmp-long p3, p1, v0

    if-ltz p3, :cond_0

    .line 22
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/v42;->A()V

    .line 23
    iput-boolean p4, p0, Lcom/yandex/mobile/ads/impl/v42;->s:Z

    .line 24
    :cond_0
    iget-boolean p3, p0, Lcom/yandex/mobile/ads/impl/v42;->s:Z

    if-eqz p3, :cond_1

    return-void

    .line 25
    :cond_1
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/v42;->z:Lcom/yandex/mobile/ads/impl/s32;

    const-string v0, "TextRenderer"

    const-string v1, "Subtitle decoding failed. streamFormat="

    const/4 v2, 0x0

    if-nez p3, :cond_3

    .line 26
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/v42;->w:Lcom/yandex/mobile/ads/impl/o32;

    .line 27
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-interface {p3, p1, p2}, Lcom/yandex/mobile/ads/impl/o32;->a(J)V

    .line 29
    :try_start_0
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/v42;->w:Lcom/yandex/mobile/ads/impl/o32;

    .line 30
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-interface {p3}, Lcom/yandex/mobile/ads/impl/oy;->a()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yandex/mobile/ads/impl/s32;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/v42;->z:Lcom/yandex/mobile/ads/impl/s32;
    :try_end_0
    .catch Lcom/yandex/mobile/ads/impl/p32; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 32
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/v42;->v:Lcom/yandex/mobile/ads/impl/jc0;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lcom/yandex/mobile/ads/impl/et0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 34
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/v42;->n:Landroid/os/Handler;

    if-eqz p2, :cond_2

    .line 35
    invoke-virtual {p2, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 36
    :cond_2
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/v42;->o:Lcom/yandex/mobile/ads/impl/u42;

    invoke-interface {p2, p1}, Lcom/yandex/mobile/ads/impl/u42;->onCues(Ljava/util/List;)V

    .line 37
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/v42;->o:Lcom/yandex/mobile/ads/impl/u42;

    new-instance p3, Lcom/yandex/mobile/ads/impl/jv;

    invoke-direct {p3, p1}, Lcom/yandex/mobile/ads/impl/jv;-><init>(Ljava/util/List;)V

    invoke-interface {p2, p3}, Lcom/yandex/mobile/ads/impl/u42;->a(Lcom/yandex/mobile/ads/impl/jv;)V

    .line 38
    :goto_0
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/v42;->B()V

    .line 39
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/v42;->z()V

    return-void

    .line 40
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/sk;->getState()I

    move-result p3

    const/4 v3, 0x2

    if-eq p3, v3, :cond_4

    return-void

    .line 41
    :cond_4
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/v42;->y:Lcom/yandex/mobile/ads/impl/s32;

    if-eqz p3, :cond_5

    .line 42
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/v42;->y()J

    move-result-wide v4

    move p3, v2

    :goto_2
    cmp-long v4, v4, p1

    if-gtz v4, :cond_6

    .line 43
    iget p3, p0, Lcom/yandex/mobile/ads/impl/v42;->A:I

    add-int/2addr p3, p4

    iput p3, p0, Lcom/yandex/mobile/ads/impl/v42;->A:I

    .line 44
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/v42;->y()J

    move-result-wide v4

    move p3, p4

    goto :goto_2

    :cond_5
    move p3, v2

    .line 45
    :cond_6
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/v42;->z:Lcom/yandex/mobile/ads/impl/s32;

    const/4 v5, 0x0

    if-eqz v4, :cond_a

    .line 46
    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/gm;->f()Z

    move-result v6

    if-eqz v6, :cond_8

    if-nez p3, :cond_a

    .line 47
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/v42;->y()J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v4, v6, v8

    if-nez v4, :cond_a

    .line 48
    iget v4, p0, Lcom/yandex/mobile/ads/impl/v42;->u:I

    if-ne v4, v3, :cond_7

    .line 49
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/v42;->B()V

    .line 50
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/v42;->z()V

    goto :goto_3

    .line 51
    :cond_7
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/v42;->A()V

    .line 52
    iput-boolean p4, p0, Lcom/yandex/mobile/ads/impl/v42;->s:Z

    goto :goto_3

    .line 53
    :cond_8
    iget-wide v6, v4, Lcom/yandex/mobile/ads/impl/sy;->c:J

    cmp-long v6, v6, p1

    if-gtz v6, :cond_a

    .line 54
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/v42;->y:Lcom/yandex/mobile/ads/impl/s32;

    if-eqz p3, :cond_9

    .line 55
    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/sy;->h()V

    .line 56
    :cond_9
    invoke-virtual {v4, p1, p2}, Lcom/yandex/mobile/ads/impl/s32;->a(J)I

    move-result p3

    iput p3, p0, Lcom/yandex/mobile/ads/impl/v42;->A:I

    .line 57
    iput-object v4, p0, Lcom/yandex/mobile/ads/impl/v42;->y:Lcom/yandex/mobile/ads/impl/s32;

    .line 58
    iput-object v5, p0, Lcom/yandex/mobile/ads/impl/v42;->z:Lcom/yandex/mobile/ads/impl/s32;

    goto :goto_4

    :cond_a
    :goto_3
    if-eqz p3, :cond_c

    .line 59
    :goto_4
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/v42;->y:Lcom/yandex/mobile/ads/impl/s32;

    .line 60
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/v42;->y:Lcom/yandex/mobile/ads/impl/s32;

    invoke-virtual {p3, p1, p2}, Lcom/yandex/mobile/ads/impl/s32;->b(J)Ljava/util/List;

    move-result-object p1

    .line 62
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/v42;->n:Landroid/os/Handler;

    if-eqz p2, :cond_b

    .line 63
    invoke-virtual {p2, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_5

    .line 64
    :cond_b
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/v42;->o:Lcom/yandex/mobile/ads/impl/u42;

    invoke-interface {p2, p1}, Lcom/yandex/mobile/ads/impl/u42;->onCues(Ljava/util/List;)V

    .line 65
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/v42;->o:Lcom/yandex/mobile/ads/impl/u42;

    new-instance p3, Lcom/yandex/mobile/ads/impl/jv;

    invoke-direct {p3, p1}, Lcom/yandex/mobile/ads/impl/jv;-><init>(Ljava/util/List;)V

    invoke-interface {p2, p3}, Lcom/yandex/mobile/ads/impl/u42;->a(Lcom/yandex/mobile/ads/impl/jv;)V

    .line 66
    :cond_c
    :goto_5
    iget p1, p0, Lcom/yandex/mobile/ads/impl/v42;->u:I

    if-ne p1, v3, :cond_d

    return-void

    .line 67
    :cond_d
    :goto_6
    :try_start_1
    iget-boolean p1, p0, Lcom/yandex/mobile/ads/impl/v42;->r:Z

    if-nez p1, :cond_15

    .line 68
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/v42;->x:Lcom/yandex/mobile/ads/impl/r32;

    if-nez p1, :cond_f

    .line 69
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/v42;->w:Lcom/yandex/mobile/ads/impl/o32;

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/oy;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/mobile/ads/impl/r32;

    if-nez p1, :cond_e

    return-void

    .line 72
    :cond_e
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/v42;->x:Lcom/yandex/mobile/ads/impl/r32;

    goto :goto_7

    :catch_1
    move-exception p1

    goto :goto_9

    .line 73
    :cond_f
    :goto_7
    iget p2, p0, Lcom/yandex/mobile/ads/impl/v42;->u:I

    if-ne p2, p4, :cond_10

    const/4 p2, 0x4

    .line 74
    invoke-virtual {p1, p2}, Lcom/yandex/mobile/ads/impl/gm;->d(I)V

    .line 75
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/v42;->w:Lcom/yandex/mobile/ads/impl/o32;

    .line 76
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    invoke-interface {p2, p1}, Lcom/yandex/mobile/ads/impl/oy;->a(Lcom/yandex/mobile/ads/impl/r32;)V

    .line 78
    iput-object v5, p0, Lcom/yandex/mobile/ads/impl/v42;->x:Lcom/yandex/mobile/ads/impl/r32;

    .line 79
    iput v3, p0, Lcom/yandex/mobile/ads/impl/v42;->u:I

    return-void

    .line 80
    :cond_10
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/v42;->q:Lcom/yandex/mobile/ads/impl/kc0;

    invoke-virtual {p0, p2, p1, v2}, Lcom/yandex/mobile/ads/impl/sk;->a(Lcom/yandex/mobile/ads/impl/kc0;Lcom/yandex/mobile/ads/impl/ry;I)I

    move-result p2

    const/4 p3, -0x4

    if-ne p2, p3, :cond_13

    .line 81
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/gm;->f()Z

    move-result p2

    if-eqz p2, :cond_11

    .line 82
    iput-boolean p4, p0, Lcom/yandex/mobile/ads/impl/v42;->r:Z

    .line 83
    iput-boolean v2, p0, Lcom/yandex/mobile/ads/impl/v42;->t:Z

    goto :goto_8

    .line 84
    :cond_11
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/v42;->q:Lcom/yandex/mobile/ads/impl/kc0;

    iget-object p2, p2, Lcom/yandex/mobile/ads/impl/kc0;->b:Lcom/yandex/mobile/ads/impl/jc0;

    if-nez p2, :cond_12

    return-void

    .line 85
    :cond_12
    iget-wide p2, p2, Lcom/yandex/mobile/ads/impl/jc0;->q:J

    iput-wide p2, p1, Lcom/yandex/mobile/ads/impl/r32;->j:J

    .line 86
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ry;->h()V

    .line 87
    iget-boolean p2, p0, Lcom/yandex/mobile/ads/impl/v42;->t:Z

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/gm;->g()Z

    move-result p3

    xor-int/2addr p3, p4

    and-int/2addr p2, p3

    iput-boolean p2, p0, Lcom/yandex/mobile/ads/impl/v42;->t:Z

    .line 88
    :goto_8
    iget-boolean p2, p0, Lcom/yandex/mobile/ads/impl/v42;->t:Z

    if-nez p2, :cond_d

    .line 89
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/v42;->w:Lcom/yandex/mobile/ads/impl/o32;

    .line 90
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    invoke-interface {p2, p1}, Lcom/yandex/mobile/ads/impl/oy;->a(Lcom/yandex/mobile/ads/impl/r32;)V

    .line 92
    iput-object v5, p0, Lcom/yandex/mobile/ads/impl/v42;->x:Lcom/yandex/mobile/ads/impl/r32;
    :try_end_1
    .catch Lcom/yandex/mobile/ads/impl/p32; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :cond_13
    const/4 p1, -0x3

    if-ne p2, p1, :cond_d

    return-void

    .line 93
    :goto_9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/v42;->v:Lcom/yandex/mobile/ads/impl/jc0;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lcom/yandex/mobile/ads/impl/et0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 95
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/v42;->n:Landroid/os/Handler;

    if-eqz p2, :cond_14

    .line 96
    invoke-virtual {p2, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a

    .line 97
    :cond_14
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/v42;->o:Lcom/yandex/mobile/ads/impl/u42;

    invoke-interface {p2, p1}, Lcom/yandex/mobile/ads/impl/u42;->onCues(Ljava/util/List;)V

    .line 98
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/v42;->o:Lcom/yandex/mobile/ads/impl/u42;

    new-instance p3, Lcom/yandex/mobile/ads/impl/jv;

    invoke-direct {p3, p1}, Lcom/yandex/mobile/ads/impl/jv;-><init>(Ljava/util/List;)V

    invoke-interface {p2, p3}, Lcom/yandex/mobile/ads/impl/u42;->a(Lcom/yandex/mobile/ads/impl/jv;)V

    .line 99
    :goto_a
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/v42;->B()V

    .line 100
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/v42;->z()V

    :cond_15
    return-void
.end method

.method public final a(JZ)V
    .locals 1

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/v42;->n:Landroid/os/Handler;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/v42;->o:Lcom/yandex/mobile/ads/impl/u42;

    invoke-interface {p2, p1}, Lcom/yandex/mobile/ads/impl/u42;->onCues(Ljava/util/List;)V

    .line 6
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/v42;->o:Lcom/yandex/mobile/ads/impl/u42;

    new-instance v0, Lcom/yandex/mobile/ads/impl/jv;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/jv;-><init>(Ljava/util/List;)V

    invoke-interface {p2, v0}, Lcom/yandex/mobile/ads/impl/u42;->a(Lcom/yandex/mobile/ads/impl/jv;)V

    .line 7
    :goto_0
    iput-boolean p3, p0, Lcom/yandex/mobile/ads/impl/v42;->r:Z

    .line 8
    iput-boolean p3, p0, Lcom/yandex/mobile/ads/impl/v42;->s:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/v42;->B:J

    .line 10
    iget p1, p0, Lcom/yandex/mobile/ads/impl/v42;->u:I

    if-eqz p1, :cond_1

    .line 11
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/v42;->B()V

    .line 12
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/v42;->z()V

    goto :goto_1

    .line 13
    :cond_1
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/v42;->A()V

    .line 14
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v42;->w:Lcom/yandex/mobile/ads/impl/o32;

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/oy;->flush()V

    :goto_1
    return-void
.end method

.method public final a([Lcom/yandex/mobile/ads/impl/jc0;JJ)V
    .locals 0

    const/4 p2, 0x0

    .line 17
    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/v42;->v:Lcom/yandex/mobile/ads/impl/jc0;

    .line 18
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/v42;->w:Lcom/yandex/mobile/ads/impl/o32;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 19
    iput p1, p0, Lcom/yandex/mobile/ads/impl/v42;->u:I

    goto :goto_0

    .line 20
    :cond_0
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/v42;->z()V

    :goto_0
    return-void
.end method

.method public final a()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/v42;->s:Z

    return p0
.end method

.method public final c(J)V
    .locals 1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/sk;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/v42;->B:J

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final d()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "TextRenderer"

    return-object p0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v42;->o:Lcom/yandex/mobile/ads/impl/u42;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/u42;->onCues(Ljava/util/List;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v42;->o:Lcom/yandex/mobile/ads/impl/u42;

    new-instance v0, Lcom/yandex/mobile/ads/impl/jv;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/jv;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/u42;->a(Lcom/yandex/mobile/ads/impl/jv;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final u()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/v42;->v:Lcom/yandex/mobile/ads/impl/jc0;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/yandex/mobile/ads/impl/v42;->B:J

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/v42;->n:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/v42;->o:Lcom/yandex/mobile/ads/impl/u42;

    invoke-interface {v1, v0}, Lcom/yandex/mobile/ads/impl/u42;->onCues(Ljava/util/List;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/v42;->o:Lcom/yandex/mobile/ads/impl/u42;

    new-instance v2, Lcom/yandex/mobile/ads/impl/jv;

    invoke-direct {v2, v0}, Lcom/yandex/mobile/ads/impl/jv;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Lcom/yandex/mobile/ads/impl/u42;->a(Lcom/yandex/mobile/ads/impl/jv;)V

    :goto_0
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/v42;->B()V

    return-void
.end method
