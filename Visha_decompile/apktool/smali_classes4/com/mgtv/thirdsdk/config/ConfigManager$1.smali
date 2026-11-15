.class Lcom/mgtv/thirdsdk/config/ConfigManager$1;
.super Lcom/hunantv/imgo/net/ImgoHttpCallBack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/thirdsdk/config/ConfigManager;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hunantv/imgo/net/ImgoHttpCallBack<",
        "Lcom/mgtv/thirdsdk/config/ConfigData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/mgtv/thirdsdk/config/ConfigManager;


# direct methods
.method public constructor <init>(Lcom/mgtv/thirdsdk/config/ConfigManager;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/config/ConfigManager$1;->b:Lcom/mgtv/thirdsdk/config/ConfigManager;

    invoke-direct {p0}, Lcom/hunantv/imgo/net/ImgoHttpCallBack;-><init>()V

    return-void
.end method

.method private c(Lcom/mgtv/thirdsdk/config/ConfigData;)V
    .locals 0

    invoke-static {p1}, Lcom/mgtv/thirdsdk/config/ConfigManager;->a(Lcom/mgtv/thirdsdk/config/ConfigData;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mgtv/task/http/HttpResponseObject;)Lcom/mgtv/thirdsdk/config/ConfigData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/mgtv/thirdsdk/config/ConfigManager$1;->b:Lcom/mgtv/thirdsdk/config/ConfigManager;

    const-string v1, "PRE_ConfigData"

    iget-object v2, p1, Lcom/mgtv/task/http/HttpResponseObject;->data:Lcom/google/gson/JsonElement;

    invoke-static {v0, v1, v2}, Lcom/mgtv/thirdsdk/config/ConfigManager;->a(Lcom/mgtv/thirdsdk/config/ConfigManager;Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 8
    :cond_0
    invoke-super {p0, p1}, Lcom/mgtv/task/http/c;->b(Lcom/mgtv/task/http/HttpResponseObject;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgtv/thirdsdk/config/ConfigData;

    return-object p0
.end method

.method public a(IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    if-eqz p4, :cond_0

    .line 3
    invoke-virtual {p4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/mgtv/thirdsdk/config/ConfigManager$1;->b:Lcom/mgtv/thirdsdk/config/ConfigManager;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/config/ConfigManager;->a(Lcom/mgtv/thirdsdk/config/ConfigManager;)I

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/mgtv/thirdsdk/config/ConfigManager$1;->b:Lcom/mgtv/thirdsdk/config/ConfigManager;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/config/ConfigManager;->b(Lcom/mgtv/thirdsdk/config/ConfigManager;)I

    .line 6
    iget-object p0, p0, Lcom/mgtv/thirdsdk/config/ConfigManager$1;->b:Lcom/mgtv/thirdsdk/config/ConfigManager;

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/config/ConfigManager;->a()V

    :cond_1
    return-void
.end method

.method public a(Lcom/mgtv/thirdsdk/config/ConfigData;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/config/ConfigManager$1;->c(Lcom/mgtv/thirdsdk/config/ConfigData;)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/mgtv/thirdsdk/config/ConfigData;

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/config/ConfigManager$1;->b(Lcom/mgtv/thirdsdk/config/ConfigData;)V

    return-void
.end method

.method public synthetic b(Lcom/mgtv/task/http/HttpResponseObject;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/config/ConfigManager$1;->a(Lcom/mgtv/task/http/HttpResponseObject;)Lcom/mgtv/thirdsdk/config/ConfigData;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/mgtv/thirdsdk/config/ConfigData;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/config/ConfigManager$1;->c(Lcom/mgtv/thirdsdk/config/ConfigData;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/mgtv/thirdsdk/config/ConfigData;

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/config/ConfigManager$1;->a(Lcom/mgtv/thirdsdk/config/ConfigData;)V

    return-void
.end method
