.class Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;->EjP()Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP$Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public Sj(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;)Lcom/bytedance/sdk/openadsdk/component/reward/view/Sj;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/sP/uA;)Lcom/bytedance/sdk/openadsdk/component/reward/view/Sj;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Sj;->setIsMute(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
