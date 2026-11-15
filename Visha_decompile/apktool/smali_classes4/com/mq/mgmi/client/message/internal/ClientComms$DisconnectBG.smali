.class Lcom/mq/mgmi/client/message/internal/ClientComms$DisconnectBG;
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
    name = "DisconnectBG"
.end annotation


# instance fields
.field disconnect:Lxr6;

.field quiesceTimeout:J

.field final synthetic this$0:Lcom/mq/mgmi/client/message/internal/ClientComms;

.field private threadName:Ljava/lang/String;

.field token:Lbud;


# direct methods
.method public constructor <init>(Lcom/mq/mgmi/client/message/internal/ClientComms;Lxr6;JLbud;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p3, p0, Lcom/mq/mgmi/client/message/internal/ClientComms$DisconnectBG;->quiesceTimeout:J

    iput-object p5, p0, Lcom/mq/mgmi/client/message/internal/ClientComms$DisconnectBG;->token:Lbud;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/mq/mgmi/client/message/internal/ClientComms$DisconnectBG;->threadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/ClientComms$DisconnectBG;->this$0:Lcom/mq/mgmi/client/message/internal/ClientComms;

    invoke-static {v0}, Lcom/mq/mgmi/client/message/internal/ClientComms;->c(Lcom/mq/mgmi/client/message/internal/ClientComms;)Lg6d;

    iget-object p0, p0, Lcom/mq/mgmi/client/message/internal/ClientComms$DisconnectBG;->this$0:Lcom/mq/mgmi/client/message/internal/ClientComms;

    invoke-static {p0}, Lcom/mq/mgmi/client/message/internal/ClientComms;->b(Lcom/mq/mgmi/client/message/internal/ClientComms;)Ljava/lang/String;

    const/4 p0, 0x0

    throw p0
.end method

.method public start()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MQTT Disc: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mq/mgmi/client/message/internal/ClientComms$DisconnectBG;->this$0:Lcom/mq/mgmi/client/message/internal/ClientComms;

    invoke-virtual {v1}, Lcom/mq/mgmi/client/message/internal/ClientComms;->e()Lf9d;

    move-result-object v1

    invoke-interface {v1}, Lf9d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mq/mgmi/client/message/internal/ClientComms$DisconnectBG;->threadName:Ljava/lang/String;

    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/ClientComms$DisconnectBG;->this$0:Lcom/mq/mgmi/client/message/internal/ClientComms;

    invoke-static {v0}, Lcom/mq/mgmi/client/message/internal/ClientComms;->a(Lcom/mq/mgmi/client/message/internal/ClientComms;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/ClientComms$DisconnectBG;->this$0:Lcom/mq/mgmi/client/message/internal/ClientComms;

    invoke-static {v0}, Lcom/mq/mgmi/client/message/internal/ClientComms;->a(Lcom/mq/mgmi/client/message/internal/ClientComms;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
