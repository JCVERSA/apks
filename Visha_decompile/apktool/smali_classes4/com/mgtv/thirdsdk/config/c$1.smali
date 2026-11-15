.class Lcom/mgtv/thirdsdk/config/c$1;
.super Lcom/hunantv/imgo/net/ImgoHttpCallBack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/thirdsdk/config/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hunantv/imgo/net/ImgoHttpCallBack<",
        "Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/mgtv/thirdsdk/config/c;


# direct methods
.method public constructor <init>(Lcom/mgtv/thirdsdk/config/c;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/config/c$1;->b:Lcom/mgtv/thirdsdk/config/c;

    invoke-direct {p0}, Lcom/hunantv/imgo/net/ImgoHttpCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mgtv/task/http/HttpResponseObject;)Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mgtv/thirdsdk/config/c$1;->b:Lcom/mgtv/thirdsdk/config/c;

    iget-object v1, p1, Lcom/mgtv/task/http/HttpResponseObject;->data:Lcom/google/gson/JsonElement;

    invoke-static {v0, v1}, Lcom/mgtv/thirdsdk/config/c;->a(Lcom/mgtv/thirdsdk/config/c;Lcom/google/gson/JsonElement;)V

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lcom/mgtv/task/http/c;->b(Lcom/mgtv/task/http/HttpResponseObject;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;

    return-object p0
.end method

.method public a(Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;)V
    .locals 0

    .line 1
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/config/c$1;->b(Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;)V

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
    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/config/c$1;->a(Lcom/mgtv/task/http/HttpResponseObject;)Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;)V
    .locals 0

    .line 3
    invoke-static {p1}, Lcom/mgtv/thirdsdk/datareport/playerconfig/a;->a(Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;)V

    .line 4
    invoke-static {p1}, Lcom/mgtv/thirdsdk/config/c;->a(Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;)V

    .line 5
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/c/a;->b()Z

    move-result p0

    if-nez p0, :cond_0

    .line 6
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/c/a;->a()Z

    .line 7
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/c/a;->c()V

    :cond_0
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/config/c$1;->a(Lcom/mgtv/thirdsdk/datareport/playerconfig/VideoPlayerConfig;)V

    return-void
.end method
