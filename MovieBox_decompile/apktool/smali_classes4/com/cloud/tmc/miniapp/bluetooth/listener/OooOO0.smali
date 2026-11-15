.class public final Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0;
.super Landroid/bluetooth/le/ScanCallback;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0$OooO00o;
    }
.end annotation


# instance fields
.field public final OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0$OooO00o;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0$OooO00o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0$OooO00o;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/bluetooth/le/ScanCallback;->onBatchScanResults(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0$OooO00o;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0$OooO00o;->OooO00o(Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onScanFailed(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/bluetooth/le/ScanCallback;->onScanFailed(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0$OooO00o;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0$OooO00o;->OooO00o(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/bluetooth/le/ScanCallback;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0$OooO00o;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, p1, p2}, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0$OooO00o;->OooO00o(ILandroid/bluetooth/le/ScanResult;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
