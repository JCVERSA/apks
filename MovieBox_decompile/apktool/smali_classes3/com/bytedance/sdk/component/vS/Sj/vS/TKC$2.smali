.class Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$2;
.super Lcom/bytedance/sdk/component/vS/Sj/HiB/HiB;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;->Sj(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Ljava/lang/String;

.field final synthetic TKC:Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;

.field final synthetic sP:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$2;->TKC:Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$2;->Sj:Ljava/lang/String;

    .line 4
    .line 5
    iput-boolean p4, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$2;->sP:Z

    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/vS/Sj/HiB/HiB;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$2;->TKC:Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;->Sj(Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;)Lcom/bytedance/sdk/component/vS/Sj/vS/HiB;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/vS/HiB;->Sj()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$2;->TKC:Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$2;->Sj:Ljava/lang/String;

    .line 14
    .line 15
    iget-boolean v3, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$2;->sP:Z

    .line 16
    .line 17
    invoke-static {v1, v0, v2, v3}, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;->Sj(Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;Ljava/util/List;Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
