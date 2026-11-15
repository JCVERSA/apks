.class public final synthetic Lcom/transsion/transfer/wifi/create/adapter/k;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/transfer/wifi/create/adapter/k;->a:Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/wifi/create/adapter/k;->a:Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->j(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
