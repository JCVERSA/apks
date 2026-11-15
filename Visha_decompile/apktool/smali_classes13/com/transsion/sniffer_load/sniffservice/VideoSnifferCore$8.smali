.class Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->onServerSniffResult(Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffResultBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

.field final synthetic val$result:Lcom/transsion/dbdata/beans/sniff/SniffResultBean;

.field final synthetic val$sniffUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffResultBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$8;->this$0:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    iput-object p2, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$8;->val$sniffUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$8;->val$result:Lcom/transsion/dbdata/beans/sniff/SniffResultBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$8;->this$0:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    invoke-static {v0}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->b(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$8;->this$0:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    invoke-static {v0}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->b(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/sniffer_load/sniffservice/ISniffCallBack;

    iget-object v1, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$8;->val$sniffUrl:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$8;->val$result:Lcom/transsion/dbdata/beans/sniff/SniffResultBean;

    invoke-interface {v0, v1, p0}, Lcom/transsion/sniffer_load/sniffservice/ISniffCallBack;->onServerSniffResult(Ljava/lang/String;Lcom/transsion/dbdata/beans/sniff/SniffResultBean;)V

    :cond_0
    return-void
.end method
