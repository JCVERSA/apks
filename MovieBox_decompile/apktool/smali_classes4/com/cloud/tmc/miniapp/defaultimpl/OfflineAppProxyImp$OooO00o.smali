.class public final Lcom/cloud/tmc/miniapp/defaultimpl/OfflineAppProxyImp$OooO00o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO00o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/defaultimpl/OfflineAppProxyImp;->getOfflineAppsForBridgeApi(ZLcom/cloud/tmc/integration/proxy/OfflineAppProxy$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/integration/proxy/OfflineAppProxy$Callback;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/integration/proxy/OfflineAppProxy$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OfflineAppProxyImp$OooO00o;->OooO00o:Lcom/cloud/tmc/integration/proxy/OfflineAppProxy$Callback;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public result(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "offlineApps"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OfflineAppProxyImp$OooO00o;->OooO00o:Lcom/cloud/tmc/integration/proxy/OfflineAppProxy$Callback;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v1, "toJson(offlineApps)"

    .line 13
    .line 14
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/proxy/OfflineAppProxy$Callback;->onSuccess(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
