.class Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3$1;
.super Lcom/bytedance/sdk/component/Dq/Dq;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3$1;->Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3$1;->Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;->TKC(Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;)Lcom/bytedance/sdk/openadsdk/IBinderPool;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3$1;->Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;->TKC(Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;)Lcom/bytedance/sdk/openadsdk/IBinderPool;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3$1;->Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3;

    .line 32
    .line 33
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;->sP(Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;)Landroid/os/IBinder$DeathRecipient;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    const-string v1, "TTAD.BinderPool"

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3$1;->Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;Lcom/bytedance/sdk/openadsdk/IBinderPool;)Lcom/bytedance/sdk/openadsdk/IBinderPool;

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3$1;->Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;->HiB(Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method
