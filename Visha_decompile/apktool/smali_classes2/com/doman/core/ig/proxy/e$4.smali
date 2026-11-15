.class final Lcom/doman/core/ig/proxy/e$4;
.super Lcom/doman/core/ig/proxy/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doman/core/ig/proxy/e;->c()V
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

    iput-object p1, p0, Lcom/doman/core/ig/proxy/e$4;->b:Lcom/doman/core/ig/proxy/e;

    iput-object p3, p0, Lcom/doman/core/ig/proxy/e$4;->a:Landroid/os/Bundle;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/doman/core/ig/proxy/e$a;-><init>(Lcom/doman/core/ig/proxy/e;Landroid/os/Bundle;B)V

    return-void
.end method


# virtual methods
.method public final onFailure(Lggd;Ljava/lang/Throwable;)V
    .locals 2

    iget-object p1, p0, Lcom/doman/core/ig/proxy/e$4;->a:Landroid/os/Bundle;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MqttService.errorMessage"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/doman/core/ig/proxy/e$4;->a:Landroid/os/Bundle;

    const-string v0, "MqttService.exception"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object p1, p0, Lcom/doman/core/ig/proxy/e$4;->b:Lcom/doman/core/ig/proxy/e;

    invoke-static {p1}, Lcom/doman/core/ig/proxy/e;->a(Lcom/doman/core/ig/proxy/e;)Lcom/doman/core/ig/proxy/MqttService;

    move-result-object p1

    iget-object p2, p0, Lcom/doman/core/ig/proxy/e$4;->b:Lcom/doman/core/ig/proxy/e;

    invoke-static {p2}, Lcom/doman/core/ig/proxy/e;->b(Lcom/doman/core/ig/proxy/e;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/doman/core/ig/proxy/j;->b:Lcom/doman/core/ig/proxy/j;

    iget-object v1, p0, Lcom/doman/core/ig/proxy/e$4;->a:Landroid/os/Bundle;

    invoke-virtual {p1, p2, v0, v1}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Lcom/doman/core/ig/proxy/j;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/doman/core/ig/proxy/e$4;->b:Lcom/doman/core/ig/proxy/e;

    iget-object p0, p0, Lcom/doman/core/ig/proxy/e$4;->a:Landroid/os/Bundle;

    invoke-static {p1, p0}, Lcom/doman/core/ig/proxy/e;->b(Lcom/doman/core/ig/proxy/e;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onSuccess(Lggd;)V
    .locals 2

    iget-object p1, p0, Lcom/doman/core/ig/proxy/e$4;->b:Lcom/doman/core/ig/proxy/e;

    invoke-static {p1}, Lcom/doman/core/ig/proxy/e;->a(Lcom/doman/core/ig/proxy/e;)Lcom/doman/core/ig/proxy/MqttService;

    move-result-object p1

    const-string v0, "Reconnect Success!"

    const-string v1, "MqttConnection"

    invoke-virtual {p1, v1, v0}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/doman/core/ig/proxy/e$4;->b:Lcom/doman/core/ig/proxy/e;

    invoke-static {p1}, Lcom/doman/core/ig/proxy/e;->a(Lcom/doman/core/ig/proxy/e;)Lcom/doman/core/ig/proxy/MqttService;

    move-result-object p1

    const-string v0, "DeliverBacklog when reconnect."

    invoke-virtual {p1, v1, v0}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/doman/core/ig/proxy/e$4;->b:Lcom/doman/core/ig/proxy/e;

    iget-object p0, p0, Lcom/doman/core/ig/proxy/e$4;->a:Landroid/os/Bundle;

    invoke-static {p1, p0}, Lcom/doman/core/ig/proxy/e;->a(Lcom/doman/core/ig/proxy/e;Landroid/os/Bundle;)V

    return-void
.end method
