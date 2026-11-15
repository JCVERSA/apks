.class public Lcom/mgtv/data/aphone/b/a/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/mgtv/data/aphone/b/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/mgtv/task/g;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lcom/mgtv/task/m;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/mgtv/data/aphone/b/c/a;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/mgtv/data/aphone/b/c/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mgtv/data/aphone/b/c/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Lcom/mgtv/task/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mgtv/task/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgtv/data/aphone/b/a/a;->b:Lcom/mgtv/task/m;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mgtv/data/aphone/b/a/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/mgtv/data/aphone/b/a/a;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/mgtv/data/aphone/b/a/a;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/mgtv/data/aphone/b/a/a;->h:Ljava/lang/String;

    iput-object p4, p0, Lcom/mgtv/data/aphone/b/a/a;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/mgtv/data/aphone/b/a/a;->e:Ljava/util/HashMap;

    iput-object p6, p0, Lcom/mgtv/data/aphone/b/a/a;->f:Lcom/mgtv/data/aphone/b/c/a;

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/data/aphone/b/a/a;)Lcom/mgtv/data/aphone/b/c/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/data/aphone/b/a/a;->f:Lcom/mgtv/data/aphone/b/c/a;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    sget-object p0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_APPLS:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    invoke-virtual {p0}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->getEventId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_PHONEWIFI:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    .line 31
    invoke-virtual {p0}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->getEventId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_OFLHB:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    .line 32
    invoke-virtual {p0}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->getEventId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\"

    const-string p2, ""

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\"["

    const-string p2, "["

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "]\""

    const-string p2, "]"

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public varargs declared-synchronized a([Ljava/lang/String;)Lcom/mgtv/data/aphone/b/b/a;
    .locals 10

    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lcom/mgtv/data/aphone/b/b/a;

    invoke-direct {v0}, Lcom/mgtv/data/aphone/b/b/a;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/mgtv/data/aphone/b/a/a;->c:Landroid/content/Context;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 4
    aget-object v2, p1, v1

    const/4 v3, -0x1

    if-nez v2, :cond_0

    .line 5
    iput v3, v0, Lcom/mgtv/data/aphone/b/b/a;->b:I

    .line 6
    const-string p1, "\u8bf7\u6c42\u5730\u5740\u4e3a\u7a7a"

    iput-object p1, v0, Lcom/mgtv/data/aphone/b/b/a;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 8
    :cond_0
    :try_start_1
    new-instance v4, Lcom/mgtv/data/aphone/b/a;

    invoke-direct {v4}, Lcom/mgtv/data/aphone/b/a;-><init>()V

    aget-object v5, p1, v1

    iget-object v6, p0, Lcom/mgtv/data/aphone/b/a/a;->g:Ljava/lang/String;

    iget-object v7, p0, Lcom/mgtv/data/aphone/b/a/a;->h:Ljava/lang/String;

    iget-object v8, p0, Lcom/mgtv/data/aphone/b/a/a;->d:Ljava/lang/String;

    iget-object v9, p0, Lcom/mgtv/data/aphone/b/a/a;->e:Ljava/util/HashMap;

    invoke-virtual/range {v4 .. v9}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/mgtv/data/aphone/b/b/a;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catch_0
    move-exception p1

    .line 9
    :try_start_2
    iput v3, v0, Lcom/mgtv/data/aphone/b/b/a;->b:I

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mgtv/data/aphone/b/b/a;->c:Ljava/lang/String;

    .line 11
    const-string v1, "big_data_sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "################  doInBackground() catch  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    monitor-exit p0

    return-object v0

    .line 13
    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public a(Lcom/mgtv/data/aphone/b/b/a;)V
    .locals 2

    if-nez p1, :cond_0

    .line 14
    new-instance v0, Lcom/mgtv/data/aphone/b/b/a;

    invoke-direct {v0}, Lcom/mgtv/data/aphone/b/b/a;-><init>()V

    const/4 v1, -0x1

    .line 15
    iput v1, v0, Lcom/mgtv/data/aphone/b/b/a;->b:I

    .line 16
    const-string v1, "\u8bf7\u6c42\u65b9\u5f0f\u9519\u8bef"

    iput-object v1, v0, Lcom/mgtv/data/aphone/b/b/a;->c:Ljava/lang/String;

    .line 17
    const-string v1, ""

    iput-object v1, v0, Lcom/mgtv/data/aphone/b/b/a;->d:Ljava/lang/String;

    .line 18
    iget-object p0, p0, Lcom/mgtv/data/aphone/b/a/a;->f:Lcom/mgtv/data/aphone/b/c/a;

    invoke-virtual {p0, p1}, Lcom/mgtv/data/aphone/b/c/a;->a(Lcom/mgtv/data/aphone/b/b/a;)V

    goto :goto_0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/mgtv/data/aphone/b/a/a;->f:Lcom/mgtv/data/aphone/b/c/a;

    invoke-virtual {p0, p1}, Lcom/mgtv/data/aphone/b/c/a;->a(Lcom/mgtv/data/aphone/b/b/a;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 20
    new-instance v0, Lcom/mgtv/task/http/HttpParams;

    invoke-direct {v0}, Lcom/mgtv/task/http/HttpParams;-><init>()V

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/mgtv/data/aphone/b/a/a;->d:Ljava/lang/String;

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    const-string v1, "Content-Type"

    const-string v2, "application/json"

    sget-object v3, Lcom/mgtv/task/http/HttpParams$Type;->HEADER:Lcom/mgtv/task/http/HttpParams$Type;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/task/http/HttpParams$Type;)Lcom/mgtv/task/http/HttpParams;

    .line 23
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/task/http/HttpParams$Type;)Lcom/mgtv/task/http/HttpParams;

    .line 24
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 25
    iget-object v2, p0, Lcom/mgtv/data/aphone/b/a/a;->g:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/mgtv/data/aphone/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/mgtv/task/http/HttpParams;->setBodyJson(Ljava/lang/String;)Lcom/mgtv/task/http/HttpParams;

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v0, p2}, Lcom/mgtv/task/http/HttpParams;->putParams(Ljava/util/Map;)Lcom/mgtv/task/http/HttpParams;

    .line 28
    :goto_0
    const-string v1, "big_data_sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$$$$$$$$$$$$$$$ params:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  p: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/mgtv/data/aphone/core/j/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object p2, p0, Lcom/mgtv/data/aphone/b/a/a;->b:Lcom/mgtv/task/m;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/mgtv/task/m;->a(Z)Lcom/mgtv/task/m;

    move-result-object p2

    new-instance v1, Lcom/mgtv/data/aphone/b/a/a$1;

    invoke-direct {v1, p0}, Lcom/mgtv/data/aphone/b/a/a$1;-><init>(Lcom/mgtv/data/aphone/b/a/a;)V

    invoke-virtual {p2, p1, v0, v1}, Lcom/mgtv/task/m;->a(Ljava/lang/String;Lcom/mgtv/task/http/HttpParams;Lcom/mgtv/task/http/c;)Lcom/mgtv/task/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mgtv/data/aphone/b/a/a;->a([Ljava/lang/String;)Lcom/mgtv/data/aphone/b/b/a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/mgtv/data/aphone/b/b/a;

    invoke-virtual {p0, p1}, Lcom/mgtv/data/aphone/b/a/a;->a(Lcom/mgtv/data/aphone/b/b/a;)V

    return-void
.end method
