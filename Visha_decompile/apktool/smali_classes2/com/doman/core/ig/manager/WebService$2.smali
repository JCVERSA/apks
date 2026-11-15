.class final Lcom/doman/core/ig/manager/WebService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doman/core/ig/manager/WebService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/doman/core/ig/manager/WebService;


# direct methods
.method public constructor <init>(Lcom/doman/core/ig/manager/WebService;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/ig/manager/WebService$2;->a:Lcom/doman/core/ig/manager/WebService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lggd;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/doman/core/ig/manager/WebService;->b()Z

    invoke-static {}, Lcom/doman/core/manager/a;->a()Lcom/doman/core/manager/a;

    invoke-static {}, Lcom/doman/core/manager/a;->d()I

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/doman/core/webview/c;->ah:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/doman/core/ig/manager/WebService$2;->a:Lcom/doman/core/ig/manager/WebService;

    invoke-static {v1}, Lcom/doman/core/ig/manager/WebService;->b(Lcom/doman/core/ig/manager/WebService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/doman/core/webview/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/doman/core/ig/manager/WebService$2;->a:Lcom/doman/core/ig/manager/WebService;

    invoke-static {p1}, Lcom/doman/core/ig/manager/WebService;->b(Lcom/doman/core/ig/manager/WebService;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/doman/core/ig/manager/WebService;->a(Lcom/doman/core/ig/manager/WebService;I)I

    invoke-static {}, Lcom/doman/core/ig/manager/WebService;->f()I

    invoke-static {}, Lcom/doman/core/ig/manager/WebService;->g()I

    move-result p1

    const/4 p2, 0x3

    if-gt p1, p2, :cond_1

    iget-object p0, p0, Lcom/doman/core/ig/manager/WebService$2;->a:Lcom/doman/core/ig/manager/WebService;

    invoke-static {p0}, Lcom/doman/core/ig/manager/WebService;->a(Lcom/doman/core/ig/manager/WebService;)V

    :cond_1
    return-void
.end method

.method public final onSuccess(Lggd;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/doman/core/manager/a;->a()Lcom/doman/core/manager/a;

    invoke-static {}, Lcom/doman/core/manager/a;->d()I

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/doman/core/webview/c;->ag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/doman/core/ig/manager/WebService$2;->a:Lcom/doman/core/ig/manager/WebService;

    invoke-static {v1}, Lcom/doman/core/ig/manager/WebService;->b(Lcom/doman/core/ig/manager/WebService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/doman/core/webview/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/doman/core/ig/manager/WebService$2;->a:Lcom/doman/core/ig/manager/WebService;

    invoke-static {p0}, Lcom/doman/core/ig/manager/WebService;->b(Lcom/doman/core/ig/manager/WebService;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/doman/core/ig/manager/WebService;->a(Lcom/doman/core/ig/manager/WebService;I)I

    invoke-static {}, Lcom/doman/core/ig/manager/WebService;->c()I

    invoke-static {}, Lcom/doman/core/ig/manager/WebService;->d()I

    invoke-static {}, Lcom/doman/core/ig/manager/WebService;->b()Z

    invoke-static {}, Lcom/doman/core/ig/manager/WebService;->e()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/doman/core/ig/manager/WebService;->a()Lcom/doman/core/ig/proxy/MqttAndroidClient;

    move-result-object p0

    invoke-static {}, Lcom/doman/core/ig/manager/WebService;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/doman/core/ig/proxy/MqttAndroidClient;->a(Ljava/lang/String;)Lggd;

    return-void

    :cond_1
    invoke-static {}, Lcom/doman/core/ig/manager/WebService;->a()Lcom/doman/core/ig/proxy/MqttAndroidClient;

    move-result-object p0

    sget-object p1, Lcom/doman/core/ig/manager/WebService;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/doman/core/ig/proxy/MqttAndroidClient;->a(Ljava/lang/String;)Lggd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
