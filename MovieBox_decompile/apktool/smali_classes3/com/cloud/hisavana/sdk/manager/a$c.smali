.class public final Lcom/cloud/hisavana/sdk/manager/a$c;
.super Landroidx/browser/customtabs/f;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/manager/a;->g(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/coroutines/n;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/manager/a$c;->a:Lkotlinx/coroutines/n;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/browser/customtabs/f;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/content/ServiceConnection;->onBindingDied(Landroid/content/ComponentName;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/cloud/hisavana/sdk/manager/a;->a:Lcom/cloud/hisavana/sdk/manager/a;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/manager/a;->K(Lcom/cloud/hisavana/sdk/manager/a;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "CustomTabsManager"

    .line 14
    .line 15
    const-string v1, "cct onBindingDied"

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 2

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "client"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "onCustomTabsServiceConnected"

    .line 16
    .line 17
    const-string v1, "CustomTabsManager"

    .line 18
    .line 19
    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/manager/a;->t(Landroidx/browser/customtabs/CustomTabsClient;)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/manager/a$c;->a:Lkotlinx/coroutines/n;

    .line 26
    .line 27
    invoke-interface {p1}, Lkotlinx/coroutines/n;->isActive()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/manager/a$c;->a:Lkotlinx/coroutines/n;

    .line 34
    .line 35
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 36
    .line 37
    const/4 p2, 0x0

    .line 38
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-interface {p1, p2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    const-string v0, "cct onCustomTabsServiceConnected"

    .line 56
    .line 57
    invoke-virtual {p2, v1, v0, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    :goto_0
    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/content/ServiceConnection;->onNullBinding(Landroid/content/ComponentName;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/cloud/hisavana/sdk/manager/a;->a:Lcom/cloud/hisavana/sdk/manager/a;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/manager/a;->K(Lcom/cloud/hisavana/sdk/manager/a;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "CustomTabsManager"

    .line 14
    .line 15
    const-string v1, "cct onNullBinding"

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    const-string v0, "componentName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/cloud/hisavana/sdk/manager/a;->a:Lcom/cloud/hisavana/sdk/manager/a;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/manager/a;->K(Lcom/cloud/hisavana/sdk/manager/a;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "CustomTabsManager"

    .line 16
    .line 17
    const-string v1, "cct onServiceDisconnected"

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
