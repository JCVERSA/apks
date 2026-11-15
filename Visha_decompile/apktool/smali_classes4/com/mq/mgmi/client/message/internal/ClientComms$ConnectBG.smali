.class Lcom/mq/mgmi/client/message/internal/ClientComms$ConnectBG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mq/mgmi/client/message/internal/ClientComms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectBG"
.end annotation


# instance fields
.field clientComms:Lcom/mq/mgmi/client/message/internal/ClientComms;

.field conPacket:Lwr6;

.field conToken:Lbud;

.field final synthetic this$0:Lcom/mq/mgmi/client/message/internal/ClientComms;

.field private threadName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mq/mgmi/client/message/internal/ClientComms;Lcom/mq/mgmi/client/message/internal/ClientComms;Lbud;Lwr6;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/mq/mgmi/client/message/internal/ClientComms$ConnectBG;->conToken:Lbud;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "MQTT Con: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mq/mgmi/client/message/internal/ClientComms;->e()Lf9d;

    move-result-object p1

    invoke-interface {p1}, Lf9d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mq/mgmi/client/message/internal/ClientComms$ConnectBG;->threadName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/mq/mgmi/client/message/internal/ClientComms$ConnectBG;->threadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/ClientComms$ConnectBG;->this$0:Lcom/mq/mgmi/client/message/internal/ClientComms;

    invoke-static {v0}, Lcom/mq/mgmi/client/message/internal/ClientComms;->c(Lcom/mq/mgmi/client/message/internal/ClientComms;)Lg6d;

    iget-object p0, p0, Lcom/mq/mgmi/client/message/internal/ClientComms$ConnectBG;->this$0:Lcom/mq/mgmi/client/message/internal/ClientComms;

    invoke-static {p0}, Lcom/mq/mgmi/client/message/internal/ClientComms;->b(Lcom/mq/mgmi/client/message/internal/ClientComms;)Ljava/lang/String;

    const/4 p0, 0x0

    throw p0
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/ClientComms$ConnectBG;->this$0:Lcom/mq/mgmi/client/message/internal/ClientComms;

    invoke-static {v0}, Lcom/mq/mgmi/client/message/internal/ClientComms;->a(Lcom/mq/mgmi/client/message/internal/ClientComms;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/ClientComms$ConnectBG;->this$0:Lcom/mq/mgmi/client/message/internal/ClientComms;

    invoke-static {v0}, Lcom/mq/mgmi/client/message/internal/ClientComms;->a(Lcom/mq/mgmi/client/message/internal/ClientComms;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
