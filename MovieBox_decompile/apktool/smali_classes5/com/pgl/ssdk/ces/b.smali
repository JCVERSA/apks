.class public Lcom/pgl/ssdk/ces/b;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static volatile a:Lcom/pgl/ssdk/ces/b; = null

.field private static b:Z = false

.field private static c:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static d:I = 0x1

.field private static e:Lcom/pgl/ssdk/t0$a;


# instance fields
.field public f:Z

.field public g:Landroid/content/Context;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Z

.field public p:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/pgl/ssdk/ces/b;->f:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/pgl/ssdk/ces/b;->k:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v1, p0, Lcom/pgl/ssdk/ces/b;->l:Ljava/lang/String;

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/pgl/ssdk/ces/b;->m:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/pgl/ssdk/ces/b;->o:Z

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    iput v0, p0, Lcom/pgl/ssdk/ces/b;->p:I

    .line 18
    .line 19
    iput-object p1, p0, Lcom/pgl/ssdk/ces/b;->g:Landroid/content/Context;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/pgl/ssdk/ces/b;->h:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)Lcom/pgl/ssdk/ces/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/pgl/ssdk/ces/b;->a:Lcom/pgl/ssdk/ces/b;

    if-nez v0, :cond_4

    .line 2
    const-class v0, Lcom/pgl/ssdk/ces/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/pgl/ssdk/ces/b;->a:Lcom/pgl/ssdk/ces/b;

    if-nez v1, :cond_3

    if-nez p0, :cond_0

    .line 4
    invoke-static {}, Lcom/pgl/ssdk/z;->a()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    if-nez p0, :cond_1

    const/4 p0, 0x4

    .line 5
    sput p0, Lcom/pgl/ssdk/ces/b;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    return-object v1

    .line 7
    :cond_1
    :try_start_1
    invoke-static {p2}, Lcom/pgl/ssdk/ces/b;->a(I)V

    const-string p2, "nms"

    .line 8
    invoke-static {p0, p2}, Lcom/pgl/ssdk/t0;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/pgl/ssdk/t0$a;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 9
    iget p0, p2, Lcom/pgl/ssdk/t0$a;->a:I

    sput p0, Lcom/pgl/ssdk/ces/b;->d:I

    .line 10
    sput-object p2, Lcom/pgl/ssdk/ces/b;->e:Lcom/pgl/ssdk/t0$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    monitor-exit v0

    return-object v1

    .line 12
    :cond_2
    :try_start_2
    new-instance p2, Lcom/pgl/ssdk/ces/b;

    invoke-direct {p2, p0, p1}, Lcom/pgl/ssdk/ces/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    sput-object p2, Lcom/pgl/ssdk/ces/b;->a:Lcom/pgl/ssdk/ces/b;

    iput p3, p2, Lcom/pgl/ssdk/ces/b;->i:I

    .line 14
    sget-object p1, Lcom/pgl/ssdk/ces/b;->a:Lcom/pgl/ssdk/ces/b;

    iput-object p4, p1, Lcom/pgl/ssdk/ces/b;->j:Ljava/lang/String;

    .line 15
    sget-object p1, Lcom/pgl/ssdk/ces/b;->a:Lcom/pgl/ssdk/ces/b;

    invoke-direct {p1, p0}, Lcom/pgl/ssdk/ces/b;->b(Landroid/content/Context;)V

    .line 16
    sget-object p1, Lcom/pgl/ssdk/ces/b;->a:Lcom/pgl/ssdk/ces/b;

    invoke-static {p0}, Lcom/pgl/ssdk/ces/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/pgl/ssdk/ces/b;->d(Ljava/lang/String;)V

    .line 17
    invoke-static {p0}, Lcom/pgl/ssdk/x;->c(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 18
    sput p0, Lcom/pgl/ssdk/ces/b;->d:I

    .line 19
    new-instance p0, Lcom/pgl/ssdk/ces/b$a;

    invoke-direct {p0}, Lcom/pgl/ssdk/ces/b$a;-><init>()V

    invoke-static {p0}, Lcom/pgl/ssdk/o0;->b(Ljava/lang/Runnable;)V

    .line 20
    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    .line 21
    :cond_4
    :goto_2
    sget-object p0, Lcom/pgl/ssdk/ces/b;->a:Lcom/pgl/ssdk/ces/b;

    return-object p0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 22
    const-string v0, "iid"

    invoke-static {p0, v0}, Lcom/pgl/ssdk/u0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 24
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {p0, v0, v1}, Lcom/pgl/ssdk/u0;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 115
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 116
    check-cast p1, Ljava/lang/String;

    const-string v0, "Start"

    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/pgl/ssdk/ces/b;->c:Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 118
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    sget-object v0, Lcom/pgl/ssdk/ces/b;->c:Ljava/util/Map;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    const-string p1, "{}"

    return-object p1
.end method

.method public static a(I)V
    .locals 0

    .line 26
    invoke-static {p0}, Lcom/pgl/ssdk/k0;->a(I)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    .line 104
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 106
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 107
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 108
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 109
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x592d254

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    const v4, 0x384d5140

    if-ne v3, v4, :cond_2

    const-string v3, "report_ratio"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v5

    goto :goto_1

    :cond_1
    const-string v3, "autoctl_detect_enable"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_3

    if-ne v1, v5, :cond_0

    .line 110
    instance-of v1, v2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 111
    :try_start_1
    move-object v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    .line 112
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/pgl/ssdk/ces/b;->p:I

    goto :goto_0

    .line 113
    :cond_3
    instance-of v1, v2, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 114
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/pgl/ssdk/h0;->b:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :cond_4
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    sget-boolean v0, Lcom/pgl/ssdk/ces/b;->b:Z

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "1"

    const/4 v1, 0x0

    const/16 v2, 0x65

    .line 2
    invoke-static {v2, v1, v0}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/pgl/ssdk/ces/b;->h:Ljava/lang/String;

    const/16 v2, 0x66

    invoke-static {v2, v1, v0}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget v0, p0, Lcom/pgl/ssdk/ces/b;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x72

    invoke-static {v2, v1, v0}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/pgl/ssdk/z;->g(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x69

    invoke-static {v2, v1, v0}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/pgl/ssdk/z;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6a

    invoke-static {v2, v1, v0}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/pgl/ssdk/z;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6b

    invoke-static {v2, v1, v0}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/pgl/ssdk/z;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x6c

    invoke-static {v0, v1, p1}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/pgl/ssdk/z;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x6d

    invoke-static {v0, v1, p1}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/pgl/ssdk/z;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x6e

    invoke-static {v0, v1, p1}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object p1, p0, Lcom/pgl/ssdk/ces/b;->j:Ljava/lang/String;

    const/16 v0, 0x73

    invoke-static {v0, v1, p1}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 12
    sput-boolean p1, Lcom/pgl/ssdk/ces/b;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/pgl/ssdk/ces/b;->h()Lcom/pgl/ssdk/ces/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/pgl/ssdk/ces/b;->h()Lcom/pgl/ssdk/ces/b;

    move-result-object v0

    iget-object v0, v0, Lcom/pgl/ssdk/ces/b;->h:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/pgl/ssdk/ces/b;->h()Lcom/pgl/ssdk/ces/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/pgl/ssdk/ces/b;->h()Lcom/pgl/ssdk/ces/b;

    move-result-object v0

    iget-object v0, v0, Lcom/pgl/ssdk/ces/b;->k:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lcom/pgl/ssdk/ces/b;->n:Ljava/lang/String;

    const/16 v0, 0x68

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1, p1}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static f()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/pgl/ssdk/ces/b;->h()Lcom/pgl/ssdk/ces/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/pgl/ssdk/ces/b;->m:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, v0, Lcom/pgl/ssdk/ces/b;->l:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-object v0, v0, Lcom/pgl/ssdk/ces/b;->l:Ljava/lang/String;

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return-object v0
.end method

.method public static g()I
    .locals 1

    .line 1
    sget v0, Lcom/pgl/ssdk/ces/b;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public static h()Lcom/pgl/ssdk/ces/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/pgl/ssdk/ces/b;->a:Lcom/pgl/ssdk/ces/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public static i()Lcom/pgl/ssdk/t0$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/pgl/ssdk/ces/b;->e:Lcom/pgl/ssdk/t0$a;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/16 v0, 0x7b

    if-ne p1, v0, :cond_0

    .line 41
    iget-object p1, p0, Lcom/pgl/ssdk/ces/b;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/pgl/ssdk/d0;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x79

    if-ne p1, v0, :cond_1

    .line 42
    invoke-static {}, Lcom/pgl/ssdk/b0;->a()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x7a

    if-ne p1, v0, :cond_2

    .line 43
    invoke-static {}, Lcom/pgl/ssdk/b0;->b()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x7e

    if-ne p1, v0, :cond_3

    .line 44
    iget-object p1, p0, Lcom/pgl/ssdk/ces/b;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/pgl/ssdk/b0;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x80

    if-ne p1, v0, :cond_4

    .line 45
    iget-object p1, p0, Lcom/pgl/ssdk/ces/b;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/pgl/ssdk/b0;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x78

    if-ne p1, v0, :cond_5

    .line 46
    invoke-static {}, Lcom/pgl/ssdk/a0;->c()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x7c

    if-ne p1, v0, :cond_6

    .line 47
    iget-object p1, p0, Lcom/pgl/ssdk/ces/b;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/pgl/ssdk/e0;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x82

    if-ne p1, v0, :cond_7

    .line 48
    iget-object p1, p0, Lcom/pgl/ssdk/ces/b;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/pgl/ssdk/e0;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x91

    if-ne p1, v0, :cond_8

    .line 49
    iget-object p1, p0, Lcom/pgl/ssdk/ces/b;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/pgl/ssdk/f0;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0x7d

    if-ne p1, v0, :cond_9

    .line 50
    iget-object p1, p0, Lcom/pgl/ssdk/ces/b;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/pgl/ssdk/e0;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0x81

    if-ne p1, v0, :cond_a

    .line 51
    iget-object p1, p0, Lcom/pgl/ssdk/ces/b;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/pgl/ssdk/c0;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0x8d

    if-ne p1, v0, :cond_b

    .line 52
    iget-object p1, p0, Lcom/pgl/ssdk/ces/b;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/pgl/ssdk/c0;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0x86

    if-ne p1, v0, :cond_c

    .line 53
    iget-object p1, p0, Lcom/pgl/ssdk/ces/b;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/pgl/ssdk/h0;->a(Landroid/content/Context;)Lcom/pgl/ssdk/h0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pgl/ssdk/h0;->b()[Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0x8c

    if-ne p1, v0, :cond_d

    .line 54
    iget-object p1, p0, Lcom/pgl/ssdk/ces/b;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/pgl/ssdk/i0;->a(Landroid/content/Context;)Lcom/pgl/ssdk/i0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pgl/ssdk/i0;->e()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_d
    const/16 v0, 0x90

    if-ne p1, v0, :cond_e

    .line 55
    iget-object p1, p0, Lcom/pgl/ssdk/ces/b;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/pgl/ssdk/i0;->a(Landroid/content/Context;)Lcom/pgl/ssdk/i0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pgl/ssdk/i0;->d()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_e
    const/16 v0, 0x85

    if-ne p1, v0, :cond_f

    .line 56
    invoke-direct {p0, p2}, Lcom/pgl/ssdk/ces/b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_f
    const/16 v0, 0x87

    if-ne p1, v0, :cond_10

    .line 57
    invoke-static {}, Lcom/pgl/ssdk/t;->f()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_10
    const/16 v0, 0xc9

    if-ne p1, v0, :cond_11

    .line 58
    iget-object p1, p0, Lcom/pgl/ssdk/ces/b;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/pgl/ssdk/b0;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_11
    const/16 v0, 0xca

    if-ne p1, v0, :cond_12

    .line 59
    invoke-static {}, Lcom/pgl/ssdk/b0;->c()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_12
    const/16 v0, 0xec

    if-ne p1, v0, :cond_13

    .line 60
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/pgl/ssdk/v0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_13
    const/16 v0, 0x8e

    if-ne p1, v0, :cond_14

    .line 61
    iget-object p1, p0, Lcom/pgl/ssdk/ces/b;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/pgl/ssdk/z;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_14
    const/16 v0, 0x8f

    if-ne p1, v0, :cond_15

    .line 62
    iget-object p1, p0, Lcom/pgl/ssdk/ces/b;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/pgl/ssdk/f0;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_15
    const/16 v0, 0x92

    const/4 v1, 0x0

    if-ne p1, v0, :cond_16

    .line 63
    :try_start_0
    invoke-static {}, Lcom/pgl/ssdk/t;->b()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    return-object v1

    :cond_16
    const/16 v0, 0x93

    if-ne p1, v0, :cond_17

    .line 64
    iget-object p1, p0, Lcom/pgl/ssdk/ces/b;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/pgl/ssdk/z;->h(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_17
    const/16 v0, 0x94

    if-ne p1, v0, :cond_18

    .line 65
    iget-object p1, p0, Lcom/pgl/ssdk/ces/b;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/pgl/ssdk/s;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_18
    const/16 v0, 0x95

    if-ne p1, v0, :cond_19

    .line 66
    iget-object p1, p0, Lcom/pgl/ssdk/ces/b;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/pgl/ssdk/u;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_19
    const/16 v0, 0x96

    if-ne p1, v0, :cond_1a

    .line 67
    invoke-static {}, Lcom/pgl/ssdk/v;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1a
    const/16 v0, 0x97

    if-ne p1, v0, :cond_1b

    .line 68
    invoke-static {}, Lcom/pgl/ssdk/u;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1b
    const/16 v0, 0xa1

    if-ne p1, v0, :cond_1c

    .line 69
    invoke-static {}, Lcom/pgl/ssdk/t;->g()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_1c
    const/16 v0, 0xa9

    if-ne p1, v0, :cond_1d

    .line 70
    iget-object p1, p0, Lcom/pgl/ssdk/ces/b;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/pgl/ssdk/y;->b(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_1d
    const/16 v0, 0xaa

    if-ne p1, v0, :cond_1e

    .line 71
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/pgl/ssdk/w;->b(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    move-object v1, p1

    :cond_1e
    return-object v1
.end method

.method public a(Ljava/lang/String;[B)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 30
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_0

    .line 31
    const-string p1, ""

    :cond_0
    if-nez p2, :cond_1

    .line 32
    new-array p2, v0, [B

    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const/4 p1, 0x1

    aput-object p2, v2, p1

    .line 33
    iget-object p1, p0, Lcom/pgl/ssdk/ces/b;->g:Landroid/content/Context;

    const/16 p2, 0xe0

    invoke-static {p2, p1, v2}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "X-Armors"

    .line 35
    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v1
.end method

.method public a()V
    .locals 1

    .line 119
    new-instance v0, Lcom/pgl/ssdk/ces/b$b;

    invoke-direct {v0, p0}, Lcom/pgl/ssdk/ces/b$b;-><init>(Lcom/pgl/ssdk/ces/b;)V

    invoke-static {v0}, Lcom/pgl/ssdk/o0;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/pgl/ssdk/ces/b;->g:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/pgl/ssdk/w;->a(Landroid/view/MotionEvent;Landroid/content/Context;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-virtual {p0, p2}, Lcom/pgl/ssdk/ces/b;->b(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, p4}, Lcom/pgl/ssdk/ces/b;->c(Ljava/lang/String;)V

    .line 29
    :try_start_0
    invoke-virtual {p0}, Lcom/pgl/ssdk/ces/b;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "Start"

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x2710

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 37
    :goto_0
    invoke-static {}, Lcom/pgl/ssdk/o0;->b()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 38
    new-instance v3, Lcom/pgl/ssdk/l0;

    iget-object v4, p0, Lcom/pgl/ssdk/ces/b;->g:Landroid/content/Context;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 p1, 0x1

    aput-object p2, v5, p1

    const/16 p1, 0xde

    invoke-direct {v3, v4, p1, v5}, Lcom/pgl/ssdk/l0;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/pgl/ssdk/ces/b;->a()V

    .line 40
    invoke-static {}, Lcom/pgl/ssdk/x;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public declared-synchronized a(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_a

    .line 73
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_a

    .line 74
    :try_start_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catchall_0
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 75
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 76
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "key_ipv6"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v8

    goto :goto_2

    :sswitch_1
    const-string v3, "target-idc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v7

    goto :goto_2

    :sswitch_2
    const-string v3, "check_clz"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_2

    :sswitch_3
    const-string v3, "fields_allowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v6

    goto :goto_2

    :sswitch_4
    const-string v3, "sec_config"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v5

    goto :goto_2

    :sswitch_5
    const-string v3, "key_transfer_host"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v1, -0x1

    :goto_2
    const/4 v3, 0x0

    if-eqz v1, :cond_7

    if-eq v1, v8, :cond_6

    if-eq v1, v4, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v7, :cond_3

    if-eq v1, v5, :cond_2

    goto :goto_0

    .line 77
    :cond_2
    :try_start_2
    instance-of v1, v2, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    .line 78
    :try_start_3
    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/pgl/ssdk/ces/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception p1

    goto/16 :goto_3

    .line 79
    :cond_3
    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 80
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/pgl/ssdk/k0;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 81
    :cond_4
    instance-of v1, v2, Ljava/util/Set;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_0

    .line 82
    :try_start_4
    check-cast v2, Ljava/util/Set;

    const-string v1, "boot"

    .line 83
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0xa5

    invoke-static {v4, v3, v1}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mnc"

    .line 84
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0xa6

    invoke-static {v4, v3, v1}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mcc"

    .line 85
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0xa7

    invoke-static {v4, v3, v1}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gaid"

    .line 86
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v4, 0xa8

    invoke-static {v4, v3, v1}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gaid"

    .line 87
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/pgl/ssdk/ces/b;->m:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 88
    :cond_5
    :try_start_5
    instance-of v1, v2, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_0

    .line 89
    :try_start_6
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/pgl/ssdk/k0;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 90
    :cond_6
    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 91
    check-cast v2, Ljava/lang/String;

    .line 92
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    invoke-static {v2}, Lcom/pgl/ssdk/j0;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 94
    :cond_7
    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 95
    check-cast v2, Ljava/lang/String;

    .line 96
    invoke-static {v2}, Lcom/pgl/ssdk/g0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x9f

    .line 98
    invoke-static {v2, v3, v1}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 99
    :cond_8
    sget-object v0, Lcom/pgl/ssdk/ces/b;->c:Ljava/util/Map;

    if-nez v0, :cond_9

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pgl/ssdk/ces/b;->c:Ljava/util/Map;

    .line 101
    :cond_9
    sget-object v0, Lcom/pgl/ssdk/ces/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit p0

    return-void

    .line 102
    :goto_3
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p1

    .line 103
    :catchall_2
    :cond_a
    monitor-exit p0

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x78807064 -> :sswitch_5
        -0x473e8910 -> :sswitch_4
        0x9595e22 -> :sswitch_3
        0x17c6d17a -> :sswitch_2
        0x1cef4c6c -> :sswitch_1
        0x1dd9abc7 -> :sswitch_0
    .end sparse-switch
.end method

.method public b()V
    .locals 1

    .line 17
    new-instance v0, Lcom/pgl/ssdk/ces/b$c;

    invoke-direct {v0, p0}, Lcom/pgl/ssdk/ces/b$c;-><init>(Lcom/pgl/ssdk/ces/b;)V

    invoke-static {v0}, Lcom/pgl/ssdk/o0;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 13
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pgl/ssdk/ces/b;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    iput-object p1, p0, Lcom/pgl/ssdk/ces/b;->k:Ljava/lang/String;

    const/16 v0, 0x67

    const/4 v1, 0x0

    .line 15
    invoke-static {v0, v1, p1}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {}, Lcom/pgl/ssdk/c1;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pgl/ssdk/ces/b;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x6f

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/pgl/ssdk/ces/b;->l:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/pgl/ssdk/c1;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public e()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pgl/ssdk/ces/b;->g:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/pgl/ssdk/x;->a(Landroid/content/Context;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/pgl/ssdk/x;->c()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/pgl/ssdk/c1;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public l()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/pgl/ssdk/ces/b;->o:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/pgl/ssdk/ces/b;->g:Landroid/content/Context;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/pgl/ssdk/ces/b;->h:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/pgl/ssdk/c1;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "Start"

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/pgl/ssdk/ces/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
