.class Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager;->postRecommendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$body:Ljava/lang/String;

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$2;->val$method:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$2;->val$body:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lge;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor;

    const-string v2, "mango_mark"

    invoke-direct {v0, v2}, Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, v2}, Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor;->setPrintLevel(Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;)V

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor;->setColorLevel(Ljava/util/logging/Level;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    new-instance v2, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    :cond_1
    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    :try_start_0
    const-string v2, "get"

    iget-object v3, p0, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$2;->val$method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    iget-object p0, p0, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$2;->val$url:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v2, "post"

    iget-object v3, p0, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$2;->val$method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v1, Lokhttp3/FormBody$Builder;

    invoke-direct {v1}, Lokhttp3/FormBody$Builder;-><init>()V

    const-string v2, "data"

    iget-object v3, p0, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$2;->val$body:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    iget-object p0, p0, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$2;->val$url:Ljava/lang/String;

    invoke-virtual {v2, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {v1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v1

    invoke-virtual {p0, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method
