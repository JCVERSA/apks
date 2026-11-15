.class public Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;->F0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$c;->b:Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$c;->b:Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    const-string v1, "version"

    const-string v2, "2.0.1.03"

    const-string v3, "appid"

    invoke-static {v0, p1, v3, v1, v2}, Lok7;->a(Lcom/transsion/palmsdk/data/PalmAuthRequest;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "button"

    const-string v1, "reject"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lwj;

    const-string v1, "sdk_auth_cl"

    const/16 v2, 0x1e1e

    invoke-direct {v0, v1, v2}, Lwj;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lwj;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lwj;

    move-result-object p1

    invoke-virtual {p1}, Lwj;->b()V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$c;->b:Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    invoke-virtual {p1}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->onCancel()V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2$c;->b:Lcom/transsion/xuanniao/account/auth/view/PalmAuthActivity2;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
