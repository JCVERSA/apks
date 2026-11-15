.class public Lcom/transsion/palmsdk/account/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrj7;


# instance fields
.field public final synthetic a:Lcom/transsion/palmsdk/account/XNManager$b$c;


# direct methods
.method public constructor <init>(Lcom/transsion/palmsdk/account/XNManager$b$c;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/palmsdk/account/a;->a:Lcom/transsion/palmsdk/account/XNManager$b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    sget-object v0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccessToken errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", errorMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/palmsdk/account/a;->a:Lcom/transsion/palmsdk/account/XNManager$b$c;

    iget-object p0, p0, Lcom/transsion/palmsdk/account/XNManager$b$c;->a:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->setException(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccessToken response = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "token_info"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/palmsdk/account/a;->a:Lcom/transsion/palmsdk/account/XNManager$b$c;

    iget-object p0, p0, Lcom/transsion/palmsdk/account/XNManager$b$c;->a:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    invoke-virtual {p0, v0}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->setResult(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/palmsdk/account/a;->a:Lcom/transsion/palmsdk/account/XNManager$b$c;

    iget-object p0, p0, Lcom/transsion/palmsdk/account/XNManager$b$c;->a:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    const p1, 0x9ca8

    const-string v0, "token data error"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->setException(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
