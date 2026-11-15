.class public Lcom/transsion/athena/config/data/model/aatnhe;
.super Ljava/lang/Object;
.source "source.java"


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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/transsion/athena/config/data/model/aatnhe;->a:I

    .line 6
    .line 7
    const/16 v1, 0x64

    .line 8
    .line 9
    iput v1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->b:I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    iput v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->c:I

    .line 13
    .line 14
    const-wide/16 v3, 0x0

    .line 15
    .line 16
    iput-wide v3, p0, Lcom/transsion/athena/config/data/model/aatnhe;->d:J

    .line 17
    .line 18
    iput v0, p0, Lcom/transsion/athena/config/data/model/aatnhe;->e:I

    .line 19
    .line 20
    iput v0, p0, Lcom/transsion/athena/config/data/model/aatnhe;->f:I

    .line 21
    .line 22
    iput v1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->g:I

    .line 23
    .line 24
    iput v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->h:I

    .line 25
    .line 26
    iput-wide v3, p0, Lcom/transsion/athena/config/data/model/aatnhe;->i:J

    .line 27
    .line 28
    iput v0, p0, Lcom/transsion/athena/config/data/model/aatnhe;->j:I

    .line 29
    .line 30
    iput v0, p0, Lcom/transsion/athena/config/data/model/aatnhe;->k:I

    .line 31
    .line 32
    const-wide/16 v0, 0x7530

    .line 33
    .line 34
    iput-wide v0, p0, Lcom/transsion/athena/config/data/model/aatnhe;->l:J

    .line 35
    .line 36
    return-void
.end method

.method static a(Lorg/json/JSONObject;)Lcom/transsion/athena/config/data/model/aatnhe;
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

    invoke-static {p0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/transsion/athena/config/data/model/aatnhe;->k:I

    return v0
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
    move-exception p1

    .line 18
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

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
    .locals 1

    .line 2
    iget v0, p0, Lcom/transsion/athena/config/data/model/aatnhe;->g:I

    return v0
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
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/athena/config/data/model/aatnhe;->f:I

    return v0
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
    .locals 1

    .line 2
    iget v0, p0, Lcom/transsion/athena/config/data/model/aatnhe;->h:I

    return v0
.end method

.method public e(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->j:I

    return-void
.end method

.method public f()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/transsion/athena/config/data/model/aatnhe;->j:I

    return v0
.end method

.method public f(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->e:I

    return-void
.end method

.method public g()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/transsion/athena/config/data/model/aatnhe;->e:I

    return v0
.end method

.method public g(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->n:I

    return-void
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/athena/config/data/model/aatnhe;->n:I

    return v0
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
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "debug.athena.push_during"

    :try_start_1
    iget-wide v4, p0, Lcom/transsion/athena/config/data/model/aatnhe;->d:J

    invoke-static {v2, v3, v4, v5}, Lcom/transsion/athena/config/data/model/anehat;->a(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SystemPropertiesProxy.getLong "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

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

    .line 1
    iget-wide v0, p0, Lcom/transsion/athena/config/data/model/aatnhe;->l:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/athena/config/data/model/aatnhe;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/athena/config/data/model/aatnhe;->b:I

    .line 2
    .line 3
    return v0
.end method

.method n()Lorg/json/JSONObject;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    const-string v1, "ci"

    .line 7
    .line 8
    :try_start_1
    iget v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->k:I

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 14
    const-string v1, "gmax"

    .line 15
    .line 16
    :try_start_2
    iget v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->g:I

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 22
    const-string v1, "gmin"

    .line 23
    .line 24
    :try_start_3
    iget v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->f:I

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 30
    const-string v1, "mi"

    .line 31
    .line 32
    :try_start_4
    iget v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->j:I

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 35
    .line 36
    .line 37
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 38
    const-string v1, "nf"

    .line 39
    .line 40
    :try_start_5
    iget v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->e:I

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 46
    const-string v1, "pd"

    .line 47
    .line 48
    :try_start_6
    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/aatnhe;->i()J

    .line 49
    .line 50
    .line 51
    move-result-wide v2

    .line 52
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 56
    const-string v1, "pt"

    .line 57
    .line 58
    :try_start_7
    iget-wide v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->i:J

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 61
    .line 62
    .line 63
    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 64
    const-string v1, "se"

    .line 65
    .line 66
    :try_start_8
    iget-wide v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->l:J

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 69
    .line 70
    .line 71
    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 72
    const-string v1, "urhash"

    .line 73
    .line 74
    :try_start_9
    iget v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->b:I

    .line 75
    .line 76
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 77
    .line 78
    .line 79
    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 80
    const-string v1, "frq"

    .line 81
    .line 82
    :try_start_a
    iget-wide v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->m:J

    .line 83
    .line 84
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 88
    const-string v1, "ct"

    .line 89
    .line 90
    :try_start_b
    iget v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->a:I

    .line 91
    .line 92
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    .line 94
    .line 95
    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 96
    const-string v1, "pr"

    .line 97
    .line 98
    :try_start_c
    iget v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->n:I

    .line 99
    .line 100
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 101
    .line 102
    .line 103
    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 104
    const-string v1, "upct"

    .line 105
    .line 106
    :try_start_d
    iget v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->c:I

    .line 107
    .line 108
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 109
    .line 110
    .line 111
    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    .line 112
    const-string v1, "gpct"

    .line 113
    .line 114
    :try_start_e
    iget v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->h:I

    .line 115
    .line 116
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 117
    .line 118
    .line 119
    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    .line 120
    return-object v0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const/4 v0, 0x0

    .line 130
    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    const-string v1, "gmax"

    .line 7
    .line 8
    :try_start_1
    iget v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->g:I

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 14
    const-string v1, "gmin"

    .line 15
    .line 16
    :try_start_2
    iget v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->f:I

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 22
    const-string v1, "mi"

    .line 23
    .line 24
    :try_start_3
    iget v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->j:I

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 30
    const-string v1, "nf"

    .line 31
    .line 32
    :try_start_4
    iget v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->e:I

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 35
    .line 36
    .line 37
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 38
    const-string v1, "pd"

    .line 39
    .line 40
    :try_start_5
    invoke-virtual {p0}, Lcom/transsion/athena/config/data/model/aatnhe;->i()J

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 45
    .line 46
    .line 47
    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 48
    const-string v1, "se"

    .line 49
    .line 50
    :try_start_6
    iget-wide v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->l:J

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 56
    const-string v1, "urhash"

    .line 57
    .line 58
    :try_start_7
    iget v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->b:I

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 61
    .line 62
    .line 63
    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 64
    const-string v1, "frq"

    .line 65
    .line 66
    :try_start_8
    iget-wide v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->m:J

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 69
    .line 70
    .line 71
    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 72
    const-string v1, "ct"

    .line 73
    .line 74
    :try_start_9
    iget v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->a:I

    .line 75
    .line 76
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 77
    .line 78
    .line 79
    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 80
    const-string v1, "pr"

    .line 81
    .line 82
    :try_start_a
    iget v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->n:I

    .line 83
    .line 84
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 88
    const-string v1, "upct"

    .line 89
    .line 90
    :try_start_b
    iget v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->c:I

    .line 91
    .line 92
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    .line 94
    .line 95
    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 96
    const-string v1, "gpct"

    .line 97
    .line 98
    :try_start_c
    iget v2, p0, Lcom/transsion/athena/config/data/model/aatnhe;->h:I

    .line 99
    .line 100
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 108
    return-object v0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const/4 v0, 0x0

    .line 118
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "TidConfig { pushTime="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-wide v1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->i:J

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", pushDuration="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-wide v1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->d:J

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", maxCachedItems="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->j:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", cachedItems="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->k:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", netWorkFlag="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lcom/transsion/athena/config/data/model/aatnhe;->e:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const/16 v1, 0x7d

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method
