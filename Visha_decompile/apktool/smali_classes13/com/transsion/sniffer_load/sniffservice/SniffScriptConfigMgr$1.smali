.class Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr$1;
.super Lcom/transsion/retrofit/callback/CallbackWithState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->requestConfigFromServer(Ljava/lang/String;Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/retrofit/callback/CallbackWithState<",
        "Lcom/transsion/retrofit/reponse/BaseResponse<",
        "Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr$1;->this$0:Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;

    iput-object p2, p0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Lcom/transsion/retrofit/callback/CallbackWithState;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailture(Lcom/transsion/retrofit/reponse/ResponseUtil$State;)V
    .locals 2

    sget-object p0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get_sniff_config_from_server_failed_msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/transsion/retrofit/reponse/ResponseUtil$State;->errMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/transsion/retrofit/reponse/ResponseUtil$State;->code:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lgu8;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgu8<",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lgu8;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lgu8;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {v0}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lgu8;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {v0}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;->script_key:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "get_sniff_config_from_server"

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr$1;->this$0:Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;

    invoke-virtual {p1}, Lgu8;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->updateSniffScriptDB(Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;Z)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get_sniff_config_from_server_but_not_support_url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
