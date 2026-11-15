.class public Lcom/hunantv/imgo/data/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/imgo/data/b$a;
    }
.end annotation


# static fields
.field private static R:Ljava/text/SimpleDateFormat;


# instance fields
.field private A:I

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:I

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:I

.field private S:Ljava/lang/String;

.field private T:Z

.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/hunantv/imgo/data/b;->R:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->c:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/f;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/data/b;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->m:Ljava/lang/String;

    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->n:Ljava/lang/String;

    const-string v0, "\'"

    iput-object v0, p0, Lcom/hunantv/imgo/data/b;->r:Ljava/lang/String;

    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->u:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/data/b;->w:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/data/b;->x:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/imgo/data/b;->A:I

    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->E:Ljava/lang/String;

    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->F:Ljava/lang/String;

    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->G:Ljava/lang/String;

    const-string v1, "pvs"

    invoke-virtual {p0, v1}, Lcom/hunantv/imgo/data/b;->m(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->K()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hunantv/imgo/data/b;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hunantv/imgo/data/b;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/util/p;->d()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/hunantv/imgo/data/b;->b(I)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hunantv/imgo/data/b;->h(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hunantv/imgo/data/b;->i(Ljava/lang/String;)V

    const-string v1, "PREF_GPS_MSG"

    invoke-static {v1, p1}, Lcom/hunantv/imgo/util/PreferencesUtil;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hunantv/imgo/data/b;->j(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hunantv/imgo/data/b;->k(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hunantv/imgo/data/b;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hunantv/imgo/data/b;->f(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hunantv/imgo/data/b;->g(Ljava/lang/String;)V

    sget-object v1, Lcom/hunantv/imgo/data/b;->R:Ljava/text/SimpleDateFormat;

    invoke-static {v1}, Lcom/hunantv/imgo/util/f;->a(Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hunantv/imgo/data/b;->b(Ljava/lang/String;)V

    const-string v1, "TAG_D"

    invoke-static {v1, v0}, Lcom/hunantv/imgo/util/PreferencesUtil;->b(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/b;->c(I)V

    invoke-static {}, Lcom/hunantv/imgo/data/a;->a()Lcom/hunantv/imgo/data/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/imgo/data/a;->b()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/b;->a(I)V

    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v0

    iget-object v0, v0, Lcom/hunantv/imgo/b/c;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/b;->F(Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/imgo/b/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/b;->C(Ljava/lang/String;)V

    const-string v0, "pref_key_rdc"

    invoke-static {v0, p1}, Lcom/hunantv/imgo/util/PreferencesUtil;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hunantv/imgo/data/b;->D(Ljava/lang/String;)V

    const-string v0, "pref_key_rch"

    invoke-static {v0, p1}, Lcom/hunantv/imgo/util/PreferencesUtil;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/data/b;->E(Ljava/lang/String;)V

    const-string p1, "27.1.2"

    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/data/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private J(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->y:Ljava/lang/String;

    return-void
.end method

.method public B(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->G:Ljava/lang/String;

    return-void
.end method

.method public C(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->a:Ljava/lang/String;

    return-void
.end method

.method public D(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->l:Ljava/lang/String;

    return-void
.end method

.method public E(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->z:Ljava/lang/String;

    return-void
.end method

.method public F(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->j:Ljava/lang/String;

    return-void
.end method

.method public G(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->P:Ljava/lang/String;

    return-void
.end method

.method public H(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->C:Ljava/lang/String;

    return-void
.end method

.method public I(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->S:Ljava/lang/String;

    return-void
.end method

.method public a(Landroid/content/Context;)Lcom/hunantv/imgo/net/RequestParams;
    .locals 24

    move-object/from16 v0, p0

    .line 5
    new-instance v1, Lcom/hunantv/imgo/net/RequestParams;

    invoke-direct {v1}, Lcom/hunantv/imgo/net/RequestParams;-><init>()V

    .line 6
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pvs  getRequestParams cpn "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/hunantv/imgo/data/b;->u:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isNewPv = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/hunantv/imgo/data/b;->T:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7
    iget-boolean v2, v0, Lcom/hunantv/imgo/data/b;->T:Z

    const-string v3, "oaid"

    const-string v4, "pt"

    const-string v5, "src"

    const-string v6, "$channel"

    const-string v7, "runsid"

    const-string v8, "abroad"

    const-string v9, "rch"

    const-string v10, "rdc"

    const-string v11, "uvip"

    const-string v12, "ch"

    const-string v13, "gps"

    const-string v14, "sver"

    const-string v15, "mf"

    move-object/from16 p1, v3

    const-string v3, "net"

    move-object/from16 v16, v4

    const-string v4, "uuid"

    move-object/from16 v17, v5

    const-string v5, "did"

    move-object/from16 v18, v6

    const-string v6, "time"

    move-object/from16 v19, v7

    const-string v7, "bid"

    if-eqz v2, :cond_0

    .line 8
    const-string v2, "logtype"

    move-object/from16 v20, v8

    const-string v8, "pv"

    invoke-virtual {v1, v2, v8}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-string v2, "30.1.2"

    invoke-virtual {v1, v7, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v2, v0, Lcom/hunantv/imgo/data/b;->u:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "cntp"

    invoke-virtual {v1, v7, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v2, v0, Lcom/hunantv/imgo/data/b;->F:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "lastp"

    invoke-virtual {v1, v7, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v2, Lcom/hunantv/imgo/data/b$a;

    invoke-direct {v2}, Lcom/hunantv/imgo/data/b$a;-><init>()V

    .line 13
    iget-object v7, v0, Lcom/hunantv/imgo/data/b;->r:Ljava/lang/String;

    invoke-direct {v0, v7}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/hunantv/imgo/data/b$a;->a:Ljava/lang/String;

    .line 14
    iget-object v7, v0, Lcom/hunantv/imgo/data/b;->E:Ljava/lang/String;

    invoke-direct {v0, v7}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/hunantv/imgo/data/b$a;->b:Ljava/lang/String;

    .line 15
    const-string v7, ""

    iput-object v7, v2, Lcom/hunantv/imgo/data/b$a;->c:Ljava/lang/String;

    .line 16
    iget-object v7, v0, Lcom/hunantv/imgo/data/b;->o:Ljava/lang/String;

    iput-object v7, v2, Lcom/hunantv/imgo/data/b$a;->d:Ljava/lang/String;

    .line 17
    iget-object v7, v0, Lcom/hunantv/imgo/data/b;->v:Ljava/lang/String;

    iput-object v7, v2, Lcom/hunantv/imgo/data/b$a;->e:Ljava/lang/String;

    .line 18
    iget-object v7, v0, Lcom/hunantv/imgo/data/b;->D:Ljava/lang/String;

    iput-object v7, v2, Lcom/hunantv/imgo/data/b$a;->f:Ljava/lang/String;

    .line 19
    iget-object v7, v0, Lcom/hunantv/imgo/data/b;->s:Ljava/lang/String;

    iput-object v7, v2, Lcom/hunantv/imgo/data/b$a;->g:Ljava/lang/String;

    .line 20
    iget-object v7, v0, Lcom/hunantv/imgo/data/b;->y:Ljava/lang/String;

    iput-object v7, v2, Lcom/hunantv/imgo/data/b$a;->h:Ljava/lang/String;

    .line 21
    iget-object v7, v0, Lcom/hunantv/imgo/data/b;->B:Ljava/lang/String;

    iput-object v7, v2, Lcom/hunantv/imgo/data/b$a;->i:Ljava/lang/String;

    .line 22
    iget-object v7, v0, Lcom/hunantv/imgo/data/b;->N:Ljava/lang/String;

    iput-object v7, v2, Lcom/hunantv/imgo/data/b$a;->j:Ljava/lang/String;

    .line 23
    iget-object v7, v0, Lcom/hunantv/imgo/data/b;->P:Ljava/lang/String;

    invoke-direct {v0, v7}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/hunantv/imgo/data/b$a;->k:Ljava/lang/String;

    .line 24
    iget-object v7, v0, Lcom/hunantv/imgo/data/b;->m:Ljava/lang/String;

    invoke-direct {v0, v7}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/hunantv/imgo/data/b$a;->l:Ljava/lang/String;

    .line 25
    iget-object v7, v0, Lcom/hunantv/imgo/data/b;->i:Ljava/lang/String;

    iput-object v7, v2, Lcom/hunantv/imgo/data/b$a;->m:Ljava/lang/String;

    .line 26
    iget-object v7, v0, Lcom/hunantv/imgo/data/b;->c:Ljava/lang/String;

    iput-object v7, v2, Lcom/hunantv/imgo/data/b$a;->n:Ljava/lang/String;

    .line 27
    iget-object v7, v0, Lcom/hunantv/imgo/data/b;->C:Ljava/lang/String;

    invoke-direct {v0, v7}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/hunantv/imgo/data/b$a;->o:Ljava/lang/String;

    .line 28
    iget-object v7, v0, Lcom/hunantv/imgo/data/b;->S:Ljava/lang/String;

    iput-object v7, v2, Lcom/hunantv/imgo/data/b$a;->p:Ljava/lang/String;

    .line 29
    iget-object v7, v0, Lcom/hunantv/imgo/data/b;->j:Ljava/lang/String;

    invoke-direct {v0, v7}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/hunantv/imgo/data/b$a;->q:Ljava/lang/String;

    .line 30
    iget-object v7, v0, Lcom/hunantv/imgo/data/b;->k:Ljava/lang/String;

    invoke-direct {v0, v7}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/hunantv/imgo/data/b$a;->r:Ljava/lang/String;

    .line 31
    iget v7, v0, Lcom/hunantv/imgo/data/b;->Q:I

    iput v7, v2, Lcom/hunantv/imgo/data/b$a;->s:I

    .line 32
    iget v7, v0, Lcom/hunantv/imgo/data/b;->f:I

    iput v7, v2, Lcom/hunantv/imgo/data/b$a;->t:I

    .line 33
    iget v7, v0, Lcom/hunantv/imgo/data/b;->b:I

    iput v7, v2, Lcom/hunantv/imgo/data/b$a;->u:I

    .line 34
    invoke-static {}, Lcom/hunantv/imgo/util/g;->a()Lcom/hunantv/imgo/util/g;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hunantv/imgo/util/g;->b()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/hunantv/imgo/data/b$a;->v:Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/hunantv/imgo/util/g;->a()Lcom/hunantv/imgo/util/g;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hunantv/imgo/util/g;->c()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/hunantv/imgo/data/b$a;->w:Ljava/lang/String;

    .line 36
    iget-object v7, v0, Lcom/hunantv/imgo/data/b;->n:Ljava/lang/String;

    invoke-direct {v0, v7}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/hunantv/imgo/data/b$a;->x:Ljava/lang/String;

    .line 37
    const-string v7, "lob"

    invoke-virtual {v2}, Lcom/hunantv/imgo/data/b$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v2, v0, Lcom/hunantv/imgo/data/b;->e:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v2, v0, Lcom/hunantv/imgo/data/b;->L:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v2, v0, Lcom/hunantv/imgo/data/b;->H:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v2, v0, Lcom/hunantv/imgo/data/b;->h:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "sessionid"

    invoke-virtual {v1, v4, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget v2, v0, Lcom/hunantv/imgo/data/b;->K:I

    invoke-virtual {v1, v3, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 43
    iget-object v2, v0, Lcom/hunantv/imgo/data/b;->w:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v15, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v2, v0, Lcom/hunantv/imgo/data/b;->x:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "model"

    invoke-virtual {v1, v3, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v2, v0, Lcom/hunantv/imgo/data/b;->J:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v2, v0, Lcom/hunantv/imgo/data/b;->I:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ver"

    invoke-virtual {v1, v3, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v2, v0, Lcom/hunantv/imgo/data/b;->q:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v13, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v2, v0, Lcom/hunantv/imgo/data/b;->d:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget v2, v0, Lcom/hunantv/imgo/data/b;->p:I

    invoke-virtual {v1, v11, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 50
    iget-object v2, v0, Lcom/hunantv/imgo/data/b;->l:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v2, v0, Lcom/hunantv/imgo/data/b;->z:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/hunantv/imgo/b/a;->a()I

    move-result v2

    move-object/from16 v8, v20

    invoke-virtual {v1, v8, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 53
    iget-object v2, v0, Lcom/hunantv/imgo/data/b;->G:Ljava/lang/String;

    move-object/from16 v3, v19

    invoke-virtual {v1, v3, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/hunantv/imgo/util/b;->T()Z

    move-result v2

    const-string v3, "p2p"

    invoke-virtual {v1, v3, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 55
    invoke-static {}, Lcom/hunantv/imgo/util/b;->z()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v18

    invoke-virtual {v1, v3, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/hunantv/imgo/util/b;->O()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v17

    invoke-virtual {v1, v3, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, v0, Lcom/hunantv/imgo/data/b;->y:Ljava/lang/String;

    move-object/from16 v2, v16

    invoke-virtual {v1, v2, v0}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/hunantv/imgo/util/b;->U()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p1

    invoke-virtual {v1, v2, v0}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    move-object/from16 v21, p1

    move-object/from16 p1, v7

    move-object/from16 v2, v16

    move-object/from16 v22, v17

    move-object/from16 v23, v18

    move-object/from16 v7, v19

    move-object/from16 v16, v9

    .line 59
    iget-object v9, v0, Lcom/hunantv/imgo/data/b;->e:Ljava/lang/String;

    invoke-direct {v0, v9}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v6, v9}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v6, v0, Lcom/hunantv/imgo/data/b;->M:Ljava/lang/String;

    invoke-direct {v0, v6}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "guid"

    invoke-virtual {v1, v9, v6}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v6, v0, Lcom/hunantv/imgo/data/b;->L:Ljava/lang/String;

    invoke-direct {v0, v6}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v5, v0, Lcom/hunantv/imgo/data/b;->H:Ljava/lang/String;

    invoke-direct {v0, v5}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget v4, v0, Lcom/hunantv/imgo/data/b;->K:I

    invoke-virtual {v1, v3, v4}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 64
    const-string v3, "TAG_D"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/hunantv/imgo/util/PreferencesUtil;->b(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "isdebug"

    invoke-virtual {v1, v4, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 65
    iget-object v3, v0, Lcom/hunantv/imgo/data/b;->w:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v15, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v3, v0, Lcom/hunantv/imgo/data/b;->x:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mod"

    invoke-virtual {v1, v4, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v3, v0, Lcom/hunantv/imgo/data/b;->J:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v14, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v3, v0, Lcom/hunantv/imgo/data/b;->I:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "aver"

    invoke-virtual {v1, v4, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v3, v0, Lcom/hunantv/imgo/data/b;->q:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v13, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v3, v0, Lcom/hunantv/imgo/data/b;->d:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v12, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v3, v0, Lcom/hunantv/imgo/data/b;->g:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "act"

    invoke-virtual {v1, v4, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v3, v0, Lcom/hunantv/imgo/data/b;->h:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sid"

    invoke-virtual {v1, v4, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v3, v0, Lcom/hunantv/imgo/data/b;->F:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "fpn"

    invoke-virtual {v1, v4, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v3, v0, Lcom/hunantv/imgo/data/b;->E:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "fpid"

    invoke-virtual {v1, v4, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v3, v0, Lcom/hunantv/imgo/data/b;->u:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cpn"

    invoke-virtual {v1, v4, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v3, v0, Lcom/hunantv/imgo/data/b;->r:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cpid"

    invoke-virtual {v1, v4, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v3, v0, Lcom/hunantv/imgo/data/b;->n:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cid"

    invoke-virtual {v1, v4, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v3, v0, Lcom/hunantv/imgo/data/b;->m:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "plid"

    invoke-virtual {v1, v4, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v3, "fpa"

    iget-object v4, v0, Lcom/hunantv/imgo/data/b;->N:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v3, "cma"

    iget-object v4, v0, Lcom/hunantv/imgo/data/b;->t:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v3, "ftl"

    iget-object v4, v0, Lcom/hunantv/imgo/data/b;->D:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v3, "ctl"

    iget-object v4, v0, Lcom/hunantv/imgo/data/b;->s:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v3, "fpt"

    iget-object v4, v0, Lcom/hunantv/imgo/data/b;->B:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v3, v0, Lcom/hunantv/imgo/data/b;->y:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v2, "bdid"

    iget-object v3, v0, Lcom/hunantv/imgo/data/b;->o:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v2, "bsid"

    iget-object v3, v0, Lcom/hunantv/imgo/data/b;->v:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v2, v0, Lcom/hunantv/imgo/data/b;->G:Ljava/lang/String;

    invoke-virtual {v1, v7, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v2, "idfa"

    iget-object v3, v0, Lcom/hunantv/imgo/data/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget v2, v0, Lcom/hunantv/imgo/data/b;->p:I

    invoke-virtual {v1, v11, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 90
    iget-object v2, v0, Lcom/hunantv/imgo/data/b;->j:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "stid"

    invoke-virtual {v1, v3, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/hunantv/imgo/b/a;->a()I

    move-result v2

    invoke-virtual {v1, v8, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 92
    iget-object v2, v0, Lcom/hunantv/imgo/data/b;->k:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "spid"

    invoke-virtual {v1, v3, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v2, v0, Lcom/hunantv/imgo/data/b;->l:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v2, v0, Lcom/hunantv/imgo/data/b;->z:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v16

    invoke-virtual {v1, v3, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v2, v0, Lcom/hunantv/imgo/data/b;->C:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "datano"

    invoke-virtual {v1, v3, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v2, v0, Lcom/hunantv/imgo/data/b;->P:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/hunantv/imgo/data/b;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "refmdid"

    invoke-virtual {v1, v3, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v2, "isfull"

    iget v3, v0, Lcom/hunantv/imgo/data/b;->f:I

    invoke-virtual {v1, v2, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 98
    const-string v2, "skw"

    iget-object v3, v0, Lcom/hunantv/imgo/data/b;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v2, "auto"

    iget v3, v0, Lcom/hunantv/imgo/data/b;->b:I

    invoke-virtual {v1, v2, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 100
    const-string v2, "fsf"

    iget v3, v0, Lcom/hunantv/imgo/data/b;->Q:I

    invoke-virtual {v1, v2, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 101
    const-string v2, "abt"

    iget-object v3, v0, Lcom/hunantv/imgo/data/b;->S:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/hunantv/imgo/util/g;->a()Lcom/hunantv/imgo/util/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hunantv/imgo/util/g;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "t_imei"

    invoke-virtual {v1, v3, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/hunantv/imgo/util/g;->a()Lcom/hunantv/imgo/util/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hunantv/imgo/util/g;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "a_id"

    invoke-virtual {v1, v3, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, v0, Lcom/hunantv/imgo/data/b;->O:Ljava/lang/String;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2, v0}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/hunantv/imgo/util/b;->O()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v22

    invoke-virtual {v1, v2, v0}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/hunantv/imgo/util/b;->U()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v21

    invoke-virtual {v1, v2, v0}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/hunantv/imgo/util/b;->z()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v23

    invoke-virtual {v1, v2, v0}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method public a()Ljava/lang/String;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/hunantv/imgo/data/b;->F:Ljava/lang/String;

    return-object p0
.end method

.method public a(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/hunantv/imgo/data/b;->p:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->O:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hunantv/imgo/data/b;->T:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/hunantv/imgo/data/b;->E:Ljava/lang/String;

    return-object p0
.end method

.method public b(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/hunantv/imgo/data/b;->K:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->e:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/hunantv/imgo/data/b;->u:Ljava/lang/String;

    return-object p0
.end method

.method public c(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/hunantv/imgo/data/b;->A:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->M:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/hunantv/imgo/data/b;->r:Ljava/lang/String;

    return-object p0
.end method

.method public d(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/hunantv/imgo/data/b;->f:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->L:Ljava/lang/String;

    return-void
.end method

.method public e(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/hunantv/imgo/data/b;->b:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->H:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->w:Ljava/lang/String;

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/hunantv/imgo/data/b;->x:Ljava/lang/String;

    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->x:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->J:Ljava/lang/String;

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->I:Ljava/lang/String;

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->q:Ljava/lang/String;

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->d:Ljava/lang/String;

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->h:Ljava/lang/String;

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->g:Ljava/lang/String;

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->F:Ljava/lang/String;

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->E:Ljava/lang/String;

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->u:Ljava/lang/String;

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->r:Ljava/lang/String;

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->n:Ljava/lang/String;

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->m:Ljava/lang/String;

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->t:Ljava/lang/String;

    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->N:Ljava/lang/String;

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->o:Ljava/lang/String;

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->v:Ljava/lang/String;

    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->s:Ljava/lang/String;

    return-void
.end method

.method public y(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->B:Ljava/lang/String;

    return-void
.end method

.method public z(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/data/b;->D:Ljava/lang/String;

    return-void
.end method
