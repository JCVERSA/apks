.class public final Lcom/transsion/transfer/wifi/ui/WifiConnectActivity$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/transfer/wifi/connect/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->U0(Ldu/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;

.field final synthetic b:Ldu/a;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;Ldu/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity$b;->a:Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity$b;->b:Ldu/a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Network;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/transfer/wifi/connect/b$a;->b(Lcom/transsion/transfer/wifi/connect/b;Landroid/net/Network;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public b(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity$b;->a:Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getClassTag()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " --> connectWifi() --> onFail() --> code = "

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v1, 0x2

    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-static {v0, p1, v3, v1, v2}, Lcom/transsion/transfer/wifi/util/g;->h(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity$b;->a:Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lxt/c;

    .line 42
    .line 43
    iget-object p1, p1, Lxt/c;->d:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->resume()V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity$b;->a:Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->V0()V

    .line 51
    .line 52
    .line 53
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity$b;->a:Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sget v1, Lcom/transsion/transfer/R$string;->transfer_wifi_connect_dialog_failed:I

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p1, v0}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public c(Ljava/net/InetAddress;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/transfer/wifi/connect/b$a;->e(Lcom/transsion/transfer/wifi/connect/b;Ljava/net/InetAddress;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public d(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/transfer/wifi/connect/b$a;->a(Lcom/transsion/transfer/wifi/connect/b;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "ip"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/transsion/transfer/wifi/connect/b$a;->c(Lcom/transsion/transfer/wifi/connect/b;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/transsion/transfer/wifi/util/WifiUtils;->l()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "onParsingSuccess: ip:"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, ", WifiUtils.getLocalIP():"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity$b;->a:Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->P0(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    iget-object v0, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity$b;->a:Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;

    .line 45
    .line 46
    invoke-static {v0, p1}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->O0(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity$b;->a:Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;

    .line 51
    .line 52
    invoke-static {v0, p1}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->R0(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/transsion/transfer/wifi/connect/b$a;->d(Lcom/transsion/transfer/wifi/connect/b;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity$b;->a:Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity$b;->b:Ldu/a;

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->S0(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;Ldu/a;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
