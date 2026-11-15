.class Lcom/transsion/retrofit/factory/BaseAPIManager$1;
.super Lcom/transsion/retrofit/factory/AbsAPIFactoryImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/retrofit/factory/BaseAPIManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/retrofit/factory/BaseAPIManager;


# direct methods
.method public constructor <init>(Lcom/transsion/retrofit/factory/BaseAPIManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/retrofit/factory/BaseAPIManager$1;->this$0:Lcom/transsion/retrofit/factory/BaseAPIManager;

    invoke-direct {p0}, Lcom/transsion/retrofit/factory/AbsAPIFactoryImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getBaseUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/retrofit/factory/BaseAPIManager$1;->this$0:Lcom/transsion/retrofit/factory/BaseAPIManager;

    invoke-virtual {p0}, Lcom/transsion/retrofit/factory/BaseAPIManager;->createBaseUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGslbInterceptor()Lokhttp3/Interceptor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getInterceptor()Lokhttp3/Interceptor;
    .locals 0

    iget-object p0, p0, Lcom/transsion/retrofit/factory/BaseAPIManager$1;->this$0:Lcom/transsion/retrofit/factory/BaseAPIManager;

    invoke-virtual {p0}, Lcom/transsion/retrofit/factory/BaseAPIManager;->createInterceptor()Lokhttp3/Interceptor;

    move-result-object p0

    return-object p0
.end method

.method public getLoggerInterceptor()Lokhttp3/Interceptor;
    .locals 0

    iget-object p0, p0, Lcom/transsion/retrofit/factory/BaseAPIManager$1;->this$0:Lcom/transsion/retrofit/factory/BaseAPIManager;

    invoke-virtual {p0}, Lcom/transsion/retrofit/factory/BaseAPIManager;->createLogInterceptor()Lokhttp3/Interceptor;

    move-result-object p0

    return-object p0
.end method
