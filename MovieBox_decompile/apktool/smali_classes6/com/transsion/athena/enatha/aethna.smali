.class public Lcom/transsion/athena/enatha/aethna;
.super Lcom/transsion/athena/enatha/athena;
.source "source.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static volatile c:Lcom/transsion/athena/enatha/aethna;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private d:I

.field private e:I

.field private f:J


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
    iput p1, p0, Lcom/transsion/athena/enatha/aethna;->d:I

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/transsion/athena/enatha/aethna;->f:J

    .line 10
    .line 11
    new-instance p1, Landroid/os/HandlerThread;

    .line 12
    .line 13
    const-string v0, "Athena-LiteWorker"

    .line 14
    .line 15
    const/16 v1, 0xa

    .line 16
    .line 17
    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 21
    .line 22
    .line 23
    new-instance v0, Landroid/os/Handler;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    .line 33
    .line 34
    const/16 p1, 0x12f

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/transsion/athena/enatha/aethna;
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/athena/enatha/aethna;->c:Lcom/transsion/athena/enatha/aethna;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/transsion/athena/enatha/aethna;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/transsion/athena/enatha/aethna;->c:Lcom/transsion/athena/enatha/aethna;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/transsion/athena/enatha/aethna;

    invoke-direct {v1, p0}, Lcom/transsion/athena/enatha/aethna;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/transsion/athena/enatha/aethna;->c:Lcom/transsion/athena/enatha/aethna;

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
    sget-object p0, Lcom/transsion/athena/enatha/aethna;->c:Lcom/transsion/athena/enatha/aethna;

    return-object p0
.end method

.method private a(ILjava/lang/String;)V
    .locals 3

    .line 17
    iget v0, p0, Lcom/transsion/athena/enatha/aethna;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 18
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "appId"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 20
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "baseInfo"

    if-nez v1, :cond_0

    .line 21
    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_0
    iget-object p2, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/transsion/athena/data/AppIdData;->a(Landroid/content/Context;I)Lcom/transsion/athena/data/AppIdData;

    move-result-object p1

    .line 23
    iget-object p1, p1, Lcom/transsion/athena/data/AppIdData;->b:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :goto_0
    iget-object p1, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "content://com.transsion.dataservice.provider/bind"

    .line 26
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1

    :cond_1
    const-string p1, "Failed to connect to DCS service"

    .line 27
    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private a(Lcom/transsion/athena/data/aethna;)V
    .locals 7

    .line 28
    iget v0, p0, Lcom/transsion/athena/enatha/aethna;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 29
    iget-object v0, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "content://com.transsion.dataservice.provider/property"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v0, p1, Lcom/transsion/athena/data/aethna;->a:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v4, "prop_key = ?"

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 30
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 31
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 32
    iget-object p1, p1, Lcom/transsion/athena/data/aethna;->b:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 33
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    const-string p1, "Failed to connect to DCS service"

    .line 34
    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 8

    .line 7
    iget v0, p0, Lcom/transsion/athena/enatha/aethna;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 8
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "trackObject"

    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "content://com.transsion.dataservice.provider/track"

    .line 11
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const-string p1, "Failed to connect to DCS service"

    .line 12
    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;)V

    .line 13
    iget-wide v0, p0, Lcom/transsion/athena/enatha/aethna;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/athena/enatha/aethna;->f:J

    const/16 p1, 0x14

    int-to-long v2, p1

    .line 14
    rem-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-nez p1, :cond_1

    div-long/2addr v0, v2

    const-wide/16 v2, 0x5

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1

    .line 15
    iget-object p1, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/athena/taaneh/anehat;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 16
    invoke-direct {p0}, Lcom/transsion/athena/enatha/aethna;->f()V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 64
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    :catch_0
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    return-void
.end method

.method private f()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v0, "content://com.transsion.dataservice.provider/authorize"

    .line 8
    .line 9
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v0, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/transsion/athena/taaneh/athena;->h(Landroid/content/Context;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    filled-new-array {v0}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    const-string v4, "pkg = ?"

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v2, "DCS authorize "

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const/4 v3, 0x1

    .line 48
    if-ne v2, v3, :cond_0

    .line 49
    .line 50
    const-string v2, "enable"

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const-string v2, "disable"

    .line 54
    .line 55
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v1}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-ne v1, v3, :cond_1

    .line 70
    .line 71
    iput v3, p0, Lcom/transsion/athena/enatha/aethna;->d:I

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    const/4 v1, 0x2

    .line 75
    iput v1, p0, Lcom/transsion/athena/enatha/aethna;->d:I

    .line 76
    .line 77
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 78
    .line 79
    .line 80
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;J)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Runnable;J)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V
    .locals 2

    .line 35
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "event"

    .line 36
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "tid"

    .line 37
    invoke-virtual {v0, p1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "type"

    .line 38
    :try_start_1
    invoke-virtual {p2}, Lcom/transsion/athena/data/TrackData;->d()I

    move-result p3

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 39
    invoke-virtual {p2}, Lcom/transsion/athena/data/TrackData;->a()Lorg/json/JSONObject;

    move-result-object p1

    .line 40
    sget-object p2, Lcom/transsion/athena/config/data/model/ehanat;->h:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string p2, "_apkg"

    .line 41
    :try_start_2
    iget-object p3, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/transsion/athena/taaneh/athena;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/athena/enatha/aethna;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string p2, "_avn"

    .line 42
    :try_start_3
    iget-object p3, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/transsion/athena/taaneh/athena;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/athena/enatha/aethna;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string p2, "_avc"

    .line 43
    :try_start_4
    iget-object p3, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/transsion/athena/taaneh/athena;->i(Landroid/content/Context;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/athena/enatha/aethna;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    const-string p2, "_atutp"

    .line 44
    :try_start_5
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->c()S

    move-result p3

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/athena/enatha/aethna;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    const-string p2, "_atuid"

    .line 45
    :try_start_6
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->b()Ljava/lang/String;

    move-result-object p3
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    :try_start_7
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/athena/enatha/aethna;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    const-string p2, "_achannel"

    .line 46
    :try_start_8
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->g()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/athena/enatha/aethna;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    const-string p2, "_ainstallchnl"

    .line 47
    :try_start_9
    iget-object p3, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/transsion/athena/taaneh/athena;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0

    if-eqz p3, :cond_1

    const-string p3, " "

    goto :goto_0

    .line 48
    :cond_1
    :try_start_a
    iget-object p3, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/transsion/athena/taaneh/athena;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    .line 49
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/athena/enatha/aethna;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "_eparam"

    .line 50
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 51
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 52
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 53
    iget p2, p0, Lcom/transsion/athena/enatha/aethna;->e:I

    const/16 p3, 0x1388

    if-ge p2, p3, :cond_2

    add-int/lit8 p2, p2, 0x1

    .line 54
    iput p2, p0, Lcom/transsion/athena/enatha/aethna;->e:I

    .line 55
    iget-object p2, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    const/16 p3, 0x12e

    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 56
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 57
    iget-object p1, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v1, 0x12e

    .line 4
    .line 5
    if-eq v0, v1, :cond_4

    .line 6
    .line 7
    const/16 v1, 0x12f

    .line 8
    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    const/16 v1, 0x190

    .line 12
    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const/16 v1, 0x195

    .line 16
    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Lcom/transsion/athena/data/aethna;

    .line 23
    .line 24
    invoke-direct {p0, p1}, Lcom/transsion/athena/enatha/aethna;->a(Lcom/transsion/athena/data/aethna;)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :catch_0
    move-exception p1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 31
    .line 32
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Ljava/lang/String;

    .line 35
    .line 36
    invoke-direct {p0, v0, p1}, Lcom/transsion/athena/enatha/aethna;->a(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    sget-object p1, Lcom/transsion/athena/taaneh/aethna;->a:Lcom/transsion/core/log/ObjectLogUtils;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/transsion/core/log/ObjectLogUtils;->m()Lcom/transsion/core/log/ObjectLogUtils$a;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->q()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils$a;->r(Z)Lcom/transsion/core/log/ObjectLogUtils$a;

    .line 51
    .line 52
    .line 53
    const-string p1, "Athena SDK Version is 3.1.1.4"

    .line 54
    .line 55
    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string p1, "Athena is in Lite mode"

    .line 59
    .line 60
    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lcom/transsion/athena/data/athena;->b()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_3

    .line 68
    .line 69
    const-string p1, "HostAppId must be set up in LiteMode"

    .line 70
    .line 71
    invoke-static {p1}, Lcom/transsion/athena/taaneh/anehat;->a(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    invoke-direct {p0}, Lcom/transsion/athena/enatha/aethna;->f()V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    iget v0, p0, Lcom/transsion/athena/enatha/aethna;->e:I

    .line 79
    .line 80
    add-int/lit8 v0, v0, -0x1

    .line 81
    .line 82
    iput v0, p0, Lcom/transsion/athena/enatha/aethna;->e:I

    .line 83
    .line 84
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast p1, Ljava/lang/String;

    .line 87
    .line 88
    invoke-direct {p0, p1}, Lcom/transsion/athena/enatha/aethna;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :goto_0
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :goto_1
    const/4 p1, 0x0

    .line 100
    return p1
.end method
