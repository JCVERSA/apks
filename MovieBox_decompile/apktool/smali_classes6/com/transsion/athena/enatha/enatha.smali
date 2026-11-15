.class public Lcom/transsion/athena/enatha/enatha;
.super Lcom/transsion/athena/enatha/athena;
.source "source.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static volatile c:Lcom/transsion/athena/enatha/enatha;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private d:Z

.field private e:Z

.field private f:I

.field private g:Z

.field private h:I

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/athena/data/Track;",
            ">;"
        }
    .end annotation
.end field

.field private j:J

.field private final k:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:J

.field private o:Z

.field private p:J

.field private final q:Lcom/transsion/athena/aethna/aethna;

.field private final r:Ljava/lang/Runnable;

.field private s:J

.field private final t:Ljava/lang/Runnable;

.field private final u:Landroid/location/LocationListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/athena/enatha/athena;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/transsion/athena/enatha/enatha;->d:Z

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/transsion/athena/enatha/enatha;->e:Z

    .line 8
    .line 9
    new-instance p1, Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/transsion/athena/enatha/enatha;->k:Landroid/util/SparseArray;

    .line 15
    .line 16
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/transsion/athena/enatha/enatha;->p:J

    .line 19
    .line 20
    new-instance p1, Lcom/transsion/athena/enatha/enatha$athena;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lcom/transsion/athena/enatha/enatha$athena;-><init>(Lcom/transsion/athena/enatha/enatha;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/transsion/athena/enatha/enatha;->q:Lcom/transsion/athena/aethna/aethna;

    .line 26
    .line 27
    new-instance p1, Lcom/transsion/athena/enatha/enatha$anehat;

    .line 28
    .line 29
    invoke-direct {p1, p0}, Lcom/transsion/athena/enatha/enatha$anehat;-><init>(Lcom/transsion/athena/enatha/enatha;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/transsion/athena/enatha/enatha;->r:Ljava/lang/Runnable;

    .line 33
    .line 34
    iput-wide v0, p0, Lcom/transsion/athena/enatha/enatha;->s:J

    .line 35
    .line 36
    new-instance p1, Lcom/transsion/athena/enatha/enatha$ehatna;

    .line 37
    .line 38
    invoke-direct {p1, p0}, Lcom/transsion/athena/enatha/enatha$ehatna;-><init>(Lcom/transsion/athena/enatha/enatha;)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/transsion/athena/enatha/enatha;->t:Ljava/lang/Runnable;

    .line 42
    .line 43
    new-instance p1, Lcom/transsion/athena/enatha/enatha$hatnea;

    .line 44
    .line 45
    invoke-direct {p1, p0}, Lcom/transsion/athena/enatha/enatha$hatnea;-><init>(Lcom/transsion/athena/enatha/enatha;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/transsion/athena/enatha/enatha;->u:Landroid/location/LocationListener;

    .line 49
    .line 50
    new-instance p1, Landroid/os/HandlerThread;

    .line 51
    .line 52
    const-string v0, "Athena-Worker"

    .line 53
    .line 54
    const/16 v1, 0xa

    .line 55
    .line 56
    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 60
    .line 61
    .line 62
    new-instance v0, Landroid/os/Handler;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    .line 72
    .line 73
    const/16 p1, 0x12f

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method private a(Lcom/transsion/athena/data/TrackDataWrapper;)Lcom/transsion/athena/data/Track;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 31
    const-string v2, "_eparam"

    new-instance v3, Lcom/transsion/athena/data/Track;

    invoke-direct {v3}, Lcom/transsion/athena/data/Track;-><init>()V

    .line 32
    invoke-virtual {p1}, Lcom/transsion/athena/data/TrackDataWrapper;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/athena/data/Track;->setEventName(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lcom/transsion/athena/data/TrackDataWrapper;->b()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/transsion/athena/data/Track;->setTid(J)V

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/transsion/athena/data/Track;->setTrackTs(J)V

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/transsion/athena/data/Track;->setTrackErTs(J)V

    .line 36
    invoke-virtual {p1}, Lcom/transsion/athena/data/TrackDataWrapper;->c()Lcom/transsion/athena/data/TrackData;

    move-result-object p1

    .line 37
    :try_start_0
    invoke-virtual {p1}, Lcom/transsion/athena/data/TrackData;->a()Lorg/json/JSONObject;

    move-result-object v4

    .line 38
    sget-object v5, Lcom/transsion/athena/config/data/model/ehanat;->h:Ljava/lang/String;

    .line 39
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 40
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 41
    instance-of v6, v5, Lorg/json/JSONArray;

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-le v6, v1, :cond_0

    .line 42
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    .line 43
    :cond_0
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 44
    :cond_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 45
    :goto_0
    instance-of v6, v5, Lorg/json/JSONObject;

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 46
    invoke-virtual {v4}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v6

    move v7, v0

    .line 47
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 48
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 49
    move-object v9, v5

    check-cast v9, Lorg/json/JSONObject;

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    add-int/2addr v7, v1

    goto :goto_1

    .line 51
    :cond_2
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "net"

    .line 53
    :try_start_1
    iget-object v5, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/transsion/athena/taaneh/aatnhe;->b(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "event"

    .line 54
    :try_start_2
    invoke-virtual {v3}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    invoke-virtual {v3, v4}, Lcom/transsion/athena/data/Track;->setJsonData(Lorg/json/JSONObject;)V

    .line 56
    invoke-virtual {v3, v6}, Lcom/transsion/athena/data/Track;->setOriginJsonData(Lorg/json/JSONObject;)V

    .line 57
    invoke-virtual {p1}, Lcom/transsion/athena/data/TrackData;->d()I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/transsion/athena/data/Track;->setTrackFlag(I)V

    .line 58
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    move-result-object p1

    invoke-virtual {v3}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v4

    long-to-int v2, v4

    invoke-virtual {v3}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/transsion/athena/aethna/athena;->a(ILjava/lang/String;)Lcom/transsion/athena/config/data/model/TidConfigBean;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 59
    invoke-virtual {p1}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTid()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/transsion/athena/data/Track;->setTid(J)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 60
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "Convert to Track exception : %s"

    invoke-static {p1, v1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_3
    return-object v3
.end method

.method public static a(Landroid/content/Context;)Lcom/transsion/athena/enatha/enatha;
    .locals 2

    .line 6
    sget-object v0, Lcom/transsion/athena/enatha/enatha;->c:Lcom/transsion/athena/enatha/enatha;

    if-nez v0, :cond_1

    .line 7
    const-class v0, Lcom/transsion/athena/enatha/enatha;

    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/transsion/athena/enatha/enatha;->c:Lcom/transsion/athena/enatha/enatha;

    if-nez v1, :cond_0

    .line 9
    new-instance v1, Lcom/transsion/athena/enatha/enatha;

    invoke-direct {v1, p0}, Lcom/transsion/athena/enatha/enatha;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/transsion/athena/enatha/enatha;->c:Lcom/transsion/athena/enatha/enatha;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 10
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 11
    :cond_1
    :goto_2
    sget-object p0, Lcom/transsion/athena/enatha/enatha;->c:Lcom/transsion/athena/enatha/enatha;

    return-object p0
.end method

.method static synthetic a(Lcom/transsion/athena/enatha/enatha;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/transsion/athena/enatha/enatha;->l:Ljava/lang/String;

    return-object p1
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    .line 229
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/athena/aethna/athena;->a(I)V

    .line 230
    iget-object v0, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    .line 231
    iget-object p2, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/transsion/athena/data/AppIdData;->a(Landroid/content/Context;I)Lcom/transsion/athena/data/AppIdData;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/athena/data/anateh/aethna;->a(Lcom/transsion/athena/data/AppIdData;)V

    goto :goto_0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object v0

    .line 233
    new-instance v1, Lcom/transsion/athena/data/AppIdData;

    invoke-direct {v1}, Lcom/transsion/athena/data/AppIdData;-><init>()V

    .line 234
    iput p1, v1, Lcom/transsion/athena/data/AppIdData;->a:I

    .line 235
    iput-object p2, v1, Lcom/transsion/athena/data/AppIdData;->b:Ljava/lang/String;

    .line 236
    invoke-virtual {v0, v1}, Lcom/transsion/athena/data/anateh/aethna;->a(Lcom/transsion/athena/data/AppIdData;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(IZ)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 195
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/transsion/athena/aethna/athena;->b(I)Lcom/transsion/athena/config/data/model/athena;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 196
    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/athena;->m()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v0

    const-string v3, "handleTidChange appconf : %s"

    invoke-static {v3, v4}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    iget-object v3, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object v3

    invoke-virtual {v3, v2, p2}, Lcom/transsion/athena/data/anateh/aethna;->a(Lcom/transsion/athena/config/data/model/athena;Z)V

    .line 198
    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/athena;->h()Ljava/lang/String;

    move-result-object v3

    .line 199
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 200
    invoke-static {v3}, Lcom/transsion/gslb/GslbSdk;->isInitSuccess(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 201
    iget-object v4, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/transsion/athena/enatha/enatha$anateh;

    invoke-direct {v6, p0, v3, p1, v2}, Lcom/transsion/athena/enatha/enatha$anateh;-><init>(Lcom/transsion/athena/enatha/enatha;Ljava/lang/String;ILcom/transsion/athena/config/data/model/athena;)V

    invoke-static {v4, v5, v6}, Lcom/transsion/gslb/GslbSdk;->init(Landroid/content/Context;[Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$InitListener;)V

    goto :goto_0

    .line 202
    :cond_0
    iget-object v4, p0, Lcom/transsion/athena/enatha/enatha;->l:Ljava/lang/String;

    invoke-direct {p0, v3, p1, v2, v4}, Lcom/transsion/athena/enatha/enatha;->a(Ljava/lang/String;ILcom/transsion/athena/config/data/model/athena;Ljava/lang/String;)V

    .line 203
    :goto_0
    new-instance v4, Lcom/transsion/athena/enatha/enatha$ehanat;

    invoke-direct {v4, p0}, Lcom/transsion/athena/enatha/enatha$ehanat;-><init>(Lcom/transsion/athena/enatha/enatha;)V

    invoke-static {v3, v4}, Lcom/transsion/gslb/GslbSdk;->getDomain(Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$ResultListener;)V

    .line 204
    :cond_1
    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/athena;->c()Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 206
    iget-object v4, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/transsion/athena/enatha/enatha$aatnhe;

    invoke-direct {v6, p0}, Lcom/transsion/athena/enatha/enatha$aatnhe;-><init>(Lcom/transsion/athena/enatha/enatha;)V

    invoke-static {v4, v5, v6}, Lcom/transsion/gslb/GslbSdk;->init(Landroid/content/Context;[Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$InitListener;)V

    const/4 v4, 0x0

    .line 207
    invoke-static {v3, v4}, Lcom/transsion/gslb/GslbSdk;->getDomain(Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$ResultListener;)V

    :cond_2
    if-eqz p2, :cond_8

    .line 208
    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/athena;->j()Ljava/util/List;

    move-result-object p2

    .line 209
    invoke-static {p2}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 210
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "handleTidChange tid config is null"

    aput-object p2, p1, v0

    const-string p2, "%s"

    invoke-static {p2, p1}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 211
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 212
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/athena/config/data/model/TidConfigBean;

    .line 213
    invoke-virtual {v3}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/aatnhe;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/athena/config/data/model/aatnhe;->i()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    .line 214
    invoke-virtual {v3}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTid()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 215
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    .line 216
    :try_start_0
    iget-object p2, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object p2

    iget-boolean v3, p0, Lcom/transsion/athena/enatha/enatha;->e:Z

    new-instance v4, Lcom/transsion/athena/enatha/d;

    invoke-direct {v4}, Lcom/transsion/athena/enatha/d;-><init>()V

    invoke-virtual {p2, v2, v3, v4}, Lcom/transsion/athena/data/anateh/aethna;->a(Ljava/util/List;ZLcom/transsion/athena/data/anateh/enatha;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 217
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v2, v3, v0

    const-string v2, "Handle tid change exception : %s"

    invoke-static {v2, v3}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "handleTidChange"

    .line 218
    invoke-direct {p0, v2, p2}, Lcom/transsion/athena/enatha/enatha;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    :cond_6
    :goto_2
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->I()Lcom/transsion/ga/AthenaAnalytics$a;

    .line 220
    invoke-static {}, Lcom/transsion/athena/data/athena;->b()I

    move-result p2

    if-ne p2, p1, :cond_8

    .line 221
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    move-result-object p2

    const-string v2, "page_view"

    const/high16 v3, 0x3f800000    # 1.0f

    .line 222
    invoke-virtual {p2, p1, v2, v3}, Lcom/transsion/athena/aethna/athena;->a(ILjava/lang/String;F)I

    move-result p1

    if-nez p1, :cond_7

    move v0, v1

    .line 223
    :cond_7
    invoke-static {v0}, Lcom/transsion/athena/config/data/model/ehanat;->e(Z)V

    :cond_8
    return-void
.end method

.method private a(Landroid/location/Location;)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/4 v0, 0x0

    .line 265
    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const/4 v2, 0x1

    const-string v3, "lat"

    const-string v4, "lng"

    if-eqz p1, :cond_0

    .line 266
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v5

    sget-object v6, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const/4 v7, 0x2

    invoke-virtual {v5, v7, v6}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v8

    .line 267
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1, v7, v6}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v5

    .line 268
    invoke-virtual {v1, v4, v8, v9}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;D)Lcom/transsion/athena/data/TrackData;

    move-result-object p1

    .line 269
    invoke-virtual {p1, v3, v5, v6}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;D)Lcom/transsion/athena/data/TrackData;

    .line 270
    :try_start_0
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/athena/aethna/athena;->b()I

    move-result p1

    .line 271
    invoke-static {v5, v6, v8, v9, p1}, Lcom/transsion/athena/aatnhe/aethna;->a(DDI)Lcom/transsion/athena/aatnhe/aethna;

    move-result-object p1

    .line 272
    invoke-virtual {p1}, Lcom/transsion/athena/aatnhe/aethna;->a()Ljava/lang/String;

    move-result-object p1

    const-string v3, "geono"

    .line 273
    invoke-virtual {v1, v3, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 274
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    :goto_0
    move p1, v2

    goto :goto_1

    .line 275
    :cond_0
    invoke-virtual {v1, v4, v0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    move-result-object p1

    invoke-virtual {p1, v3, v0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    move p1, v0

    .line 276
    :goto_1
    iget-object v3, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v3, v4}, Lcom/transsion/athena/taaneh/anehat;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 277
    iget-object v3, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/transsion/athena/taaneh/athena;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 278
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 279
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/athena/aatnhe/athena;

    .line 280
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v7, "cellid"

    .line 281
    :try_start_2
    invoke-virtual {v5}, Lcom/transsion/athena/aatnhe/athena;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    const-string v7, "level"

    :try_start_3
    iget v5, v5, Lcom/transsion/athena/aatnhe/athena;->e:I

    .line 282
    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    .line 283
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    .line 284
    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v5, v6, v0

    const-string v5, "%s"

    invoke-static {v5, v6}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 285
    :cond_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    const-string v3, "cellidlist"

    if-lez v0, :cond_2

    .line 286
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    goto :goto_3

    :cond_2
    const-string v0, ""

    .line 287
    invoke-virtual {v1, v3, v0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    :cond_3
    move v2, p1

    :goto_3
    if-eqz v2, :cond_4

    const/16 p1, 0x270f

    .line 288
    invoke-static {p1}, Lcom/transsion/ga/AthenaAnalytics;->K(I)Lcom/transsion/ga/AthenaAnalytics;

    move-result-object v0

    const-string v2, "location"

    .line 289
    invoke-virtual {v0, v2, v1, p1}, Lcom/transsion/ga/AthenaAnalytics;->g0(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;I)V

    :cond_4
    return-void
.end method

.method private static synthetic a(Landroid/util/SparseArray;)V
    .locals 3

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 14
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/athena/config/data/model/athena;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/athena/aethna/athena;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/tencent/mmkv/MMKV;)V
    .locals 7

    .line 16
    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/mmkv/MMKV;->a()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 17
    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_2

    .line 18
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0x64

    .line 19
    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 20
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_3

    .line 21
    aget-object v5, v0, v4

    const-class v6, Lcom/transsion/athena/data/TrackDataWrapper;

    invoke-virtual {p1, v5, v6}, Lcom/tencent/mmkv/MMKV;->i(Ljava/lang/String;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/transsion/athena/data/TrackDataWrapper;

    if-nez v5, :cond_1

    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, v2, :cond_2

    .line 23
    invoke-direct {p0, v5}, Lcom/transsion/athena/enatha/enatha;->a(Lcom/transsion/athena/data/TrackDataWrapper;)Lcom/transsion/athena/data/Track;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    aget-object v5, v0, v4

    aput-object v5, v3, v4

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 25
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 26
    invoke-direct {p0, v1}, Lcom/transsion/athena/enatha/enatha;->a(Ljava/util/List;)V

    .line 27
    invoke-virtual {p1, v3}, Lcom/tencent/mmkv/MMKV;->removeValuesForKeys([Ljava/lang/String;)V

    .line 28
    :cond_4
    invoke-virtual {p1}, Lcom/tencent/mmkv/MMKV;->a()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/tencent/mmkv/MMKV;->a()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_6

    .line 29
    invoke-direct {p0, p1}, Lcom/transsion/athena/enatha/enatha;->a(Lcom/tencent/mmkv/MMKV;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_5
    :goto_2
    return-void

    .line 30
    :goto_3
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    :cond_6
    :goto_4
    return-void
.end method

.method private a(Lcom/transsion/athena/data/Track;)V
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    const-string v3, "net"

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/transsion/athena/taaneh/anehat;->a(J)I

    move-result v4

    .line 68
    iget-object v5, p0, Lcom/transsion/athena/enatha/enatha;->k:Landroid/util/SparseArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, ""

    .line 69
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "tid"

    const-string v7, "ts"

    const-string v8, "event"

    if-nez v5, :cond_0

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v5

    const-string v9, "page_enter"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 70
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 71
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 72
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackTs()J

    move-result-wide v9

    invoke-virtual {v5, v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v5

    .line 73
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v9

    invoke-virtual {v5, v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v5

    .line 74
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getJsonData()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "eparam"

    .line 75
    :try_start_1
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getJsonData()Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "_eparam"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 76
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 77
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "first_page_enter_"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 78
    iget-object v9, p0, Lcom/transsion/athena/enatha/enatha;->k:Landroid/util/SparseArray;

    invoke-virtual {v9, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    iget-object v9, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {v9}, Lm4/a;->a(Landroid/content/Context;)Lm4/a;

    move-result-object v9

    .line 80
    invoke-virtual {v9, v5, v3}, Lm4/a;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "save [%d] fpe to sp : %s"

    .line 81
    :try_start_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v9, v0, [Ljava/lang/Object;

    aput-object v4, v9, v2

    aput-object v3, v9, v1

    invoke-static {v5, v9}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v3

    .line 82
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const-string v3, "saveFpeForAppId exception : %s"

    invoke-static {v3, v4}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    :cond_0
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->r()Z

    move-result v3

    if-nez v3, :cond_1

    .line 84
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Athena SDK Enable : [false]"

    aput-object v0, p1, v2

    const-string v0, "%s"

    invoke-static {v0, p1}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 85
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getJsonData()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 86
    :try_start_3
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const-string v5, "appid"

    .line 87
    :try_start_4
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/transsion/athena/taaneh/anehat;->a(J)I

    move-result v9

    invoke-virtual {v4, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 88
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackTs()J

    move-result-wide v9

    invoke-virtual {v4, v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const-string v5, "params"

    .line 90
    :try_start_5
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getJsonData()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    const-string v5, "track event:%s"

    .line 91
    :try_start_6
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 92
    new-array v7, v1, [Ljava/lang/Object;

    aput-object v4, v7, v2

    invoke-static {v5, v7}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    .line 93
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v2

    const-string v4, "handleSaveData exception:%s"

    invoke-static {v4, v5}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const v4, 0xaf000

    if-lt v3, v4, :cond_2

    .line 95
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 96
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    aput-object p1, v5, v1

    aput-object v4, v5, v0

    const-string p1, "track [%d]-[%s], save2DB failed due to eparam out of limit [%d]"

    .line 98
    invoke-static {p1, v5}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 99
    :cond_2
    invoke-direct {p0, p1}, Lcom/transsion/athena/enatha/enatha;->c(Lcom/transsion/athena/data/Track;)Z

    move-result v3

    if-nez v3, :cond_3

    return-void

    .line 100
    :cond_3
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v3

    const-wide/16 v9, 0x270f

    cmp-long v3, v3, v9

    if-lez v3, :cond_4

    .line 101
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/transsion/athena/aethna/athena;->b(J)Lcom/transsion/athena/config/data/model/TidConfigBean;

    move-result-object v3

    goto :goto_1

    .line 102
    :cond_4
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/transsion/athena/aethna/athena;->a(ILjava/lang/String;)Lcom/transsion/athena/config/data/model/TidConfigBean;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 103
    invoke-virtual {v3}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTid()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/transsion/athena/data/Track;->setTid(J)V

    .line 104
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackFlag()I

    move-result v4

    if-nez v4, :cond_6

    if-eqz v3, :cond_6

    .line 105
    invoke-virtual {v3}, Lcom/transsion/athena/config/data/model/TidConfigBean;->isCacheEnable()Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v1

    goto :goto_2

    :cond_6
    move v4, v2

    .line 106
    :goto_2
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->j()I

    move-result v5

    if-lez v5, :cond_c

    if-eqz v4, :cond_c

    .line 107
    :try_start_7
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 108
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v9

    invoke-virtual {v4, v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 109
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    const-string v6, "save event to memory:%s"

    .line 110
    :try_start_8
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 111
    new-array v7, v1, [Ljava/lang/Object;

    aput-object v4, v7, v2

    invoke-static {v6, v7}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    :catch_2
    move-exception v4

    .line 112
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v4, v6, v2

    const-string v4, "print saveTrack2Mem exception:%s"

    invoke-static {v4, v6}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    :goto_3
    iget-object v4, p0, Lcom/transsion/athena/enatha/enatha;->i:Ljava/util/ArrayList;

    if-nez v4, :cond_7

    .line 114
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/transsion/athena/enatha/enatha;->i:Ljava/util/ArrayList;

    .line 115
    :cond_7
    iget-object v4, p0, Lcom/transsion/athena/enatha/enatha;->i:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v5, v1

    const-wide/16 v6, 0x0

    if-lt v4, v5, :cond_8

    .line 116
    iget-object v0, p0, Lcom/transsion/athena/enatha/enatha;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object p1, p0, Lcom/transsion/athena/enatha/enatha;->i:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/transsion/athena/enatha/enatha;->a(Ljava/util/List;)V

    .line 118
    iput-wide v6, p0, Lcom/transsion/athena/enatha/enatha;->j:J

    goto :goto_4

    .line 119
    :cond_8
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackTs()J

    move-result-wide v4

    .line 120
    invoke-virtual {v3, v4, v5}, Lcom/transsion/athena/config/data/model/TidConfigBean;->allowTrack(J)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 121
    invoke-virtual {v3, v4, v5}, Lcom/transsion/athena/config/data/model/TidConfigBean;->setLastTTime(J)V

    .line 122
    iget-object v0, p0, Lcom/transsion/athena/enatha/enatha;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    iget-wide v0, p0, Lcom/transsion/athena/enatha/enatha;->j:J

    cmp-long p1, v0, v6

    if-nez p1, :cond_9

    .line 124
    iput-wide v4, p0, Lcom/transsion/athena/enatha/enatha;->j:J

    goto :goto_4

    :cond_9
    sub-long/2addr v4, v0

    const-wide/32 v0, 0x927c0

    cmp-long p1, v4, v0

    if-ltz p1, :cond_b

    .line 125
    iget-object p1, p0, Lcom/transsion/athena/enatha/enatha;->i:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/transsion/athena/enatha/enatha;->a(Ljava/util/List;)V

    .line 126
    iput-wide v6, p0, Lcom/transsion/athena/enatha/enatha;->j:J

    goto :goto_4

    .line 127
    :cond_a
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 128
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v2

    aput-object p1, v0, v1

    const-string p1, "save [%d]-[%s] to DB failed due to limit in one-life-cycle"

    .line 129
    invoke-static {p1, v0}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    :goto_4
    return-void

    .line 130
    :cond_c
    invoke-direct {p0, p1, v3}, Lcom/transsion/athena/enatha/enatha;->a(Lcom/transsion/athena/data/Track;Lcom/transsion/athena/config/data/model/TidConfigBean;)V

    return-void
.end method

.method private a(Lcom/transsion/athena/data/Track;Lcom/transsion/athena/config/data/model/TidConfigBean;)V
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 131
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v3

    const-wide/16 v5, 0x270f

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackData()Lcom/transsion/athena/data/TrackData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/athena/data/TrackData;->b()F

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/transsion/athena/aethna/athena;->a(JF)I

    move-result v3

    goto :goto_0

    .line 132
    :cond_0
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackData()Lcom/transsion/athena/data/TrackData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/athena/data/TrackData;->b()F

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/transsion/athena/aethna/athena;->a(ILjava/lang/String;F)I

    move-result v3

    :goto_0
    if-nez v3, :cond_8

    if-eqz p2, :cond_2

    .line 133
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackTs()J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lcom/transsion/athena/config/data/model/TidConfigBean;->allowTrack(J)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 134
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 135
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v3, v5, v2

    aput-object v4, v5, v1

    const-string v3, "save [%d]-[%s] to DB failed due to limit in one-life-cycle"

    .line 136
    invoke-static {v3, v5}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v2

    goto :goto_2

    .line 137
    :cond_2
    :goto_1
    invoke-static {}, Lcom/transsion/athena/ehatna/aethna;->b()Lcom/transsion/athena/ehatna/aethna;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/transsion/athena/ehatna/aethna;->a(Lcom/transsion/athena/data/Track;)V

    .line 138
    iget-object v3, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/transsion/athena/data/anateh/aethna;->a(Lcom/transsion/athena/data/Track;)I

    move-result v3

    .line 139
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "tid"

    .line 140
    :try_start_1
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "event"

    .line 141
    :try_start_2
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v5, "ts"

    .line 142
    :try_start_3
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackTs()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "db_count"

    .line 143
    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v5, "save event to DB:%s"

    .line 144
    :try_start_4
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 145
    new-array v6, v1, [Ljava/lang/Object;

    aput-object v4, v6, v2

    invoke-static {v5, v6}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 146
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v2

    const-string v4, "saveTrack2DB exception:%s"

    invoke-static {v4, v5}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    const-string v0, "DB_UPDATE_ERROR"

    .line 147
    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const/4 v4, -0x2

    if-ne v3, v4, :cond_4

    .line 148
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 149
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v2

    aput-object v5, v0, v1

    const-string v4, "save [%d]-[%s] to DB failed due to DB_OUT_OF_MEMORY_ERROR"

    .line 150
    invoke-static {v4, v0}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object v0

    new-instance v4, Lcom/transsion/athena/enatha/b;

    invoke-direct {v4}, Lcom/transsion/athena/enatha/b;-><init>()V

    const/16 v5, 0x3e8

    invoke-virtual {v0, v5, v4}, Lcom/transsion/athena/data/anateh/aethna;->a(ILcom/transsion/athena/data/anateh/enatha;)I

    move-result v0

    .line 152
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "Clean up DB due to DB_OUT_OF_MEMORY_ERROR, Count [%d]"

    invoke-static {v0, v1}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    :cond_4
    :goto_3
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ev_athena"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    if-lez v3, :cond_7

    if-eqz p2, :cond_6

    .line 154
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackTs()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/transsion/athena/config/data/model/TidConfigBean;->setLastTTime(J)V

    .line 155
    invoke-virtual {p2}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/aatnhe;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/transsion/athena/config/data/model/aatnhe;->a(I)V

    .line 156
    :cond_6
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "device"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 157
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/transsion/athena/taaneh/anehat;->a(J)I

    move-result p1

    const/16 p2, 0x270f

    if-ne p2, p1, :cond_7

    .line 158
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/athena/aethna/athena;->k()V

    .line 159
    :cond_7
    iget p1, p0, Lcom/transsion/athena/enatha/enatha;->f:I

    int-to-long p1, p1

    invoke-direct {p0, v2, p1, p2}, Lcom/transsion/athena/enatha/enatha;->a(ZJ)V

    goto :goto_4

    .line 160
    :cond_8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "recordTrackFailed reason : %d"

    invoke-static {p1, p2}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    return-void
.end method

.method static a(Lcom/transsion/athena/enatha/enatha;)V
    .locals 1

    .line 181
    iget-boolean v0, p0, Lcom/transsion/athena/enatha/enatha;->g:Z

    if-nez v0, :cond_0

    .line 182
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/athena/aethna/athena;->g()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/transsion/athena/enatha/enatha;->f:I

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/transsion/athena/enatha/enatha;->h()V

    return-void
.end method

.method static synthetic a(Lcom/transsion/athena/enatha/enatha;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/athena/enatha/enatha;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/transsion/athena/enatha/enatha;Landroid/location/Location;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/transsion/athena/enatha/enatha;->a(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic a(Lcom/transsion/athena/enatha/enatha;Lcom/tencent/mmkv/MMKV;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/athena/enatha/enatha;->a(Lcom/tencent/mmkv/MMKV;)V

    return-void
.end method

.method static synthetic a(Lcom/transsion/athena/enatha/enatha;Ljava/lang/String;ILcom/transsion/athena/config/data/model/athena;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/athena/enatha/enatha;->a(Ljava/lang/String;ILcom/transsion/athena/config/data/model/athena;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 3

    .line 224
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "v"

    .line 225
    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance v1, Lcom/transsion/ga/anateh;

    const-string v2, "cleanupEvents_off"

    invoke-direct {v1, v2, v0}, Lcom/transsion/ga/anateh;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 227
    invoke-static {}, Lcom/transsion/ga/i;->a()Lcom/transsion/ga/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/ga/i;->c(Lcom/transsion/ga/anateh;)V

    const/4 v0, 0x1

    .line 228
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "handleTidChange cleanupList : %s"

    invoke-static {p0, v0}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/String;ILcom/transsion/athena/config/data/model/athena;Ljava/lang/String;)V
    .locals 2

    .line 184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 185
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->o()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/transsion/gslb/GslbSdk;->getDomain(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 186
    :cond_0
    invoke-static {p1}, Lcom/transsion/athena/config/data/model/ehanat;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/transsion/gslb/GslbSdk;->getDomain(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 187
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "app_id"

    .line 188
    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "url"

    .line 189
    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p3}, Lcom/transsion/athena/config/data/model/athena;->k()J

    move-result-wide p1

    const-string p3, "ver"

    invoke-virtual {v0, p3, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "gslb_data"

    .line 191
    invoke-virtual {v0, p1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance p1, Lhi/a;

    const-string p2, "app_cfg_log"

    const/16 p3, 0x270f

    invoke-direct {p1, p2, p3}, Lhi/a;-><init>(Ljava/lang/String;I)V

    const/4 p2, 0x0

    .line 193
    invoke-virtual {p1, v0, p2}, Lhi/a;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lhi/a;

    move-result-object p1

    .line 194
    invoke-virtual {p1}, Lhi/a;->b()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 237
    new-instance v0, Lcom/transsion/ga/anateh;

    invoke-direct {v0, p1, p2}, Lcom/transsion/ga/anateh;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    invoke-static {}, Lcom/transsion/ga/i;->a()Lcom/transsion/ga/i;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/transsion/ga/i;->c(Lcom/transsion/ga/anateh;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/Track;",
            ">;)V"
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/athena/data/Track;

    .line 163
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    move-result-object v3

    invoke-virtual {v2}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/transsion/athena/data/Track;->getTrackData()Lcom/transsion/athena/data/TrackData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/athena/data/TrackData;->b()F

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/transsion/athena/aethna/athena;->a(JF)I

    move-result v3

    if-nez v3, :cond_0

    .line 164
    invoke-static {}, Lcom/transsion/athena/ehatna/aethna;->b()Lcom/transsion/athena/ehatna/aethna;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/transsion/athena/ehatna/aethna;->a(Lcom/transsion/athena/data/Track;)V

    .line 165
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 167
    iget-object v1, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object v1

    new-instance v2, Lcom/transsion/athena/enatha/c;

    invoke-direct {v2, p1}, Lcom/transsion/athena/enatha/c;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v0, v2}, Lcom/transsion/athena/data/anateh/aethna;->a(Ljava/util/ArrayList;Lcom/transsion/athena/data/anateh/enatha;)I

    move-result p1

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveMemCacheToDb Count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;)V

    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    .line 169
    iget-object p1, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object p1

    new-instance v0, Lcom/transsion/athena/enatha/enatha$enatha;

    invoke-direct {v0, p0}, Lcom/transsion/athena/enatha/enatha$enatha;-><init>(Lcom/transsion/athena/enatha/enatha;)V

    const/16 v1, 0x3e8

    invoke-virtual {p1, v1, v0}, Lcom/transsion/athena/data/anateh/aethna;->a(ILcom/transsion/athena/data/anateh/enatha;)I

    move-result p1

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveToDB out of memory cleanCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 171
    :cond_2
    iget p1, p0, Lcom/transsion/athena/enatha/enatha;->f:I

    int-to-long v0, p1

    const/4 p1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/athena/enatha/enatha;->a(ZJ)V

    :cond_3
    return-void
.end method

.method private static synthetic a(Ljava/util/List;Landroid/util/LongSparseArray;)V
    .locals 5

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveMemCacheToDb tidCountArray = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;)V

    .line 173
    invoke-interface {p0}, Ljava/util/List;->clear()V

    const/4 p0, 0x0

    .line 174
    :goto_0
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-ge p0, v0, :cond_1

    .line 175
    invoke-virtual {p1, p0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v0

    .line 176
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/transsion/athena/aethna/athena;->b(J)Lcom/transsion/athena/config/data/model/TidConfigBean;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 177
    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/aatnhe;

    move-result-object v3

    invoke-virtual {p1, p0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/transsion/athena/config/data/model/aatnhe;->a(I)V

    .line 178
    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getEvent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "device"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    invoke-static {v0, v1}, Lcom/transsion/athena/taaneh/anehat;->a(J)I

    move-result v0

    const/16 v1, 0x270f

    if-ne v1, v0, :cond_0

    .line 180
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/athena/aethna/athena;->k()V

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 239
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 240
    :catch_0
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    return-void
.end method

.method private a(Z)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    const/16 v4, 0x1f6

    if-eqz p1, :cond_0

    .line 242
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->m()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-wide v5, p0, Lcom/transsion/athena/enatha/enatha;->s:J

    sub-long v5, v0, v5

    .line 243
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    cmp-long p1, v5, v2

    if-gez p1, :cond_3

    .line 244
    :cond_1
    iget-object p1, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 245
    iget-object p1, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 246
    iget-object v0, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void

    .line 247
    :cond_3
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    move-result-object p1

    const/16 v5, 0x270f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 248
    const-string v7, "location"

    invoke-virtual {p1, v5, v7, v6}, Lcom/transsion/athena/aethna/athena;->a(ILjava/lang/String;F)I

    move-result p1

    if-nez p1, :cond_a

    .line 249
    iget-object p1, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    .line 250
    invoke-static {p1, v5}, Lcom/transsion/athena/taaneh/anehat;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    .line 251
    invoke-static {p1, v5}, Lcom/transsion/athena/taaneh/anehat;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 252
    :cond_4
    iget-object p1, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    .line 253
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    const/4 v5, 0x0

    if-nez p1, :cond_5

    .line 254
    invoke-direct {p0, v5}, Lcom/transsion/athena/enatha/enatha;->a(Landroid/location/Location;)V

    return-void

    .line 255
    :cond_5
    const-string v6, "network"

    invoke-virtual {p1, v6}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_0

    .line 256
    :cond_6
    const-string v6, "passive"

    invoke-virtual {p1, v6}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_0

    .line 257
    :cond_7
    const-string v6, "gps"

    invoke-virtual {p1, v6}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_0

    :cond_8
    move-object v6, v5

    :goto_0
    if-eqz v6, :cond_9

    .line 258
    iget-object v7, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    iget-object v8, p0, Lcom/transsion/athena/enatha/enatha;->t:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 259
    iget-object v7, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    iget-object v8, p0, Lcom/transsion/athena/enatha/enatha;->t:Ljava/lang/Runnable;

    const-wide/16 v9, 0x7530

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 260
    iget-object v7, p0, Lcom/transsion/athena/enatha/enatha;->u:Landroid/location/LocationListener;

    invoke-virtual {p1, v6, v7, v5}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 261
    iput-wide v0, p0, Lcom/transsion/athena/enatha/enatha;->s:J

    .line 262
    :cond_9
    iget-object p1, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_a

    .line 263
    iget-object p1, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 264
    iget-object v0, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_a
    return-void
.end method

.method private a(ZJ)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    const/16 v1, 0x12a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 63
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 64
    iget-object p1, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 65
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 66
    iget-object p1, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/transsion/athena/enatha/enatha;)Landroid/location/LocationListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/athena/enatha/enatha;->u:Landroid/location/LocationListener;

    return-object p0
.end method

.method private b(Lcom/transsion/athena/data/Track;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    const-string v2, "eparam"

    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->r()Z

    move-result v3

    if-nez v3, :cond_0

    const-string p1, "Athena SDK isAthenaEnable = false"

    .line 3
    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/athena/enatha/enatha;->c(Lcom/transsion/athena/data/Track;)Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/transsion/athena/taaneh/anehat;->a(J)I

    move-result v3

    .line 6
    iget-object v4, p0, Lcom/transsion/athena/enatha/enatha;->k:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    const-string v5, "tid"

    const-string v6, "event"

    const-string v7, ""

    if-ltz v4, :cond_4

    .line 7
    iget-object v4, p0, Lcom/transsion/athena/enatha/enatha;->k:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v7}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 8
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 9
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 11
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v7

    .line 12
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    goto :goto_1

    :cond_3
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 13
    :goto_1
    new-instance v4, Lcom/transsion/athena/data/Track;

    invoke-direct {v4}, Lcom/transsion/athena/data/Track;-><init>()V

    .line 14
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/transsion/athena/data/Track;->setEventName(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Lcom/transsion/athena/data/Track;->setTid(J)V

    const-string v9, "ts"

    .line 16
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/transsion/athena/data/Track;->setTrackTs(J)V

    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/transsion/athena/data/Track;->setTrackErTs(J)V

    .line 18
    invoke-virtual {v4, v2}, Lcom/transsion/athena/data/Track;->setOriginJsonData(Lorg/json/JSONObject;)V

    .line 19
    iget-object v2, p0, Lcom/transsion/athena/enatha/enatha;->k:Landroid/util/SparseArray;

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "first_page_enter_"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lm4/a;->a(Landroid/content/Context;)Lm4/a;

    move-result-object v3

    .line 22
    invoke-virtual {v3, v2, v7}, Lm4/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, v4}, Lcom/transsion/athena/enatha/enatha;->b(Lcom/transsion/athena/data/Track;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :catch_0
    :cond_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 25
    :try_start_1
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v3

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v3, "type"

    .line 27
    :try_start_2
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackFlag()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 28
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getOriginJsonData()Lorg/json/JSONObject;

    move-result-object p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    const-string v3, "_apkg"

    .line 29
    :try_start_3
    iget-object v4, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/transsion/athena/taaneh/athena;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Lcom/transsion/athena/enatha/enatha;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    const-string v3, "_avn"

    .line 30
    :try_start_4
    iget-object v4, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/transsion/athena/taaneh/athena;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Lcom/transsion/athena/enatha/enatha;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    const-string v3, "_avc"

    .line 31
    :try_start_5
    iget-object v4, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/transsion/athena/taaneh/athena;->i(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Lcom/transsion/athena/enatha/enatha;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    const-string v3, "_atutp"

    .line 32
    :try_start_6
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->c()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Lcom/transsion/athena/enatha/enatha;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    const-string v3, "_atuid"

    .line 33
    :try_start_7
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->b()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    move-object v7, v4

    :goto_2
    invoke-direct {p0, p1, v3, v7}, Lcom/transsion/athena/enatha/enatha;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    const-string v3, "_achannel"

    .line 34
    :try_start_8
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->g()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Lcom/transsion/athena/enatha/enatha;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1

    const-string v3, "_ainstallchnl"

    .line 35
    :try_start_9
    iget-object v4, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/transsion/athena/taaneh/athena;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1

    if-eqz v4, :cond_6

    const-string v4, " "

    goto :goto_3

    .line 36
    :cond_6
    :try_start_a
    iget-object v4, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/transsion/athena/taaneh/athena;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 37
    :goto_3
    invoke-direct {p0, p1, v3, v4}, Lcom/transsion/athena/enatha/enatha;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    const-string v3, "_eparam"

    .line 39
    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v0

    const-string p1, "Track by DCS exception : "

    invoke-static {p1, v3}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    :goto_4
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 42
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "trackObject"

    invoke-virtual {p1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v3, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://com.transsion.dataservice.provider/track"

    .line 44
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 45
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 46
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "track by DCS:%s"

    invoke-static {p1, v1}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 2

    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "v"

    .line 48
    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance p0, Lcom/transsion/ga/anateh;

    const-string v1, "cleanupEvents_oom"

    invoke-direct {p0, v1, v0}, Lcom/transsion/ga/anateh;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 50
    invoke-static {}, Lcom/transsion/ga/i;->a()Lcom/transsion/ga/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/ga/i;->c(Lcom/transsion/ga/anateh;)V

    return-void
.end method

.method static synthetic c(Lcom/transsion/athena/enatha/enatha;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/athena/enatha/enatha;->t:Ljava/lang/Runnable;

    return-object p0
.end method

.method private c(Lcom/transsion/athena/data/Track;)Z
    .locals 9

    .line 2
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_launch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {v0}, Lm4/a;->a(Landroid/content/Context;)Lm4/a;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app_launch_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/transsion/athena/taaneh/anehat;->a(J)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lm4/a;->e(Ljava/lang/String;)I

    move-result v2

    const-wide/16 v3, 0x3e8

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackTs()J

    move-result-wide v5

    div-long/2addr v5, v3

    int-to-long v7, v2

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/16 v7, 0x1c20

    cmp-long v2, v5, v7

    if-gtz v2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackTs()J

    move-result-wide v5

    div-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lm4/a;->b(Ljava/lang/String;I)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private f()V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    :try_start_0
    iget-object v3, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/transsion/athena/taaneh/athena;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 3
    iget-object v4, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v4, "content://com.transsion.dataservice.provider/authorize"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "pkg = ?"

    :try_start_1
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-ne v4, v1, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    iput-boolean v4, p0, Lcom/transsion/athena/enatha/enatha;->o:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, "Pkg [%s] DCS authorize [%s]"

    if-eqz v4, :cond_1

    .line 5
    const-string v4, "enable"

    goto :goto_1

    :cond_1
    const-string v4, "disable"

    :goto_1
    const/4 v6, 0x2

    :try_start_2
    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v0

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v3

    goto :goto_3

    :cond_2
    const-string v4, "Cursor is null, Pkg [%s] may not on the DCS white list"

    .line 6
    :try_start_3
    new-array v5, v1, [Ljava/lang/Object;

    aput-object v3, v5, v0

    invoke-static {v4, v5}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-eqz v2, :cond_3

    goto :goto_4

    :goto_3
    const-string v4, "Dcs applyForAccess exception : %s"

    .line 7
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v0

    invoke-static {v4, v1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_3

    .line 8
    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    :goto_5
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 9
    :cond_4
    throw v0
.end method

.method public static synthetic f(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/athena/enatha/enatha;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic g(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/athena/enatha/enatha;->b(Ljava/lang/String;)V

    return-void
.end method

.method private g()Z
    .locals 3

    .line 2
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/athena/aethna/athena;->a()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/athena/config/data/model/athena;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/transsion/athena/config/data/model/athena;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v2
.end method

.method private h()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    iget-object v2, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/transsion/athena/taaneh/aatnhe;->c(Landroid/content/Context;)Z

    move-result v2

    const-string v3, "%s"

    if-nez v2, :cond_0

    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "CheckConfig cancel, network is not available"

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    invoke-static {v1}, Lcom/transsion/athena/config/data/model/ehanat;->a(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/gslb/GslbSdk;->isInitSuccess(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "CheckConfig cancel, GslbSdk is not inited"

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_1
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/transsion/athena/enatha/enatha;->q:Lcom/transsion/athena/aethna/aethna;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/athena/aethna/athena;->a(Landroid/os/Handler;Lcom/transsion/athena/aethna/aethna;)V

    return-void
.end method

.method public static synthetic h(Landroid/util/SparseArray;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/athena/enatha/enatha;->a(Landroid/util/SparseArray;)V

    return-void
.end method

.method private i()V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    iget-object v2, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/transsion/athena/taaneh/aatnhe;->c(Landroid/content/Context;)Z

    move-result v2

    const-string v3, "%s"

    if-nez v2, :cond_0

    .line 3
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "checkUpload network unavailable"

    aput-object v2, v1, v0

    invoke-static {v3, v1}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/transsion/athena/ehatna/aethna;->b()Lcom/transsion/athena/ehatna/aethna;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/athena/ehatna/aethna;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-static {}, Lcom/transsion/athena/ehatna/aethna;->b()Lcom/transsion/athena/ehatna/aethna;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/athena/ehatna/aethna;->e()Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    new-array v2, v1, [Ljava/lang/Object;

    const-string v4, "checkUpload sync baseTime"

    aput-object v4, v2, v0

    invoke-static {v3, v2}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    invoke-static {}, Lcom/transsion/athena/ehatna/aethna;->b()Lcom/transsion/athena/ehatna/aethna;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/athena/ehatna/aethna;->a(Z)V

    .line 8
    invoke-static {}, Lcom/transsion/athena/hatnea/athena;->a()Lcom/transsion/athena/hatnea/athena;

    move-result-object v0

    new-instance v1, Lcom/transsion/athena/hatnea/atnhae;

    iget-object v2, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/transsion/athena/hatnea/atnhae;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/transsion/athena/hatnea/athena;->a(Lcom/transsion/athena/hatnea/anateh;)V

    :cond_1
    return-void

    .line 9
    :cond_2
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->r()Z

    move-result v2

    if-nez v2, :cond_4

    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "checkUpload sdk disable or gaid invalid"

    aput-object v2, v1, v0

    invoke-static {v3, v1}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {v0}, Lm4/a;->a(Landroid/content/Context;)Lm4/a;

    move-result-object v0

    const-string v1, "gdpr_close"

    invoke-virtual {v0, v1}, Lm4/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 13
    invoke-static {}, Lcom/transsion/athena/hatnea/athena;->a()Lcom/transsion/athena/hatnea/athena;

    move-result-object v1

    new-instance v2, Lcom/transsion/athena/hatnea/aethna;

    iget-object v3, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    invoke-direct {v2, v3, v0}, Lcom/transsion/athena/hatnea/aethna;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/transsion/athena/hatnea/athena;->a(Lcom/transsion/athena/hatnea/anateh;)V

    :cond_3
    return-void

    .line 14
    :cond_4
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/gslb/GslbSdk;->isInitSuccess(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 15
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "checkUpload GSLB is not ready"

    aput-object v2, v1, v0

    invoke-static {v3, v1}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 16
    :cond_5
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/athena/aethna/athena;->d()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 17
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "checkUpload global config is not ready"

    aput-object v2, v1, v0

    invoke-static {v3, v1}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 18
    :cond_6
    iget-object v2, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/athena/data/anateh/aethna;->c()Ljava/util/List;

    move-result-object v2

    .line 19
    invoke-static {v2}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 20
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/athena/aethna/athena;->a()Ljava/util/List;

    move-result-object v4

    .line 21
    invoke-static {v4}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 22
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "checkUpload appid config list is null"

    aput-object v2, v1, v0

    invoke-static {v3, v1}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 23
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/athena/config/data/model/athena;

    .line 24
    iget-object v4, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/transsion/athena/config/data/model/athena;->b()I

    move-result v3

    invoke-static {v4, v3}, Lcom/transsion/athena/data/AppIdData;->a(Landroid/content/Context;I)Lcom/transsion/athena/data/AppIdData;

    move-result-object v3

    if-nez v2, :cond_8

    .line 25
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    :cond_8
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v4, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/transsion/athena/data/anateh/aethna;->a(Lcom/transsion/athena/data/AppIdData;)V

    goto :goto_0

    .line 28
    :cond_9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 29
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/athena/data/AppIdData;

    .line 30
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    move-result-object v5

    iget v6, v4, Lcom/transsion/athena/data/AppIdData;->a:I

    invoke-virtual {v5, v6}, Lcom/transsion/athena/aethna/athena;->b(I)Lcom/transsion/athena/config/data/model/athena;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 31
    invoke-virtual {v5}, Lcom/transsion/athena/config/data/model/athena;->h()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 32
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->o()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/transsion/gslb/GslbSdk;->getDomain(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 33
    :cond_b
    invoke-virtual {v5}, Lcom/transsion/athena/config/data/model/athena;->h()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/transsion/athena/config/data/model/ehanat;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/transsion/gslb/GslbSdk;->getDomain(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 34
    :goto_2
    iput-object v5, v4, Lcom/transsion/athena/data/AppIdData;->f:Ljava/lang/String;

    .line 35
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 36
    :cond_c
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    .line 37
    invoke-static {}, Lcom/transsion/athena/hatnea/athena;->a()Lcom/transsion/athena/hatnea/athena;

    move-result-object v1

    new-instance v3, Lcom/transsion/athena/hatnea/hatnea;

    iget-object v6, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    iget-boolean v9, p0, Lcom/transsion/athena/enatha/enatha;->e:Z

    iget-object v10, p0, Lcom/transsion/athena/enatha/enatha;->k:Landroid/util/SparseArray;

    move-object v5, v3

    move-object v8, v2

    invoke-direct/range {v5 .. v10}, Lcom/transsion/athena/hatnea/hatnea;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/util/List;ZLandroid/util/SparseArray;)V

    invoke-virtual {v1, v3}, Lcom/transsion/athena/hatnea/athena;->a(Lcom/transsion/athena/hatnea/anateh;)V

    goto :goto_3

    :cond_d
    return-void
.end method

.method public static synthetic i(Ljava/util/List;Landroid/util/LongSparseArray;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/athena/enatha/enatha;->a(Ljava/util/List;Landroid/util/LongSparseArray;)V

    return-void
.end method

.method private j()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    iput-wide v2, p0, Lcom/transsion/athena/enatha/enatha;->n:J

    .line 8
    .line 9
    iget-object v2, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v2}, Lcom/transsion/athena/taaneh/aatnhe;->c(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iput-boolean v2, p0, Lcom/transsion/athena/enatha/enatha;->m:Z

    .line 16
    .line 17
    invoke-static {}, Lcom/transsion/athena/ehatna/aethna;->b()Lcom/transsion/athena/ehatna/aethna;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lcom/transsion/athena/ehatna/aethna;->d()V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Lcom/transsion/athena/aethna/athena;->h()V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {v2}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    new-instance v3, Lcom/transsion/athena/enatha/a;

    .line 38
    .line 39
    invoke-direct {v3}, Lcom/transsion/athena/enatha/a;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Lcom/transsion/athena/data/anateh/aethna;->a(Lcom/transsion/athena/data/anateh/enatha;)V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->I()Lcom/transsion/ga/AthenaAnalytics$a;

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/transsion/athena/data/athena;->b()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    const-string v4, "page_view"

    .line 59
    .line 60
    const/high16 v5, 0x3f800000    # 1.0f

    .line 61
    .line 62
    invoke-virtual {v3, v2, v4, v5}, Lcom/transsion/athena/aethna/athena;->a(ILjava/lang/String;F)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_0

    .line 67
    .line 68
    move v2, v1

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    move v2, v0

    .line 71
    :goto_0
    invoke-static {v2}, Lcom/transsion/athena/config/data/model/ehanat;->e(Z)V

    .line 72
    .line 73
    .line 74
    :cond_1
    iget-object v2, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    .line 75
    .line 76
    invoke-static {v2}, Lcom/transsion/athena/taaneh/anehat;->c(Landroid/content/Context;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    const-string v3, "%s"

    .line 81
    .line 82
    if-eqz v2, :cond_2

    .line 83
    .line 84
    invoke-direct {p0}, Lcom/transsion/athena/enatha/enatha;->g()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_2

    .line 89
    .line 90
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->r()Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_2

    .line 95
    .line 96
    new-array v2, v1, [Ljava/lang/Object;

    .line 97
    .line 98
    const-string v4, "Dcs available"

    .line 99
    .line 100
    aput-object v4, v2, v0

    .line 101
    .line 102
    invoke-static {v3, v2}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-direct {p0}, Lcom/transsion/athena/enatha/enatha;->f()V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_2
    new-array v2, v1, [Ljava/lang/Object;

    .line 110
    .line 111
    const-string v4, "Dcs unavailable because of not support or conf disable"

    .line 112
    .line 113
    aput-object v4, v2, v0

    .line 114
    .line 115
    invoke-static {v3, v2}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    :goto_1
    iget-object v2, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    .line 119
    .line 120
    sget-object v4, Lcom/transsion/athena/anehat/athena;->a:[Ljava/lang/String;

    .line 121
    .line 122
    new-instance v5, Lcom/transsion/athena/enatha/enatha$aethna;

    .line 123
    .line 124
    invoke-direct {v5, p0}, Lcom/transsion/athena/enatha/enatha$aethna;-><init>(Lcom/transsion/athena/enatha/enatha;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v2, v4, v5}, Lcom/transsion/gslb/GslbSdk;->init(Landroid/content/Context;[Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$InitListener;)V

    .line 128
    .line 129
    .line 130
    iget-object v2, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    .line 131
    .line 132
    new-instance v4, Lcom/transsion/athena/enatha/anehat;

    .line 133
    .line 134
    invoke-direct {v4, v2}, Lcom/transsion/athena/enatha/anehat;-><init>(Landroid/os/Handler;)V

    .line 135
    .line 136
    .line 137
    const-wide/32 v5, 0x6ddd00

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 141
    .line 142
    .line 143
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->V()Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_3

    .line 148
    .line 149
    iget-object v2, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    .line 150
    .line 151
    iget-object v4, p0, Lcom/transsion/athena/enatha/enatha;->r:Ljava/lang/Runnable;

    .line 152
    .line 153
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    .line 155
    .line 156
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    .line 157
    .line 158
    invoke-static {v2}, Lm4/a;->a(Landroid/content/Context;)Lm4/a;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-static {}, Lcom/transsion/athena/data/athena;->a()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    if-eqz v5, :cond_5

    .line 175
    .line 176
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    check-cast v5, Ljava/lang/Integer;

    .line 181
    .line 182
    new-instance v6, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    const-string v7, "first_page_enter_"

    .line 188
    .line 189
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    invoke-virtual {v2, v6}, Lm4/a;->d(Ljava/lang/String;)Z

    .line 200
    .line 201
    .line 202
    move-result v7

    .line 203
    if-eqz v7, :cond_4

    .line 204
    .line 205
    iget-object v7, p0, Lcom/transsion/athena/enatha/enatha;->k:Landroid/util/SparseArray;

    .line 206
    .line 207
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    invoke-virtual {v2, v6}, Lm4/a;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    invoke-virtual {v7, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    goto :goto_2

    .line 219
    :catch_0
    move-exception v2

    .line 220
    goto/16 :goto_5

    .line 221
    .line 222
    :cond_5
    iget-object v2, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    .line 223
    .line 224
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    new-instance v4, Ljava/io/File;

    .line 229
    .line 230
    new-instance v5, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    sget-object v7, Lcom/transsion/athena/config/data/model/ehanat;->k:Ljava/lang/String;

    .line 244
    .line 245
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    new-instance v5, Ljava/io/File;

    .line 256
    .line 257
    new-instance v7, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    sget-object v2, Lcom/transsion/athena/config/data/model/ehanat;->l:Ljava/lang/String;

    .line 269
    .line 270
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->S()Z

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    if-eqz v2, :cond_6

    .line 285
    .line 286
    iput-boolean v1, p0, Lcom/transsion/athena/enatha/enatha;->e:Z

    .line 287
    .line 288
    goto :goto_4

    .line 289
    :cond_6
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    if-eqz v2, :cond_9

    .line 294
    .line 295
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    if-eqz v2, :cond_8

    .line 300
    .line 301
    array-length v2, v2

    .line 302
    if-nez v2, :cond_7

    .line 303
    .line 304
    goto :goto_3

    .line 305
    :cond_7
    iput-boolean v1, p0, Lcom/transsion/athena/enatha/enatha;->e:Z

    .line 306
    .line 307
    goto :goto_4

    .line 308
    :cond_8
    :goto_3
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    if-eqz v2, :cond_9

    .line 313
    .line 314
    new-array v2, v1, [Ljava/lang/Object;

    .line 315
    .line 316
    const-string v4, "dataFile deleted"

    .line 317
    .line 318
    aput-object v4, v2, v0

    .line 319
    .line 320
    invoke-static {v3, v2}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    :cond_9
    :goto_4
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 324
    .line 325
    .line 326
    move-result v2

    .line 327
    if-eqz v2, :cond_a

    .line 328
    .line 329
    iget-object v2, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    .line 330
    .line 331
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    invoke-static {v2, v4}, Lcom/transsion/athena/taaneh/athena;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    .line 337
    .line 338
    goto :goto_6

    .line 339
    :goto_5
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v4

    .line 343
    new-array v5, v1, [Ljava/lang/Object;

    .line 344
    .line 345
    aput-object v4, v5, v0

    .line 346
    .line 347
    invoke-static {v3, v5}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    .line 349
    .line 350
    const-string v0, "handleInit"

    .line 351
    .line 352
    invoke-direct {p0, v0, v2}, Lcom/transsion/athena/enatha/enatha;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 353
    .line 354
    .line 355
    :cond_a
    :goto_6
    iget-object v0, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    .line 356
    .line 357
    const/16 v2, 0x1f6

    .line 358
    .line 359
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 364
    .line 365
    iget-object v1, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    .line 366
    .line 367
    const-wide/16 v2, 0xbb8

    .line 368
    .line 369
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 370
    .line 371
    .line 372
    iget-boolean v0, p0, Lcom/transsion/athena/enatha/enatha;->g:Z

    .line 373
    .line 374
    if-nez v0, :cond_b

    .line 375
    .line 376
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    invoke-virtual {v0}, Lcom/transsion/athena/aethna/athena;->g()I

    .line 381
    .line 382
    .line 383
    move-result v0

    .line 384
    mul-int/lit16 v0, v0, 0x3e8

    .line 385
    .line 386
    iput v0, p0, Lcom/transsion/athena/enatha/enatha;->f:I

    .line 387
    .line 388
    :cond_b
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x134

    .line 311
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 312
    iget-object v1, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    const/16 v0, 0x7d0

    .line 290
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/athena/enatha/enatha;->f:I

    const/4 p1, 0x1

    .line 291
    iput-boolean p1, p0, Lcom/transsion/athena/enatha/enatha;->g:Z

    return-void
.end method

.method public a(Landroid/os/Message;J)V
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_0

    .line 308
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Runnable;J)V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V
    .locals 1

    .line 292
    new-instance v0, Lcom/transsion/athena/data/Track;

    invoke-direct {v0}, Lcom/transsion/athena/data/Track;-><init>()V

    .line 293
    invoke-virtual {v0, p1}, Lcom/transsion/athena/data/Track;->setEventName(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v0, p3, p4}, Lcom/transsion/athena/data/Track;->setTid(J)V

    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {v0, p3, p4}, Lcom/transsion/athena/data/Track;->setTrackTs(J)V

    .line 296
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    invoke-virtual {v0, p3, p4}, Lcom/transsion/athena/data/Track;->setTrackErTs(J)V

    .line 297
    invoke-virtual {v0, p2}, Lcom/transsion/athena/data/Track;->setTrackData(Lcom/transsion/athena/data/TrackData;)V

    .line 298
    iget p1, p0, Lcom/transsion/athena/enatha/enatha;->h:I

    const/16 p2, 0x1388

    if-ge p1, p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 299
    iput p1, p0, Lcom/transsion/athena/enatha/enatha;->h:I

    .line 300
    iget-object p1, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    const/16 p2, 0x12e

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 301
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 302
    iget-object p2, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/transsion/athena/enatha/enatha;->d:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x1f8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/transsion/athena/enatha/enatha;->f:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {p0, v2, v0, v1}, Lcom/transsion/athena/enatha/enatha;->a(ZJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "first_init"

    .line 3
    .line 4
    const-string v2, "_eparam"

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    iput-boolean v3, p0, Lcom/transsion/athena/enatha/enatha;->d:Z

    .line 8
    .line 9
    :try_start_0
    iget v4, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 10
    .line 11
    const/16 v5, 0x12a

    .line 12
    .line 13
    const/16 v6, 0x12b

    .line 14
    .line 15
    if-eq v4, v5, :cond_e

    .line 16
    .line 17
    if-eq v4, v6, :cond_d

    .line 18
    .line 19
    const/16 v5, 0x12e

    .line 20
    .line 21
    const-wide/16 v7, 0x0

    .line 22
    .line 23
    if-eq v4, v5, :cond_5

    .line 24
    .line 25
    const/16 v2, 0x12f

    .line 26
    .line 27
    if-eq v4, v2, :cond_4

    .line 28
    .line 29
    const/16 v2, 0x134

    .line 30
    .line 31
    if-eq v4, v2, :cond_3

    .line 32
    .line 33
    const/16 v2, 0x190

    .line 34
    .line 35
    if-eq v4, v2, :cond_2

    .line 36
    .line 37
    const/16 v2, 0x258

    .line 38
    .line 39
    if-eq v4, v2, :cond_e

    .line 40
    .line 41
    packed-switch v4, :pswitch_data_0

    .line 42
    .line 43
    .line 44
    goto/16 :goto_8

    .line 45
    .line 46
    :pswitch_0
    :try_start_1
    iget-object p1, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eqz p1, :cond_12

    .line 53
    .line 54
    iget-object p1, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcom/transsion/athena/data/anateh/aethna;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 61
    .line 62
    .line 63
    goto/16 :goto_8

    .line 64
    .line 65
    :catch_0
    move-exception p1

    .line 66
    :try_start_2
    const-string v1, "disconnectDB"

    .line 67
    .line 68
    invoke-direct {p0, v1, p1}, Lcom/transsion/athena/enatha/enatha;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_8

    .line 72
    .line 73
    :catch_1
    move-exception p1

    .line 74
    goto/16 :goto_7

    .line 75
    .line 76
    :pswitch_1
    invoke-static {}, Lcom/transsion/athena/ehatna/aethna;->b()Lcom/transsion/athena/ehatna/aethna;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast p1, Ljava/lang/Long;

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 85
    .line 86
    .line 87
    move-result-wide v4

    .line 88
    invoke-virtual {v1, v4, v5}, Lcom/transsion/athena/ehatna/aethna;->a(J)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_0

    .line 93
    .line 94
    invoke-static {}, Lcom/transsion/athena/ehatna/aethna;->b()Lcom/transsion/athena/ehatna/aethna;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p1}, Lcom/transsion/athena/ehatna/aethna;->a()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {}, Lcom/transsion/athena/ehatna/aethna;->b()Lcom/transsion/athena/ehatna/aethna;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lcom/transsion/athena/ehatna/aethna;->c()J

    .line 107
    .line 108
    .line 109
    move-result-wide v1

    .line 110
    cmp-long v4, v1, v7

    .line 111
    .line 112
    if-lez v4, :cond_0

    .line 113
    .line 114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-nez v4, :cond_0

    .line 119
    .line 120
    iget-object v4, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    .line 121
    .line 122
    invoke-static {v4}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {v4, p1, v1, v2}, Lcom/transsion/athena/data/anateh/aethna;->a(Ljava/lang/String;J)V

    .line 127
    .line 128
    .line 129
    :cond_0
    iget p1, p0, Lcom/transsion/athena/enatha/enatha;->f:I

    .line 130
    .line 131
    int-to-long v1, p1

    .line 132
    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/athena/enatha/enatha;->a(ZJ)V

    .line 133
    .line 134
    .line 135
    goto/16 :goto_8

    .line 136
    .line 137
    :pswitch_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 138
    .line 139
    if-ne p1, v3, :cond_1

    .line 140
    .line 141
    move p1, v3

    .line 142
    goto :goto_0

    .line 143
    :cond_1
    move p1, v0

    .line 144
    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/athena/enatha/enatha;->a(Z)V

    .line 145
    .line 146
    .line 147
    goto/16 :goto_8

    .line 148
    .line 149
    :cond_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 150
    .line 151
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast p1, Ljava/lang/String;

    .line 154
    .line 155
    invoke-direct {p0, v1, p1}, Lcom/transsion/athena/enatha/enatha;->a(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 156
    .line 157
    .line 158
    goto/16 :goto_8

    .line 159
    .line 160
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p1}, Lcom/transsion/athena/aethna/athena;->j()V

    .line 165
    .line 166
    .line 167
    iget-object p1, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    .line 168
    .line 169
    invoke-static {p1}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    if-eqz p1, :cond_12

    .line 174
    .line 175
    iget-object p1, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    .line 176
    .line 177
    invoke-static {p1}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p1}, Lcom/transsion/athena/data/anateh/aethna;->a()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 182
    .line 183
    .line 184
    goto/16 :goto_8

    .line 185
    .line 186
    :catch_2
    move-exception p1

    .line 187
    :try_start_4
    const-string v1, "handleCleanupData"

    .line 188
    .line 189
    invoke-direct {p0, v1, p1}, Lcom/transsion/athena/enatha/enatha;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    .line 191
    .line 192
    goto/16 :goto_8

    .line 193
    .line 194
    :cond_4
    sget-object p1, Lcom/transsion/athena/taaneh/aethna;->a:Lcom/transsion/core/log/ObjectLogUtils;

    .line 195
    .line 196
    invoke-virtual {p1}, Lcom/transsion/core/log/ObjectLogUtils;->m()Lcom/transsion/core/log/ObjectLogUtils$a;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->q()Z

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    invoke-virtual {p1, v1}, Lcom/transsion/core/log/ObjectLogUtils$a;->r(Z)Lcom/transsion/core/log/ObjectLogUtils$a;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 205
    .line 206
    .line 207
    const-string p1, "Athena init, SDK Version is [%s]"

    .line 208
    .line 209
    :try_start_5
    new-array v1, v3, [Ljava/lang/Object;

    .line 210
    .line 211
    const-string v2, "3.1.1.4"

    .line 212
    .line 213
    aput-object v2, v1, v0

    .line 214
    .line 215
    invoke-static {p1, v1}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    invoke-direct {p0}, Lcom/transsion/athena/enatha/enatha;->j()V

    .line 219
    .line 220
    .line 221
    invoke-direct {p0}, Lcom/transsion/athena/enatha/enatha;->h()V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_8

    .line 225
    .line 226
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast p1, Lcom/transsion/athena/data/Track;

    .line 229
    .line 230
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTrackData()Lcom/transsion/athena/data/TrackData;

    .line 231
    .line 232
    .line 233
    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 234
    :try_start_6
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    const-string v5, "page_enter"

    .line 239
    .line 240
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v4

    .line 244
    if-eqz v4, :cond_6

    .line 245
    .line 246
    invoke-static {}, Lcom/transsion/athena/taaneh/athena;->d()Landroid/app/Activity;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    if-eqz v4, :cond_6

    .line 251
    .line 252
    invoke-static {}, Lcom/transsion/athena/taaneh/athena;->d()Landroid/app/Activity;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    invoke-static {v4}, Lcom/transsion/athena/taaneh/athena;->a(Landroid/app/Activity;)I

    .line 257
    .line 258
    .line 259
    move-result v4

    .line 260
    const-string v5, "fromsite"

    .line 261
    .line 262
    invoke-virtual {v1, v5, v4}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 263
    .line 264
    .line 265
    goto :goto_1

    .line 266
    :catch_3
    move-exception v4

    .line 267
    :try_start_7
    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    invoke-static {v4}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 272
    .line 273
    .line 274
    :cond_6
    :goto_1
    :try_start_8
    invoke-virtual {v1}, Lcom/transsion/athena/data/TrackData;->a()Lorg/json/JSONObject;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    sget-object v5, Lcom/transsion/athena/config/data/model/ehanat;->h:Ljava/lang/String;

    .line 279
    .line 280
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 281
    .line 282
    .line 283
    move-result v5

    .line 284
    if-eqz v5, :cond_8

    .line 285
    .line 286
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v5

    .line 290
    instance-of v6, v5, Lorg/json/JSONArray;

    .line 291
    .line 292
    if-eqz v6, :cond_7

    .line 293
    .line 294
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    .line 295
    .line 296
    .line 297
    move-result v6

    .line 298
    if-le v6, v3, :cond_7

    .line 299
    .line 300
    new-instance v5, Lorg/json/JSONObject;

    .line 301
    .line 302
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 303
    .line 304
    .line 305
    goto :goto_2

    .line 306
    :catch_4
    move-exception v1

    .line 307
    goto :goto_4

    .line 308
    :cond_7
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    goto :goto_2

    .line 312
    :cond_8
    new-instance v5, Lorg/json/JSONObject;

    .line 313
    .line 314
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 315
    .line 316
    .line 317
    :goto_2
    instance-of v6, v5, Lorg/json/JSONObject;

    .line 318
    .line 319
    if-eqz v6, :cond_9

    .line 320
    .line 321
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    .line 322
    .line 323
    .line 324
    move-result v6

    .line 325
    if-lez v6, :cond_9

    .line 326
    .line 327
    invoke-virtual {v4}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    .line 328
    .line 329
    .line 330
    move-result-object v6

    .line 331
    move v9, v0

    .line 332
    :goto_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    .line 333
    .line 334
    .line 335
    move-result v10

    .line 336
    if-ge v9, v10, :cond_9

    .line 337
    .line 338
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v10

    .line 342
    move-object v11, v5

    .line 343
    check-cast v11, Lorg/json/JSONObject;

    .line 344
    .line 345
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v12

    .line 349
    invoke-virtual {v11, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    add-int/2addr v9, v3

    .line 356
    goto :goto_3

    .line 357
    :cond_9
    new-instance v6, Lorg/json/JSONObject;

    .line 358
    .line 359
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v9

    .line 363
    invoke-direct {v6, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 367
    .line 368
    .line 369
    const-string v2, "net"

    .line 370
    .line 371
    :try_start_9
    iget-object v5, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    .line 372
    .line 373
    invoke-static {v5}, Lcom/transsion/athena/taaneh/aatnhe;->b(Landroid/content/Context;)I

    .line 374
    .line 375
    .line 376
    move-result v5

    .line 377
    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 378
    .line 379
    .line 380
    const-string v2, "event"

    .line 381
    .line 382
    :try_start_a
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v5

    .line 386
    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 387
    .line 388
    .line 389
    invoke-virtual {p1, v4}, Lcom/transsion/athena/data/Track;->setJsonData(Lorg/json/JSONObject;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {p1, v6}, Lcom/transsion/athena/data/Track;->setOriginJsonData(Lorg/json/JSONObject;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v1}, Lcom/transsion/athena/data/TrackData;->d()I

    .line 396
    .line 397
    .line 398
    move-result v1

    .line 399
    invoke-virtual {p1, v1}, Lcom/transsion/athena/data/Track;->setTrackFlag(I)V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 400
    .line 401
    .line 402
    goto :goto_5

    .line 403
    :goto_4
    const-string v2, "Record track exception : %s"

    .line 404
    .line 405
    :try_start_b
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    new-array v4, v3, [Ljava/lang/Object;

    .line 410
    .line 411
    aput-object v1, v4, v0

    .line 412
    .line 413
    invoke-static {v2, v4}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 414
    .line 415
    .line 416
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 417
    .line 418
    .line 419
    move-result-wide v1

    .line 420
    iget-wide v4, p0, Lcom/transsion/athena/enatha/enatha;->n:J

    .line 421
    .line 422
    sub-long v4, v1, v4

    .line 423
    .line 424
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    .line 425
    .line 426
    .line 427
    move-result-wide v4

    .line 428
    const-wide/32 v9, 0x36ee80

    .line 429
    .line 430
    .line 431
    cmp-long v4, v4, v9

    .line 432
    .line 433
    if-lez v4, :cond_a

    .line 434
    .line 435
    iput-wide v1, p0, Lcom/transsion/athena/enatha/enatha;->n:J

    .line 436
    .line 437
    iget-object v1, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    .line 438
    .line 439
    invoke-static {v1}, Lcom/transsion/athena/taaneh/aatnhe;->c(Landroid/content/Context;)Z

    .line 440
    .line 441
    .line 442
    move-result v1

    .line 443
    iput-boolean v1, p0, Lcom/transsion/athena/enatha/enatha;->m:Z

    .line 444
    .line 445
    :cond_a
    iget v1, p0, Lcom/transsion/athena/enatha/enatha;->h:I

    .line 446
    .line 447
    sub-int/2addr v1, v3

    .line 448
    iput v1, p0, Lcom/transsion/athena/enatha/enatha;->h:I

    .line 449
    .line 450
    iget-boolean v1, p0, Lcom/transsion/athena/enatha/enatha;->m:Z

    .line 451
    .line 452
    if-nez v1, :cond_b

    .line 453
    .line 454
    iget-boolean v1, p0, Lcom/transsion/athena/enatha/enatha;->o:Z

    .line 455
    .line 456
    if-eqz v1, :cond_b

    .line 457
    .line 458
    sget-boolean v1, Lcom/transsion/athena/config/data/model/ehanat;->R:Z

    .line 459
    .line 460
    if-eqz v1, :cond_b

    .line 461
    .line 462
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->S()Z

    .line 463
    .line 464
    .line 465
    move-result v1

    .line 466
    if-nez v1, :cond_b

    .line 467
    .line 468
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getTid()J

    .line 469
    .line 470
    .line 471
    move-result-wide v1

    .line 472
    invoke-static {v1, v2}, Lcom/transsion/athena/taaneh/anehat;->a(J)I

    .line 473
    .line 474
    .line 475
    move-result v1

    .line 476
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    invoke-virtual {v2, v1}, Lcom/transsion/athena/aethna/athena;->b(I)Lcom/transsion/athena/config/data/model/athena;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    if-eqz v1, :cond_b

    .line 485
    .line 486
    invoke-virtual {v1}, Lcom/transsion/athena/config/data/model/athena;->a()Z

    .line 487
    .line 488
    .line 489
    move-result v1

    .line 490
    if-eqz v1, :cond_b

    .line 491
    .line 492
    invoke-direct {p0, p1}, Lcom/transsion/athena/enatha/enatha;->b(Lcom/transsion/athena/data/Track;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 493
    .line 494
    .line 495
    goto :goto_6

    .line 496
    :cond_b
    const-string v1, "ev_athena"

    .line 497
    .line 498
    :try_start_c
    invoke-virtual {p1}, Lcom/transsion/athena/data/Track;->getEventName()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 503
    .line 504
    .line 505
    move-result v1

    .line 506
    if-nez v1, :cond_c

    .line 507
    .line 508
    invoke-direct {p0}, Lcom/transsion/athena/enatha/enatha;->h()V

    .line 509
    .line 510
    .line 511
    :cond_c
    invoke-direct {p0, p1}, Lcom/transsion/athena/enatha/enatha;->a(Lcom/transsion/athena/data/Track;)V

    .line 512
    .line 513
    .line 514
    :goto_6
    iget-boolean p1, p0, Lcom/transsion/athena/enatha/enatha;->m:Z

    .line 515
    .line 516
    if-nez p1, :cond_12

    .line 517
    .line 518
    iget-boolean p1, p0, Lcom/transsion/athena/enatha/enatha;->o:Z

    .line 519
    .line 520
    if-nez p1, :cond_12

    .line 521
    .line 522
    sget-boolean p1, Lcom/transsion/athena/config/data/model/ehanat;->R:Z

    .line 523
    .line 524
    if-eqz p1, :cond_12

    .line 525
    .line 526
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->r()Z

    .line 527
    .line 528
    .line 529
    move-result p1

    .line 530
    if-eqz p1, :cond_12

    .line 531
    .line 532
    iget-wide v1, p0, Lcom/transsion/athena/enatha/enatha;->p:J

    .line 533
    .line 534
    const-wide/16 v4, 0x1

    .line 535
    .line 536
    add-long/2addr v1, v4

    .line 537
    iput-wide v1, p0, Lcom/transsion/athena/enatha/enatha;->p:J

    .line 538
    .line 539
    invoke-direct {p0}, Lcom/transsion/athena/enatha/enatha;->g()Z

    .line 540
    .line 541
    .line 542
    move-result p1

    .line 543
    if-eqz p1, :cond_12

    .line 544
    .line 545
    iget-wide v1, p0, Lcom/transsion/athena/enatha/enatha;->p:J

    .line 546
    .line 547
    const/16 p1, 0x14

    .line 548
    .line 549
    int-to-long v4, p1

    .line 550
    rem-long v9, v1, v4

    .line 551
    .line 552
    cmp-long p1, v9, v7

    .line 553
    .line 554
    if-nez p1, :cond_12

    .line 555
    .line 556
    div-long/2addr v1, v4

    .line 557
    const-wide/16 v4, 0x3

    .line 558
    .line 559
    cmp-long p1, v1, v4

    .line 560
    .line 561
    if-gtz p1, :cond_12

    .line 562
    .line 563
    iget-object p1, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    .line 564
    .line 565
    invoke-static {p1}, Lcom/transsion/athena/taaneh/anehat;->c(Landroid/content/Context;)Z

    .line 566
    .line 567
    .line 568
    move-result p1

    .line 569
    if-eqz p1, :cond_12

    .line 570
    .line 571
    invoke-direct {p0}, Lcom/transsion/athena/enatha/enatha;->f()V

    .line 572
    .line 573
    .line 574
    goto :goto_8

    .line 575
    :cond_d
    invoke-direct {p0}, Lcom/transsion/athena/enatha/enatha;->i()V

    .line 576
    .line 577
    .line 578
    goto :goto_8

    .line 579
    :cond_e
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 580
    .line 581
    if-ne p1, v3, :cond_f

    .line 582
    .line 583
    invoke-direct {p0}, Lcom/transsion/athena/enatha/enatha;->h()V

    .line 584
    .line 585
    .line 586
    :cond_f
    iget-object p1, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    .line 587
    .line 588
    invoke-virtual {p1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    .line 589
    .line 590
    .line 591
    move-result p1

    .line 592
    if-nez p1, :cond_12

    .line 593
    .line 594
    iget-object p1, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    .line 595
    .line 596
    sget v2, Lcom/transsion/athena/taaneh/anehat;->e:I

    .line 597
    .line 598
    invoke-static {p1}, Lm4/a;->a(Landroid/content/Context;)Lm4/a;

    .line 599
    .line 600
    .line 601
    move-result-object p1

    .line 602
    invoke-virtual {p1, v1}, Lm4/a;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object p1

    .line 606
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 607
    .line 608
    .line 609
    move-result p1

    .line 610
    if-eqz p1, :cond_10

    .line 611
    .line 612
    sget-boolean p1, Lcom/transsion/athena/config/data/model/ehanat;->K:Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 613
    .line 614
    if-eqz p1, :cond_10

    .line 615
    .line 616
    const-string p1, "First init delay %d s upload!"

    .line 617
    .line 618
    :try_start_d
    sget v2, Lcom/transsion/ga/AthenaAnalytics;->p:I

    .line 619
    .line 620
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 621
    .line 622
    .line 623
    move-result-object v2

    .line 624
    new-array v4, v3, [Ljava/lang/Object;

    .line 625
    .line 626
    aput-object v2, v4, v0

    .line 627
    .line 628
    invoke-static {p1, v4}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 629
    .line 630
    .line 631
    iget-object p1, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    .line 632
    .line 633
    sget v2, Lcom/transsion/ga/AthenaAnalytics;->p:I

    .line 634
    .line 635
    int-to-long v4, v2

    .line 636
    const-wide/16 v7, 0x3e8

    .line 637
    .line 638
    mul-long/2addr v4, v7

    .line 639
    invoke-virtual {p1, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 640
    .line 641
    .line 642
    iget-object p1, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    .line 643
    .line 644
    invoke-static {p1}, Lm4/a;->a(Landroid/content/Context;)Lm4/a;

    .line 645
    .line 646
    .line 647
    move-result-object p1

    .line 648
    const-string v2, "false"

    .line 649
    .line 650
    invoke-virtual {p1, v1, v2}, Lm4/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    goto :goto_8

    .line 654
    :cond_10
    iget-object p1, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    .line 655
    .line 656
    invoke-static {p1, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 657
    .line 658
    .line 659
    move-result-object v1

    .line 660
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    .line 661
    .line 662
    .line 663
    goto :goto_8

    .line 664
    :goto_7
    invoke-static {}, Lcom/transsion/athena/taaneh/anehat;->b()Z

    .line 665
    .line 666
    .line 667
    move-result v1

    .line 668
    if-eqz v1, :cond_11

    .line 669
    .line 670
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v1

    .line 674
    new-array v2, v3, [Ljava/lang/Object;

    .line 675
    .line 676
    aput-object v1, v2, v0

    .line 677
    .line 678
    const-string v1, "Worker handle message exception : %s"

    .line 679
    .line 680
    invoke-static {v1, v2}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 681
    .line 682
    .line 683
    :cond_11
    const-string v1, "handleMessage"

    .line 684
    .line 685
    invoke-direct {p0, v1, p1}, Lcom/transsion/athena/enatha/enatha;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 686
    .line 687
    .line 688
    :cond_12
    :goto_8
    iput-boolean v0, p0, Lcom/transsion/athena/enatha/enatha;->d:Z

    .line 689
    .line 690
    return v0

    .line 691
    :pswitch_data_0
    .packed-switch 0x1f6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
