.class public final synthetic Lcom/transsion/transfer/wifi/create/adapter/l;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;

.field public final synthetic b:Landroid/net/wifi/p2p/WifiP2pGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/transfer/wifi/create/adapter/l;->a:Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/transfer/wifi/create/adapter/l;->b:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/wifi/create/adapter/l;->a:Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/transfer/wifi/create/adapter/l;->b:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->k(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;Landroid/net/wifi/p2p/WifiP2pGroup;Landroid/net/wifi/p2p/WifiP2pInfo;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
