.class Lcom/bytedance/sdk/openadsdk/component/vS$8;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/uvD$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/vS;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/ley;Lcom/bytedance/sdk/openadsdk/component/vS$sP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Lcom/bytedance/sdk/openadsdk/core/model/ley;

.field final synthetic HiB:Lcom/bytedance/sdk/openadsdk/component/vS$sP;

.field final synthetic Sj:I

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/utils/WMZ;

.field final synthetic vS:Lcom/bytedance/sdk/openadsdk/component/vS;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/vS;ILcom/bytedance/sdk/openadsdk/utils/WMZ;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/ley;Lcom/bytedance/sdk/openadsdk/component/vS$sP;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/vS$8;->vS:Lcom/bytedance/sdk/openadsdk/component/vS;

    .line 2
    .line 3
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/vS$8;->Sj:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/vS$8;->sP:Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/vS$8;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/vS$8;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/ley;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/component/vS$8;->HiB:Lcom/bytedance/sdk/openadsdk/component/vS$sP;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 4

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/vS$8;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/vS$8;->sP:Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->EjP()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/EjP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;JZ)V

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/vS$8;->HiB:Lcom/bytedance/sdk/openadsdk/component/vS$sP;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/component/vS$sP;->Sj()V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/TzV/Sj/sP;)V
    .locals 4
    .param p1    # Lcom/bytedance/sdk/openadsdk/TzV/Sj/sP;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TzV/Sj/sP;->EjP()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/vS$8;->vS:Lcom/bytedance/sdk/openadsdk/component/vS;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/vS$8;->Sj:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/vS;->TKC(I)V

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/vS$8;->sP:Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->EjP()J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/vS$8;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/component/EjP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;JZ)V

    .line 5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/vS$8;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/ley;

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/ley;->Sj(J)V

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/vS$8;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/ley;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/ley;->Sj(I)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/vS$8;->HiB:Lcom/bytedance/sdk/openadsdk/component/vS$sP;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/vS$sP;->Sj(Lcom/bytedance/sdk/openadsdk/TzV/Sj/sP;)V

    return-void

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/vS$8;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/vS$8;->sP:Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->EjP()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/EjP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;JZ)V

    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/vS$8;->HiB:Lcom/bytedance/sdk/openadsdk/component/vS$sP;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/component/vS$sP;->Sj()V

    return-void
.end method
