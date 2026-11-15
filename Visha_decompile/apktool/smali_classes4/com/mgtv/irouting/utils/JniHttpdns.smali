.class public Lcom/mgtv/irouting/utils/JniHttpdns;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/mgtv/irouting/utils/JniHttpdns;

.field private static b:Lcom/mgtv/irouting/utils/d;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mgtv/irouting/utils/d;

    invoke-direct {v0}, Lcom/mgtv/irouting/utils/d;-><init>()V

    sput-object v0, Lcom/mgtv/irouting/utils/JniHttpdns;->b:Lcom/mgtv/irouting/utils/d;

    const-string v0, ""

    sput-object v0, Lcom/mgtv/irouting/utils/JniHttpdns;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/mgtv/irouting/utils/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mgtv/irouting/utils/a;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/mgtv/irouting/utils/a;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cache_path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[httpdns-v1.0.7]"

    invoke-static {v1, v0}, Lcom/mgtv/irouting/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JNI Address : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/mgtv/irouting/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/mgtv/irouting/utils/JniHttpdns;->c:Ljava/lang/String;

    invoke-static {p0}, Lcom/mgtv/irouting/utils/d;->a(Ljava/lang/String;)Z

    return-void
.end method

.method public static declared-synchronized a()Lcom/mgtv/irouting/utils/JniHttpdns;
    .locals 2

    const-class v0, Lcom/mgtv/irouting/utils/JniHttpdns;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mgtv/irouting/utils/JniHttpdns;->a:Lcom/mgtv/irouting/utils/JniHttpdns;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mgtv/irouting/utils/JniHttpdns;

    invoke-direct {v1}, Lcom/mgtv/irouting/utils/JniHttpdns;-><init>()V

    sput-object v1, Lcom/mgtv/irouting/utils/JniHttpdns;->a:Lcom/mgtv/irouting/utils/JniHttpdns;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/mgtv/irouting/utils/JniHttpdns;->a:Lcom/mgtv/irouting/utils/JniHttpdns;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public native add_domain(Ljava/lang/String;)V
.end method

.method public native clear_gradedata()V
.end method

.method public native clear_ipdata()V
.end method

.method public native get_ipdata(Ljava/lang/String;)[B
.end method

.method public native http_query_bestip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method public native http_query_ips(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method public native http_query_ttl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native http_upload_score(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native init(Ljava/lang/String;)V
.end method

.method public native push_gradedata(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native push_ipdata(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native schedule()I
.end method
