.class Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/sP/TKC;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

.field final synthetic sP:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;->TKC:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;->sP:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public Sj(Landroid/view/ViewGroup;I)Z
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aa()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;->TKC:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ph()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;

    .line 17
    .line 18
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-direct {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;->sP:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->setClosedListenerKey(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;->TKC:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    .line 33
    .line 34
    iget-object v0, p2, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    .line 37
    .line 38
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sP(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p1, v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;)V

    .line 43
    .line 44
    .line 45
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;->TKC:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    .line 46
    .line 47
    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->HiB:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->setDislikeOuter(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;->TKC:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    .line 53
    .line 54
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->setAdInteractionListener(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;)V

    .line 59
    .line 60
    .line 61
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    .line 62
    .line 63
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->setVastVideoHelper(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/TKC/Sj;

    .line 68
    .line 69
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    .line 70
    .line 71
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-direct {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/TKC/Sj;-><init>(Landroid/content/Context;)V

    .line 76
    .line 77
    .line 78
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;->sP:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/TKC/Sj;->setClosedListenerKey(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;->TKC:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    .line 84
    .line 85
    iget-object v0, p2, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 86
    .line 87
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    .line 88
    .line 89
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->sP(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p1, v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/core/TKC/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;)V

    .line 94
    .line 95
    .line 96
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;->TKC:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    .line 97
    .line 98
    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->HiB:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    .line 99
    .line 100
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->setDislikeOuter(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    .line 101
    .line 102
    .line 103
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$2;->TKC:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    .line 104
    .line 105
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/TKC/Sj;->setAdInteractionListener(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    :goto_0
    const/4 p1, 0x1

    .line 113
    return p1

    .line 114
    :catch_0
    const/4 p1, 0x0

    .line 115
    return p1
.end method
