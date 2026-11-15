.class final Lcom/doman/core/ig/proxy/a$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doman/core/ig/proxy/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/doman/core/ig/proxy/a;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/doman/core/ig/proxy/a;)V
    .locals 2

    iput-object p1, p0, Lcom/doman/core/ig/proxy/a$a;->a:Lcom/doman/core/ig/proxy/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MqttService.client."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/doman/core/ig/proxy/a;->a(Lcom/doman/core/ig/proxy/a;)Lcom/doman/core/ig/proxy/a;

    move-result-object p1

    invoke-static {p1}, Lcom/doman/core/ig/proxy/a;->b(Lcom/doman/core/ig/proxy/a;)Lcom/mq/mgmi/client/message/internal/ClientComms;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mq/mgmi/client/message/internal/ClientComms;->e()Lf9d;

    move-result-object p1

    invoke-interface {p1}, Lf9d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/doman/core/ig/proxy/a$a;->b:Ljava/lang/String;

    new-instance p1, Lcom/doman/core/ig/proxy/a$a$1;

    invoke-direct {p1, p0}, Lcom/doman/core/ig/proxy/a$a$1;-><init>(Lcom/doman/core/ig/proxy/a$a;)V

    iput-object p1, p0, Lcom/doman/core/ig/proxy/a$a;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
