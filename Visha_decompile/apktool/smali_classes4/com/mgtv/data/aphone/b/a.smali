.class public Lcom/mgtv/data/aphone/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/data/aphone/b/a$a;
    }
.end annotation


# static fields
.field public static a:S = 0x1388s

.field public static b:S = 0x1388s

.field public static c:Ljava/lang/String; = null

.field public static d:Ljava/lang/String; = null

.field public static e:Ljava/lang/String; = null

.field public static f:Ljava/lang/String; = null

.field public static g:Ljava/lang/String; = null

.field public static h:Ljava/lang/String; = null

.field public static i:Ljava/lang/String; = ""

.field private static final j:Ljava/lang/String; = "a"

.field private static k:Landroid/content/Context;

.field private static l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static o:Lcom/mgtv/data/aphone/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sput-object p0, Lcom/mgtv/data/aphone/b/a;->l:Ljava/util/Map;

    .line 4
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sput-object p0, Lcom/mgtv/data/aphone/b/a;->m:Ljava/util/Map;

    .line 5
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sput-object p0, Lcom/mgtv/data/aphone/b/a;->n:Ljava/util/Map;

    .line 6
    sget-object p0, Lcom/mgtv/data/aphone/b/a;->k:Landroid/content/Context;

    if-nez p0, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/mgtv/data/aphone/b/a;->k:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mgtv/data/aphone/b/a;
    .locals 2

    .line 2
    sget-object v0, Lcom/mgtv/data/aphone/b/a;->o:Lcom/mgtv/data/aphone/b/a;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/mgtv/data/aphone/b/a;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/mgtv/data/aphone/b/a;->o:Lcom/mgtv/data/aphone/b/a;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/mgtv/data/aphone/b/a;

    invoke-direct {v1, p0}, Lcom/mgtv/data/aphone/b/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mgtv/data/aphone/b/a;->o:Lcom/mgtv/data/aphone/b/a;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 7
    :cond_1
    :goto_2
    sget-object p0, Lcom/mgtv/data/aphone/b/a;->o:Lcom/mgtv/data/aphone/b/a;

    return-object p0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/util/HashMap;)Lcom/mgtv/data/aphone/b/b/a;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mgtv/data/aphone/b/b/a;"
        }
    .end annotation

    monitor-enter p0

    .line 69
    :try_start_0
    new-instance v0, Lcom/mgtv/data/aphone/b/b/a;

    invoke-direct {v0}, Lcom/mgtv/data/aphone/b/b/a;-><init>()V

    .line 70
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    const/16 v3, 0xc8

    const/4 v4, 0x0

    .line 71
    :try_start_1
    invoke-static {}, Lcom/hunantv/imgo/util/b;->G()Ljava/lang/String;

    move-result-object v5

    .line 72
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "?_support=10100001"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p2}, Lcom/mgtv/data/aphone/b/a;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 73
    const-string v7, "big_data_sdk"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "####################  initGetHttp  Url:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "   encodeMap:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/mgtv/data/aphone/b/a;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v7, p2}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;

    .line 76
    sget-short v7, Lcom/mgtv/data/aphone/b/a;->a:S

    invoke-virtual {p2, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 77
    sget-short v7, Lcom/mgtv/data/aphone/b/a;->b:S

    invoke-virtual {p2, v7}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 78
    invoke-virtual {p2, v4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const/4 v7, 0x1

    .line 79
    invoke-virtual {p2, v7}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 80
    const-string v7, "GET"

    invoke-virtual {p2, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 81
    const-string v7, "Connection"

    const-string v8, "Keep-Alive"

    invoke-virtual {p2, v7, v8}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v7, "User-Agent"

    invoke-virtual {p2, v7, v5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Ljava/net/URLConnection;->connect()V

    .line 84
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :try_start_2
    const-string v7, "big_data_sdk"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "####################  initGetHttp   Url:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "   httpStatus:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v5, v3, :cond_0

    .line 86
    invoke-virtual {p2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Lcom/mgtv/data/aphone/core/j/j;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 87
    const-string v7, "big_data_sdk"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "####################  \u4e0a\u62a5\u6210\u529f  initGetHttp  Url:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "   \u53c2\u6570\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p2

    goto :goto_1

    .line 88
    :cond_0
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/mgtv/data/aphone/b/a;->a(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 89
    const-string v7, "big_data_sdk"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "####################  \u4e0a\u62a5\u5931\u8d25  initGetHttp  httpStatus: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "  Url:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "   \u53c2\u6570\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_1
    move-exception p2

    move v5, v4

    .line 91
    :goto_1
    :try_start_3
    const-string v6, "big_data_sdk"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iput v2, v0, Lcom/mgtv/data/aphone/b/b/a;->b:I

    .line 93
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/mgtv/data/aphone/b/b/a;->c:Ljava/lang/String;

    .line 94
    const-string v6, "big_data_sdk"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "################  initGetHttp  catch  url\uff1a "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  method: "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "GET"

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "   e.toString(): "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    if-ne v5, v3, :cond_3

    .line 96
    iput v4, v0, Lcom/mgtv/data/aphone/b/b/a;->b:I

    .line 97
    iput v5, v0, Lcom/mgtv/data/aphone/b/b/a;->a:I

    .line 98
    invoke-static {v1}, Lcom/mgtv/data/aphone/core/j/i;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 99
    iput-object v1, v0, Lcom/mgtv/data/aphone/b/b/a;->d:Ljava/lang/String;

    .line 100
    :cond_2
    const-string p1, "\u8bf7\u6c42\u6210\u529f"

    iput-object p1, v0, Lcom/mgtv/data/aphone/b/b/a;->c:Ljava/lang/String;

    goto :goto_3

    .line 101
    :cond_3
    iput v2, v0, Lcom/mgtv/data/aphone/b/b/a;->b:I

    .line 102
    iput v5, v0, Lcom/mgtv/data/aphone/b/b/a;->a:I

    .line 103
    const-string p1, "\u8bf7\u6c42\u5931\u8d25"

    iput-object p1, v0, Lcom/mgtv/data/aphone/b/b/a;->c:Ljava/lang/String;

    .line 104
    iput-object v1, v0, Lcom/mgtv/data/aphone/b/b/a;->d:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    :goto_3
    monitor-exit p0

    return-object v0

    :goto_4
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 184
    sget-object p0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_APPLS:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    invoke-virtual {p0}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->getEventId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_PHONEWIFI:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    .line 185
    invoke-virtual {p0}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->getEventId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_OFLHB:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    .line 186
    invoke-virtual {p0}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->getEventId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 188
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

.method private static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Lcom/mgtv/data/aphone/b/a;

    monitor-enter v0

    const/16 v1, 0x26

    .line 179
    :try_start_0
    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 180
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 181
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v2, p2, v1, p1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/16 v0, 0x23

    .line 175
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_1

    if-eqz p1, :cond_0

    .line 176
    const-string v0, ""

    aput-object v0, p1, v1

    :cond_0
    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    .line 177
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    .line 178
    :cond_2
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 21
    sget-object v0, Lcom/mgtv/data/aphone/b/a;->l:Ljava/util/Map;

    const-string v1, "isdebug"

    invoke-static {}, Lcom/mgtv/data/aphone/core/j/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/mgtv/data/aphone/b/a;->l:Ljava/util/Map;

    const-string v1, "did"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/mgtv/data/aphone/b/a;->l:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/mgtv/data/aphone/core/j/e;->b(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "time"

    invoke-static {v0, v2, v1}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/mgtv/data/aphone/b/a;->l:Ljava/util/Map;

    sget-object v1, Lcom/mgtv/data/aphone/b/a;->k:Landroid/content/Context;

    invoke-static {v1}, Lcom/mgtv/data/aphone/core/j/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "net"

    invoke-static {v0, v2, v1}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/mgtv/data/aphone/b/a;->l:Ljava/util/Map;

    const-string v1, "mf"

    invoke-static {}, Lcom/mgtv/data/aphone/core/j/f;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/mgtv/data/aphone/b/a;->l:Ljava/util/Map;

    const-string v1, "mod"

    invoke-static {}, Lcom/mgtv/data/aphone/core/j/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/mgtv/data/aphone/b/a;->l:Ljava/util/Map;

    const-string v1, "sver"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->r()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/mgtv/data/aphone/b/a;->l:Ljava/util/Map;

    const-string v1, "bdsv"

    invoke-static {}, Lcom/mgtv/data/aphone/core/j/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/mgtv/data/aphone/b/a;->l:Ljava/util/Map;

    const-string v1, "aver"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/mgtv/data/aphone/b/a;->l:Ljava/util/Map;

    const-string v1, "patver"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->getVersionNameWithPatchinfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/mgtv/data/aphone/b/a;->l:Ljava/util/Map;

    sget-object v1, Lcom/mgtv/data/aphone/core/bean/CommonParamsBean;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/mgtv/data/aphone/core/j/i;->a(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_0

    sget-object v1, Lcom/mgtv/data/aphone/core/bean/CommonParamsBean;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "rdc"

    invoke-static {v0, v3, v1}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/mgtv/data/aphone/b/a;->l:Ljava/util/Map;

    sget-object v1, Lcom/mgtv/data/aphone/core/bean/CommonParamsBean;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/mgtv/data/aphone/core/j/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v2, Lcom/mgtv/data/aphone/core/bean/CommonParamsBean;->d:Ljava/lang/String;

    :cond_1
    const-string v1, "rch"

    invoke-static {v0, v1, v2}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sget-object v0, Lcom/mgtv/data/aphone/b/a;->l:Ljava/util/Map;

    invoke-static {}, Lcom/mgtv/data/aphone/core/f/a;->c()Lcom/mgtv/data/aphone/core/f/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/f/a;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "runsid"

    invoke-static {v0, v2, v1}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/mgtv/data/aphone/b/a;->l:Ljava/util/Map;

    const-string v1, "uuid"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/mgtv/data/aphone/b/a;->l:Ljava/util/Map;

    const-string v1, "src"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->N()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/mgtv/data/aphone/b/a;->l:Ljava/util/Map;

    const-string v1, "mac"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->v()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/mgtv/data/aphone/b/a;->l:Ljava/util/Map;

    invoke-static {}, Lcom/hunantv/imgo/b/a;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "0"

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/hunantv/imgo/b/a;->b()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v2, "abroad"

    invoke-static {v0, v2, v1}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/mgtv/data/aphone/b/a;->l:Ljava/util/Map;

    const-string v1, "p2p"

    sget-object v2, Lcom/mgtv/data/aphone/b/a;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lcom/mgtv/data/aphone/b/a;->l:Ljava/util/Map;

    return-object v0
.end method

.method public static declared-synchronized a(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/mgtv/data/aphone/b/a;

    monitor-enter v0

    const/4 v1, 0x0

    .line 40
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 41
    const-string v2, "t"

    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    const-string v2, "t"

    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 43
    :cond_0
    :goto_1
    const-string v2, "av"

    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    const-string v2, "av"

    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_1
    const-string v2, "sv"

    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 46
    const-string v2, "sv"

    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_2
    const-string v2, "nt"

    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 48
    const-string v2, "nt"

    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_3
    const-string v2, "md"

    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 50
    const-string v2, "md"

    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_4
    const-string v2, "tst"

    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 52
    const-string v2, "tst"

    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_6
    monitor-exit v0

    return-object p0

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 146
    invoke-static {}, Lcom/mgtv/data/aphone/core/j/f;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    cmp-long p0, v0, v2

    if-lez p0, :cond_1

    .line 147
    new-instance p0, Lcom/mgtv/data/aphone/core/bean/EventBean;

    invoke-direct {p0}, Lcom/mgtv/data/aphone/core/bean/EventBean;-><init>()V

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/mgtv/data/aphone/core/j/e;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/data/aphone/core/bean/EventBean;->create_time:Ljava/lang/String;

    .line 149
    iput-object p3, p0, Lcom/mgtv/data/aphone/core/bean/EventBean;->eventId:Ljava/lang/String;

    .line 150
    iput-object p4, p0, Lcom/mgtv/data/aphone/core/bean/EventBean;->bid:Ljava/lang/String;

    .line 151
    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/EventBean;->url:Ljava/lang/String;

    .line 152
    iput-object p2, p0, Lcom/mgtv/data/aphone/core/bean/EventBean;->method:Ljava/lang/String;

    .line 153
    const-string p1, "GET"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 154
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p7}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 155
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/data/aphone/core/bean/EventBean;->params:Ljava/lang/String;

    goto :goto_0

    .line 156
    :cond_0
    iput-object p5, p0, Lcom/mgtv/data/aphone/core/bean/EventBean;->params:Ljava/lang/String;

    .line 157
    :goto_0
    iput p6, p0, Lcom/mgtv/data/aphone/core/bean/EventBean;->status:I

    .line 158
    sget-object p1, Lcom/mgtv/data/aphone/b/a;->k:Landroid/content/Context;

    sget-object p2, Lcom/mgtv/data/aphone/core/db/a;->b:Ljava/lang/String;

    invoke-static {p1, p0, p2}, Lcom/mgtv/data/aphone/core/j/h;->a(Landroid/content/Context;Lcom/mgtv/data/aphone/core/bean/EventBean;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 54
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 57
    :cond_1
    const-string p2, ""

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method private a(I)Z
    .locals 0

    .line 1
    const/16 p0, 0xc8

    if-lt p1, p0, :cond_1

    const/16 p0, 0x190

    if-lt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    .line 189
    const-string v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized b(Ljava/lang/String;Ljava/util/HashMap;)Lcom/mgtv/data/aphone/b/b/a;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mgtv/data/aphone/b/b/a;"
        }
    .end annotation

    monitor-enter p0

    .line 14
    :try_start_0
    new-instance v0, Lcom/mgtv/data/aphone/b/b/a;

    invoke-direct {v0}, Lcom/mgtv/data/aphone/b/b/a;-><init>()V

    .line 15
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    const/16 v3, 0xc8

    const/4 v4, 0x0

    .line 16
    :try_start_1
    invoke-static {}, Lcom/hunantv/imgo/util/b;->G()Ljava/lang/String;

    move-result-object v5

    .line 17
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "?_support=10100001"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p2}, Lcom/mgtv/data/aphone/b/a;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 18
    const-string v7, "big_data_sdk"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "####################  initGetHttps  Url:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "   encodeMap:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/mgtv/data/aphone/b/a;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v7, p2}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljavax/net/ssl/HttpsURLConnection;

    .line 21
    new-instance v7, Lcom/mgtv/data/aphone/b/a$a;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/mgtv/data/aphone/b/a$a;-><init>(Lcom/mgtv/data/aphone/b/a$1;)V

    invoke-virtual {p2, v7}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    const/16 v7, 0x61a8

    .line 22
    invoke-virtual {p2, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 23
    invoke-virtual {p2, v7}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 24
    invoke-virtual {p2, v4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const/4 v7, 0x1

    .line 25
    invoke-virtual {p2, v7}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 26
    const-string v7, "GET"

    invoke-virtual {p2, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 27
    const-string v7, "Connection"

    const-string v8, "Keep-Alive"

    invoke-virtual {p2, v7, v8}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v7, "User-Agent"

    invoke-virtual {p2, v7, v5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p2}, Ljava/net/URLConnection;->connect()V

    .line 30
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :try_start_2
    const-string v7, "big_data_sdk"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "####################  initGetHttps   Url:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "   httpStatus:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v5, v3, :cond_0

    .line 32
    invoke-virtual {p2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Lcom/mgtv/data/aphone/core/j/j;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 33
    const-string v7, "big_data_sdk"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "####################  \u4e0a\u62a5\u6210\u529f  initGetHttps  Url:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "   \u53c2\u6570\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p2

    goto :goto_1

    .line 34
    :cond_0
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/mgtv/data/aphone/b/a;->a(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 35
    const-string v7, "big_data_sdk"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "####################  \u4e0a\u62a5\u5931\u8d25  initGetHttps  httpStatus: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "  Url:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "   \u53c2\u6570\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_1
    move-exception p2

    move v5, v4

    .line 37
    :goto_1
    :try_start_3
    const-string v6, "big_data_sdk"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iput v2, v0, Lcom/mgtv/data/aphone/b/b/a;->b:I

    .line 39
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/mgtv/data/aphone/b/b/a;->c:Ljava/lang/String;

    .line 40
    const-string v6, "big_data_sdk"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "################  initGetHttps  catch  url\uff1a "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  method: "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "GET"

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "   e.toString(): "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    if-ne v5, v3, :cond_3

    .line 42
    iput v4, v0, Lcom/mgtv/data/aphone/b/b/a;->b:I

    .line 43
    iput v5, v0, Lcom/mgtv/data/aphone/b/b/a;->a:I

    .line 44
    invoke-static {v1}, Lcom/mgtv/data/aphone/core/j/i;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 45
    iput-object v1, v0, Lcom/mgtv/data/aphone/b/b/a;->d:Ljava/lang/String;

    .line 46
    :cond_2
    const-string p1, "\u8bf7\u6c42\u6210\u529f"

    iput-object p1, v0, Lcom/mgtv/data/aphone/b/b/a;->c:Ljava/lang/String;

    goto :goto_3

    .line 47
    :cond_3
    iput v2, v0, Lcom/mgtv/data/aphone/b/b/a;->b:I

    .line 48
    iput v5, v0, Lcom/mgtv/data/aphone/b/b/a;->a:I

    .line 49
    const-string p1, "\u8bf7\u6c42\u5931\u8d25"

    iput-object p1, v0, Lcom/mgtv/data/aphone/b/b/a;->c:Ljava/lang/String;

    .line 50
    iput-object v1, v0, Lcom/mgtv/data/aphone/b/b/a;->d:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 51
    :goto_3
    monitor-exit p0

    return-object v0

    :goto_4
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method private static declared-synchronized b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-class v0, Lcom/mgtv/data/aphone/b/a;

    monitor-enter v0

    .line 13
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3f

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private declared-synchronized b(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 5
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 6
    :try_start_1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 10
    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 11
    :goto_2
    :try_start_2
    const-string v1, "big_data_sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "####################  encodeMap()   e.toString():"

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
    :cond_1
    monitor-exit p0

    return-object v0

    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private declared-synchronized c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/mgtv/data/aphone/b/b/a;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mgtv/data/aphone/b/b/a;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v4, p2

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v10, Lcom/mgtv/data/aphone/b/b/a;

    invoke-direct {v10}, Lcom/mgtv/data/aphone/b/b/a;-><init>()V

    .line 2
    const-string v11, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v12, -0x1

    const/16 v13, 0xc8

    const/4 v14, 0x0

    .line 3
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    move-object/from16 v2, p4

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 4
    invoke-static {}, Lcom/hunantv/imgo/util/b;->G()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v4, v1}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6
    const-string v1, "UTF-8"

    invoke-virtual {v6, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 7
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Ljava/net/HttpURLConnection;

    .line 9
    sget-short v3, Lcom/mgtv/data/aphone/b/a;->a:S

    invoke-virtual {v15, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 10
    sget-short v3, Lcom/mgtv/data/aphone/b/a;->b:S

    invoke-virtual {v15, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 11
    invoke-virtual {v15, v14}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const/4 v3, 0x1

    .line 12
    invoke-virtual {v15, v3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 13
    invoke-virtual {v15, v3}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 14
    const-string v3, "POST"

    invoke-virtual {v15, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 15
    const-string v3, "UTF-8"

    invoke-virtual {v6, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v15, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 16
    const-string v3, "Content-Type"

    const-string v5, "application/json"

    invoke-virtual {v15, v3, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string v3, "User-Agent"

    invoke-virtual {v15, v3, v2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v15}, Ljava/net/URLConnection;->connect()V

    .line 19
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v15}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 20
    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 21
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 22
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 23
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v16
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :try_start_2
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    if-ne v1, v13, :cond_0

    .line 25
    invoke-virtual {v15}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/data/aphone/core/j/j;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v11

    .line 26
    const-string v1, "big_data_sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "####################  \u4e0a\u62a5\u6210\u529f  initPostHttp  Url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   \u53c2\u6570\uff1a"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    goto :goto_2

    .line 27
    :cond_0
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-direct {v9, v1}, Lcom/mgtv/data/aphone/b/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    const-string v1, "big_data_sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "####################  \u4e0a\u62a5\u5931\u8d25  initPostHttp  httpStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "   Url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   \u53c2\u6570\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    sget-object v1, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_APPLS:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->getEventId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_PHONEWIFI:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->getEventId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 30
    const-string v3, "POST"

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v7, v16

    invoke-direct/range {v1 .. v8}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    .line 31
    :cond_1
    :goto_0
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move/from16 v0, v16

    goto :goto_3

    :catch_1
    move-exception v0

    move/from16 v16, v14

    .line 32
    :goto_2
    :try_start_3
    const-string v1, "big_data_sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "####################  initPostHttp  catch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iput v12, v10, Lcom/mgtv/data/aphone/b/b/a;->b:I

    .line 34
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/mgtv/data/aphone/b/b/a;->c:Ljava/lang/String;

    goto :goto_1

    :goto_3
    if-ne v0, v13, :cond_3

    .line 35
    iput v14, v10, Lcom/mgtv/data/aphone/b/b/a;->b:I

    .line 36
    iput v0, v10, Lcom/mgtv/data/aphone/b/b/a;->a:I

    .line 37
    invoke-static {v11}, Lcom/mgtv/data/aphone/core/j/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 38
    iput-object v11, v10, Lcom/mgtv/data/aphone/b/b/a;->d:Ljava/lang/String;

    .line 39
    :cond_2
    const-string v0, "\u8bf7\u6c42\u6210\u529f"

    iput-object v0, v10, Lcom/mgtv/data/aphone/b/b/a;->c:Ljava/lang/String;

    goto :goto_4

    .line 40
    :cond_3
    iput v12, v10, Lcom/mgtv/data/aphone/b/b/a;->b:I

    .line 41
    iput v0, v10, Lcom/mgtv/data/aphone/b/b/a;->a:I

    .line 42
    const-string v0, "\u8bf7\u6c42\u5931\u8d25"

    iput-object v0, v10, Lcom/mgtv/data/aphone/b/b/a;->c:Ljava/lang/String;

    .line 43
    iput-object v11, v10, Lcom/mgtv/data/aphone/b/b/a;->d:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 44
    :goto_4
    monitor-exit p0

    return-object v10

    :goto_5
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method private static declared-synchronized c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Lcom/mgtv/data/aphone/b/a;

    monitor-enter v0

    .line 45
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    const-string v2, "&"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "?"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0x26

    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 48
    :cond_0
    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private declared-synchronized d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/mgtv/data/aphone/b/b/a;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mgtv/data/aphone/b/b/a;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v4, p2

    move-object/from16 v1, p4

    monitor-enter p0

    :try_start_0
    new-instance v10, Lcom/mgtv/data/aphone/b/b/a;

    invoke-direct {v10}, Lcom/mgtv/data/aphone/b/b/a;-><init>()V

    const-string v11, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v12, -0x1

    const/16 v13, 0xc8

    const/4 v14, 0x0

    :try_start_1
    const-string v2, "_support"

    const-string v3, "10100001"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-static {}, Lcom/hunantv/imgo/util/b;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v4, v2}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "UTF-8"

    invoke-virtual {v6, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v3, Lcom/mgtv/data/aphone/b/a$a;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/mgtv/data/aphone/b/a$a;-><init>(Lcom/mgtv/data/aphone/b/a$1;)V

    invoke-virtual {v15, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    const/16 v3, 0x61a8

    invoke-virtual {v15, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v15, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v15, v14}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {v15, v3}, Ljava/net/URLConnection;->setDoInput(Z)V

    const-string v3, "POST"

    invoke-virtual {v15, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v3, "UTF-8"

    invoke-virtual {v6, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v15, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    const-string v3, "Content-Type"

    const-string v5, "application/json"

    invoke-virtual {v15, v3, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "User-Agent"

    invoke-virtual {v15, v3, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/net/URLConnection;->connect()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v15}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v16
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    if-ne v1, v13, :cond_0

    invoke-virtual {v15}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/data/aphone/core/j/j;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v11

    const-string v1, "big_data_sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "####################  \u4e0a\u62a5\u6210\u529f  initPostHttps  Url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   \u53c2\u6570\uff1a"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-direct {v9, v1}, Lcom/mgtv/data/aphone/b/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "big_data_sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "####################  \u4e0a\u62a5\u5931\u8d25  initPostHttps  httpStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "   Url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   \u53c2\u6570\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_APPLS:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->getEventId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_PHONEWIFI:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->getEventId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v3, "POST"

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v7, v16

    invoke-direct/range {v1 .. v8}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    :cond_1
    :goto_0
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move/from16 v0, v16

    goto :goto_3

    :catch_1
    move-exception v0

    move/from16 v16, v14

    :goto_2
    :try_start_3
    const-string v1, "big_data_sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "####################  initPostHttps  catch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput v12, v10, Lcom/mgtv/data/aphone/b/b/a;->b:I

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/mgtv/data/aphone/b/b/a;->c:Ljava/lang/String;

    goto :goto_1

    :goto_3
    if-ne v0, v13, :cond_3

    iput v14, v10, Lcom/mgtv/data/aphone/b/b/a;->b:I

    iput v0, v10, Lcom/mgtv/data/aphone/b/b/a;->a:I

    invoke-static {v11}, Lcom/mgtv/data/aphone/core/j/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object v11, v10, Lcom/mgtv/data/aphone/b/b/a;->d:Ljava/lang/String;

    :cond_2
    const-string v0, "\u8bf7\u6c42\u6210\u529f"

    iput-object v0, v10, Lcom/mgtv/data/aphone/b/b/a;->c:Ljava/lang/String;

    goto :goto_4

    :cond_3
    iput v12, v10, Lcom/mgtv/data/aphone/b/b/a;->b:I

    iput v0, v10, Lcom/mgtv/data/aphone/b/b/a;->a:I

    const-string v0, "\u8bf7\u6c42\u5931\u8d25"

    iput-object v0, v10, Lcom/mgtv/data/aphone/b/b/a;->c:Ljava/lang/String;

    iput-object v11, v10, Lcom/mgtv/data/aphone/b/b/a;->d:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    monitor-exit p0

    return-object v10

    :goto_5
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/data/aphone/b/b/a;
    .locals 17

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    monitor-enter p0

    .line 106
    :try_start_0
    new-instance v10, Lcom/mgtv/data/aphone/b/b/a;

    invoke-direct {v10}, Lcom/mgtv/data/aphone/b/b/a;-><init>()V

    .line 107
    const-string v11, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v12, -0x1

    const/16 v13, 0xc8

    const/4 v14, 0x0

    .line 108
    :try_start_1
    const-string v1, "UTF-8"

    invoke-virtual {v6, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 109
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/net/HttpURLConnection;

    .line 111
    sget-short v2, Lcom/mgtv/data/aphone/b/a;->a:S

    invoke-virtual {v15, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 112
    sget-short v2, Lcom/mgtv/data/aphone/b/a;->b:S

    invoke-virtual {v15, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 113
    invoke-virtual {v15, v14}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const/4 v2, 0x1

    .line 114
    invoke-virtual {v15, v2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 115
    invoke-virtual {v15, v2}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 116
    const-string v2, "POST"

    invoke-virtual {v15, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 117
    const-string v2, "UTF-8"

    invoke-virtual {v6, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v15, v2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 118
    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-virtual {v15, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v15}, Ljava/net/URLConnection;->connect()V

    .line 120
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v15}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 121
    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 122
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 123
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 124
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v16
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :try_start_2
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    if-ne v1, v13, :cond_0

    .line 126
    invoke-virtual {v15}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/data/aphone/core/j/j;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v11

    .line 127
    const-string v1, "big_data_sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "####################  \u4e0a\u62a5\u6210\u529f    Url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   \u53c2\u6570\uff1a"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    goto :goto_2

    .line 128
    :cond_0
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-direct {v9, v1}, Lcom/mgtv/data/aphone/b/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    const-string v1, "big_data_sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "####################  \u4e0a\u62a5\u5931\u8d25  httpStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "   Url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   \u53c2\u6570\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sget-object v1, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_APPLS:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->getEventId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_PHONEWIFI:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    invoke-virtual {v1}, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->getEventId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 131
    const-string v3, "POST"

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, v16

    invoke-direct/range {v1 .. v8}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    .line 132
    :cond_1
    :goto_0
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move/from16 v0, v16

    goto :goto_3

    :catch_1
    move-exception v0

    move/from16 v16, v14

    .line 133
    :goto_2
    :try_start_3
    sget-object v1, Lcom/mgtv/data/aphone/b/a;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iput v12, v10, Lcom/mgtv/data/aphone/b/b/a;->b:I

    .line 135
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/mgtv/data/aphone/b/b/a;->c:Ljava/lang/String;

    goto :goto_1

    :goto_3
    if-ne v0, v13, :cond_3

    .line 136
    iput v14, v10, Lcom/mgtv/data/aphone/b/b/a;->b:I

    .line 137
    iput v0, v10, Lcom/mgtv/data/aphone/b/b/a;->a:I

    .line 138
    invoke-static {v11}, Lcom/mgtv/data/aphone/core/j/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 139
    iput-object v11, v10, Lcom/mgtv/data/aphone/b/b/a;->d:Ljava/lang/String;

    .line 140
    :cond_2
    const-string v0, "\u8bf7\u6c42\u6210\u529f"

    iput-object v0, v10, Lcom/mgtv/data/aphone/b/b/a;->c:Ljava/lang/String;

    goto :goto_4

    .line 141
    :cond_3
    iput v12, v10, Lcom/mgtv/data/aphone/b/b/a;->b:I

    .line 142
    iput v0, v10, Lcom/mgtv/data/aphone/b/b/a;->a:I

    .line 143
    const-string v0, "\u8bf7\u6c42\u5931\u8d25"

    iput-object v0, v10, Lcom/mgtv/data/aphone/b/b/a;->c:Ljava/lang/String;

    .line 144
    iput-object v11, v10, Lcom/mgtv/data/aphone/b/b/a;->d:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    :goto_4
    monitor-exit p0

    return-object v10

    :goto_5
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/mgtv/data/aphone/b/b/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mgtv/data/aphone/b/b/a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    monitor-enter p0

    .line 58
    :try_start_0
    const-string v0, "big_data_sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "####################  getResponse  Url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   \u53c2\u6570\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v0, "GET"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/mgtv/data/aphone/b/b/a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 61
    :cond_0
    :try_start_1
    const-string v0, "POST"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 62
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/mgtv/data/aphone/b/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/mgtv/data/aphone/b/b/a;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 63
    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/mgtv/data/aphone/b/b/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mgtv/data/aphone/b/b/a;"
        }
    .end annotation

    monitor-enter p0

    .line 64
    :try_start_0
    const-string p2, "big_data_sdk"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "####################  requestGet  Url:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   \u53c2\u6570\uff1a"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {p1}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 66
    invoke-direct {p0, p1, p4}, Lcom/mgtv/data/aphone/b/a;->b(Ljava/lang/String;Ljava/util/HashMap;)Lcom/mgtv/data/aphone/b/b/a;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 67
    :cond_0
    invoke-direct {p0, p1, p4}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/lang/String;Ljava/util/HashMap;)Lcom/mgtv/data/aphone/b/b/a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :goto_0
    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    monitor-enter p0

    .line 164
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 165
    monitor-exit p0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    .line 166
    :try_start_1
    new-array v1, v0, [Ljava/lang/String;

    .line 167
    invoke-static {p1, v1}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x3d

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v2, 0x3f

    .line 169
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x0

    if-gez v3, :cond_1

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2, p3}, Lcom/mgtv/data/aphone/b/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v1, v4

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 171
    :cond_1
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x26

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 172
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    :cond_2
    if-eq v5, v6, :cond_3

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/2addr v5, v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr v5, p2

    invoke-static {p1, p3, v5}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v1, v4

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 174
    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2, p3}, Lcom/mgtv/data/aphone/b/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v1, v4

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 159
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 161
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v0}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p2

    .line 162
    :try_start_1
    const-string v0, "big_data_sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "####################  addParams()   e.toString():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/mgtv/data/aphone/core/j/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 163
    :cond_0
    :goto_2
    monitor-exit p0

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 8
    sput-object p1, Lcom/mgtv/data/aphone/b/a;->c:Ljava/lang/String;

    .line 9
    sput-object p2, Lcom/mgtv/data/aphone/b/a;->d:Ljava/lang/String;

    .line 10
    sput-object p3, Lcom/mgtv/data/aphone/b/a;->e:Ljava/lang/String;

    .line 11
    sput-object p4, Lcom/mgtv/data/aphone/b/a;->i:Ljava/lang/String;

    .line 12
    sput-object p5, Lcom/mgtv/data/aphone/b/a;->f:Ljava/lang/String;

    .line 13
    sput-object p6, Lcom/mgtv/data/aphone/b/a;->g:Ljava/lang/String;

    .line 14
    sput-object p7, Lcom/mgtv/data/aphone/b/a;->h:Ljava/lang/String;

    .line 15
    sget-object p0, Lcom/mgtv/data/aphone/b/a;->l:Ljava/util/Map;

    const-string p6, "guid"

    invoke-static {p0, p6, p1}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object p0, Lcom/mgtv/data/aphone/b/a;->l:Ljava/util/Map;

    const-string p1, "sid"

    invoke-static {p0, p1, p2}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    sget-object p0, Lcom/mgtv/data/aphone/b/a;->l:Ljava/util/Map;

    const-string p1, "ch"

    invoke-static {p0, p1, p3}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    sget-object p0, Lcom/mgtv/data/aphone/b/a;->l:Ljava/util/Map;

    const-string p1, "uuid"

    invoke-static {p0, p1, p5}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    sget-object p0, Lcom/mgtv/data/aphone/b/a;->l:Ljava/util/Map;

    const-string p1, "runsid"

    invoke-static {p0, p1, p7}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    sget-object p0, Lcom/mgtv/data/aphone/b/a;->l:Ljava/util/Map;

    const-string p1, "p2p"

    invoke-static {p0, p1, p4}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/mgtv/data/aphone/b/b/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mgtv/data/aphone/b/b/a;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/mgtv/data/aphone/b/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mgtv/data/aphone/b/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/mgtv/data/aphone/b/b/a;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mgtv/data/aphone/b/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/mgtv/data/aphone/b/b/a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
