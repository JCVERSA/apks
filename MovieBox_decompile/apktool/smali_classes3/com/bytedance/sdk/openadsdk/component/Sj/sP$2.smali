.class final Lcom/bytedance/sdk/openadsdk/component/Sj/sP$2;
.super Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/Sj/sP;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/component/Dq/Sj;Lcom/bytedance/sdk/openadsdk/component/uA/sP;)Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/component/Dq/Sj;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/component/Dq/Sj;)V
    .locals 0

    .line 1
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/Sj/sP$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Dq/Sj;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public Sj(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "FFFF",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Sj/sP$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Dq/Sj;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/Dq/Sj;->sP()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "duration"

    .line 17
    .line 18
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Ljava/util/Map;)V

    .line 22
    .line 23
    .line 24
    invoke-super/range {p0 .. p7}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->Sj(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
