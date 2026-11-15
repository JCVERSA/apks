.class Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->onClientScriptSniffFailed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

.field final synthetic val$errMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$6;->this$0:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    iput-object p2, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$6;->val$errMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$6;->this$0:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    invoke-static {v0}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->b(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$6;->this$0:Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;

    invoke-static {v0}, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;->b(Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/sniffer_load/sniffservice/ISniffCallBack;

    iget-object p0, p0, Lcom/transsion/sniffer_load/sniffservice/VideoSnifferCore$6;->val$errMsg:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/transsion/sniffer_load/sniffservice/ISniffCallBack;->onClientScriptSniffFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
