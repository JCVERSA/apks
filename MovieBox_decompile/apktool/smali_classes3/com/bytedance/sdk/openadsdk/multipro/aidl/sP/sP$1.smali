.class Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP;->onItemClickClosed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP;)Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP;)Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;->Sj()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP$1;->Sj:Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP;->sP(Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x6

    .line 25
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Sj(ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
