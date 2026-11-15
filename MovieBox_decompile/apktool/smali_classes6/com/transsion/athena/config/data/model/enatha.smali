.class public Lcom/transsion/athena/config/data/model/enatha;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:J

.field private b:J

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Lorg/json/JSONObject;

.field private f:J

.field private g:J

.field private h:I

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private m:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/String;

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/32 v0, 0x5265c00

    .line 5
    .line 6
    .line 7
    iput-wide v0, p0, Lcom/transsion/athena/config/data/model/enatha;->a:J

    .line 8
    .line 9
    const-wide/32 v0, 0x249f0

    .line 10
    .line 11
    .line 12
    iput-wide v0, p0, Lcom/transsion/athena/config/data/model/enatha;->b:J

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/transsion/athena/config/data/model/enatha;->c:Z

    .line 16
    .line 17
    const-string v0, ""

    .line 18
    .line 19
    iput-object v0, p0, Lcom/transsion/athena/config/data/model/enatha;->d:Ljava/lang/String;

    .line 20
    .line 21
    const-wide/16 v0, 0x0

    .line 22
    .line 23
    iput-wide v0, p0, Lcom/transsion/athena/config/data/model/enatha;->f:J

    .line 24
    .line 25
    const-wide/16 v0, -0x1

    .line 26
    .line 27
    iput-wide v0, p0, Lcom/transsion/athena/config/data/model/enatha;->g:J

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/transsion/athena/config/data/model/enatha;->h:I

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/transsion/athena/config/data/model/enatha;->i:Z

    .line 33
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/transsion/athena/config/data/model/enatha;->k:Ljava/util/List;

    .line 40
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/transsion/athena/config/data/model/enatha;->l:Ljava/util/List;

    .line 47
    .line 48
    new-instance v0, Landroid/util/Pair;

    .line 49
    .line 50
    const/4 v1, 0x3

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const/4 v2, 0x6

    .line 56
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/transsion/athena/config/data/model/enatha;->m:Landroid/util/Pair;

    .line 64
    .line 65
    iput v2, p0, Lcom/transsion/athena/config/data/model/enatha;->o:I

    .line 66
    .line 67
    const/16 v0, 0xa

    .line 68
    .line 69
    iput v0, p0, Lcom/transsion/athena/config/data/model/enatha;->p:I

    .line 70
    .line 71
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/transsion/athena/config/data/model/enatha;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "dlt"

    const-string v1, "tz"

    const-string v2, "delays"

    const-string v3, "p"

    const-string v4, "tidUrls"

    const-string v5, "url"

    const/4 v6, 0x0

    if-eqz p0, :cond_8

    .line 23
    :try_start_0
    new-instance v7, Lcom/transsion/athena/config/data/model/enatha;

    invoke-direct {v7}, Lcom/transsion/athena/config/data/model/enatha;-><init>()V

    const-string v8, "pd"

    .line 24
    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/transsion/athena/config/data/model/enatha;->a:J

    const-string v8, "th"

    .line 25
    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/transsion/athena/config/data/model/enatha;->b:J

    const-string v8, "once"

    .line 26
    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v7, Lcom/transsion/athena/config/data/model/enatha;->c:Z

    .line 27
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 28
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lcom/transsion/athena/config/data/model/enatha;->d:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_2

    .line 29
    :cond_0
    :goto_0
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 30
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iput-object v4, v7, Lcom/transsion/athena/config/data/model/enatha;->e:Lorg/json/JSONObject;

    :cond_1
    const-string v4, "version"

    .line 31
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v7, Lcom/transsion/athena/config/data/model/enatha;->f:J

    const-string v4, "npt"

    .line 32
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v7, Lcom/transsion/athena/config/data/model/enatha;->g:J

    const-string v4, "rt"

    .line 33
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v7, Lcom/transsion/athena/config/data/model/enatha;->h:I

    const-string v4, "dd"

    .line 34
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v7, Lcom/transsion/athena/config/data/model/enatha;->i:Z

    const-string v4, "ddv"

    .line 35
    invoke-virtual {p0, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Lcom/transsion/athena/config/data/model/enatha;->j:Ljava/lang/String;

    .line 36
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 37
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/transsion/athena/config/data/model/enatha;->a(Lorg/json/JSONArray;)V

    .line 38
    :cond_2
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 39
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 40
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 41
    new-instance v4, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v4, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v4, v7, Lcom/transsion/athena/config/data/model/enatha;->m:Landroid/util/Pair;

    .line 42
    :cond_3
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 43
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    iput-object v1, v7, Lcom/transsion/athena/config/data/model/enatha;->n:Ljava/lang/String;

    :cond_4
    const-string v1, "geo"

    const/4 v2, 0x6

    .line 45
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_6

    const/16 v3, 0xc

    if-lt v1, v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 46
    :cond_6
    :goto_1
    iput v2, v7, Lcom/transsion/athena/config/data/model/enatha;->o:I

    .line 47
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 48
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 49
    iput p0, v7, Lcom/transsion/athena/config/data/model/enatha;->p:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    return-object v7

    .line 50
    :goto_2
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    :cond_8
    return-object v6
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/transsion/athena/config/data/model/enatha;->o:I

    return v0
.end method

.method public a(J)Ljava/lang/String;
    .locals 0

    .line 7
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/transsion/athena/config/data/model/enatha;->e:Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 9
    :try_start_0
    iget-object p2, p0, Lcom/transsion/athena/config/data/model/enatha;->e:Lorg/json/JSONObject;

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 12
    iget-object p1, p0, Lcom/transsion/athena/config/data/model/enatha;->d:Ljava/lang/String;

    :cond_1
    return-object p1
.end method

.method public a(II)V
    .locals 1

    .line 15
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/athena/config/data/model/enatha;->m:Landroid/util/Pair;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/transsion/athena/config/data/model/enatha;->j:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/json/JSONArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/enatha;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/enatha;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/transsion/athena/config/data/model/enatha;->k:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, p0, Lcom/transsion/athena/config/data/model/enatha;->l:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/transsion/athena/config/data/model/enatha;->i:Z

    return-void
.end method

.method public a(I)Z
    .locals 10

    .line 17
    iget-wide v0, p0, Lcom/transsion/athena/config/data/model/enatha;->g:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-wide v4, p0, Lcom/transsion/athena/config/data/model/enatha;->a:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    goto :goto_1

    .line 18
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 19
    iget-wide v4, p0, Lcom/transsion/athena/config/data/model/enatha;->g:J

    sub-long v4, v2, v4

    .line 20
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    iget-wide v8, p0, Lcom/transsion/athena/config/data/model/enatha;->a:J

    cmp-long v0, v6, v8

    if-ltz v0, :cond_1

    .line 21
    invoke-virtual {p0, v2, v3}, Lcom/transsion/athena/config/data/model/enatha;->b(J)V

    return v1

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    const/4 v2, 0x0

    if-ltz v0, :cond_3

    .line 22
    iget v0, p0, Lcom/transsion/athena/config/data/model/enatha;->h:I

    if-ge v0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1

    :cond_3
    return v2

    :cond_4
    :goto_1
    return v1
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/enatha;->l:Ljava/util/List;

    return-object v0
.end method

.method public b(I)V
    .locals 1

    if-lez p1, :cond_0

    const/16 v0, 0xc

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x6

    .line 5
    :cond_1
    iput p1, p0, Lcom/transsion/athena/config/data/model/enatha;->o:I

    return-void
.end method

.method public b(J)V
    .locals 0

    .line 6
    iput-wide p1, p0, Lcom/transsion/athena/config/data/model/enatha;->g:J

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/transsion/athena/config/data/model/enatha;->h:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/transsion/athena/config/data/model/enatha;->n:Ljava/lang/String;

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/athena/config/data/model/enatha;->e:Lorg/json/JSONObject;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/transsion/athena/config/data/model/enatha;->c:Z

    return-void
.end method

.method public c()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/transsion/athena/config/data/model/enatha;->a:J

    return-wide v0
.end method

.method public c(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/transsion/athena/config/data/model/enatha;->h:I

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/athena/config/data/model/enatha;->g:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/transsion/athena/config/data/model/enatha;->d:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/transsion/athena/config/data/model/enatha;->h:I

    return v0
.end method

.method public d(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/transsion/athena/config/data/model/enatha;->p:I

    return-void
.end method

.method public d(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/athena/config/data/model/enatha;->a:J

    return-void
.end method

.method public e()I
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/enatha;->m:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/athena/config/data/model/enatha;->m:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3
    sget v2, Lcom/transsion/athena/taaneh/anehat;->e:I

    .line 4
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v1, v0

    return v1

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x6

    return v0
.end method

.method public e(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    return-void

    .line 1
    :cond_0
    iput-wide p1, p0, Lcom/transsion/athena/config/data/model/enatha;->b:J

    return-void
.end method

.method public f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/athena/config/data/model/enatha;->b:J

    return-wide v0
.end method

.method public f(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/transsion/athena/config/data/model/enatha;->f:J

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/enatha;->n:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "Asia/Shanghai"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/transsion/athena/config/data/model/enatha;->n:Ljava/lang/String;

    .line 13
    .line 14
    :goto_0
    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/athena/config/data/model/enatha;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public i()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/athena/config/data/model/enatha;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public j()Lorg/json/JSONObject;
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/transsion/athena/config/data/model/enatha;->k:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    goto/16 :goto_1

    .line 30
    .line 31
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    .line 32
    .line 33
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    const-string v2, "pd"

    .line 37
    .line 38
    :try_start_1
    iget-wide v3, p0, Lcom/transsion/athena/config/data/model/enatha;->a:J

    .line 39
    .line 40
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 41
    .line 42
    .line 43
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 44
    const-string v2, "dlt"

    .line 45
    .line 46
    :try_start_2
    iget v3, p0, Lcom/transsion/athena/config/data/model/enatha;->p:I

    .line 47
    .line 48
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 52
    const-string v2, "th"

    .line 53
    .line 54
    :try_start_3
    iget-wide v3, p0, Lcom/transsion/athena/config/data/model/enatha;->b:J

    .line 55
    .line 56
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 60
    const-string v2, "once"

    .line 61
    .line 62
    :try_start_4
    iget-boolean v3, p0, Lcom/transsion/athena/config/data/model/enatha;->c:Z

    .line 63
    .line 64
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 65
    .line 66
    .line 67
    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 68
    const-string v2, "url"

    .line 69
    .line 70
    :try_start_5
    iget-object v3, p0, Lcom/transsion/athena/config/data/model/enatha;->d:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    .line 74
    .line 75
    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 76
    const-string v2, "tidUrls"

    .line 77
    .line 78
    :try_start_6
    iget-object v3, p0, Lcom/transsion/athena/config/data/model/enatha;->e:Lorg/json/JSONObject;

    .line 79
    .line 80
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    .line 82
    .line 83
    move-result-object v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 84
    const-string v2, "version"

    .line 85
    .line 86
    :try_start_7
    iget-wide v3, p0, Lcom/transsion/athena/config/data/model/enatha;->f:J

    .line 87
    .line 88
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 89
    .line 90
    .line 91
    move-result-object v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 92
    const-string v2, "npt"

    .line 93
    .line 94
    :try_start_8
    iget-wide v3, p0, Lcom/transsion/athena/config/data/model/enatha;->g:J

    .line 95
    .line 96
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 97
    .line 98
    .line 99
    move-result-object v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 100
    const-string v2, "rt"

    .line 101
    .line 102
    :try_start_9
    iget v3, p0, Lcom/transsion/athena/config/data/model/enatha;->h:I

    .line 103
    .line 104
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 105
    .line 106
    .line 107
    move-result-object v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 108
    const-string v2, "dd"

    .line 109
    .line 110
    :try_start_a
    iget-boolean v3, p0, Lcom/transsion/athena/config/data/model/enatha;->i:Z

    .line 111
    .line 112
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 113
    .line 114
    .line 115
    move-result-object v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 116
    const-string v2, "ddv"

    .line 117
    .line 118
    :try_start_b
    iget-object v3, p0, Lcom/transsion/athena/config/data/model/enatha;->j:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    const-string v2, "p"

    .line 125
    .line 126
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    .line 128
    .line 129
    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 130
    const-string v1, "tz"

    .line 131
    .line 132
    :try_start_c
    iget-object v2, p0, Lcom/transsion/athena/config/data/model/enatha;->n:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    .line 136
    .line 137
    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 138
    const-string v1, "geo"

    .line 139
    .line 140
    :try_start_d
    iget v2, p0, Lcom/transsion/athena/config/data/model/enatha;->o:I

    .line 141
    .line 142
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 143
    .line 144
    .line 145
    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    .line 146
    const-string v1, "delays"

    .line 147
    .line 148
    :try_start_e
    new-instance v2, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    iget-object v3, p0, Lcom/transsion/athena/config/data/model/enatha;->m:Landroid/util/Pair;

    .line 154
    .line 155
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 156
    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v3, ","

    .line 161
    .line 162
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    iget-object v3, p0, Lcom/transsion/athena/config/data/model/enatha;->m:Landroid/util/Pair;

    .line 166
    .line 167
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 168
    .line 169
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    .line 178
    .line 179
    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    .line 180
    return-object v0

    .line 181
    :goto_1
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    const/4 v0, 0x0

    .line 189
    return-object v0
.end method
