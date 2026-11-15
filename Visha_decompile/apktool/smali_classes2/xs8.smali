.class public abstract Lxs8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public b:Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3a98

    iput v0, p0, Lxs8;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lxs8;->b:Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lxs8;->b:Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_NETWORK_NOT_CONNECTED:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->e(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lxs8;->a()V

    return-void
.end method
