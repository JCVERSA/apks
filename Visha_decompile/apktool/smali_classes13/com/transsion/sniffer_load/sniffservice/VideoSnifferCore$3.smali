.class Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->startSniff(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$3;->this$0:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    iput-object p2, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$3;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->getInstance()Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->geAssetJsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->l()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "use local JS sniff:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$3;->val$url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$3;->this$0:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$3;->val$url:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, p0, v2, v3, v0}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->j(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;ZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->getInstance()Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/sniffer_load/sniffservice/SniffScriptConfigMgr;->getSupportSniffScript(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$3;->this$0:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    invoke-static {v1}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->d(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v1}, Lfc7;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lfc7;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;->script_content:Ljava/lang/String;

    invoke-static {v1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$3;->this$0:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$3;->val$url:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, p0, v0, v3, v2}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->j(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;ZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    iget-object v1, v0, Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;->script_url:Ljava/lang/String;

    invoke-static {v1}, Lir8;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$3;->this$0:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$3;->val$url:Ljava/lang/String;

    invoke-static {v1, p0, v0}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->i(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffScriptBean;)V

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->l()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sniff_video_using_js_failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$3;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$3;->this$0:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->onStartClientSniff(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->l()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sniff_video_using_js_failed_try_use_common "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$3;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$3;->this$0:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    iget-object v1, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->onStartClientSniff(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;-><init>()V

    sget-object v1, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->CODE_2001:Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;

    iget v2, v1, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->code:I

    invoke-virtual {v0, v2}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setCode(I)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object v0

    iget-object v1, v1, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer$ENUM_SNIFF_MARKPOINT;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMsg(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setMainUrl(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object v0

    new-instance v1, Ljava/net/URL;

    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$3;->val$url:Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setDomainName(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    const-string v0, "dl_brower_sniff"

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->setEventName(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean$Builder;->Build()Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/sniffer_load/sniffservice/SniffMarkPointer;->markPointSniffAsync(Lcom/transsion/dbdata/beans/sniff/SniffMarkPointBean;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
