.class public Ltj7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/palmsdk/PalmID$a;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lcom/transsion/palmsdk/PalmID$a;

.field public final synthetic d:Llj7;


# direct methods
.method public constructor <init>(Llj7;Ljava/lang/String;Ljava/util/Map;Lcom/transsion/palmsdk/PalmID$a;)V
    .locals 0

    iput-object p1, p0, Ltj7;->d:Llj7;

    iput-object p2, p0, Ltj7;->a:Ljava/lang/String;

    iput-object p3, p0, Ltj7;->b:Ljava/util/Map;

    iput-object p4, p0, Ltj7;->c:Lcom/transsion/palmsdk/PalmID$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    sget-object v0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PalmNetworkManager token refresh failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    iget-object p0, p0, Ltj7;->c:Lcom/transsion/palmsdk/PalmID$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Token refresh failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/transsion/palmsdk/PalmID$a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/String;

    invoke-static {}, Lcom/transsion/palmsdk/account/XNManager;->g()Lcom/transsion/palmsdk/account/XNManager;

    move-result-object p1

    iget-object v0, p0, Ltj7;->d:Llj7;

    iget-object v0, v0, Llj7;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/transsion/palmsdk/account/XNManager;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "PalmNetworkManager token refreshed, retrying API call"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    iget-object v0, p0, Ltj7;->d:Llj7;

    iget-object v1, p0, Ltj7;->a:Ljava/lang/String;

    iget-object v2, p0, Ltj7;->b:Ljava/util/Map;

    iget-object p0, p0, Ltj7;->c:Lcom/transsion/palmsdk/PalmID$a;

    invoke-virtual {v0, v1, p1, v2, p0}, Llj7;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/transsion/palmsdk/PalmID$a;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ltj7;->c:Lcom/transsion/palmsdk/PalmID$a;

    const p1, 0x9c77

    const-string v0, "Token refresh failed"

    invoke-interface {p0, p1, v0}, Lcom/transsion/palmsdk/PalmID$a;->a(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
