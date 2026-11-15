.class Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$4;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$4;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$4;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TKC(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uvD()Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;ZI)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
