.class public Lcom/transsion/palmsdk/PalmDefaultImpl$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/palmsdk/PalmID$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/palmsdk/PalmDefaultImpl;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/transsion/palmsdk/PalmID$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/palmsdk/PalmID$a;

.field public final synthetic b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/transsion/palmsdk/PalmDefaultImpl;Lcom/transsion/palmsdk/PalmID$a;Landroid/os/Bundle;)V
    .locals 0

    iput-object p2, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$b;->a:Lcom/transsion/palmsdk/PalmID$a;

    iput-object p3, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$b;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$b;->a:Lcom/transsion/palmsdk/PalmID$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/transsion/palmsdk/PalmID$a;->a(ILjava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$b;->b:Landroid/os/Bundle;

    const-string v0, "ti_s_result"

    const-string v1, "failure"

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$b;->b:Landroid/os/Bundle;

    const-string v0, "errcode"

    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance p1, Lwj;

    const-string p2, "sdk_openapi_callback"

    const/16 v0, 0x1e1e

    invoke-direct {p1, p2, v0}, Lwj;-><init>(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$b;->b:Landroid/os/Bundle;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lwj;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lwj;

    move-result-object p0

    invoke-virtual {p0}, Lwj;->b()V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$b;->a:Lcom/transsion/palmsdk/PalmID$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/palmsdk/PalmID$a;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$b;->b:Landroid/os/Bundle;

    const-string v0, "ti_s_result"

    const-string v1, "success"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lwj;

    const-string v0, "sdk_openapi_callback"

    const/16 v1, 0x1e1e

    invoke-direct {p1, v0, v1}, Lwj;-><init>(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$b;->b:Landroid/os/Bundle;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lwj;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lwj;

    move-result-object p0

    invoke-virtual {p0}, Lwj;->b()V

    return-void
.end method
