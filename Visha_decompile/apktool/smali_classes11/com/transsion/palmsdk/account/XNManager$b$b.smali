.class public Lcom/transsion/palmsdk/account/XNManager$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrj7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/palmsdk/account/XNManager$b;->h(Landroid/content/Context;Z)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/palmsdk/account/XNManager$b;


# direct methods
.method public constructor <init>(Lcom/transsion/palmsdk/account/XNManager$b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/palmsdk/account/XNManager$b$b;->a:Lcom/transsion/palmsdk/account/XNManager$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    sget-object p0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callOpenApi errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", errorMessage = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "callOpenApi onSuccess"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/palmsdk/account/XNManager$b$b;->a:Lcom/transsion/palmsdk/account/XNManager$b;

    iget-object v0, v0, Lcom/transsion/palmsdk/account/XNManager$b;->b:Lcom/transsion/palmsdk/account/XNManager;

    invoke-static {v0}, Lcom/transsion/palmsdk/account/XNManager;->a(Lcom/transsion/palmsdk/account/XNManager;)Lmj7;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/palmsdk/account/XNManager$b$b;->a:Lcom/transsion/palmsdk/account/XNManager$b;

    iget-object p0, p0, Lcom/transsion/palmsdk/account/XNManager$b;->b:Lcom/transsion/palmsdk/account/XNManager;

    invoke-static {p0}, Lcom/transsion/palmsdk/account/XNManager;->a(Lcom/transsion/palmsdk/account/XNManager;)Lmj7;

    move-result-object p0

    iget-object p0, p0, Lmj7;->a:Lhyperion/hap/IStoreManager;

    const-string v0, "account"

    invoke-interface {p0, v0, p1}, Lhyperion/hap/IStoreManager;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
