.class Lcom/transsion/vishatransfer/activity/WifiActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishatransfer/activity/WifiActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishatransfer/activity/WifiActivity;

.field final synthetic val$transfer:Lcom/transsion/vishatransfer/manager/ITransferHelper;


# direct methods
.method public constructor <init>(Lcom/transsion/vishatransfer/activity/WifiActivity;Lcom/transsion/vishatransfer/manager/ITransferHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/vishatransfer/activity/WifiActivity$6;->this$0:Lcom/transsion/vishatransfer/activity/WifiActivity;

    iput-object p2, p0, Lcom/transsion/vishatransfer/activity/WifiActivity$6;->val$transfer:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/transsion/vishatransfer/activity/WifiActivity$6;->this$0:Lcom/transsion/vishatransfer/activity/WifiActivity;

    invoke-static {p1}, Lcom/transsion/vishatransfer/activity/WifiActivity;->a(Lcom/transsion/vishatransfer/activity/WifiActivity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/vishatransfer/activity/WifiActivity$6;->this$0:Lcom/transsion/vishatransfer/activity/WifiActivity;

    invoke-static {p1}, Lcom/transsion/vishatransfer/activity/WifiActivity;->a(Lcom/transsion/vishatransfer/activity/WifiActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/transsion/vishatransfer/activity/WifiActivity$6;->this$0:Lcom/transsion/vishatransfer/activity/WifiActivity;

    invoke-static {p1}, Lcom/transsion/vishatransfer/activity/WifiActivity;->a(Lcom/transsion/vishatransfer/activity/WifiActivity;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, p0, Lcom/transsion/vishatransfer/activity/WifiActivity$6;->this$0:Lcom/transsion/vishatransfer/activity/WifiActivity;

    invoke-static {v0}, Lcom/transsion/vishatransfer/activity/WifiActivity;->a(Lcom/transsion/vishatransfer/activity/WifiActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const-string v3, "TECNO PHANTOM V Flip2 5G22222233"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const-string v3, "Infinix NOTE 40 Pro11111"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    move-object p1, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/transsion/vishatransfer/activity/WifiActivity$6;->val$transfer:Lcom/transsion/vishatransfer/manager/ITransferHelper;

    new-instance v1, Lcom/transsion/vishatransfer/activity/WifiActivity$6$1;

    invoke-direct {v1, p0}, Lcom/transsion/vishatransfer/activity/WifiActivity$6$1;-><init>(Lcom/transsion/vishatransfer/activity/WifiActivity$6;)V

    invoke-interface {v0, p1, v1}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->connectAsync(Landroid/net/wifi/p2p/WifiP2pDevice;Lu74;)V

    :cond_4
    :goto_1
    return-void
.end method
