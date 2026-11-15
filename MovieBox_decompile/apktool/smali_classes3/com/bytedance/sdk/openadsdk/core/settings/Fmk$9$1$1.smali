.class Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$9$1$1;
.super Lcom/bytedance/sdk/component/Dq/Dq;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$9$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$9$1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$9$1;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$9$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$9$1;

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
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$9$1$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$9$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$9$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$9;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$9;->Sj:Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sP()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :catch_0
    return-void
.end method
