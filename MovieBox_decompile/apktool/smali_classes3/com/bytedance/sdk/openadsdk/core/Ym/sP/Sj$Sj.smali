.class public Lcom/bytedance/sdk/openadsdk/core/Ym/sP/Sj$Sj;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/Ym/sP/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sj"
.end annotation


# instance fields
.field private EjP:Z

.field private final Sj:Ljava/lang/String;

.field private TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$TKC;

.field private final sP:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$TKC;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$TKC;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/Sj$Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$TKC;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/Sj$Sj;->EjP:Z

    .line 10
    .line 11
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/Sj$Sj;->Sj:Ljava/lang/String;

    .line 12
    .line 13
    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/Sj$Sj;->sP:J

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/sP/Sj;
    .locals 7

    .line 1
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/Sj;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/Sj$Sj;->sP:J

    .line 4
    .line 5
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/Sj$Sj;->Sj:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/Sj$Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$TKC;

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/Sj$Sj;->EjP:Z

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    move-object v0, v6

    .line 16
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/Sj;-><init>(JLjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$TKC;Ljava/lang/Boolean;)V

    .line 17
    .line 18
    .line 19
    return-object v6
.end method
