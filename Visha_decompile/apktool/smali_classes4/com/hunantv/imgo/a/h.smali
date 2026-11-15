.class public Lcom/hunantv/imgo/a/h;
.super Lcom/hunantv/imgo/a/b;
.source "SourceFile"


# static fields
.field private static volatile e:Lcom/hunantv/imgo/a/h;


# instance fields
.field private d:Lcom/hunantv/imgo/b/c;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/imgo/a/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/hunantv/imgo/a/b;->c:Landroid/content/Context;

    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/imgo/a/h;->d:Lcom/hunantv/imgo/b/c;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/hunantv/imgo/a/h;
    .locals 2

    .line 1
    sget-object v0, Lcom/hunantv/imgo/a/h;->e:Lcom/hunantv/imgo/a/h;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/hunantv/imgo/a/h;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/hunantv/imgo/a/h;->e:Lcom/hunantv/imgo/a/h;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/hunantv/imgo/a/h;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/hunantv/imgo/a/h;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/hunantv/imgo/a/h;->e:Lcom/hunantv/imgo/a/h;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_2
    sget-object p0, Lcom/hunantv/imgo/a/h;->e:Lcom/hunantv/imgo/a/h;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 94
    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method private a(Lcom/hunantv/imgo/data/b;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-virtual {p1}, Lcom/hunantv/imgo/data/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "40"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v0

    iget-object v0, v0, Lcom/hunantv/imgo/b/c;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v0

    iget-object v0, v0, Lcom/hunantv/imgo/b/c;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/hunantv/imgo/data/b;->u(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/hunantv/imgo/a/h;->d:Lcom/hunantv/imgo/b/c;

    const-string v1, ""

    iput-object v1, v0, Lcom/hunantv/imgo/b/c;->m:Ljava/lang/String;

    .line 79
    :cond_1
    invoke-virtual {p1}, Lcom/hunantv/imgo/data/b;->c()Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Lcom/hunantv/imgo/data/b;->d()Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Lcom/hunantv/imgo/data/b;->a()Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Lcom/hunantv/imgo/data/b;->b()Ljava/lang/String;

    .line 83
    invoke-static {}, Lcom/hunantv/imgo/a/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hunantv/imgo/data/b;->l(Ljava/lang/String;)V

    .line 84
    invoke-direct {p0}, Lcom/hunantv/imgo/a/h;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hunantv/imgo/data/b;->I(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/hunantv/imgo/a/b;->c:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/hunantv/imgo/data/b;->a(Landroid/content/Context;)Lcom/hunantv/imgo/net/RequestParams;

    move-result-object p1

    .line 86
    iget-object v0, p0, Lcom/hunantv/imgo/a/b;->a:Lcom/hunantv/imgo/report/d;

    invoke-virtual {p0}, Lcom/hunantv/imgo/a/h;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/hunantv/imgo/net/RequestParams;->toJson()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/hunantv/imgo/report/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/report/a;)V

    return-void
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v0

    iget-object v0, v0, Lcom/hunantv/imgo/b/c;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/hunantv/imgo/util/u;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v1

    iput-object v0, v1, Lcom/hunantv/imgo/b/c;->h:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v0

    iget-object v0, v0, Lcom/hunantv/imgo/b/c;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/hunantv/imgo/util/u;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v1

    iput-object v0, v1, Lcom/hunantv/imgo/b/c;->g:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object p0

    iget-object p0, p0, Lcom/hunantv/imgo/b/c;->q:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, ""

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object p0

    iget-object p0, p0, Lcom/hunantv/imgo/b/c;->r:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    move-object p0, v0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v1

    iget-object v1, v1, Lcom/hunantv/imgo/b/c;->q:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v1

    iget-object v1, v1, Lcom/hunantv/imgo/b/c;->r:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v1

    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v2

    iget-object v2, v2, Lcom/hunantv/imgo/b/c;->r:Ljava/lang/String;

    iput-object v2, v1, Lcom/hunantv/imgo/b/c;->q:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v1

    iput-object v0, v1, Lcom/hunantv/imgo/b/c;->r:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/hunantv/imgo/a/h;->d:Lcom/hunantv/imgo/b/c;

    const-string v1, ""

    iput-object v1, v0, Lcom/hunantv/imgo/b/c;->i:Ljava/lang/String;

    .line 88
    iput-object v1, v0, Lcom/hunantv/imgo/b/c;->k:Ljava/lang/String;

    .line 89
    iput-object v1, v0, Lcom/hunantv/imgo/b/c;->t:Ljava/lang/String;

    .line 90
    iput-object v1, v0, Lcom/hunantv/imgo/b/c;->s:Ljava/lang/String;

    .line 91
    iput-object v1, v0, Lcom/hunantv/imgo/b/c;->w:Ljava/lang/String;

    .line 92
    iget-object v0, v0, Lcom/hunantv/imgo/b/c;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object p0, p0, Lcom/hunantv/imgo/a/h;->d:Lcom/hunantv/imgo/b/c;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/b/c;->h:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 52
    new-instance v0, Lcom/hunantv/imgo/data/b;

    iget-object v1, p0, Lcom/hunantv/imgo/a/b;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/hunantv/imgo/data/b;-><init>(Landroid/content/Context;)V

    .line 53
    iget-object v1, p0, Lcom/hunantv/imgo/a/b;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/data/b;->a(Landroid/content/Context;)Lcom/hunantv/imgo/net/RequestParams;

    move-result-object v0

    .line 54
    const-string v1, "sid"

    invoke-static {}, Lcom/hunantv/imgo/a/h;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v1, "fpn"

    invoke-virtual {v0, v1, p5}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string p5, "fpid"

    invoke-virtual {v0, p5, p6}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string p5, "cpn"

    invoke-direct {p0, p1}, Lcom/hunantv/imgo/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {v0, p5, p6}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string p5, "cpid"

    invoke-direct {p0, p2}, Lcom/hunantv/imgo/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {v0, p5, p6}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string p5, "cid"

    const-string p6, ""

    invoke-virtual {v0, p5, p6}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string p5, "plid"

    invoke-virtual {v0, p5, p6}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string p5, "fpa"

    invoke-virtual {v0, p5, p4}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string p4, "cma"

    invoke-virtual {v0, p4, p6}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object p4, p0, Lcom/hunantv/imgo/a/h;->d:Lcom/hunantv/imgo/b/c;

    iget-object p4, p4, Lcom/hunantv/imgo/b/c;->c:Ljava/lang/String;

    const-string p5, "ftl"

    invoke-virtual {v0, p5, p4}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object p4, p0, Lcom/hunantv/imgo/a/h;->d:Lcom/hunantv/imgo/b/c;

    iget-object p4, p4, Lcom/hunantv/imgo/b/c;->d:Ljava/lang/String;

    const-string p5, "ctl"

    invoke-virtual {v0, p5, p4}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object p4, p0, Lcom/hunantv/imgo/a/h;->d:Lcom/hunantv/imgo/b/c;

    iget-object p4, p4, Lcom/hunantv/imgo/b/c;->b:Ljava/lang/String;

    const-string p5, "fpt"

    invoke-virtual {v0, p5, p4}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string p4, "pt"

    invoke-virtual {v0, p4, p3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string p3, "bdid"

    invoke-virtual {v0, p3, p6}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string p3, "bsid"

    invoke-virtual {v0, p3, p6}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string p3, "runsid"

    invoke-static {}, Lcom/hunantv/imgo/a/h;->f()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p3, p4}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string p3, "abt"

    invoke-direct {p0}, Lcom/hunantv/imgo/a/h;->g()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p3, p4}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object p3, p0, Lcom/hunantv/imgo/a/b;->a:Lcom/hunantv/imgo/report/d;

    invoke-virtual {p0}, Lcom/hunantv/imgo/a/h;->b()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0}, Lcom/hunantv/imgo/net/RequestParams;->toJson()Ljava/lang/String;

    move-result-object p5

    const/4 p6, 0x0

    invoke-virtual {p3, p4, p5, p6}, Lcom/hunantv/imgo/report/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/report/a;)V

    .line 72
    iget-object p0, p0, Lcom/hunantv/imgo/a/h;->d:Lcom/hunantv/imgo/b/c;

    iget-object p3, p0, Lcom/hunantv/imgo/b/c;->i:Ljava/lang/String;

    iput-object p3, p0, Lcom/hunantv/imgo/b/c;->t:Ljava/lang/String;

    .line 73
    iget-object p3, p0, Lcom/hunantv/imgo/b/c;->k:Ljava/lang/String;

    iput-object p3, p0, Lcom/hunantv/imgo/b/c;->s:Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/hunantv/imgo/b/c;->i:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/hunantv/imgo/b/c;->k:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 15

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    .line 51
    invoke-virtual/range {v0 .. v14}, Lcom/hunantv/imgo/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 14

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move/from16 v6, p14

    .line 7
    const-string v7, ""

    iget-object v0, v1, Lcom/hunantv/imgo/a/h;->d:Lcom/hunantv/imgo/b/c;

    iget-object v8, v0, Lcom/hunantv/imgo/b/c;->i:Ljava/lang/String;

    .line 8
    iget-object v9, v0, Lcom/hunantv/imgo/b/c;->k:Ljava/lang/String;

    .line 9
    iget-object v10, v0, Lcom/hunantv/imgo/b/c;->c:Ljava/lang/String;

    .line 10
    iget-object v0, v0, Lcom/hunantv/imgo/b/c;->b:Ljava/lang/String;

    .line 11
    :try_start_0
    invoke-static {}, Lcom/hunantv/imgo/a/h;->f()Ljava/lang/String;

    move-result-object v11

    .line 12
    new-instance v12, Lcom/hunantv/imgo/data/b;

    iget-object v13, v1, Lcom/hunantv/imgo/a/b;->c:Landroid/content/Context;

    invoke-direct {v12, v13}, Lcom/hunantv/imgo/data/b;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-virtual {v12, v8}, Lcom/hunantv/imgo/data/b;->n(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v12, v9}, Lcom/hunantv/imgo/data/b;->o(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v12, p1}, Lcom/hunantv/imgo/data/b;->p(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v12, v3}, Lcom/hunantv/imgo/data/b;->q(Ljava/lang/String;)V

    move-object/from16 v8, p3

    .line 17
    invoke-virtual {v12, v8}, Lcom/hunantv/imgo/data/b;->r(Ljava/lang/String;)V

    move-object/from16 v8, p4

    .line 18
    invoke-virtual {v12, v8}, Lcom/hunantv/imgo/data/b;->s(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v12, v11}, Lcom/hunantv/imgo/data/b;->B(Ljava/lang/String;)V

    move-object/from16 v8, p5

    .line 20
    invoke-virtual {v12, v8}, Lcom/hunantv/imgo/data/b;->u(Ljava/lang/String;)V

    move-object/from16 v8, p6

    .line 21
    invoke-virtual {v12, v8}, Lcom/hunantv/imgo/data/b;->t(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v12, v10}, Lcom/hunantv/imgo/data/b;->z(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v12, v4}, Lcom/hunantv/imgo/data/b;->x(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v12, v0}, Lcom/hunantv/imgo/data/b;->y(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v12, v5}, Lcom/hunantv/imgo/data/b;->A(Ljava/lang/String;)V

    move-object/from16 v0, p9

    .line 26
    invoke-virtual {v12, v0}, Lcom/hunantv/imgo/data/b;->v(Ljava/lang/String;)V

    move-object/from16 v0, p10

    .line 27
    invoke-virtual {v12, v0}, Lcom/hunantv/imgo/data/b;->w(Ljava/lang/String;)V

    move-object/from16 v0, p11

    .line 28
    invoke-virtual {v12, v0}, Lcom/hunantv/imgo/data/b;->H(Ljava/lang/String;)V

    move/from16 v0, p12

    .line 29
    invoke-virtual {v12, v0}, Lcom/hunantv/imgo/data/b;->d(I)V

    move/from16 v0, p13

    .line 30
    invoke-virtual {v12, v0}, Lcom/hunantv/imgo/data/b;->e(I)V

    .line 31
    iget-object v0, v1, Lcom/hunantv/imgo/a/h;->d:Lcom/hunantv/imgo/b/c;

    iget-object v0, v0, Lcom/hunantv/imgo/b/c;->v:Ljava/lang/String;

    invoke-virtual {v12, v0}, Lcom/hunantv/imgo/data/b;->G(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v12, v6}, Lcom/hunantv/imgo/data/b;->a(Z)V

    .line 33
    invoke-direct {p0, v12}, Lcom/hunantv/imgo/a/h;->a(Lcom/hunantv/imgo/data/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    .line 34
    iget-object v0, v1, Lcom/hunantv/imgo/a/h;->d:Lcom/hunantv/imgo/b/c;

    iget-object v1, v0, Lcom/hunantv/imgo/b/c;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/hunantv/imgo/b/c;->t:Ljava/lang/String;

    .line 35
    iget-object v1, v0, Lcom/hunantv/imgo/b/c;->k:Ljava/lang/String;

    iput-object v1, v0, Lcom/hunantv/imgo/b/c;->s:Ljava/lang/String;

    .line 36
    iput-object v2, v0, Lcom/hunantv/imgo/b/c;->i:Ljava/lang/String;

    .line 37
    iput-object v3, v0, Lcom/hunantv/imgo/b/c;->k:Ljava/lang/String;

    .line 38
    iput-object v5, v0, Lcom/hunantv/imgo/b/c;->b:Ljava/lang/String;

    .line 39
    iput-object v10, v0, Lcom/hunantv/imgo/b/c;->e:Ljava/lang/String;

    .line 40
    iput-object v4, v0, Lcom/hunantv/imgo/b/c;->c:Ljava/lang/String;

    .line 41
    iput-object v7, v0, Lcom/hunantv/imgo/b/c;->v:Ljava/lang/String;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 42
    iget-object v1, v1, Lcom/hunantv/imgo/a/h;->d:Lcom/hunantv/imgo/b/c;

    iget-object v6, v1, Lcom/hunantv/imgo/b/c;->i:Ljava/lang/String;

    iput-object v6, v1, Lcom/hunantv/imgo/b/c;->t:Ljava/lang/String;

    .line 43
    iget-object v6, v1, Lcom/hunantv/imgo/b/c;->k:Ljava/lang/String;

    iput-object v6, v1, Lcom/hunantv/imgo/b/c;->s:Ljava/lang/String;

    .line 44
    iput-object v2, v1, Lcom/hunantv/imgo/b/c;->i:Ljava/lang/String;

    .line 45
    iput-object v3, v1, Lcom/hunantv/imgo/b/c;->k:Ljava/lang/String;

    .line 46
    iput-object v5, v1, Lcom/hunantv/imgo/b/c;->b:Ljava/lang/String;

    .line 47
    iput-object v10, v1, Lcom/hunantv/imgo/b/c;->e:Ljava/lang/String;

    .line 48
    iput-object v4, v1, Lcom/hunantv/imgo/b/c;->c:Ljava/lang/String;

    .line 49
    iput-object v7, v1, Lcom/hunantv/imgo/b/c;->v:Ljava/lang/String;

    .line 50
    :cond_1
    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/hunantv/imgo/report/c;->m()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public c()V
    .locals 1

    invoke-static {}, Lcom/hunantv/imgo/report/d;->a()Lcom/hunantv/imgo/report/d;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/a/b;->a:Lcom/hunantv/imgo/report/d;

    return-void
.end method

.method public d()V
    .locals 1

    iget-object p0, p0, Lcom/hunantv/imgo/a/h;->d:Lcom/hunantv/imgo/b/c;

    const-string v0, ""

    iput-object v0, p0, Lcom/hunantv/imgo/b/c;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/imgo/b/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/hunantv/imgo/b/c;->c:Ljava/lang/String;

    return-void
.end method
