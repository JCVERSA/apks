.class public Lcom/bytedance/sdk/openadsdk/core/model/sef;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/TKC;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;
    }
.end annotation


# instance fields
.field public final Dq:I

.field public final EjP:F

.field public Fmk:Lorg/json/JSONObject;

.field public final HiB:J

.field public final Jcg:I

.field public final Sj:F

.field public final TEQ:I

.field public final TKC:F

.field public TzV:Z

.field public final Ym:Ljava/lang/String;

.field public final Zq:Z

.field public aa:I

.field public dNu:Lorg/json/JSONObject;

.field public final sP:F

.field public sef:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;",
            ">;"
        }
    .end annotation
.end field

.field public final uA:I

.field public uvD:I

.field public final vS:J


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;)V
    .locals 2
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef;->TzV:Z

    .line 4
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;)F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef;->Sj:F

    .line 5
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;)F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef;->sP:F

    .line 6
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;)F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef;->TKC:F

    .line 7
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;)F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef;->EjP:F

    .line 8
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef;->HiB:J

    .line 9
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->vS(Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef;->vS:J

    .line 10
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Jcg(Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef;->Jcg:I

    .line 11
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Dq(Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef;->Dq:I

    .line 12
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->uA(Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef;->uA:I

    .line 13
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->TEQ(Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef;->TEQ:I

    .line 14
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Ym(Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef;->Ym:Ljava/lang/String;

    .line 15
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef;->sef:Landroid/util/SparseArray;

    .line 16
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->aa(Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef;->Zq:Z

    .line 17
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Fmk(Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef;->aa:I

    .line 18
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->sef(Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef;->Fmk:Lorg/json/JSONObject;

    .line 19
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Zq(Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef;->uvD:I

    .line 20
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->uvD(Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef;->dNu:Lorg/json/JSONObject;

    .line 21
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->dNu(Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef;->TzV:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;Lcom/bytedance/sdk/openadsdk/core/model/sef$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/model/sef;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;)V

    return-void
.end method
