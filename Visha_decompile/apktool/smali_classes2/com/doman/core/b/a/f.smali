.class public final Lcom/doman/core/b/a/f;
.super Lcom/doman/core/b/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/doman/core/b/a/d<",
        "Lcom/doman/core/a/f;",
        ">;"
    }
.end annotation


# static fields
.field protected static l:Lcom/android/net/p$a;


# instance fields
.field private n:Lcom/doman/core/b/e;

.field private o:Lcom/android/net/p$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/net/p$b<",
            "Lcom/doman/core/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/doman/core/b/a/f$1;

    invoke-direct {v0}, Lcom/doman/core/b/a/f$1;-><init>()V

    sput-object v0, Lcom/doman/core/b/a/f;->l:Lcom/android/net/p$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/doman/core/b/e;Lcom/android/net/p$b;Lcom/android/net/p$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/doman/core/b/e;",
            "Lcom/android/net/p$b<",
            "Lcom/doman/core/a/f;",
            ">;",
            "Lcom/android/net/p$a;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/doman/core/b/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/doman/core/b/a/d;-><init>(Ljava/lang/String;Lcom/android/net/p$a;)V

    const-string p4, "InitConfigRequest"

    iput-object p4, p0, Lcom/doman/core/b/a/f;->p:Ljava/lang/String;

    iput-object p1, p0, Lcom/doman/core/b/a/d;->m:Landroid/content/Context;

    iput-object p2, p0, Lcom/doman/core/b/a/f;->n:Lcom/doman/core/b/e;

    iput-object p3, p0, Lcom/doman/core/b/a/f;->o:Lcom/android/net/p$b;

    return-void
.end method

.method private static d(Ljava/lang/String;)Lcom/doman/core/a/f;
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p0, "success"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    const-string p0, "data"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/doman/core/b/c;->c:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/doman/core/d/c/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/doman/core/a/f;

    invoke-direct {p0}, Lcom/doman/core/a/f;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string/jumbo v1, "useable"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/doman/core/a/f;->a:Z

    const-string v1, "al_useable"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/doman/core/a/f;->b:Z

    const-string/jumbo v1, "va_useable"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/doman/core/a/f;->c:Z

    const-string v1, "se_useable"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/doman/core/a/f;->d:Z

    const-string v1, "dp_useable"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/doman/core/a/f;->e:Z

    const-string v1, "al_addr"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/doman/core/a/f;->g:Ljava/lang/String;

    const-string v1, "al_interval"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/doman/core/a/f;->f:J

    const-string v1, "retry"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/doman/core/a/f;->h:I

    const-string v1, "host"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/doman/core/a/f;->j:Ljava/lang/String;

    const-string v1, "schema"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/doman/core/a/f;->i:Ljava/lang/String;

    const-string v1, "backup_host"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/doman/core/a/f;->l:Ljava/lang/String;

    const-string v1, "backup_schema"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/doman/core/a/f;->k:Ljava/lang/String;

    const-string v1, "mq_host"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/doman/core/a/f;->m:Ljava/lang/String;

    const-string v1, "mq_topic"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/doman/core/a/f;->n:Ljava/lang/String;

    const-string v1, "mq_switch"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/doman/core/a/f;->o:Z

    const-string v1, "mq_did"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/doman/core/a/f;->p:Ljava/lang/String;

    const-string v1, "p_usable"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/doman/core/a/f;->x:Z

    const-string v1, "p_interval"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/doman/core/a/f;->y:J

    const-string v1, "p_addr"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/doman/core/a/f;->z:Ljava/lang/String;

    const-string v1, "pe_usable"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/doman/core/a/f;->A:Z

    const-string v1, "pe_interval"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/doman/core/a/f;->B:J

    const-string v1, "feedback"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/doman/core/a/f;->D:I

    const-string v1, "k_a"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/doman/core/a/f;->q:Ljava/lang/String;

    const-string v1, "k_time"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/doman/core/a/f;->r:J

    const-string v1, "d_da"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/doman/core/a/f;->u:Ljava/lang/String;

    const-string v1, "d_ds"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/doman/core/a/f;->t:I

    const-string v1, "d_du"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/doman/core/a/f;->v:Ljava/lang/String;

    const-string v1, "d_dt"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/doman/core/a/f;->w:I

    const-string v1, "ac_id"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/doman/core/a/f;->C:[Ljava/lang/String;

    :cond_2
    const-string v1, "ac_close"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/doman/core/a/f;->s:Z

    const-string v1, "gcfg"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doman/core/a/f;->E:Ljava/lang/String;

    const-string v0, "gdly"

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/doman/core/a/f;->F:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v1, p0

    :catchall_1
    move-object p0, v1

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final synthetic c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/doman/core/b/a/f;->d(Ljava/lang/String;)Lcom/doman/core/a/f;

    move-result-object p0

    return-object p0
.end method

.method public final f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/doman/core/b/a/f;->n:Lcom/doman/core/b/e;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/net/n;->f()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, v0, Lcom/doman/core/b/e;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public final i()Lcom/android/net/n$b;
    .locals 0

    sget-object p0, Lcom/android/net/n$b;->b:Lcom/android/net/n$b;

    return-object p0
.end method

.method public final n()Lcom/android/net/p$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/net/p$b<",
            "Lcom/doman/core/a/f;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/doman/core/b/a/f;->o:Lcom/android/net/p$b;

    return-object p0
.end method
