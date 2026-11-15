.class public Lcom/bytedance/sdk/openadsdk/core/model/ib;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public Dq:I
    .annotation build Lcom/bytedance/sdk/openadsdk/core/model/NetExtParams$RenderType;
    .end annotation
.end field

.field public EjP:I

.field public HiB:Lorg/json/JSONArray;

.field public Jcg:Lorg/json/JSONObject;

.field public final Sj:Ljava/lang/String;

.field public TEQ:Lcom/bytedance/sdk/openadsdk/core/model/ley;

.field public TKC:I

.field public sP:I

.field public final uA:Lcom/bytedance/sdk/openadsdk/utils/WMZ;

.field public vS:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->EjP()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/ib;->Sj:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/ib;->sP:I

    .line 12
    .line 13
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/ib;->TKC:I

    .line 14
    .line 15
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/ib;->EjP:I

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/ib;->HiB:Lorg/json/JSONArray;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/ib;->Jcg:Lorg/json/JSONObject;

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/ib;->Dq:I

    .line 24
    .line 25
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->sP()Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/ib;->uA:Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    .line 30
    .line 31
    return-void
.end method
