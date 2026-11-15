.class Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq$1$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Ljava/lang/String;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq$1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq$1;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq$1$1;->sP:Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq$1$1;->Sj:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq$1$1;->sP:Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq$1;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/sP/vS;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/vS;->Sj()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq$1$1;->Sj:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/uA;->vS(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq$1$1;->sP:Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq$1;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq$1;->sP:Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->Dq()Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;->close()V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method
