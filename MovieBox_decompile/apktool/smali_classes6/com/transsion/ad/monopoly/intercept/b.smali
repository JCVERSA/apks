.class public final Lcom/transsion/ad/monopoly/intercept/b;
.super Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public h(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "sceneId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "ctxMap"

    .line 7
    .line 8
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getCtxDisableExpr()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    return-object p1
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "\u547d\u4e2d \u9ed1\u540d\u5355,\u5f53\u524d\u5e7f\u544a\u8ba1\u5212 \u4e0d\u6ee1\u8db3\u5c55\u793a\u6761\u4ef6"

    .line 2
    .line 3
    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "\u672a\u547d\u4e2d \u9ed1\u540d\u5355,\u5f53\u524d\u5e7f\u544a\u8ba1\u5212 \u6ee1\u8db3\u5c55\u793a\u6761\u4ef6"

    .line 2
    .line 3
    return-object v0
.end method

.method public k(Z)Z
    .locals 0

    .line 1
    xor-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    return p1
.end method
