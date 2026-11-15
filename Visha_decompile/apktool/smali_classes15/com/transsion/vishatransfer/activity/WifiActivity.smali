.class public Lcom/transsion/vishatransfer/activity/WifiActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private wifiP2pDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/vishatransfer/activity/WifiActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishatransfer/activity/WifiActivity;->wifiP2pDevices:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/vishatransfer/activity/WifiActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishatransfer/activity/WifiActivity;->wifiP2pDevices:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/transsion/vishatransfer/manager/TransferManager;->INSTANCE:Lcom/transsion/vishatransfer/manager/TransferManager;

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/transsion/vishatransfer/manager/TransferManager;->getInstance(Landroid/app/Application;I)Lcom/transsion/vishatransfer/manager/ITransferHelper;

    move-result-object p1

    sget v0, Lcom/transsion/vishatransfer/R$layout;->layout_wifi:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    new-instance v0, Lcom/transsion/vishatransfer/activity/WifiActivity$1;

    invoke-direct {v0, p0}, Lcom/transsion/vishatransfer/activity/WifiActivity$1;-><init>(Lcom/transsion/vishatransfer/activity/WifiActivity;)V

    invoke-interface {p1, v0, v1}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->registerListener(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;I)V

    new-instance v0, Lcom/transsion/vishatransfer/activity/WifiActivity$2;

    invoke-direct {v0, p0}, Lcom/transsion/vishatransfer/activity/WifiActivity$2;-><init>(Lcom/transsion/vishatransfer/activity/WifiActivity;)V

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/transsion/vishatransfer/manager/ITransferHelper;->registerListener(Lcom/transsion/vishatransfer/manager/callback/AccessReceiverActionListener;I)V

    sget v0, Lcom/transsion/vishatransfer/R$id;->btn_create_wifi_group:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/transsion/vishatransfer/activity/WifiActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/transsion/vishatransfer/activity/WifiActivity$3;-><init>(Lcom/transsion/vishatransfer/activity/WifiActivity;Lcom/transsion/vishatransfer/manager/ITransferHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/vishatransfer/R$id;->btn_remove_group:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/transsion/vishatransfer/activity/WifiActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/transsion/vishatransfer/activity/WifiActivity$4;-><init>(Lcom/transsion/vishatransfer/activity/WifiActivity;Lcom/transsion/vishatransfer/manager/ITransferHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/vishatransfer/R$id;->btn_search_devices:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/transsion/vishatransfer/activity/WifiActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/transsion/vishatransfer/activity/WifiActivity$5;-><init>(Lcom/transsion/vishatransfer/activity/WifiActivity;Lcom/transsion/vishatransfer/manager/ITransferHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/vishatransfer/R$id;->btn_connect:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/transsion/vishatransfer/activity/WifiActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/transsion/vishatransfer/activity/WifiActivity$6;-><init>(Lcom/transsion/vishatransfer/activity/WifiActivity;Lcom/transsion/vishatransfer/manager/ITransferHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/vishatransfer/R$id;->btn_disconnect:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/transsion/vishatransfer/activity/WifiActivity$7;

    invoke-direct {v1, p0, p1}, Lcom/transsion/vishatransfer/activity/WifiActivity$7;-><init>(Lcom/transsion/vishatransfer/activity/WifiActivity;Lcom/transsion/vishatransfer/manager/ITransferHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/vishatransfer/R$id;->btn_sendDataToServer:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/transsion/vishatransfer/activity/WifiActivity$8;

    invoke-direct {v1, p0, p1}, Lcom/transsion/vishatransfer/activity/WifiActivity$8;-><init>(Lcom/transsion/vishatransfer/activity/WifiActivity;Lcom/transsion/vishatransfer/manager/ITransferHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/vishatransfer/R$id;->btn_send_coversation_to_service:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/transsion/vishatransfer/activity/WifiActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/transsion/vishatransfer/activity/WifiActivity$9;-><init>(Lcom/transsion/vishatransfer/activity/WifiActivity;Lcom/transsion/vishatransfer/manager/ITransferHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/vishatransfer/R$id;->btn_send_coversation_to_client:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/transsion/vishatransfer/activity/WifiActivity$10;

    invoke-direct {v1, p0, p1}, Lcom/transsion/vishatransfer/activity/WifiActivity$10;-><init>(Lcom/transsion/vishatransfer/activity/WifiActivity;Lcom/transsion/vishatransfer/manager/ITransferHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/transsion/vishatransfer/R$id;->btn_getConnectInfo:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/transsion/vishatransfer/activity/WifiActivity$11;

    invoke-direct {v0, p0}, Lcom/transsion/vishatransfer/activity/WifiActivity$11;-><init>(Lcom/transsion/vishatransfer/activity/WifiActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
