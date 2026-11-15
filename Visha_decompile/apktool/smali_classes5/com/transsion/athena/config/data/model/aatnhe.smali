.class public Lcom/transsion/athena/config/data/model/aatnhe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:J

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:J

.field private j:I

.field private k:I

.field private l:J

.field private m:J

.field private n:I


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/athena/config/data/model/aatnhe;->a:I

    const/16 v1, 0x64

    iput v1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->b:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->c:I

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/transsion/athena/config/data/model/aatnhe;->d:J

    iput v0, p0, Lcom/transsion/athena/config/data/model/aatnhe;->e:I

    iput v0, p0, Lcom/transsion/athena/config/data/model/aatnhe;->f:I

    iput v1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->g:I

    iput v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->h:I

    iput-wide v3, p0, Lcom/transsion/athena/config/data/model/aatnhe;->i:J

    iput v0, p0, Lcom/transsion/athena/config/data/model/aatnhe;->j:I

    iput v0, p0, Lcom/transsion/athena/config/data/model/aatnhe;->k:I

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/transsion/athena/config/data/model/aatnhe;->l:J

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/transsion/athena/config/data/model/aatnhe;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_0

    .line 19
    :try_start_0
    new-instance v0, Lcom/transsion/athena/config/data/model/aatnhe;

    invoke-direct {v0}, Lcom/transsion/athena/config/data/model/aatnhe;-><init>()V

    const-string v1, "ci"

    .line 20
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 21
    iput v1, v0, Lcom/transsion/athena/config/data/model/aatnhe;->k:I

    const-string v1, "gmax"

    .line 22
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 23
    iput v1, v0, Lcom/transsion/athena/config/data/model/aatnhe;->g:I

    const-string v1, "gmin"

    .line 24
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 25
    iput v1, v0, Lcom/transsion/athena/config/data/model/aatnhe;->f:I

    const-string v1, "mi"

    .line 26
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 27
    iput v1, v0, Lcom/transsion/athena/config/data/model/aatnhe;->j:I

    const-string v1, "nf"

    .line 28
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 29
    iput v1, v0, Lcom/transsion/athena/config/data/model/aatnhe;->e:I

    const-string v1, "pd"

    .line 30
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 31
    iput-wide v1, v0, Lcom/transsion/athena/config/data/model/aatnhe;->d:J

    const-string v1, "pt"

    .line 32
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 33
    iput-wide v1, v0, Lcom/transsion/athena/config/data/model/aatnhe;->i:J

    const-string v1, "se"

    .line 34
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 35
    iput-wide v1, v0, Lcom/transsion/athena/config/data/model/aatnhe;->l:J

    const-string v1, "urhash"

    .line 36
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 37
    iput v1, v0, Lcom/transsion/athena/config/data/model/aatnhe;->b:I

    const-string v1, "pr"

    .line 38
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 39
    iput v1, v0, Lcom/transsion/athena/config/data/model/aatnhe;->n:I

    const-string v1, "upct"

    .line 40
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 41
    iput v1, v0, Lcom/transsion/athena/config/data/model/aatnhe;->c:I

    const-string v1, "gpct"

    .line 42
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    .line 43
    iput p0, v0, Lcom/transsion/athena/config/data/model/aatnhe;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 44
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc4d;->d(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 3
    iget p0, p0, Lcom/transsion/athena/config/data/model/aatnhe;->k:I

    return p0
.end method

.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->k:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->m:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "gmax"

    .line 6
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->g:I

    const-string p1, "gmin"

    .line 7
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->f:I

    const-string p1, "mi"

    .line 8
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->j:I

    const-string p1, "nf"

    .line 9
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->e:I

    const-string p1, "pd"

    .line 10
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->d:J

    const-string p1, "se"

    .line 11
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->l:J

    const-string p1, "urhash"

    .line 12
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->b:I

    const-string p1, "frq"

    .line 13
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v1, p1

    iput-wide v1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->m:J

    const-string p1, "ct"

    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->a:I

    const-string p1, "pr"

    .line 15
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->n:I

    const-string p1, "upct"

    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->c:I

    const-string p1, "gpct"

    .line 17
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 18
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc4d;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/athena/config/data/model/aatnhe;->m:J

    return-wide v0
.end method

.method public b(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->g:I

    return-void
.end method

.method public b(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->d:J

    return-void
.end method

.method public c()I
    .locals 0

    .line 2
    iget p0, p0, Lcom/transsion/athena/config/data/model/aatnhe;->g:I

    return p0
.end method

.method public c(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->f:I

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->i:J

    return-void
.end method

.method public d()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/athena/config/data/model/aatnhe;->f:I

    return p0
.end method

.method public d(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->h:I

    return-void
.end method

.method public d(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->l:J

    return-void
.end method

.method public e()I
    .locals 0

    .line 2
    iget p0, p0, Lcom/transsion/athena/config/data/model/aatnhe;->h:I

    return p0
.end method

.method public e(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->j:I

    return-void
.end method

.method public f()I
    .locals 0

    .line 2
    iget p0, p0, Lcom/transsion/athena/config/data/model/aatnhe;->j:I

    return p0
.end method

.method public f(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->e:I

    return-void
.end method

.method public g()I
    .locals 0

    .line 2
    iget p0, p0, Lcom/transsion/athena/config/data/model/aatnhe;->e:I

    return p0
.end method

.method public g(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->n:I

    return-void
.end method

.method public h()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/athena/config/data/model/aatnhe;->n:I

    return p0
.end method

.method public h(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->a:I

    return-void
.end method

.method public i()J
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/transsion/athena/config/data/model/aatnhe;->d:J

    .line 2
    :try_start_0
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->v()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->I()Landroid/content/Context;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "debug.athena.push_during"

    :try_start_1
    iget-wide v4, p0, Lcom/transsion/athena/config/data/model/aatnhe;->d:J

    invoke-static {v2, v3, v4, v5}, Lcom/transsion/athena/config/data/model/anehat;->a(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SystemPropertiesProxy.getLong "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc4d;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-wide v0
.end method

.method public i(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->c:I

    return-void
.end method

.method public j()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/transsion/athena/config/data/model/aatnhe;->i:J

    return-wide v0
.end method

.method public j(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->b:I

    return-void
.end method

.method public k()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/athena/config/data/model/aatnhe;->l:J

    return-wide v0
.end method

.method public l()I
    .locals 0

    iget p0, p0, Lcom/transsion/athena/config/data/model/aatnhe;->c:I

    return p0
.end method

.method public m()I
    .locals 0

    iget p0, p0, Lcom/transsion/athena/config/data/model/aatnhe;->b:I

    return p0
.end method

.method public n()Lorg/json/JSONObject;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "ci"

    :try_start_1
    iget v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->k:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "gmax"

    :try_start_2
    iget v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->g:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "gmin"

    :try_start_3
    iget v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v1, "mi"

    :try_start_4
    iget v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->j:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v1, "nf"

    :try_start_5
    iget v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->e:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v1, "pd"

    :try_start_6
    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/aatnhe;->i()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v1, "pt"

    :try_start_7
    iget-wide v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->i:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string v1, "se"

    :try_start_8
    iget-wide v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->l:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const-string v1, "urhash"

    :try_start_9
    iget v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const-string v1, "frq"

    :try_start_a
    iget-wide v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->m:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    const-string v1, "ct"

    :try_start_b
    iget v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    const-string v1, "pr"

    :try_start_c
    iget v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->n:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    const-string v1, "upct"

    :try_start_d
    iget v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    const-string v1, "gpct"

    :try_start_e
    iget p0, p0, Lcom/transsion/athena/config/data/model/aatnhe;->h:I

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc4d;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public o()Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "gmax"

    :try_start_1
    iget v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->g:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "gmin"

    :try_start_2
    iget v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "mi"

    :try_start_3
    iget v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->j:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v1, "nf"

    :try_start_4
    iget v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->e:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v1, "pd"

    :try_start_5
    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/aatnhe;->i()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v1, "se"

    :try_start_6
    iget-wide v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->l:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v1, "urhash"

    :try_start_7
    iget v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string v1, "frq"

    :try_start_8
    iget-wide v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->m:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const-string v1, "ct"

    :try_start_9
    iget v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const-string v1, "pr"

    :try_start_a
    iget v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->n:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    const-string v1, "upct"

    :try_start_b
    iget v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    const-string v1, "gpct"

    :try_start_c
    iget p0, p0, Lcom/transsion/athena/config/data/model/aatnhe;->h:I

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc4d;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TidConfig { pushTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pushDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", maxCachedItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cachedItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", netWorkFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/athena/config/data/model/aatnhe;->e:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
