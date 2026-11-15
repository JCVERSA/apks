.class Lcom/bytedance/sdk/openadsdk/component/EjP$3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/EjP;->show(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/component/EjP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/EjP;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/EjP$3;->Sj:Lcom/bytedance/sdk/openadsdk/component/EjP;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/EjP$3;->Sj:Lcom/bytedance/sdk/openadsdk/component/EjP;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/EjP;->TKC(Lcom/bytedance/sdk/openadsdk/component/EjP;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/EjP$3;->Sj:Lcom/bytedance/sdk/openadsdk/component/EjP;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/EjP;->TKC(Lcom/bytedance/sdk/openadsdk/component/EjP;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->uP(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x1

    .line 28
    if-ne v0, v1, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/EjP$3;->Sj:Lcom/bytedance/sdk/openadsdk/component/EjP;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/EjP;->EjP(Lcom/bytedance/sdk/openadsdk/component/EjP;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->vS(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/EjP$3;->Sj:Lcom/bytedance/sdk/openadsdk/component/EjP;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/EjP;->EjP(Lcom/bytedance/sdk/openadsdk/component/EjP;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ODI()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_0

    .line 53
    .line 54
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/EjP$3;->Sj:Lcom/bytedance/sdk/openadsdk/component/EjP;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/EjP;->HiB(Lcom/bytedance/sdk/openadsdk/component/EjP;)Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/vS;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/vS;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/EjP$3;->Sj:Lcom/bytedance/sdk/openadsdk/component/EjP;

    .line 65
    .line 66
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/EjP;->TKC(Lcom/bytedance/sdk/openadsdk/component/EjP;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/vS;->Jcg(I)V

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/EjP$3;->Sj:Lcom/bytedance/sdk/openadsdk/component/EjP;

    .line 82
    .line 83
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/EjP;->TKC(Lcom/bytedance/sdk/openadsdk/component/EjP;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/vS;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    .line 90
    :catchall_0
    :cond_0
    return-void
.end method
