.class public final Lcom/cloud/hisavana/sdk/manager/a$c;
.super Landroidx/browser/customtabs/CustomTabsServiceConnection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/manager/a;->e(Landroid/content/Context;Lwh1;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0019\u0010\u000c\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ\u0019\u0010\r\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "com/cloud/hisavana/sdk/manager/a$c",
        "Landroidx/browser/customtabs/CustomTabsServiceConnection;",
        "Landroid/content/ComponentName;",
        "name",
        "Landroidx/browser/customtabs/CustomTabsClient;",
        "client",
        "Lzfb;",
        "onCustomTabsServiceConnected",
        "(Landroid/content/ComponentName;Landroidx/browser/customtabs/CustomTabsClient;)V",
        "componentName",
        "onServiceDisconnected",
        "(Landroid/content/ComponentName;)V",
        "onBindingDied",
        "onNullBinding",
        "api_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lcr0;


# direct methods
.method public constructor <init>(Lcr0;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/manager/a$c;->b:Lcr0;

    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsServiceConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/content/ServiceConnection;->onBindingDied(Landroid/content/ComponentName;)V

    sget-object p0, Lcom/cloud/hisavana/sdk/manager/a;->a:Lcom/cloud/hisavana/sdk/manager/a;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/manager/a;->K(Lcom/cloud/hisavana/sdk/manager/a;)V

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "CustomTabsManager"

    const-string v0, "cct onBindingDied"

    invoke-virtual {p0, p1, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "client"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    const-string v0, "onCustomTabsServiceConnected"

    const-string v1, "CustomTabsManager"

    invoke-virtual {p1, v1, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/cloud/hisavana/sdk/manager/a;->t(Landroidx/browser/customtabs/CustomTabsClient;)V

    :try_start_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/manager/a$c;->b:Lcr0;

    invoke-interface {p1}, Lcr0;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/manager/a$c;->b:Lcr0;

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lwh1;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    const-string p2, "cct onCustomTabsServiceConnected"

    invoke-virtual {p1, v1, p2, p0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/content/ServiceConnection;->onNullBinding(Landroid/content/ComponentName;)V

    sget-object p0, Lcom/cloud/hisavana/sdk/manager/a;->a:Lcom/cloud/hisavana/sdk/manager/a;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/manager/a;->K(Lcom/cloud/hisavana/sdk/manager/a;)V

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "CustomTabsManager"

    const-string v0, "cct onNullBinding"

    invoke-virtual {p0, p1, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p0, "componentName"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/cloud/hisavana/sdk/manager/a;->a:Lcom/cloud/hisavana/sdk/manager/a;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/manager/a;->K(Lcom/cloud/hisavana/sdk/manager/a;)V

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "CustomTabsManager"

    const-string v0, "cct onServiceDisconnected"

    invoke-virtual {p0, p1, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
