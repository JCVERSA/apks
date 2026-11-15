.class public Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/TKC;
.super Lcom/bytedance/sdk/openadsdk/IFullScreenVideoAdInteractionListener$Stub;
.source "source.java"


# instance fields
.field private Sj:Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/IFullScreenVideoAdInteractionListener$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;

    .line 5
    .line 6
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/TKC;)Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;

    return-object p0
.end method

.method private Sj()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;

    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/TKC;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/TKC;->Sj()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onAdClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/TKC$3;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/TKC$3;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/TKC;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onAdShow()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/TKC$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/TKC$1;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/TKC;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onAdVideoBarClick()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/TKC/sP;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/TKC$2;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/TKC$2;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/TKC;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onDestroy()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    return-void
.end method
