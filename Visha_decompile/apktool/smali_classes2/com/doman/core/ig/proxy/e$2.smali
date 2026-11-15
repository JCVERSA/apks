.class final Lcom/doman/core/ig/proxy/e$2;
.super Lcom/doman/core/ig/proxy/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doman/core/ig/proxy/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/doman/core/ig/proxy/e;


# direct methods
.method public constructor <init>(Lcom/doman/core/ig/proxy/e;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/ig/proxy/e$2;->b:Lcom/doman/core/ig/proxy/e;

    iput-object p3, p0, Lcom/doman/core/ig/proxy/e$2;->a:Landroid/os/Bundle;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/doman/core/ig/proxy/e$a;-><init>(Lcom/doman/core/ig/proxy/e;Landroid/os/Bundle;B)V

    return-void
.end method


# virtual methods
.method public final onFailure(Lggd;Ljava/lang/Throwable;)V
    .locals 2

    iget-object p1, p0, Lcom/doman/core/ig/proxy/e$2;->a:Landroid/os/Bundle;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MqttService.errorMessage"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/doman/core/ig/proxy/e$2;->a:Landroid/os/Bundle;

    const-string v0, "MqttService.exception"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object p1, p0, Lcom/doman/core/ig/proxy/e$2;->b:Lcom/doman/core/ig/proxy/e;

    invoke-static {p1}, Lcom/doman/core/ig/proxy/e;->a(Lcom/doman/core/ig/proxy/e;)Lcom/doman/core/ig/proxy/MqttService;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "connect fail, call connect to reconnect.reason:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MqttConnection"

    invoke-virtual {p1, v0, p2}, Lcom/doman/core/ig/proxy/MqttService;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/doman/core/ig/proxy/e$2;->b:Lcom/doman/core/ig/proxy/e;

    iget-object p0, p0, Lcom/doman/core/ig/proxy/e$2;->a:Landroid/os/Bundle;

    invoke-static {p1, p0}, Lcom/doman/core/ig/proxy/e;->b(Lcom/doman/core/ig/proxy/e;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onSuccess(Lggd;)V
    .locals 1

    iget-object p1, p0, Lcom/doman/core/ig/proxy/e$2;->b:Lcom/doman/core/ig/proxy/e;

    iget-object v0, p0, Lcom/doman/core/ig/proxy/e$2;->a:Landroid/os/Bundle;

    invoke-static {p1, v0}, Lcom/doman/core/ig/proxy/e;->a(Lcom/doman/core/ig/proxy/e;Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/doman/core/ig/proxy/e$2;->b:Lcom/doman/core/ig/proxy/e;

    invoke-static {p0}, Lcom/doman/core/ig/proxy/e;->a(Lcom/doman/core/ig/proxy/e;)Lcom/doman/core/ig/proxy/MqttService;

    move-result-object p0

    const-string p1, "MqttConnection"

    const-string v0, "connect success!"

    invoke-virtual {p0, p1, v0}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
