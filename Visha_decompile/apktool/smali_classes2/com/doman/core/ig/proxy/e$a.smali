.class Lcom/doman/core/ig/proxy/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doman/core/ig/proxy/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/os/Bundle;

.field final synthetic c:Lcom/doman/core/ig/proxy/e;


# direct methods
.method private constructor <init>(Lcom/doman/core/ig/proxy/e;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/doman/core/ig/proxy/e$a;->c:Lcom/doman/core/ig/proxy/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/doman/core/ig/proxy/e$a;->a:Landroid/os/Bundle;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/doman/core/ig/proxy/e;Landroid/os/Bundle;B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/doman/core/ig/proxy/e$a;-><init>(Lcom/doman/core/ig/proxy/e;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onFailure(Lggd;Ljava/lang/Throwable;)V
    .locals 2

    iget-object p1, p0, Lcom/doman/core/ig/proxy/e$a;->a:Landroid/os/Bundle;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MqttService.errorMessage"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/doman/core/ig/proxy/e$a;->a:Landroid/os/Bundle;

    const-string v0, "MqttService.exception"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object p1, p0, Lcom/doman/core/ig/proxy/e$a;->c:Lcom/doman/core/ig/proxy/e;

    invoke-static {p1}, Lcom/doman/core/ig/proxy/e;->a(Lcom/doman/core/ig/proxy/e;)Lcom/doman/core/ig/proxy/MqttService;

    move-result-object p1

    iget-object p2, p0, Lcom/doman/core/ig/proxy/e$a;->c:Lcom/doman/core/ig/proxy/e;

    invoke-static {p2}, Lcom/doman/core/ig/proxy/e;->b(Lcom/doman/core/ig/proxy/e;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/doman/core/ig/proxy/j;->b:Lcom/doman/core/ig/proxy/j;

    iget-object p0, p0, Lcom/doman/core/ig/proxy/e$a;->a:Landroid/os/Bundle;

    invoke-virtual {p1, p2, v0, p0}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Lcom/doman/core/ig/proxy/j;Landroid/os/Bundle;)V

    return-void
.end method

.method public onSuccess(Lggd;)V
    .locals 2

    iget-object p1, p0, Lcom/doman/core/ig/proxy/e$a;->c:Lcom/doman/core/ig/proxy/e;

    invoke-static {p1}, Lcom/doman/core/ig/proxy/e;->a(Lcom/doman/core/ig/proxy/e;)Lcom/doman/core/ig/proxy/MqttService;

    move-result-object p1

    iget-object v0, p0, Lcom/doman/core/ig/proxy/e$a;->c:Lcom/doman/core/ig/proxy/e;

    invoke-static {v0}, Lcom/doman/core/ig/proxy/e;->b(Lcom/doman/core/ig/proxy/e;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/doman/core/ig/proxy/j;->a:Lcom/doman/core/ig/proxy/j;

    iget-object p0, p0, Lcom/doman/core/ig/proxy/e$a;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1, p0}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Lcom/doman/core/ig/proxy/j;Landroid/os/Bundle;)V

    return-void
.end method
