.class Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Sj"
.end annotation


# instance fields
.field EjP:Ljava/lang/String;

.field final HiB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;",
            ">;"
        }
    .end annotation
.end field

.field Jcg:F

.field Sj:Ljava/lang/String;

.field TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;

.field sP:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;

.field final vS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;->HiB:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;->vS:Ljava/util/List;

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;->Jcg:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;->HiB:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;->vS:Ljava/util/List;

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;->Jcg:F

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;)V

    return-void
.end method


# virtual methods
.method public Sj(Ljava/lang/String;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;->HiB:Ljava/util/List;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$Sj;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$Sj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;->Sj:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;

    .line 3
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;

    return-void
.end method

.method public sP(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj/HiB$Sj;->vS:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$Sj;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$Sj;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method
