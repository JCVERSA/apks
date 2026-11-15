.class Lcom/transsion/sniffer_load/sniffservice/SniffYoutubeUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/sniffservice/SniffYoutubeUtil;->sniff(Ljava/lang/String;Lcom/transsion/sniffer_load/sniffservice/SniffYoutubeUtil$ISniffUrlCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$sniffUrlCallBack:Lcom/transsion/sniffer_load/sniffservice/SniffYoutubeUtil$ISniffUrlCallBack;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/transsion/sniffer_load/sniffservice/SniffYoutubeUtil$ISniffUrlCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/sniffer_load/sniffservice/SniffYoutubeUtil$1;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/sniffer_load/sniffservice/SniffYoutubeUtil$1;->val$sniffUrlCallBack:Lcom/transsion/sniffer_load/sniffservice/SniffYoutubeUtil$ISniffUrlCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sniff url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/sniffer_load/sniffservice/SniffYoutubeUtil$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "visha_SniffYoutubeUtil"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffYoutubeUtil$1;->val$url:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/sniffer_load/sniffservice/SniffYoutubeUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffYoutubeUtil$1;->val$sniffUrlCallBack:Lcom/transsion/sniffer_load/sniffservice/SniffYoutubeUtil$ISniffUrlCallBack;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/SniffYoutubeUtil$1;->val$url:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Lcom/transsion/sniffer_load/sniffservice/SniffYoutubeUtil$ISniffUrlCallBack;->onSniffSuccess(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
