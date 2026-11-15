.class public Lcom/hunantv/imgo/a/f;
.super Lcom/hunantv/imgo/a/b;
.source "SourceFile"


# static fields
.field private static volatile e:Lcom/hunantv/imgo/a/f;


# instance fields
.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/imgo/a/b;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/hunantv/imgo/a/f;->d:I

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/hunantv/imgo/a/f;
    .locals 2

    .line 1
    sget-object v0, Lcom/hunantv/imgo/a/f;->e:Lcom/hunantv/imgo/a/f;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/hunantv/imgo/a/f;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/hunantv/imgo/a/f;->e:Lcom/hunantv/imgo/a/f;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/hunantv/imgo/a/f;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/hunantv/imgo/a/f;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/hunantv/imgo/a/f;->e:Lcom/hunantv/imgo/a/f;

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
    sget-object p0, Lcom/hunantv/imgo/a/f;->e:Lcom/hunantv/imgo/a/f;

    return-object p0
.end method

.method private a(Ljava/lang/String;Lcom/hunantv/imgo/data/ErrorData;)Lcom/hunantv/imgo/data/ContentPlayData;
    .locals 1

    .line 48
    new-instance p0, Lcom/hunantv/imgo/data/ContentPlayData;

    invoke-direct {p0}, Lcom/hunantv/imgo/data/ContentPlayData;-><init>()V

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/data/ContentPlayData;->setStatus(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 51
    const-class p1, Lcom/hunantv/imgo/data/ErrorData;

    invoke-static {p2, p1}, Lcom/mgtv/json/a;->a(Lcom/mgtv/json/JsonInterface;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/data/ContentPlayData;->setErr_info(Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/data/ErrorData;)Lcom/hunantv/imgo/data/ContentPlayData;
    .locals 1

    .line 52
    invoke-direct {p0, p1, p4}, Lcom/hunantv/imgo/a/f;->a(Ljava/lang/String;Lcom/hunantv/imgo/data/ErrorData;)Lcom/hunantv/imgo/data/ContentPlayData;

    move-result-object p0

    .line 53
    invoke-virtual {p0, p2}, Lcom/hunantv/imgo/data/ContentPlayData;->setEvent_name(Ljava/lang/String;)V

    .line 54
    const-string p1, "vod"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string p4, "live"

    if-eqz p2, :cond_0

    .line 55
    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/data/ContentPlayData;->setSource(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_0
    const-string p2, "ad"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p0, p2}, Lcom/hunantv/imgo/data/ContentPlayData;->setSource(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 59
    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/data/ContentPlayData;->setSource(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_2
    const-string p2, "detail"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 61
    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/data/ContentPlayData;->setSource(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_3
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 63
    invoke-virtual {p0, p4}, Lcom/hunantv/imgo/data/ContentPlayData;->setSource(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_4
    const-string p2, "feed"

    invoke-virtual {p0, p2}, Lcom/hunantv/imgo/data/ContentPlayData;->setSource(Ljava/lang/String;)V

    .line 65
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 66
    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/data/ContentPlayData;->setMod_type(Ljava/lang/String;)V

    goto :goto_1

    .line 67
    :cond_5
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 68
    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/data/ContentPlayData;->setMod_type(Ljava/lang/String;)V

    goto :goto_1

    .line 69
    :cond_6
    invoke-virtual {p0, p3}, Lcom/hunantv/imgo/data/ContentPlayData;->setMod_type(Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method private b(JLjava/lang/String;Lcom/hunantv/imgo/data/ErrorData;)Lcom/hunantv/imgo/data/ContentPlayData;
    .locals 0

    .line 1
    invoke-direct {p0, p3, p4}, Lcom/hunantv/imgo/a/f;->a(Ljava/lang/String;Lcom/hunantv/imgo/data/ErrorData;)Lcom/hunantv/imgo/data/ContentPlayData;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/hunantv/imgo/data/ContentPlayData;->setEvent_duration(J)V

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/hunantv/imgo/a/f;->d:I

    return-void
.end method

.method public a(JLjava/lang/String;Lcom/hunantv/imgo/data/ErrorData;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hunantv/imgo/a/f;->b(JLjava/lang/String;Lcom/hunantv/imgo/data/ErrorData;)Lcom/hunantv/imgo/data/ContentPlayData;

    move-result-object p1

    .line 9
    const-string p2, "app"

    invoke-virtual {p1, p2}, Lcom/hunantv/imgo/data/ContentPlayData;->setEvent_name(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/a/f;->a(Lcom/hunantv/imgo/data/ContentPlayData;)V

    return-void
.end method

.method public a(JLjava/lang/String;Lcom/hunantv/imgo/data/ErrorData;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hunantv/imgo/a/f;->b(JLjava/lang/String;Lcom/hunantv/imgo/data/ErrorData;)Lcom/hunantv/imgo/data/ContentPlayData;

    move-result-object p1

    .line 12
    const-string p2, "mod"

    invoke-virtual {p1, p2}, Lcom/hunantv/imgo/data/ContentPlayData;->setEvent_name(Ljava/lang/String;)V

    .line 13
    const-string p2, "vod"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 14
    invoke-virtual {p1, p2}, Lcom/hunantv/imgo/data/ContentPlayData;->setSource(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_0
    const-string p2, "feed"

    invoke-virtual {p1, p2}, Lcom/hunantv/imgo/data/ContentPlayData;->setSource(Ljava/lang/String;)V

    .line 16
    :goto_0
    invoke-virtual {p1, p5}, Lcom/hunantv/imgo/data/ContentPlayData;->setMod_type(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/a/f;->a(Lcom/hunantv/imgo/data/ContentPlayData;)V

    return-void
.end method

.method public a(Lcom/hunantv/imgo/data/ContentPlayData;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/hunantv/imgo/a/b;->a:Lcom/hunantv/imgo/report/d;

    invoke-virtual {p0}, Lcom/hunantv/imgo/a/f;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/hunantv/imgo/data/ContentPlayData;->createBaseRequestParams()Lcom/hunantv/imgo/net/RequestParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hunantv/imgo/net/RequestParams;->toJsonNew()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/hunantv/imgo/report/d;->b(Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/report/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11

    move-object v0, p0

    move-wide/from16 v1, p5

    move-wide/from16 v3, p7

    move-wide/from16 v5, p9

    const/4 v7, 0x0

    move-object v8, p1

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    .line 33
    invoke-direct {p0, v9, p1, v10, v7}, Lcom/hunantv/imgo/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/data/ErrorData;)Lcom/hunantv/imgo/data/ContentPlayData;

    move-result-object v7

    move-wide v8, p3

    .line 34
    invoke-virtual {v7, p3, p4}, Lcom/hunantv/imgo/data/ContentPlayData;->setEvent_duration(J)V

    .line 35
    invoke-static/range {p13 .. p13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 36
    new-instance v8, Lcom/google/gson/JsonObject;

    invoke-direct {v8}, Lcom/google/gson/JsonObject;-><init>()V

    .line 37
    const-string v9, "fdParams"

    move-object/from16 v10, p13

    invoke-virtual {v8, v9, v10}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/hunantv/imgo/data/ContentPlayData;->setLob(Ljava/lang/String;)V

    :cond_0
    move-object v8, p2

    .line 39
    invoke-virtual {v7, p2}, Lcom/hunantv/imgo/data/ContentPlayData;->setElement_id(Ljava/lang/String;)V

    move/from16 v8, p16

    .line 40
    invoke-virtual {v7, v8}, Lcom/hunantv/imgo/data/ContentPlayData;->setAuto_play(I)V

    move-object/from16 v8, p14

    .line 41
    invoke-virtual {v7, v8}, Lcom/hunantv/imgo/data/ContentPlayData;->setVideo_id(Ljava/lang/String;)V

    move-object/from16 v8, p15

    .line 42
    invoke-virtual {v7, v8}, Lcom/hunantv/imgo/data/ContentPlayData;->setVideo_code(Ljava/lang/String;)V

    const-wide/16 v8, -0x1

    cmp-long v10, v1, v8

    if-lez v10, :cond_1

    .line 43
    invoke-virtual {v7, v1, v2}, Lcom/hunantv/imgo/data/ContentPlayData;->setSrc1(J)V

    :cond_1
    cmp-long v1, v3, v8

    if-lez v1, :cond_2

    .line 44
    invoke-virtual {v7, v3, v4}, Lcom/hunantv/imgo/data/ContentPlayData;->setSrc2(J)V

    :cond_2
    cmp-long v1, v5, v8

    if-lez v1, :cond_3

    .line 45
    invoke-virtual {v7, v5, v6}, Lcom/hunantv/imgo/data/ContentPlayData;->setSrc3(J)V

    .line 46
    :cond_3
    iget v1, v0, Lcom/hunantv/imgo/a/f;->d:I

    invoke-virtual {v7, v1}, Lcom/hunantv/imgo/data/ContentPlayData;->setOffline(I)V

    .line 47
    invoke-virtual {p0, v7}, Lcom/hunantv/imgo/a/f;->a(Lcom/hunantv/imgo/data/ContentPlayData;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/data/ErrorData;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p2, p1, p4, p3}, Lcom/hunantv/imgo/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/data/ErrorData;)Lcom/hunantv/imgo/data/ContentPlayData;

    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/a/f;->a(Lcom/hunantv/imgo/data/ContentPlayData;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/data/ErrorData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p3, p1, p5, p4}, Lcom/hunantv/imgo/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/data/ErrorData;)Lcom/hunantv/imgo/data/ContentPlayData;

    move-result-object p1

    .line 21
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 22
    new-instance p3, Lcom/google/gson/JsonObject;

    invoke-direct {p3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 23
    const-string p4, "fdParams"

    invoke-virtual {p3, p4, p6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p3}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/hunantv/imgo/data/ContentPlayData;->setLob(Ljava/lang/String;)V

    .line 25
    :cond_0
    invoke-virtual {p1, p7}, Lcom/hunantv/imgo/data/ContentPlayData;->setVideo_id(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1, p8}, Lcom/hunantv/imgo/data/ContentPlayData;->setVideo_code(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1, p9}, Lcom/hunantv/imgo/data/ContentPlayData;->setAuto_play(I)V

    .line 28
    invoke-virtual {p1, p10}, Lcom/hunantv/imgo/data/ContentPlayData;->setMod_position(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1, p2}, Lcom/hunantv/imgo/data/ContentPlayData;->setElement_id(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1, p11}, Lcom/hunantv/imgo/data/ContentPlayData;->setCollection_id(Ljava/lang/String;)V

    .line 31
    iget p2, p0, Lcom/hunantv/imgo/a/f;->d:I

    invoke-virtual {p1, p2}, Lcom/hunantv/imgo/data/ContentPlayData;->setOffline(I)V

    .line 32
    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/a/f;->a(Lcom/hunantv/imgo/data/ContentPlayData;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 3
    invoke-static {}, Lcom/hunantv/imgo/report/c;->w()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
