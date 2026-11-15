.class public final Lcom/transsion/log/upload/net/RequestManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/transsion/log/upload/net/RequestManager;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/log/upload/net/RequestManager;

    invoke-direct {v0}, Lcom/transsion/log/upload/net/RequestManager;-><init>()V

    sput-object v0, Lcom/transsion/log/upload/net/RequestManager;->a:Lcom/transsion/log/upload/net/RequestManager;

    const-string v0, ""

    sput-object v0, Lcom/transsion/log/upload/net/RequestManager;->b:Ljava/lang/String;

    sput-object v0, Lcom/transsion/log/upload/net/RequestManager;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lcs4;)V
    .locals 4

    sget-object v0, Lcom/transsion/log/upload/net/a;->b:Lcom/transsion/log/upload/net/a$a;

    invoke-virtual {v0}, Lcom/transsion/log/upload/net/a$a;->a()Lcom/transsion/log/upload/net/a;

    move-result-object v0

    sget-object v1, Lcom/transsion/log/upload/net/RequestManager;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/log_collection_rule"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/log/upload/net/RequestManager$a;

    invoke-direct {v2, p0}, Lcom/transsion/log/upload/net/RequestManager$a;-><init>(Lcs4;)V

    new-instance p0, Lokhttp3/Request$Builder;

    invoke-direct {p0}, Lokhttp3/Request$Builder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/transsion/log/upload/net/a;->c(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    const-string v1, "X-API-KEY"

    const-string v3, "kkLCdl3*p9mQPkZtOy"

    invoke-virtual {p0, v1, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    invoke-virtual {v0}, Lcom/transsion/log/upload/net/a;->d()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    new-instance v0, Lcom/transsion/log/upload/net/RequestManager$getCollectionRule$$inlined$getAsync$1;

    invoke-direct {v0, v2}, Lcom/transsion/log/upload/net/RequestManager$getCollectionRule$$inlined$getAsync$1;-><init>(Lcs4;)V

    invoke-interface {p0, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public static final b(Lcs4;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "appSign"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "fileName"

    invoke-static {p2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/log/upload/net/a;->b:Lcom/transsion/log/upload/net/a$a;

    invoke-virtual {p1}, Lcom/transsion/log/upload/net/a$a;->a()Lcom/transsion/log/upload/net/a;

    move-result-object p1

    sget-object p2, Lcom/transsion/log/upload/net/RequestManager;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/get_upload_file_url"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/transsion/log/upload/net/RequestManager$b;

    invoke-direct {v0, p0}, Lcom/transsion/log/upload/net/RequestManager$b;-><init>(Lcs4;)V

    new-instance p0, Lokhttp3/Request$Builder;

    invoke-direct {p0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p1, p2, v2}, Lcom/transsion/log/upload/net/a;->c(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    const-string p2, "X-API-KEY"

    const-string v1, "kkLCdl3*p9mQPkZtOy"

    invoke-virtual {p0, p2, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/log/upload/net/a;->d()Lokhttp3/OkHttpClient;

    move-result-object p1

    invoke-virtual {p1, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    new-instance p1, Lcom/transsion/log/upload/net/RequestManager$getFileLoadUrl$$inlined$getAsync$1;

    invoke-direct {p1, v0}, Lcom/transsion/log/upload/net/RequestManager$getFileLoadUrl$$inlined$getAsync$1;-><init>(Lcs4;)V

    invoke-interface {p0, p1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/log/upload/net/RequestManager;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/transsion/log/upload/net/RequestManager;->b:Ljava/lang/String;

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/transsion/log/upload/net/RequestManager;->c:Ljava/lang/String;

    return-void
.end method

.method public final f(Lcs4;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string p0, "feedbackId"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logFileUrl"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/transsion/log/upload/net/a;->b:Lcom/transsion/log/upload/net/a$a;

    invoke-virtual {p0}, Lcom/transsion/log/upload/net/a$a;->a()Lcom/transsion/log/upload/net/a;

    move-result-object p0

    sget-object p2, Lcom/transsion/log/upload/net/RequestManager;->b:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/upd_log_file_url"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/transsion/log/upload/net/RequestManager$c;

    invoke-direct {p3, p1}, Lcom/transsion/log/upload/net/RequestManager$c;-><init>(Lcs4;)V

    sget-object p1, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v0, "application/json; charset=utf-8"

    invoke-virtual {p1, v0}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual {v1, v0, p1}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    const-string v0, "X-API-KEY"

    const-string v1, "kkLCdl3*p9mQPkZtOy"

    invoke-virtual {p2, v0, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/log/upload/net/a;->d()Lokhttp3/OkHttpClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    new-instance p1, Lcom/transsion/log/upload/net/RequestManager$unionUploadAndFeedback$$inlined$postJsonAsync$1;

    invoke-direct {p1, p3}, Lcom/transsion/log/upload/net/RequestManager$unionUploadAndFeedback$$inlined$postJsonAsync$1;-><init>(Lcs4;)V

    invoke-interface {p0, p1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    :goto_0
    return-void
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/io/File;Lcs4;)V
    .locals 1

    const-string p0, "url"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "fileParamName"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    sget-object p0, Lcom/transsion/log/upload/net/a;->b:Lcom/transsion/log/upload/net/a$a;

    invoke-virtual {p0}, Lcom/transsion/log/upload/net/a$a;->a()Lcom/transsion/log/upload/net/a;

    new-instance p0, Lcom/transsion/log/upload/net/RequestManager$d;

    invoke-direct {p0, p5}, Lcom/transsion/log/upload/net/RequestManager$d;-><init>(Lcs4;)V

    :try_start_0
    new-instance p2, Lokhttp3/OkHttpClient;

    invoke-direct {p2}, Lokhttp3/OkHttpClient;-><init>()V

    sget-object p3, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    const/4 p5, 0x1

    const/4 v0, 0x0

    invoke-static {p3, p4, v0, p5, v0}, Lokhttp3/RequestBody$Companion;->create$default(Lokhttp3/RequestBody$Companion;Ljava/io/File;Lokhttp3/MediaType;ILjava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object p3

    new-instance p4, Lokhttp3/Request$Builder;

    invoke-direct {p4}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p4, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance p2, Liz6;

    invoke-direct {p2, p0}, Liz6;-><init>(Lcs4;)V

    invoke-interface {p1, p2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/transsion/log/upload/data/base/HttpUbtError;

    new-instance p3, Lcom/transsion/log/upload/data/base/HttpUbtException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    const/16 p5, 0x3e9

    invoke-direct {p3, p5, p4}, Lcom/transsion/log/upload/data/base/HttpUbtException;-><init>(ILjava/lang/String;)V

    invoke-direct {p2, p5, p3}, Lcom/transsion/log/upload/data/base/HttpUbtError;-><init>(ILcom/transsion/log/upload/data/base/HttpUbtException;)V

    invoke-interface {p0, p2}, Lcs4;->a(Lcom/transsion/log/upload/data/base/HttpUbtError;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u4e0a\u4f20\u5931\u8d25"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NetWorkHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
