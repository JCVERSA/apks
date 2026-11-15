.class public Lcom/transsion/palmsdk/account/XNManager$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrj7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/palmsdk/account/XNManager$b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/palmsdk/PalmID$a;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/transsion/palmsdk/PalmID$a;

.field public final synthetic c:Lcom/transsion/palmsdk/account/XNManager$b;


# direct methods
.method public constructor <init>(Lcom/transsion/palmsdk/account/XNManager$b;Landroid/content/Context;Lcom/transsion/palmsdk/PalmID$a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/palmsdk/account/XNManager$b$a;->c:Lcom/transsion/palmsdk/account/XNManager$b;

    iput-object p2, p0, Lcom/transsion/palmsdk/account/XNManager$b$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/transsion/palmsdk/account/XNManager$b$a;->b:Lcom/transsion/palmsdk/PalmID$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    sget-object v0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshToken errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", errorMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    const v0, 0x9c77

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/transsion/palmsdk/account/XNManager$b$a;->c:Lcom/transsion/palmsdk/account/XNManager$b;

    iget-object v1, p0, Lcom/transsion/palmsdk/account/XNManager$b$a;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/palmsdk/account/XNManager$b;->k(Landroid/content/Context;Z)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/palmsdk/account/XNManager$b$a;->b:Lcom/transsion/palmsdk/PalmID$a;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/transsion/palmsdk/PalmID$a;->a(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/transsion/palmsdk/data/PalmTokenInfo;

    sget-object v0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "refreshToken onSuccess"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/palmsdk/account/XNManager$b$a;->c:Lcom/transsion/palmsdk/account/XNManager$b;

    iget-object v1, p0, Lcom/transsion/palmsdk/account/XNManager$b$a;->a:Landroid/content/Context;

    iget-object v2, p1, Lcom/transsion/palmsdk/data/PalmTokenInfo;->access_token:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/palmsdk/data/PalmTokenInfo;->refresh_token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/palmsdk/account/XNManager$b;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/palmsdk/account/XNManager$b$a;->c:Lcom/transsion/palmsdk/account/XNManager$b;

    iget-object v0, v0, Lcom/transsion/palmsdk/account/XNManager$b;->b:Lcom/transsion/palmsdk/account/XNManager;

    invoke-static {v0}, Lcom/transsion/palmsdk/account/XNManager;->b(Lcom/transsion/palmsdk/account/XNManager;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "key_refresh_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p0, p0, Lcom/transsion/palmsdk/account/XNManager$b$a;->b:Lcom/transsion/palmsdk/PalmID$a;

    if-eqz p0, :cond_0

    iget-object p1, p1, Lcom/transsion/palmsdk/data/PalmTokenInfo;->access_token:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/transsion/palmsdk/PalmID$a;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
