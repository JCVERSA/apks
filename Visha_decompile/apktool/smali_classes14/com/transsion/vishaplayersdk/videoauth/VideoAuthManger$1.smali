.class Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger$1;
.super Lcom/transsion/retrofit/callback/CallbackWithState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger;->videoAuth(JJLcom/transsion/vishaplayersdk/videoauth/VideoAuthManger$IVideoAuthResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/retrofit/callback/CallbackWithState<",
        "Lcom/transsion/retrofit/reponse/BaseResponse<",
        "Lcom/transsion/vishaplayersdk/netservices/beans/VideoAuthResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger;

.field final synthetic val$callback:Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger$IVideoAuthResultCallback;


# direct methods
.method public constructor <init>(Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger;Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger$IVideoAuthResultCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger$1;->this$0:Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger;

    iput-object p2, p0, Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger$1;->val$callback:Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger$IVideoAuthResultCallback;

    invoke-direct {p0}, Lcom/transsion/retrofit/callback/CallbackWithState;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailture(Lcom/transsion/retrofit/reponse/ResponseUtil$State;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video authorization failed,error code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/transsion/retrofit/reponse/ResponseUtil$State;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/transsion/retrofit/reponse/ResponseUtil$State;->errMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "visha_playersdk_VideoAuthManger"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger$1;->this$0:Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger;

    iget-object v1, p1, Lcom/transsion/retrofit/reponse/ResponseUtil$State;->code:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object p1, p1, Lcom/transsion/retrofit/reponse/ResponseUtil$State;->errMsg:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger$1;->val$callback:Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger$IVideoAuthResultCallback;

    invoke-static {v0, v1, p1, v2}, Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger;->b(Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger;ILjava/lang/String;Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger$IVideoAuthResultCallback;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger$1;->this$0:Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger;->a(Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger;Z)V

    return-void
.end method

.method public onSuccess(Lgu8;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgu8<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/vishaplayersdk/netservices/beans/VideoAuthResult;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger$1;->this$0:Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger;

    invoke-virtual {p1}, Lgu8;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/vishaplayersdk/netservices/beans/VideoAuthResult;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger$1;->val$callback:Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger$IVideoAuthResultCallback;

    invoke-static {v0, p1, v1}, Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger;->c(Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger;Lcom/transsion/vishaplayersdk/netservices/beans/VideoAuthResult;Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger$IVideoAuthResultCallback;)V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger$1;->this$0:Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger;->a(Lcom/transsion/vishaplayersdk/videoauth/VideoAuthManger;Z)V

    return-void
.end method
