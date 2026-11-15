.class public final synthetic Lcom/transsion/transfer/wifi/connect/adapter/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/transfer/wifi/connect/adapter/a;->a:Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/a;->a:Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->n(Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;Landroid/net/wifi/p2p/WifiP2pInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
