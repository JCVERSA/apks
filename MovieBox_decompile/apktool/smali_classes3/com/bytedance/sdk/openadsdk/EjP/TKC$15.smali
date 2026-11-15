.class final Lcom/bytedance/sdk/openadsdk/EjP/TKC$15;
.super Lcom/bytedance/sdk/component/Dq/Dq;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/TEQ;Ljava/lang/String;ZLjava/util/Map;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Dq:Ljava/util/Map;

.field final synthetic EjP:Ljava/lang/String;

.field final synthetic HiB:Lcom/bytedance/sdk/openadsdk/core/model/TEQ;

.field final synthetic Jcg:I

.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field final synthetic TKC:Ljava/lang/String;

.field final synthetic sP:J

.field final synthetic vS:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;JLjava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/TEQ;ZILjava/util/Map;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$15;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$15;->sP:J

    .line 4
    .line 5
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$15;->TKC:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$15;->EjP:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$15;->HiB:Lcom/bytedance/sdk/openadsdk/core/model/TEQ;

    .line 10
    .line 11
    iput-boolean p8, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$15;->vS:Z

    .line 12
    .line 13
    iput p9, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$15;->Jcg:I

    .line 14
    .line 15
    iput-object p10, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$15;->Dq:Ljava/util/Map;

    .line 16
    .line 17
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$15;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    if-nez v2, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$15;->sP:J

    .line 7
    .line 8
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$15;->TKC:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$15;->EjP:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v5, Lcom/bytedance/sdk/openadsdk/EjP/TKC$15$1;

    .line 13
    .line 14
    invoke-direct {v5, p0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC$15$1;-><init>(Lcom/bytedance/sdk/openadsdk/EjP/TKC$15;)V

    .line 15
    .line 16
    .line 17
    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(JLcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/Zq/TKC/Sj;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa;->Sj(Landroid/content/Context;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const-string v1, "click"

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$15;->EjP:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$15;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->kb()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const/4 v2, 0x1

    .line 51
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/kF/Sj;->Sj(Ljava/util/List;Z)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$15;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const/4 v3, 0x2

    .line 62
    invoke-static {v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/EjP;->Sj(Ljava/util/List;ILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$15;->EjP:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$15;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ib;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    return-void
.end method
