.class Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$Sj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$Sj;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$Sj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$Sj;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public Sj(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$Sj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$Sj;->Sj(Landroid/view/View;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
