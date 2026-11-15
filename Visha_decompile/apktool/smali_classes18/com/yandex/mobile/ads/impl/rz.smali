.class final Lcom/yandex/mobile/ads/impl/rz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/g40;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/rz$a;,
        Lcom/yandex/mobile/ads/impl/rz$b;,
        Lcom/yandex/mobile/ads/impl/rz$e;,
        Lcom/yandex/mobile/ads/impl/rz$c;,
        Lcom/yandex/mobile/ads/impl/rz$d;,
        Lcom/yandex/mobile/ads/impl/rz$f;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/f40$b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/l60;

.field private final c:Lcom/yandex/mobile/ads/impl/rz$a;

.field private final d:Lcom/yandex/mobile/ads/impl/rz$b;

.field private final e:I

.field private final f:Z

.field private final g:Z

.field private final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/yandex/mobile/ads/impl/rs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/rs<",
            "Lcom/yandex/mobile/ads/impl/h40$a;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/yandex/mobile/ads/impl/ds0;

.field private final k:Lcom/yandex/mobile/ads/impl/mi1;

.field final l:Lcom/yandex/mobile/ads/impl/bw0;

.field final m:Ljava/util/UUID;

.field final n:Lcom/yandex/mobile/ads/impl/rz$e;

.field private o:I

.field private p:I

.field private q:Landroid/os/HandlerThread;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private r:Lcom/yandex/mobile/ads/impl/rz$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private s:Lcom/yandex/mobile/ads/impl/fv;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private t:Lcom/yandex/mobile/ads/impl/g40$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private u:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private v:[B

.field private w:Lcom/yandex/mobile/ads/impl/l60$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private x:Lcom/yandex/mobile/ads/impl/l60$d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lcom/yandex/mobile/ads/impl/l60;Lcom/yandex/mobile/ads/impl/rz$a;Lcom/yandex/mobile/ads/impl/rz$b;Ljava/util/List;IZZ[BLjava/util/HashMap;Lcom/yandex/mobile/ads/impl/bw0;Landroid/os/Looper;Lcom/yandex/mobile/ads/impl/ds0;Lcom/yandex/mobile/ads/impl/mi1;)V
    .locals 1
    .param p5    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/yandex/mobile/ads/impl/l60;",
            "Lcom/yandex/mobile/ads/impl/rz$a;",
            "Lcom/yandex/mobile/ads/impl/rz$b;",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/f40$b;",
            ">;IZZ[B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/bw0;",
            "Landroid/os/Looper;",
            "Lcom/yandex/mobile/ads/impl/ds0;",
            "Lcom/yandex/mobile/ads/impl/mi1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-eq p6, v0, :cond_0

    const/4 v0, 0x3

    if-ne p6, v0, :cond_1

    :cond_0
    invoke-static {p9}, Lcom/yandex/mobile/ads/impl/hg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/rz;->m:Ljava/util/UUID;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/rz;->c:Lcom/yandex/mobile/ads/impl/rz$a;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/rz;->d:Lcom/yandex/mobile/ads/impl/rz$b;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/rz;->b:Lcom/yandex/mobile/ads/impl/l60;

    iput p6, p0, Lcom/yandex/mobile/ads/impl/rz;->e:I

    iput-boolean p7, p0, Lcom/yandex/mobile/ads/impl/rz;->f:Z

    iput-boolean p8, p0, Lcom/yandex/mobile/ads/impl/rz;->g:Z

    if-eqz p9, :cond_2

    iput-object p9, p0, Lcom/yandex/mobile/ads/impl/rz;->v:[B

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/rz;->a:Ljava/util/List;

    goto :goto_0

    :cond_2
    invoke-static {p5}, Lcom/yandex/mobile/ads/impl/hg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/rz;->a:Ljava/util/List;

    :goto_0
    iput-object p10, p0, Lcom/yandex/mobile/ads/impl/rz;->h:Ljava/util/HashMap;

    iput-object p11, p0, Lcom/yandex/mobile/ads/impl/rz;->l:Lcom/yandex/mobile/ads/impl/bw0;

    new-instance p1, Lcom/yandex/mobile/ads/impl/rs;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/rs;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/rz;->i:Lcom/yandex/mobile/ads/impl/rs;

    iput-object p13, p0, Lcom/yandex/mobile/ads/impl/rz;->j:Lcom/yandex/mobile/ads/impl/ds0;

    iput-object p14, p0, Lcom/yandex/mobile/ads/impl/rz;->k:Lcom/yandex/mobile/ads/impl/mi1;

    const/4 p1, 0x2

    iput p1, p0, Lcom/yandex/mobile/ads/impl/rz;->o:I

    new-instance p1, Lcom/yandex/mobile/ads/impl/rz$e;

    invoke-direct {p1, p0, p12}, Lcom/yandex/mobile/ads/impl/rz$e;-><init>(Lcom/yandex/mobile/ads/impl/rz;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/rz;->n:Lcom/yandex/mobile/ads/impl/rz$e;

    return-void
.end method

.method private static synthetic a(ILcom/yandex/mobile/ads/impl/h40$a;)V
    .locals 0

    .line 33
    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/h40$a;->a(I)V

    return-void
.end method

.method private a(ILjava/lang/Exception;)V
    .locals 5

    .line 93
    new-instance v0, Lcom/yandex/mobile/ads/impl/g40$a;

    .line 94
    sget v1, Lcom/yandex/mobile/ads/impl/f92;->a:I

    const/16 v2, 0x15

    const/4 v3, 0x1

    if-lt v1, v2, :cond_0

    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/l40;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/l40;->b(Ljava/lang/Throwable;)I

    move-result p1

    goto :goto_2

    :cond_0
    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 96
    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/m40;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x12

    if-lt v1, v2, :cond_2

    .line 97
    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/k40;->b(Ljava/lang/Throwable;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    if-lt v1, v2, :cond_3

    .line 98
    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/k40;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 p1, 0x1777

    goto :goto_2

    .line 99
    :cond_3
    instance-of v1, p2, Lcom/yandex/mobile/ads/impl/l82;

    if-eqz v1, :cond_4

    const/16 p1, 0x1771

    goto :goto_2

    .line 100
    :cond_4
    instance-of v1, p2, Lcom/yandex/mobile/ads/impl/sz$d;

    if-eqz v1, :cond_5

    const/16 p1, 0x1773

    goto :goto_2

    .line 101
    :cond_5
    instance-of v1, p2, Lcom/yandex/mobile/ads/impl/ar0;

    if-eqz v1, :cond_6

    const/16 p1, 0x1778

    goto :goto_2

    :cond_6
    if-ne p1, v3, :cond_7

    :goto_0
    const/16 p1, 0x1776

    goto :goto_2

    :cond_7
    const/4 v1, 0x2

    if-ne p1, v1, :cond_8

    const/16 p1, 0x1774

    goto :goto_2

    :cond_8
    const/4 v1, 0x3

    if-ne p1, v1, :cond_a

    :goto_1
    const/16 p1, 0x1772

    .line 102
    :goto_2
    invoke-direct {v0, p2, p1}, Lcom/yandex/mobile/ads/impl/g40$a;-><init>(Ljava/lang/Throwable;I)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/rz;->t:Lcom/yandex/mobile/ads/impl/g40$a;

    .line 103
    const-string p1, "DefaultDrmSession"

    const-string v0, "DRM session error"

    invoke-static {p1, v0, p2}, Lcom/yandex/mobile/ads/impl/et0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    new-instance p1, Lcom/yandex/mobile/ads/impl/fr2;

    invoke-direct {p1, p2}, Lcom/yandex/mobile/ads/impl/fr2;-><init>(Ljava/lang/Exception;)V

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/rz;->a(Lcom/yandex/mobile/ads/impl/yr;)V

    .line 105
    iget p1, p0, Lcom/yandex/mobile/ads/impl/rz;->o:I

    const/4 p2, 0x4

    if-eq p1, p2, :cond_9

    .line 106
    iput v3, p0, Lcom/yandex/mobile/ads/impl/rz;->o:I

    :cond_9
    return-void

    .line 107
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private a(Lcom/yandex/mobile/ads/impl/yr;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/yr<",
            "Lcom/yandex/mobile/ads/impl/h40$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rz;->i:Lcom/yandex/mobile/ads/impl/rs;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rs;->a()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/h40$a;

    .line 2
    invoke-interface {p1, v0}, Lcom/yandex/mobile/ads/impl/yr;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static synthetic a(Ljava/lang/Exception;Lcom/yandex/mobile/ads/impl/h40$a;)V
    .locals 0

    .line 32
    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/h40$a;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rz;->w:Lcom/yandex/mobile/ads/impl/l60$a;

    if-ne p1, v0, :cond_7

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/rz;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/rz;->w:Lcom/yandex/mobile/ads/impl/l60$a;

    .line 36
    instance-of p1, p2, Ljava/lang/Exception;

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    .line 37
    check-cast p2, Ljava/lang/Exception;

    .line 38
    instance-of p1, p2, Landroid/media/NotProvisionedException;

    if-eqz p1, :cond_1

    .line 39
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/rz;->c:Lcom/yandex/mobile/ads/impl/rz$a;

    check-cast p1, Lcom/yandex/mobile/ads/impl/sz$f;

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/sz$f;->a(Lcom/yandex/mobile/ads/impl/rz;)V

    goto :goto_0

    .line 40
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/yandex/mobile/ads/impl/rz;->a(ILjava/lang/Exception;)V

    :goto_0
    return-void

    .line 41
    :cond_2
    :try_start_0
    check-cast p2, [B

    .line 42
    iget p1, p0, Lcom/yandex/mobile/ads/impl/rz;->e:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 43
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/rz;->b:Lcom/yandex/mobile/ads/impl/l60;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rz;->v:[B

    sget v1, Lcom/yandex/mobile/ads/impl/f92;->a:I

    invoke-interface {p1, v0, p2}, Lcom/yandex/mobile/ads/impl/l60;->b([B[B)[B

    .line 44
    new-instance p1, Lgsd;

    invoke-direct {p1}, Lgsd;-><init>()V

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/rz;->a(Lcom/yandex/mobile/ads/impl/yr;)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    .line 45
    :cond_3
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/rz;->b:Lcom/yandex/mobile/ads/impl/l60;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/rz;->u:[B

    invoke-interface {p1, v1, p2}, Lcom/yandex/mobile/ads/impl/l60;->b([B[B)[B

    move-result-object p1

    .line 46
    iget p2, p0, Lcom/yandex/mobile/ads/impl/rz;->e:I

    if-eq p2, v0, :cond_4

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/rz;->v:[B

    if-eqz p2, :cond_5

    :cond_4
    if-eqz p1, :cond_5

    .line 47
    array-length p2, p1

    if-eqz p2, :cond_5

    .line 48
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/rz;->v:[B

    :cond_5
    const/4 p1, 0x4

    .line 49
    iput p1, p0, Lcom/yandex/mobile/ads/impl/rz;->o:I

    .line 50
    new-instance p1, Lhsd;

    invoke-direct {p1}, Lhsd;-><init>()V

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/rz;->a(Lcom/yandex/mobile/ads/impl/yr;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 51
    :goto_1
    instance-of p2, p1, Landroid/media/NotProvisionedException;

    if-eqz p2, :cond_6

    .line 52
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/rz;->c:Lcom/yandex/mobile/ads/impl/rz$a;

    check-cast p1, Lcom/yandex/mobile/ads/impl/sz$f;

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/sz$f;->a(Lcom/yandex/mobile/ads/impl/rz;)V

    goto :goto_2

    :cond_6
    const/4 p2, 0x1

    .line 53
    invoke-direct {p0, p2, p1}, Lcom/yandex/mobile/ads/impl/rz;->a(ILjava/lang/Exception;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private a(Z)V
    .locals 8

    .line 3
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/rz;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rz;->u:[B

    sget v1, Lcom/yandex/mobile/ads/impl/f92;->a:I

    .line 5
    iget v1, p0, Lcom/yandex/mobile/ads/impl/rz;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_2

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    goto/16 :goto_3

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/rz;->v:[B

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/rz;->u:[B

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/rz;->v:[B

    invoke-direct {p0, v1, v0, p1}, Lcom/yandex/mobile/ads/impl/rz;->a([BIZ)V

    goto/16 :goto_3

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/rz;->v:[B

    if-eqz v1, :cond_3

    .line 12
    :try_start_0
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/rz;->b:Lcom/yandex/mobile/ads/impl/l60;

    invoke-interface {v4, v0, v1}, Lcom/yandex/mobile/ads/impl/l60;->a([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-direct {p0, v3, p1}, Lcom/yandex/mobile/ads/impl/rz;->a(ILjava/lang/Exception;)V

    goto/16 :goto_3

    .line 14
    :cond_3
    :goto_0
    invoke-direct {p0, v0, v2, p1}, Lcom/yandex/mobile/ads/impl/rz;->a([BIZ)V

    goto/16 :goto_3

    .line 15
    :cond_4
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/rz;->v:[B

    if-nez v1, :cond_5

    .line 16
    invoke-direct {p0, v0, v3, p1}, Lcom/yandex/mobile/ads/impl/rz;->a([BIZ)V

    goto/16 :goto_3

    .line 17
    :cond_5
    iget v4, p0, Lcom/yandex/mobile/ads/impl/rz;->o:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_6

    .line 18
    :try_start_1
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/rz;->b:Lcom/yandex/mobile/ads/impl/l60;

    invoke-interface {v4, v0, v1}, Lcom/yandex/mobile/ads/impl/l60;->a([B[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 19
    invoke-direct {p0, v3, p1}, Lcom/yandex/mobile/ads/impl/rz;->a(ILjava/lang/Exception;)V

    goto :goto_3

    .line 20
    :cond_6
    :goto_1
    sget-object v1, Lcom/yandex/mobile/ads/impl/rm;->d:Ljava/util/UUID;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/rz;->m:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-wide v3, 0x7fffffffffffffffL

    goto :goto_2

    .line 21
    :cond_7
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/gk2;->a(Lcom/yandex/mobile/ads/impl/g40;)Landroid/util/Pair;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 24
    :goto_2
    iget v1, p0, Lcom/yandex/mobile/ads/impl/rz;->e:I

    if-nez v1, :cond_8

    const-wide/16 v6, 0x3c

    cmp-long v1, v3, v6

    if-gtz v1, :cond_8

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Offline license has expired or will expire soon. Remaining seconds: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DefaultDrmSession"

    invoke-static {v3, v1}, Lcom/yandex/mobile/ads/impl/et0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, v0, v2, p1}, Lcom/yandex/mobile/ads/impl/rz;->a([BIZ)V

    goto :goto_3

    :cond_8
    const-wide/16 v0, 0x0

    cmp-long p1, v3, v0

    if-gtz p1, :cond_9

    .line 27
    new-instance p1, Lcom/yandex/mobile/ads/impl/ar0;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/ar0;-><init>()V

    invoke-direct {p0, v2, p1}, Lcom/yandex/mobile/ads/impl/rz;->a(ILjava/lang/Exception;)V

    goto :goto_3

    .line 28
    :cond_9
    iput v5, p0, Lcom/yandex/mobile/ads/impl/rz;->o:I

    .line 29
    new-instance p1, Lisd;

    invoke-direct {p1}, Lisd;-><init>()V

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/rz;->a(Lcom/yandex/mobile/ads/impl/yr;)V

    :goto_3
    return-void
.end method

.method private a([BIZ)V
    .locals 11

    const/4 v0, 0x1

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/rz;->b:Lcom/yandex/mobile/ads/impl/l60;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/rz;->a:Ljava/util/List;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/rz;->h:Ljava/util/HashMap;

    invoke-interface {v1, p1, v2, p2, v3}, Lcom/yandex/mobile/ads/impl/l60;->a([BLjava/util/List;ILjava/util/HashMap;)Lcom/yandex/mobile/ads/impl/l60$a;

    move-result-object v10

    iput-object v10, p0, Lcom/yandex/mobile/ads/impl/rz;->w:Lcom/yandex/mobile/ads/impl/l60$a;

    .line 59
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/rz;->r:Lcom/yandex/mobile/ads/impl/rz$c;

    sget p2, Lcom/yandex/mobile/ads/impl/f92;->a:I

    .line 60
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    new-instance p2, Lcom/yandex/mobile/ads/impl/rz$d;

    .line 63
    invoke-static {}, Lcom/yandex/mobile/ads/impl/es0;->a()J

    move-result-wide v5

    .line 64
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    move-object v4, p2

    move v7, p3

    invoke-direct/range {v4 .. v10}, Lcom/yandex/mobile/ads/impl/rz$d;-><init>(JZJLjava/lang/Object;)V

    .line 65
    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 66
    instance-of p2, p1, Landroid/media/NotProvisionedException;

    if-eqz p2, :cond_0

    .line 67
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/rz;->c:Lcom/yandex/mobile/ads/impl/rz$a;

    check-cast p1, Lcom/yandex/mobile/ads/impl/sz$f;

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/sz$f;->a(Lcom/yandex/mobile/ads/impl/rz;)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/yandex/mobile/ads/impl/rz;->a(ILjava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private a()Z
    .locals 1

    .line 31
    iget p0, p0, Lcom/yandex/mobile/ads/impl/rz;->o:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic b(ILcom/yandex/mobile/ads/impl/h40$a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/rz;->a(ILcom/yandex/mobile/ads/impl/h40$a;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/Exception;Lcom/yandex/mobile/ads/impl/h40$a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/rz;->a(Ljava/lang/Exception;Lcom/yandex/mobile/ads/impl/h40$a;)V

    return-void
.end method

.method private c()Z
    .locals 4

    .line 2
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/rz;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rz;->b:Lcom/yandex/mobile/ads/impl/l60;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/l60;->c()[B

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/rz;->u:[B

    .line 4
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/rz;->b:Lcom/yandex/mobile/ads/impl/l60;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/rz;->k:Lcom/yandex/mobile/ads/impl/mi1;

    invoke-interface {v2, v0, v3}, Lcom/yandex/mobile/ads/impl/l60;->a([BLcom/yandex/mobile/ads/impl/mi1;)V

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rz;->b:Lcom/yandex/mobile/ads/impl/l60;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/rz;->u:[B

    invoke-interface {v0, v2}, Lcom/yandex/mobile/ads/impl/l60;->d([B)Lcom/yandex/mobile/ads/impl/fv;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/rz;->s:Lcom/yandex/mobile/ads/impl/fv;

    const/4 v0, 0x3

    .line 6
    iput v0, p0, Lcom/yandex/mobile/ads/impl/rz;->o:I

    .line 7
    new-instance v2, Lcom/yandex/mobile/ads/impl/er2;

    invoke-direct {v2, v0}, Lcom/yandex/mobile/ads/impl/er2;-><init>(I)V

    invoke-direct {p0, v2}, Lcom/yandex/mobile/ads/impl/rz;->a(Lcom/yandex/mobile/ads/impl/yr;)V

    .line 8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rz;->u:[B

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    .line 10
    invoke-direct {p0, v1, v0}, Lcom/yandex/mobile/ads/impl/rz;->a(ILjava/lang/Exception;)V

    goto :goto_0

    .line 11
    :catch_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rz;->c:Lcom/yandex/mobile/ads/impl/rz$a;

    check-cast v0, Lcom/yandex/mobile/ads/impl/sz$f;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/sz$f;->a(Lcom/yandex/mobile/ads/impl/rz;)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic d(Lcom/yandex/mobile/ads/impl/rz;)Lcom/yandex/mobile/ads/impl/l60;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rz;->b:Lcom/yandex/mobile/ads/impl/l60;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/yandex/mobile/ads/impl/rz;)Lcom/yandex/mobile/ads/impl/rz$a;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rz;->c:Lcom/yandex/mobile/ads/impl/rz$a;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/yandex/mobile/ads/impl/rz;)Lcom/yandex/mobile/ads/impl/ds0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rz;->j:Lcom/yandex/mobile/ads/impl/ds0;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/yandex/mobile/ads/impl/rz;)I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/rz;->o:I

    return p0
.end method

.method public static bridge synthetic h(Lcom/yandex/mobile/ads/impl/rz;)Lcom/yandex/mobile/ads/impl/l60$d;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rz;->x:Lcom/yandex/mobile/ads/impl/l60$d;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/yandex/mobile/ads/impl/rz;Lcom/yandex/mobile/ads/impl/l60$d;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/rz;->x:Lcom/yandex/mobile/ads/impl/l60$d;

    return-void
.end method

.method public static bridge synthetic j(Lcom/yandex/mobile/ads/impl/rz;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/rz;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic k(Lcom/yandex/mobile/ads/impl/rz;)Z
    .locals 0

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/rz;->a()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    iget p1, p0, Lcom/yandex/mobile/ads/impl/rz;->e:I

    if-nez p1, :cond_1

    iget p1, p0, Lcom/yandex/mobile/ads/impl/rz;->o:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 55
    sget p1, Lcom/yandex/mobile/ads/impl/f92;->a:I

    const/4 p1, 0x0

    .line 56
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/rz;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/h40$a;)V
    .locals 3
    .param p1    # Lcom/yandex/mobile/ads/impl/h40$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 69
    iget v0, p0, Lcom/yandex/mobile/ads/impl/rz;->p:I

    if-gtz v0, :cond_0

    .line 70
    const-string p0, "DefaultDrmSession"

    const-string p1, "release() called on a session that\'s already fully released."

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/et0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 71
    iput v0, p0, Lcom/yandex/mobile/ads/impl/rz;->p:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/yandex/mobile/ads/impl/rz;->o:I

    .line 73
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rz;->n:Lcom/yandex/mobile/ads/impl/rz$e;

    sget v2, Lcom/yandex/mobile/ads/impl/f92;->a:I

    const/4 v2, 0x0

    .line 74
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rz;->r:Lcom/yandex/mobile/ads/impl/rz$c;

    monitor-enter v0

    .line 76
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 77
    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/rz$c;->a(Lcom/yandex/mobile/ads/impl/rz$c;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 78
    iput-object v2, p0, Lcom/yandex/mobile/ads/impl/rz;->r:Lcom/yandex/mobile/ads/impl/rz$c;

    .line 79
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rz;->q:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 80
    iput-object v2, p0, Lcom/yandex/mobile/ads/impl/rz;->q:Landroid/os/HandlerThread;

    .line 81
    iput-object v2, p0, Lcom/yandex/mobile/ads/impl/rz;->s:Lcom/yandex/mobile/ads/impl/fv;

    .line 82
    iput-object v2, p0, Lcom/yandex/mobile/ads/impl/rz;->t:Lcom/yandex/mobile/ads/impl/g40$a;

    .line 83
    iput-object v2, p0, Lcom/yandex/mobile/ads/impl/rz;->w:Lcom/yandex/mobile/ads/impl/l60$a;

    .line 84
    iput-object v2, p0, Lcom/yandex/mobile/ads/impl/rz;->x:Lcom/yandex/mobile/ads/impl/l60$d;

    .line 85
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rz;->u:[B

    if-eqz v0, :cond_1

    .line 86
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/rz;->b:Lcom/yandex/mobile/ads/impl/l60;

    invoke-interface {v1, v0}, Lcom/yandex/mobile/ads/impl/l60;->b([B)V

    .line 87
    iput-object v2, p0, Lcom/yandex/mobile/ads/impl/rz;->u:[B

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 88
    monitor-exit v0

    throw p0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 89
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rz;->i:Lcom/yandex/mobile/ads/impl/rs;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/rs;->c(Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rz;->i:Lcom/yandex/mobile/ads/impl/rs;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/rs;->b(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_2

    .line 91
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/h40$a;->d()V

    .line 92
    :cond_2
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/rz;->d:Lcom/yandex/mobile/ads/impl/rz$b;

    iget v0, p0, Lcom/yandex/mobile/ads/impl/rz;->p:I

    check-cast p1, Lcom/yandex/mobile/ads/impl/sz$g;

    invoke-virtual {p1, p0, v0}, Lcom/yandex/mobile/ads/impl/sz$g;->a(Lcom/yandex/mobile/ads/impl/rz;I)V

    return-void
.end method

.method public final a(Ljava/lang/Exception;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    .line 57
    :goto_0
    invoke-direct {p0, p2, p1}, Lcom/yandex/mobile/ads/impl/rz;->a(ILjava/lang/Exception;)V

    return-void
.end method

.method public final a([B)Z
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rz;->u:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public final b()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/rz;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 19
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/rz;->a(Z)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/h40$a;)V
    .locals 2
    .param p1    # Lcom/yandex/mobile/ads/impl/h40$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iget v0, p0, Lcom/yandex/mobile/ads/impl/rz;->p:I

    if-gez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Session reference count less than zero: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/yandex/mobile/ads/impl/rz;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultDrmSession"

    invoke-static {v1, v0}, Lcom/yandex/mobile/ads/impl/et0;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/yandex/mobile/ads/impl/rz;->p:I

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rz;->i:Lcom/yandex/mobile/ads/impl/rs;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/rs;->a(Ljava/lang/Object;)V

    .line 6
    :cond_1
    iget v0, p0, Lcom/yandex/mobile/ads/impl/rz;->p:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/yandex/mobile/ads/impl/rz;->p:I

    if-ne v0, v1, :cond_3

    .line 7
    iget p1, p0, Lcom/yandex/mobile/ads/impl/rz;->o:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 8
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ExoPlayer:DrmRequestHandler"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/rz;->q:Landroid/os/HandlerThread;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 10
    new-instance p1, Lcom/yandex/mobile/ads/impl/rz$c;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rz;->q:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/yandex/mobile/ads/impl/rz$c;-><init>(Lcom/yandex/mobile/ads/impl/rz;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/rz;->r:Lcom/yandex/mobile/ads/impl/rz$c;

    .line 11
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/rz;->c()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    invoke-direct {p0, v1}, Lcom/yandex/mobile/ads/impl/rz;->a(Z)V

    goto :goto_0

    .line 13
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_3
    if-eqz p1, :cond_4

    .line 14
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/rz;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rz;->i:Lcom/yandex/mobile/ads/impl/rs;

    .line 15
    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/rs;->b(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 16
    iget v0, p0, Lcom/yandex/mobile/ads/impl/rz;->o:I

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/h40$a;->a(I)V

    .line 17
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/rz;->d:Lcom/yandex/mobile/ads/impl/rz$b;

    check-cast p1, Lcom/yandex/mobile/ads/impl/sz$g;

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/sz$g;->b(Lcom/yandex/mobile/ads/impl/rz;)V

    return-void
.end method

.method public final d()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rz;->b:Lcom/yandex/mobile/ads/impl/l60;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/l60;->a()Lcom/yandex/mobile/ads/impl/l60$d;

    move-result-object v7

    iput-object v7, p0, Lcom/yandex/mobile/ads/impl/rz;->x:Lcom/yandex/mobile/ads/impl/l60$d;

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rz;->r:Lcom/yandex/mobile/ads/impl/rz$c;

    sget v0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    .line 4
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v0, Lcom/yandex/mobile/ads/impl/rz$d;

    .line 7
    invoke-static {}, Lcom/yandex/mobile/ads/impl/es0;->a()J

    move-result-wide v2

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const/4 v4, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/rz$d;-><init>(JZJLjava/lang/Object;)V

    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final getCryptoConfig()Lcom/yandex/mobile/ads/impl/fv;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rz;->s:Lcom/yandex/mobile/ads/impl/fv;

    return-object p0
.end method

.method public final getError()Lcom/yandex/mobile/ads/impl/g40$a;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/yandex/mobile/ads/impl/rz;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rz;->t:Lcom/yandex/mobile/ads/impl/g40$a;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getSchemeUuid()Ljava/util/UUID;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rz;->m:Ljava/util/UUID;

    return-object p0
.end method

.method public final getState()I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/rz;->o:I

    return p0
.end method

.method public final playClearSamplesWithoutKeys()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/rz;->f:Z

    return p0
.end method

.method public final queryKeyStatus()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rz;->u:[B

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rz;->b:Lcom/yandex/mobile/ads/impl/l60;

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/l60;->a([B)Ljava/util/Map;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final requiresSecureDecoder(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/rz;->b:Lcom/yandex/mobile/ads/impl/l60;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rz;->u:[B

    if-eqz p0, :cond_0

    invoke-interface {v0, p1, p0}, Lcom/yandex/mobile/ads/impl/l60;->a(Ljava/lang/String;[B)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
