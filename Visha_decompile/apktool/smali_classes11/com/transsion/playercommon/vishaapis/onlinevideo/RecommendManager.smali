.class public Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$ResultCallBack;,
        Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$Method;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lcom/transsion/dbdata/beans/onlinevideo/RecommendBean;Ljava/lang/Class;Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$ResultCallBack;)Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager;->lambda$postRecommendContent$0(Ljava/lang/String;Lcom/transsion/dbdata/beans/onlinevideo/RecommendBean;Ljava/lang/Class;Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$ResultCallBack;)Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$postRecommendContent$0(Ljava/lang/String;Lcom/transsion/dbdata/beans/onlinevideo/RecommendBean;Ljava/lang/Class;Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$ResultCallBack;)Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RecommendBean;->getRequestBody()Lokhttp3/RequestBody;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager;->postRecommendContent(Ljava/lang/String;Lokhttp3/RequestBody;Ljava/lang/Class;)Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean;

    move-result-object p0

    return-object p0
.end method

.method private static postRecommendContent(Ljava/lang/String;Lokhttp3/RequestBody;Ljava/lang/Class;)Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean;
    .locals 6

    .line 1
    invoke-static {}, Lge;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor;

    const-string v2, "visha_api"

    invoke-direct {v0, v2}, Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor;-><init>(Ljava/lang/String;)V

    .line 3
    sget-object v2, Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, v2}, Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor;->setPrintLevel(Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor$Level;)V

    .line 4
    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Lcom/transsion/retrofit/interceptor/HttpLoggingInterceptor;->setColorLevel(Ljava/util/logging/Level;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 5
    :goto_0
    new-instance v2, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v3, 0x5

    .line 6
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 8
    :cond_1
    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 9
    :try_start_0
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 10
    invoke-virtual {v2, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 11
    invoke-virtual {p0, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    .line 13
    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 14
    invoke-virtual {p0}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 15
    :cond_2
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_1
    return-object v1

    .line 16
    :goto_2
    sget-object p1, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static postRecommendContent(Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;Ljava/lang/String;Lcom/transsion/dbdata/beans/onlinevideo/RecommendBean;Ljava/lang/Class;Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$ResultCallBack;)V
    .locals 1

    .line 17
    invoke-static {p4}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p0

    new-instance v0, Lvo8;

    invoke-direct {v0, p1, p2, p3}, Lvo8;-><init>(Ljava/lang/String;Lcom/transsion/dbdata/beans/onlinevideo/RecommendBean;Ljava/lang/Class;)V

    .line 18
    invoke-virtual {p0, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    .line 19
    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    .line 20
    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    new-instance p1, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$1;

    invoke-direct {p1, p4}, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$1;-><init>(Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$ResultCallBack;)V

    .line 21
    invoke-virtual {p0, p1}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public static postRecommendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$2;

    invoke-direct {v0, p1, p0, p2}, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    return-void
.end method
