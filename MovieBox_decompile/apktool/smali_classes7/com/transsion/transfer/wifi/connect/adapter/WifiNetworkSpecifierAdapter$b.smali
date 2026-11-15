.class public final Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/lifecycle/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter$b;->a:Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public synthetic onCreate(Landroidx/lifecycle/u;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onDestroy(Landroidx/lifecycle/u;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->b(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onPause(Landroidx/lifecycle/u;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->c(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onResume(Landroidx/lifecycle/u;)V
    .locals 1

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->d(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter$b;->a:Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;->o(Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter$b;->a:Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->h()Lcom/transsion/transfer/wifi/connect/b;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const/16 v0, 0x7dc

    .line 26
    .line 27
    invoke-interface {p1, v0}, Lcom/transsion/transfer/wifi/connect/b;->b(I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public synthetic onStart(Landroidx/lifecycle/u;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->e(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onStop(Landroidx/lifecycle/u;)V
    .locals 4

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->f(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter$b;->a:Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-static {p1, v0}, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;->p(Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;Z)V

    .line 13
    .line 14
    .line 15
    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter$b;->a:Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter$b;->a:Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;->o(Lcom/transsion/transfer/wifi/connect/adapter/WifiNetworkSpecifierAdapter;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, " --> observer --> onStop() -- isStop = "

    .line 38
    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const/4 v1, 0x2

    .line 50
    const/4 v2, 0x0

    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-static {p1, v0, v3, v1, v2}, Lcom/transsion/transfer/wifi/util/g;->h(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method
