.class final Lcom/transsion/vishatransfer/manager/WifiTransferManager$getConnectionInfoInner$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/vishatransfer/manager/WifiTransferManager;->getConnectionInfoInner(Lwh1;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $continuation:Lcr0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcr0;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcr0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcr0;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$getConnectionInfoInner$2$1;->$continuation:Lcr0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishatransfer/manager/WifiTransferManager$getConnectionInfoInner$2$1;->$continuation:Lcr0;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
