.class Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->requestSniffScript(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener<",
        "Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

.field final synthetic val$startTime:J

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$1;->this$0:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    iput-object p2, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$1;->val$url:Ljava/lang/String;

    iput-wide p3, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$1;->val$startTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public returnDataFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->l()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get_sniff_config_from_server_failed_msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " code="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$1;->this$0:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->g(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;Z)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$1;->this$0:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    invoke-static {p1, p2}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->h(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;Z)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$1;->this$0:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$1;->val$url:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->onStartClientSniff(Ljava/lang/String;)V

    return-void
.end method

.method public returnDataSuccess(Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;)V
    .locals 5

    .line 2
    const-string v0, "dl_brower_sniff"

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;->script_key:Ljava/lang/String;

    invoke-static {v1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-static {}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->l()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$1;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "get_sniff_config_from_server"

    filled-new-array {v4, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->getInstance()Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->updateSniffScriptDB(Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;Z)V

    .line 5
    iget-object p1, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$1;->val$url:Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/sniffer_load/sniffservice/SniffTiktokUtil;->isTiktokSite(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$1;->this$0:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    iget-object v1, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$1;->val$url:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->sniffVideo(Ljava/lang/String;)V

    .line 7
    :cond_0
    new-instance p1, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    invoke-direct {p1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;-><init>()V

    sget-object v1, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->CODE_SEVER_2006:Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;

    iget v2, v1, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->code:I

    .line 8
    invoke-virtual {p1, v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setCode(I)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    iget-object v1, v1, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->msg:Ljava/lang/String;

    .line 9
    invoke-virtual {p1, v1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMsg(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$1;->val$url:Ljava/lang/String;

    .line 10
    invoke-virtual {p1, v1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMainUrl(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$1;->val$startTime:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {p1, v1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setDuration(I)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    .line 12
    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setEventName(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->Build()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;

    move-result-object p1

    .line 14
    invoke-static {p1}, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->markPointSniffAsync(Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;)V

    goto :goto_0

    .line 15
    :cond_1
    invoke-static {}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->l()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get_sniff_config_from_server_but_not_support_url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    new-instance p1, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    invoke-direct {p1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;-><init>()V

    sget-object v1, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->CODE_SEVER_2007:Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;

    iget v2, v1, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->code:I

    .line 17
    invoke-virtual {p1, v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setCode(I)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    iget-object v1, v1, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->msg:Ljava/lang/String;

    .line 18
    invoke-virtual {p1, v1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMsg(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$1;->val$url:Ljava/lang/String;

    .line 19
    invoke-virtual {p1, v1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMainUrl(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$1;->val$startTime:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {p1, v1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setDuration(I)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    .line 21
    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setEventName(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->Build()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;

    move-result-object p1

    .line 23
    invoke-static {p1}, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->markPointSniffAsync(Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;)V

    .line 24
    :goto_0
    iget-object p1, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$1;->this$0:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->g(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;Z)V

    .line 25
    iget-object p1, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$1;->this$0:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    invoke-static {p1}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->f(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$1;->val$url:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$1;->this$0:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    invoke-static {v0}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->e(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 26
    iget-object p1, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$1;->this$0:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$1;->val$url:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->k(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic returnDataSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$1;->returnDataSuccess(Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;)V

    return-void
.end method
