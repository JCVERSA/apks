.class public final Lcom/yandex/mobile/ads/impl/sz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/i40;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/sz$f;,
        Lcom/yandex/mobile/ads/impl/sz$g;,
        Lcom/yandex/mobile/ads/impl/sz$b;,
        Lcom/yandex/mobile/ads/impl/sz$e;,
        Lcom/yandex/mobile/ads/impl/sz$d;,
        Lcom/yandex/mobile/ads/impl/sz$c;,
        Lcom/yandex/mobile/ads/impl/sz$a;
    }
.end annotation


# instance fields
.field private final b:Ljava/util/UUID;

.field private final c:Lcom/yandex/mobile/ads/impl/l60$c;

.field private final d:Lcom/yandex/mobile/ads/impl/bw0;

.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Z

.field private final g:[I

.field private final h:Z

.field private final i:Lcom/yandex/mobile/ads/impl/sz$f;

.field private final j:Lcom/yandex/mobile/ads/impl/ds0;

.field private final k:Lcom/yandex/mobile/ads/impl/sz$g;

.field private final l:J

.field private final m:Ljava/util/ArrayList;

.field private final n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/yandex/mobile/ads/impl/sz$e;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/yandex/mobile/ads/impl/rz;",
            ">;"
        }
    .end annotation
.end field

.field private p:I

.field private q:Lcom/yandex/mobile/ads/impl/l60;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private r:Lcom/yandex/mobile/ads/impl/rz;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private s:Lcom/yandex/mobile/ads/impl/rz;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private t:Landroid/os/Looper;

.field private u:Landroid/os/Handler;

.field private v:I

.field private w:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private x:Lcom/yandex/mobile/ads/impl/mi1;

.field volatile y:Lcom/yandex/mobile/ads/impl/sz$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/UUID;Lcom/yandex/mobile/ads/impl/l60$c;Lcom/yandex/mobile/ads/impl/zh0;Ljava/util/HashMap;Z[IZLcom/yandex/mobile/ads/impl/d00;J)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/hg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/yandex/mobile/ads/impl/rm;->b:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Use C.CLEARKEY_UUID instead"

    invoke-static {v1, v0}, Lcom/yandex/mobile/ads/impl/hg;->a(Ljava/lang/String;Z)V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sz;->b:Ljava/util/UUID;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/sz;->c:Lcom/yandex/mobile/ads/impl/l60$c;

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/sz;->d:Lcom/yandex/mobile/ads/impl/bw0;

    .line 8
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/sz;->e:Ljava/util/HashMap;

    .line 9
    iput-boolean p5, p0, Lcom/yandex/mobile/ads/impl/sz;->f:Z

    .line 10
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/sz;->g:[I

    .line 11
    iput-boolean p7, p0, Lcom/yandex/mobile/ads/impl/sz;->h:Z

    .line 12
    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/sz;->j:Lcom/yandex/mobile/ads/impl/ds0;

    .line 13
    new-instance p1, Lcom/yandex/mobile/ads/impl/sz$f;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/sz$f;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sz;->i:Lcom/yandex/mobile/ads/impl/sz$f;

    .line 14
    new-instance p1, Lcom/yandex/mobile/ads/impl/sz$g;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/yandex/mobile/ads/impl/sz$g;-><init>(Lcom/yandex/mobile/ads/impl/sz;Lqtd;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sz;->k:Lcom/yandex/mobile/ads/impl/sz$g;

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/yandex/mobile/ads/impl/sz;->v:I

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sz;->m:Ljava/util/ArrayList;

    .line 17
    invoke-static {}, Lcom/yandex/mobile/ads/impl/wx1;->a()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sz;->n:Ljava/util/Set;

    .line 18
    invoke-static {}, Lcom/yandex/mobile/ads/impl/wx1;->a()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sz;->o:Ljava/util/Set;

    .line 19
    iput-wide p9, p0, Lcom/yandex/mobile/ads/impl/sz;->l:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/UUID;Lcom/yandex/mobile/ads/impl/l60$c;Lcom/yandex/mobile/ads/impl/zh0;Ljava/util/HashMap;Z[IZLcom/yandex/mobile/ads/impl/d00;JLqtd;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Lcom/yandex/mobile/ads/impl/sz;-><init>(Ljava/util/UUID;Lcom/yandex/mobile/ads/impl/l60$c;Lcom/yandex/mobile/ads/impl/zh0;Ljava/util/HashMap;Z[IZLcom/yandex/mobile/ads/impl/d00;J)V

    return-void
.end method

.method private a(Landroid/os/Looper;Lcom/yandex/mobile/ads/impl/h40$a;Lcom/yandex/mobile/ads/impl/jc0;Z)Lcom/yandex/mobile/ads/impl/g40;
    .locals 4
    .param p2    # Lcom/yandex/mobile/ads/impl/h40$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sz;->y:Lcom/yandex/mobile/ads/impl/sz$c;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/yandex/mobile/ads/impl/sz$c;

    invoke-direct {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/sz$c;-><init>(Lcom/yandex/mobile/ads/impl/sz;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/sz;->y:Lcom/yandex/mobile/ads/impl/sz$c;

    .line 4
    :cond_0
    iget-object p1, p3, Lcom/yandex/mobile/ads/impl/jc0;->p:Lcom/yandex/mobile/ads/impl/f40;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_6

    .line 5
    iget-object p1, p3, Lcom/yandex/mobile/ads/impl/jc0;->m:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/w01;->c(Ljava/lang/String;)I

    move-result p1

    .line 7
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/sz;->q:Lcom/yandex/mobile/ads/impl/l60;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-interface {p2}, Lcom/yandex/mobile/ads/impl/l60;->b()I

    move-result p3

    const/4 v2, 0x2

    if-ne p3, v2, :cond_1

    sget-boolean p3, Lcom/yandex/mobile/ads/impl/rc0;->d:Z

    if-eqz p3, :cond_1

    goto :goto_2

    .line 10
    :cond_1
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/sz;->g:[I

    .line 11
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_5

    .line 12
    aget v2, p3, v0

    if-ne v2, p1, :cond_4

    const/4 p1, -0x1

    if-eq v0, p1, :cond_5

    .line 13
    invoke-interface {p2}, Lcom/yandex/mobile/ads/impl/l60;->b()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    goto :goto_2

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/sz;->r:Lcom/yandex/mobile/ads/impl/rz;

    if-nez p1, :cond_3

    .line 15
    invoke-static {}, Lcom/yandex/mobile/ads/impl/kk0;->h()Lcom/yandex/mobile/ads/impl/kk0;

    move-result-object p1

    .line 16
    invoke-direct {p0, p1, p2, v1, p4}, Lcom/yandex/mobile/ads/impl/sz;->a(Ljava/util/List;ZLcom/yandex/mobile/ads/impl/h40$a;Z)Lcom/yandex/mobile/ads/impl/rz;

    move-result-object p1

    .line 17
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/sz;->m:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sz;->r:Lcom/yandex/mobile/ads/impl/rz;

    goto :goto_1

    .line 19
    :cond_3
    invoke-virtual {p1, v1}, Lcom/yandex/mobile/ads/impl/rz;->b(Lcom/yandex/mobile/ads/impl/h40$a;)V

    .line 20
    :goto_1
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/sz;->r:Lcom/yandex/mobile/ads/impl/rz;

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-object v1

    .line 21
    :cond_6
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/sz;->w:[B

    if-nez p3, :cond_8

    .line 22
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/sz;->b:Ljava/util/UUID;

    invoke-static {p1, p3, v0}, Lcom/yandex/mobile/ads/impl/sz;->a(Lcom/yandex/mobile/ads/impl/f40;Ljava/util/UUID;Z)Ljava/util/ArrayList;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 24
    new-instance p1, Lcom/yandex/mobile/ads/impl/sz$d;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sz;->b:Ljava/util/UUID;

    invoke-direct {p1, p0, v1}, Lcom/yandex/mobile/ads/impl/sz$d;-><init>(Ljava/util/UUID;Lqtd;)V

    .line 25
    const-string p0, "DefaultDrmSessionMgr"

    const-string p3, "DRM error"

    invoke-static {p0, p3, p1}, Lcom/yandex/mobile/ads/impl/et0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_7

    .line 26
    invoke-virtual {p2, p1}, Lcom/yandex/mobile/ads/impl/h40$a;->a(Ljava/lang/Exception;)V

    .line 27
    :cond_7
    new-instance p0, Lcom/yandex/mobile/ads/impl/u50;

    new-instance p2, Lcom/yandex/mobile/ads/impl/g40$a;

    const/16 p3, 0x1773

    invoke-direct {p2, p1, p3}, Lcom/yandex/mobile/ads/impl/g40$a;-><init>(Ljava/lang/Throwable;I)V

    invoke-direct {p0, p2}, Lcom/yandex/mobile/ads/impl/u50;-><init>(Lcom/yandex/mobile/ads/impl/g40$a;)V

    return-object p0

    :cond_8
    move-object p1, v1

    .line 28
    :cond_9
    iget-boolean p3, p0, Lcom/yandex/mobile/ads/impl/sz;->f:Z

    if-nez p3, :cond_a

    .line 29
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/sz;->s:Lcom/yandex/mobile/ads/impl/rz;

    goto :goto_3

    .line 30
    :cond_a
    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/sz;->m:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_b
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/rz;

    .line 31
    iget-object v3, v2, Lcom/yandex/mobile/ads/impl/rz;->a:Ljava/util/List;

    invoke-static {v3, p1}, Lcom/yandex/mobile/ads/impl/f92;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object v1, v2

    :cond_c
    :goto_3
    if-nez v1, :cond_e

    .line 32
    invoke-direct {p0, p1, v0, p2, p4}, Lcom/yandex/mobile/ads/impl/sz;->a(Ljava/util/List;ZLcom/yandex/mobile/ads/impl/h40$a;Z)Lcom/yandex/mobile/ads/impl/rz;

    move-result-object v1

    .line 33
    iget-boolean p1, p0, Lcom/yandex/mobile/ads/impl/sz;->f:Z

    if-nez p1, :cond_d

    .line 34
    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/sz;->s:Lcom/yandex/mobile/ads/impl/rz;

    .line 35
    :cond_d
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sz;->m:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 36
    :cond_e
    invoke-virtual {v1, p2}, Lcom/yandex/mobile/ads/impl/rz;->b(Lcom/yandex/mobile/ads/impl/h40$a;)V

    :goto_4
    return-object v1
.end method

.method private a(Ljava/util/List;ZLcom/yandex/mobile/ads/impl/h40$a;)Lcom/yandex/mobile/ads/impl/rz;
    .locals 17
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/yandex/mobile/ads/impl/h40$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/f40$b;",
            ">;Z",
            "Lcom/yandex/mobile/ads/impl/h40$a;",
            ")",
            "Lcom/yandex/mobile/ads/impl/rz;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 37
    iget-object v1, v0, Lcom/yandex/mobile/ads/impl/sz;->q:Lcom/yandex/mobile/ads/impl/l60;

    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    iget-boolean v1, v0, Lcom/yandex/mobile/ads/impl/sz;->h:Z

    or-int v9, v1, p2

    .line 40
    new-instance v1, Lcom/yandex/mobile/ads/impl/rz;

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/sz;->b:Ljava/util/UUID;

    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/sz;->q:Lcom/yandex/mobile/ads/impl/l60;

    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/sz;->i:Lcom/yandex/mobile/ads/impl/sz$f;

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/sz;->k:Lcom/yandex/mobile/ads/impl/sz$g;

    iget v8, v0, Lcom/yandex/mobile/ads/impl/sz;->v:I

    iget-object v11, v0, Lcom/yandex/mobile/ads/impl/sz;->w:[B

    iget-object v12, v0, Lcom/yandex/mobile/ads/impl/sz;->e:Ljava/util/HashMap;

    iget-object v13, v0, Lcom/yandex/mobile/ads/impl/sz;->d:Lcom/yandex/mobile/ads/impl/bw0;

    iget-object v14, v0, Lcom/yandex/mobile/ads/impl/sz;->t:Landroid/os/Looper;

    .line 41
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    iget-object v15, v0, Lcom/yandex/mobile/ads/impl/sz;->j:Lcom/yandex/mobile/ads/impl/ds0;

    iget-object v10, v0, Lcom/yandex/mobile/ads/impl/sz;->x:Lcom/yandex/mobile/ads/impl/mi1;

    .line 43
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v1

    move-object/from16 v7, p1

    move-object/from16 v16, v10

    move/from16 v10, p2

    .line 44
    invoke-direct/range {v2 .. v16}, Lcom/yandex/mobile/ads/impl/rz;-><init>(Ljava/util/UUID;Lcom/yandex/mobile/ads/impl/l60;Lcom/yandex/mobile/ads/impl/rz$a;Lcom/yandex/mobile/ads/impl/rz$b;Ljava/util/List;IZZ[BLjava/util/HashMap;Lcom/yandex/mobile/ads/impl/bw0;Landroid/os/Looper;Lcom/yandex/mobile/ads/impl/ds0;Lcom/yandex/mobile/ads/impl/mi1;)V

    move-object/from16 v2, p3

    .line 45
    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/rz;->b(Lcom/yandex/mobile/ads/impl/h40$a;)V

    .line 46
    iget-wide v2, v0, Lcom/yandex/mobile/ads/impl/sz;->l:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 47
    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/rz;->b(Lcom/yandex/mobile/ads/impl/h40$a;)V

    :cond_0
    return-object v1
.end method

.method private a(Ljava/util/List;ZLcom/yandex/mobile/ads/impl/h40$a;Z)Lcom/yandex/mobile/ads/impl/rz;
    .locals 9
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/yandex/mobile/ads/impl/h40$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/f40$b;",
            ">;Z",
            "Lcom/yandex/mobile/ads/impl/h40$a;",
            "Z)",
            "Lcom/yandex/mobile/ads/impl/rz;"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/sz;->a(Ljava/util/List;ZLcom/yandex/mobile/ads/impl/h40$a;)Lcom/yandex/mobile/ads/impl/rz;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rz;->getState()I

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v4, 0x13

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v1, v6, :cond_3

    sget v1, Lcom/yandex/mobile/ads/impl/f92;->a:I

    if-lt v1, v4, :cond_0

    .line 50
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rz;->getError()Lcom/yandex/mobile/ads/impl/g40$a;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Landroid/media/ResourceBusyException;

    if-eqz v1, :cond_3

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/sz;->o:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 54
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/sz;->o:Ljava/util/Set;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/mk0;->a(Ljava/util/Set;)Lcom/yandex/mobile/ads/impl/mk0;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ik0;->iterator()Lcom/yandex/mobile/ads/impl/i82;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/yandex/mobile/ads/impl/g40;

    .line 56
    invoke-interface {v7, v5}, Lcom/yandex/mobile/ads/impl/g40;->a(Lcom/yandex/mobile/ads/impl/h40$a;)V

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v0, p3}, Lcom/yandex/mobile/ads/impl/rz;->a(Lcom/yandex/mobile/ads/impl/h40$a;)V

    .line 58
    iget-wide v7, p0, Lcom/yandex/mobile/ads/impl/sz;->l:J

    cmp-long v1, v7, v2

    if-eqz v1, :cond_2

    .line 59
    invoke-virtual {v0, v5}, Lcom/yandex/mobile/ads/impl/rz;->a(Lcom/yandex/mobile/ads/impl/h40$a;)V

    .line 60
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/sz;->a(Ljava/util/List;ZLcom/yandex/mobile/ads/impl/h40$a;)Lcom/yandex/mobile/ads/impl/rz;

    move-result-object v0

    .line 61
    :cond_3
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rz;->getState()I

    move-result v1

    if-ne v1, v6, :cond_8

    sget v1, Lcom/yandex/mobile/ads/impl/f92;->a:I

    if-lt v1, v4, :cond_4

    .line 62
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rz;->getError()Lcom/yandex/mobile/ads/impl/g40$a;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Landroid/media/ResourceBusyException;

    if-eqz v1, :cond_8

    :cond_4
    if-eqz p4, :cond_8

    .line 65
    iget-object p4, p0, Lcom/yandex/mobile/ads/impl/sz;->n:Ljava/util/Set;

    .line 66
    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_8

    .line 67
    iget-object p4, p0, Lcom/yandex/mobile/ads/impl/sz;->n:Ljava/util/Set;

    .line 68
    invoke-static {p4}, Lcom/yandex/mobile/ads/impl/mk0;->a(Ljava/util/Set;)Lcom/yandex/mobile/ads/impl/mk0;

    move-result-object p4

    .line 69
    invoke-virtual {p4}, Lcom/yandex/mobile/ads/impl/ik0;->iterator()Lcom/yandex/mobile/ads/impl/i82;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/sz$e;

    .line 70
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/sz$e;->release()V

    goto :goto_1

    .line 71
    :cond_5
    iget-object p4, p0, Lcom/yandex/mobile/ads/impl/sz;->o:Ljava/util/Set;

    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_6

    .line 72
    iget-object p4, p0, Lcom/yandex/mobile/ads/impl/sz;->o:Ljava/util/Set;

    invoke-static {p4}, Lcom/yandex/mobile/ads/impl/mk0;->a(Ljava/util/Set;)Lcom/yandex/mobile/ads/impl/mk0;

    move-result-object p4

    .line 73
    invoke-virtual {p4}, Lcom/yandex/mobile/ads/impl/ik0;->iterator()Lcom/yandex/mobile/ads/impl/i82;

    move-result-object p4

    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/g40;

    .line 74
    invoke-interface {v1, v5}, Lcom/yandex/mobile/ads/impl/g40;->a(Lcom/yandex/mobile/ads/impl/h40$a;)V

    goto :goto_2

    .line 75
    :cond_6
    invoke-virtual {v0, p3}, Lcom/yandex/mobile/ads/impl/rz;->a(Lcom/yandex/mobile/ads/impl/h40$a;)V

    .line 76
    iget-wide v6, p0, Lcom/yandex/mobile/ads/impl/sz;->l:J

    cmp-long p4, v6, v2

    if-eqz p4, :cond_7

    .line 77
    invoke-virtual {v0, v5}, Lcom/yandex/mobile/ads/impl/rz;->a(Lcom/yandex/mobile/ads/impl/h40$a;)V

    .line 78
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/sz;->a(Ljava/util/List;ZLcom/yandex/mobile/ads/impl/h40$a;)Lcom/yandex/mobile/ads/impl/rz;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public static bridge synthetic a(Lcom/yandex/mobile/ads/impl/sz;)Lcom/yandex/mobile/ads/impl/sz$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sz;->i:Lcom/yandex/mobile/ads/impl/sz$f;

    return-object p0
.end method

.method private static a(Lcom/yandex/mobile/ads/impl/f40;Ljava/util/UUID;Z)Ljava/util/ArrayList;
    .locals 6

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/yandex/mobile/ads/impl/f40;->e:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 118
    :goto_0
    iget v2, p0, Lcom/yandex/mobile/ads/impl/f40;->e:I

    if-ge v1, v2, :cond_4

    .line 119
    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/impl/f40;->a(I)Lcom/yandex/mobile/ads/impl/f40$b;

    move-result-object v2

    .line 120
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    sget-object v3, Lcom/yandex/mobile/ads/impl/rm;->a:Ljava/util/UUID;

    iget-object v4, v2, Lcom/yandex/mobile/ads/impl/f40$b;->c:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v2, Lcom/yandex/mobile/ads/impl/f40$b;->c:Ljava/util/UUID;

    invoke-virtual {p1, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 122
    :cond_0
    sget-object v4, Lcom/yandex/mobile/ads/impl/rm;->c:Ljava/util/UUID;

    .line 123
    invoke-virtual {v4, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/yandex/mobile/ads/impl/rm;->b:Ljava/util/UUID;

    .line 124
    iget-object v5, v2, Lcom/yandex/mobile/ads/impl/f40$b;->c:Ljava/util/UUID;

    invoke-virtual {v3, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/yandex/mobile/ads/impl/f40$b;->c:Ljava/util/UUID;

    invoke-virtual {v4, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 125
    :cond_1
    :goto_1
    iget-object v3, v2, Lcom/yandex/mobile/ads/impl/f40$b;->f:[B

    if-nez v3, :cond_2

    if-eqz p2, :cond_3

    .line 126
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static bridge synthetic b(Lcom/yandex/mobile/ads/impl/sz;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/sz;->l:J

    return-wide v0
.end method

.method public static bridge synthetic c(Lcom/yandex/mobile/ads/impl/sz;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sz;->m:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/yandex/mobile/ads/impl/sz;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sz;->n:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/yandex/mobile/ads/impl/sz;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sz;->o:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/yandex/mobile/ads/impl/sz;)I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/sz;->p:I

    return p0
.end method

.method public static bridge synthetic g(Lcom/yandex/mobile/ads/impl/sz;)Lcom/yandex/mobile/ads/impl/l60;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sz;->q:Lcom/yandex/mobile/ads/impl/l60;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/yandex/mobile/ads/impl/sz;)Lcom/yandex/mobile/ads/impl/rz;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sz;->r:Lcom/yandex/mobile/ads/impl/rz;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/yandex/mobile/ads/impl/sz;)Lcom/yandex/mobile/ads/impl/rz;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sz;->s:Lcom/yandex/mobile/ads/impl/rz;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/yandex/mobile/ads/impl/sz;)Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sz;->t:Landroid/os/Looper;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/yandex/mobile/ads/impl/sz;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sz;->u:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/yandex/mobile/ads/impl/sz;Lcom/yandex/mobile/ads/impl/l60;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sz;->q:Lcom/yandex/mobile/ads/impl/l60;

    return-void
.end method

.method public static bridge synthetic m(Lcom/yandex/mobile/ads/impl/sz;Lcom/yandex/mobile/ads/impl/rz;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sz;->r:Lcom/yandex/mobile/ads/impl/rz;

    return-void
.end method

.method public static bridge synthetic n(Lcom/yandex/mobile/ads/impl/sz;Lcom/yandex/mobile/ads/impl/rz;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sz;->s:Lcom/yandex/mobile/ads/impl/rz;

    return-void
.end method

.method public static bridge synthetic o(Lcom/yandex/mobile/ads/impl/sz;Landroid/os/Looper;Lcom/yandex/mobile/ads/impl/h40$a;Lcom/yandex/mobile/ads/impl/jc0;Z)Lcom/yandex/mobile/ads/impl/g40;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yandex/mobile/ads/impl/sz;->a(Landroid/os/Looper;Lcom/yandex/mobile/ads/impl/h40$a;Lcom/yandex/mobile/ads/impl/jc0;Z)Lcom/yandex/mobile/ads/impl/g40;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/jc0;)I
    .locals 6

    .line 79
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sz;->q:Lcom/yandex/mobile/ads/impl/l60;

    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/l60;->b()I

    move-result v0

    .line 82
    iget-object v1, p1, Lcom/yandex/mobile/ads/impl/jc0;->p:Lcom/yandex/mobile/ads/impl/f40;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 83
    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/jc0;->m:Ljava/lang/String;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/w01;->c(Ljava/lang/String;)I

    move-result p1

    .line 84
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sz;->g:[I

    move v1, v2

    .line 85
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 86
    aget v3, p0, v1

    if-ne v3, p1, :cond_0

    const/4 p0, -0x1

    if-eq v1, p0, :cond_1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    return v0

    .line 87
    :cond_2
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/sz;->w:[B

    if-eqz p1, :cond_3

    goto/16 :goto_2

    .line 88
    :cond_3
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/sz;->b:Ljava/util/UUID;

    const/4 v3, 0x1

    invoke-static {v1, p1, v3}, Lcom/yandex/mobile/ads/impl/sz;->a(Lcom/yandex/mobile/ads/impl/f40;Ljava/util/UUID;Z)Ljava/util/ArrayList;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 90
    iget p1, v1, Lcom/yandex/mobile/ads/impl/f40;->e:I

    if-ne p1, v3, :cond_8

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/f40;->a(I)Lcom/yandex/mobile/ads/impl/f40$b;

    move-result-object p1

    sget-object v2, Lcom/yandex/mobile/ads/impl/rm;->b:Ljava/util/UUID;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    sget-object v4, Lcom/yandex/mobile/ads/impl/rm;->a:Ljava/util/UUID;

    iget-object v5, p1, Lcom/yandex/mobile/ads/impl/f40$b;->c:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/f40$b;->c:Ljava/util/UUID;

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 92
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "DrmInitData only contains common PSSH SchemeData. Assuming support for: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sz;->b:Ljava/util/UUID;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DefaultDrmSessionMgr"

    invoke-static {p1, p0}, Lcom/yandex/mobile/ads/impl/et0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_5
    iget-object p0, v1, Lcom/yandex/mobile/ads/impl/f40;->d:Ljava/lang/String;

    if-eqz p0, :cond_9

    .line 94
    const-string p1, "cenc"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    .line 95
    :cond_6
    const-string p1, "cbcs"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 96
    sget p0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    const/16 p1, 0x19

    if-lt p0, p1, :cond_8

    goto :goto_2

    .line 97
    :cond_7
    const-string p1, "cbc1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "cens"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    :cond_8
    move v0, v3

    :cond_9
    :goto_2
    return v0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/h40$a;Lcom/yandex/mobile/ads/impl/jc0;)Lcom/yandex/mobile/ads/impl/i40$b;
    .locals 1
    .param p1    # Lcom/yandex/mobile/ads/impl/h40$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 98
    iget v0, p0, Lcom/yandex/mobile/ads/impl/sz;->p:I

    if-lez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sz;->t:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Lcom/yandex/mobile/ads/impl/sz$e;

    invoke-direct {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/sz$e;-><init>(Lcom/yandex/mobile/ads/impl/sz;Lcom/yandex/mobile/ads/impl/h40$a;)V

    .line 101
    invoke-virtual {v0, p2}, Lcom/yandex/mobile/ads/impl/sz$e;->a(Lcom/yandex/mobile/ads/impl/jc0;)V

    return-object v0

    .line 102
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 103
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final a(Landroid/os/Looper;Lcom/yandex/mobile/ads/impl/mi1;)V
    .locals 1

    .line 108
    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sz;->t:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 110
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sz;->t:Landroid/os/Looper;

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/sz;->u:Landroid/os/Handler;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    if-ne v0, p1, :cond_1

    .line 112
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/sz;->u:Landroid/os/Handler;

    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :goto_0
    monitor-exit p0

    .line 115
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/sz;->x:Lcom/yandex/mobile/ads/impl/mi1;

    return-void

    .line 116
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final a([B)V
    .locals 1
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 104
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sz;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 105
    iput v0, p0, Lcom/yandex/mobile/ads/impl/sz;->v:I

    .line 106
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/sz;->w:[B

    return-void

    .line 107
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/h40$a;Lcom/yandex/mobile/ads/impl/jc0;)Lcom/yandex/mobile/ads/impl/g40;
    .locals 2
    .param p1    # Lcom/yandex/mobile/ads/impl/h40$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget v0, p0, Lcom/yandex/mobile/ads/impl/sz;->p:I

    if-lez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sz;->t:Landroid/os/Looper;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/yandex/mobile/ads/impl/sz;->a(Landroid/os/Looper;Lcom/yandex/mobile/ads/impl/h40$a;Lcom/yandex/mobile/ads/impl/jc0;Z)Lcom/yandex/mobile/ads/impl/g40;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final prepare()V
    .locals 6

    iget v0, p0, Lcom/yandex/mobile/ads/impl/sz;->p:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yandex/mobile/ads/impl/sz;->p:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sz;->q:Lcom/yandex/mobile/ads/impl/l60;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sz;->c:Lcom/yandex/mobile/ads/impl/l60$c;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/sz;->b:Ljava/util/UUID;

    invoke-interface {v0, v2}, Lcom/yandex/mobile/ads/impl/l60$c;->a(Ljava/util/UUID;)Lcom/yandex/mobile/ads/impl/l60;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/sz;->q:Lcom/yandex/mobile/ads/impl/l60;

    new-instance v2, Lcom/yandex/mobile/ads/impl/sz$b;

    invoke-direct {v2, p0, v1}, Lcom/yandex/mobile/ads/impl/sz$b;-><init>(Lcom/yandex/mobile/ads/impl/sz;Lqtd;)V

    invoke-interface {v0, v2}, Lcom/yandex/mobile/ads/impl/l60;->a(Lcom/yandex/mobile/ads/impl/l60$b;)V

    goto :goto_1

    :cond_1
    iget-wide v2, p0, Lcom/yandex/mobile/ads/impl/sz;->l:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/sz;->m:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/sz;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/rz;

    invoke-virtual {v2, v1}, Lcom/yandex/mobile/ads/impl/rz;->b(Lcom/yandex/mobile/ads/impl/h40$a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final release()V
    .locals 4

    iget v0, p0, Lcom/yandex/mobile/ads/impl/sz;->p:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/yandex/mobile/ads/impl/sz;->p:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/sz;->l:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/sz;->m:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/mobile/ads/impl/rz;

    invoke-virtual {v3, v1}, Lcom/yandex/mobile/ads/impl/rz;->a(Lcom/yandex/mobile/ads/impl/h40$a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sz;->n:Ljava/util/Set;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/mk0;->a(Ljava/util/Set;)Lcom/yandex/mobile/ads/impl/mk0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ik0;->iterator()Lcom/yandex/mobile/ads/impl/i82;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/sz$e;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/sz$e;->release()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sz;->q:Lcom/yandex/mobile/ads/impl/l60;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/yandex/mobile/ads/impl/sz;->p:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sz;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sz;->n:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/sz;->q:Lcom/yandex/mobile/ads/impl/l60;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/l60;->release()V

    iput-object v1, p0, Lcom/yandex/mobile/ads/impl/sz;->q:Lcom/yandex/mobile/ads/impl/l60;

    :cond_3
    return-void
.end method
