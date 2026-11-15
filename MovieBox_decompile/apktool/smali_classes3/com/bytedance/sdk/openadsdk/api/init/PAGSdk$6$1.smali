.class Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$6$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$6;->onServiceConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$6;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$6$1;->Sj:Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$6;

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$6$1;->Sj:Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$6;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$6;->Sj:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$6;->sP:Lcom/bytedance/sdk/openadsdk/InitConfig;

    .line 6
    .line 7
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/InitConfig;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
