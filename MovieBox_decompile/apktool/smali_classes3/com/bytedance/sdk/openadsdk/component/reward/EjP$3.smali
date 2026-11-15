.class Lcom/bytedance/sdk/openadsdk/component/reward/EjP$3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Zq/sP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/EjP;->Sj(ZLcom/bytedance/sdk/openadsdk/core/model/sU;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:J

.field final synthetic HiB:Ljava/lang/String;

.field final synthetic Jcg:Lcom/bytedance/sdk/openadsdk/component/reward/EjP;

.field final synthetic Sj:Z

.field final synthetic TKC:J

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field final synthetic vS:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/EjP;ZLcom/bytedance/sdk/openadsdk/core/model/sU;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/EjP$3;->Jcg:Lcom/bytedance/sdk/openadsdk/component/reward/EjP;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/EjP$3;->Sj:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 6
    .line 7
    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/EjP$3;->TKC:J

    .line 8
    .line 9
    iput-wide p6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/EjP$3;->EjP:J

    .line 10
    .line 11
    iput-object p8, p0, Lcom/bytedance/sdk/openadsdk/component/reward/EjP$3;->HiB:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p9, p0, Lcom/bytedance/sdk/openadsdk/component/reward/EjP$3;->vS:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public getLogStats()Lcom/bytedance/sdk/openadsdk/Zq/Sj/TKC;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/EjP$3;->Sj:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/EjP$3;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/EjP$3;->TKC:J

    .line 6
    .line 7
    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/EjP$3;->EjP:J

    .line 8
    .line 9
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/EjP$3;->HiB:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(ZLcom/bytedance/sdk/openadsdk/core/model/sU;JJLjava/lang/String;)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;->sP()Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/EjP$3;->vS:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method
