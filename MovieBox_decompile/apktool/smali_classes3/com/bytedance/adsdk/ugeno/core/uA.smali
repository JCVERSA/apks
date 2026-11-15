.class public Lcom/bytedance/adsdk/ugeno/core/uA;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private Dq:Lcom/bytedance/adsdk/ugeno/core/HiB;

.field private EjP:Lcom/bytedance/adsdk/ugeno/core/vS;

.field private Fmk:Lcom/bytedance/adsdk/ugeno/EjP/Sj/Sj;

.field private HiB:Lcom/bytedance/adsdk/ugeno/core/aa;

.field private Jcg:Lcom/bytedance/adsdk/ugeno/core/Fmk;

.field private Sj:Landroid/content/Context;

.field private TEQ:Lcom/bytedance/adsdk/ugeno/core/Dq;

.field private TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/ugeno/sP/TKC<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private Ym:Z

.field private Zq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aa:Z

.field private sP:Lorg/json/JSONObject;

.field private sef:Z

.field private uA:Ljava/lang/String;

.field private vS:Lcom/bytedance/adsdk/ugeno/core/Zq;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->Ym:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->aa:Z

    .line 9
    .line 10
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj:Landroid/content/Context;

    .line 11
    .line 12
    return-void
.end method

.method private Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/ugeno/sP/TKC<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->kF()Lorg/json/JSONObject;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 101
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->fF()Lcom/bytedance/adsdk/ugeno/sP/Sj;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 102
    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/sP/Sj;->TEQ()Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 103
    :goto_0
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/core/uA;->sP(Lcom/bytedance/adsdk/ugeno/sP/TKC;)V

    .line 104
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 105
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->sP:Lorg/json/JSONObject;

    invoke-static {v4, v5}, Lcom/bytedance/adsdk/ugeno/TKC/sP;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    .line 107
    invoke-virtual {p1, v3, v4}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    .line 108
    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj:Landroid/content/Context;

    invoke-virtual {v2, v5, v3, v4}, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->Sj(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->EjP:Lcom/bytedance/adsdk/ugeno/core/vS;

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Sj(Lcom/bytedance/adsdk/ugeno/core/vS;)V

    .line 110
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->HiB:Lcom/bytedance/adsdk/ugeno/core/aa;

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Sj(Lcom/bytedance/adsdk/ugeno/core/aa;)V

    .line 111
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->Jcg:Lcom/bytedance/adsdk/ugeno/core/Fmk;

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Sj(Lcom/bytedance/adsdk/ugeno/core/Fmk;)V

    .line 112
    instance-of v0, p1, Lcom/bytedance/adsdk/ugeno/sP/Sj;

    if-eqz v0, :cond_4

    .line 113
    move-object v0, p1

    check-cast v0, Lcom/bytedance/adsdk/ugeno/sP/Sj;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/sP/Sj;->uA()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 114
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 115
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 116
    invoke-direct {p0, v1}, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;)V

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    .line 117
    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->Sj()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Sj(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    :cond_5
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP()V

    return-void
.end method

.method private sP(Lcom/bytedance/adsdk/ugeno/sP/TKC;)V
    .locals 2

    .line 54
    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->LD()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Yf()Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Yf()Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->vS()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 56
    const-string v1, "i18n"

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Yf()Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->vS()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->sP:Lorg/json/JSONObject;

    const-string v1, "xNode"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;Lcom/bytedance/adsdk/ugeno/sP/TKC;)Lcom/bytedance/adsdk/ugeno/sP/TKC;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;",
            "Lcom/bytedance/adsdk/ugeno/sP/TKC<",
            "Landroid/view/View;",
            ">;)",
            "Lcom/bytedance/adsdk/ugeno/sP/TKC<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 30
    invoke-static {p1}, Lcom/bytedance/adsdk/ugeno/core/HiB;->Sj(Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 31
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->TKC()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/core/EjP;->Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/core/sP;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 33
    iput-boolean v3, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->sef:Z

    .line 34
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->Zq:Ljava/util/List;

    if-nez v2, :cond_1

    .line 35
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->Zq:Ljava/util/List;

    .line 36
    :cond_1
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->Zq:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    const-string v0, "View"

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->Sj(Ljava/lang/String;)V

    .line 38
    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/core/EjP;->Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/core/sP;

    move-result-object v2

    if-nez v2, :cond_2

    .line 39
    const-string p1, "not found component "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    return-object v1

    .line 40
    :cond_2
    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/bytedance/adsdk/ugeno/core/sP;->Sj(Landroid/content/Context;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object v2

    if-nez v2, :cond_3

    return-object v1

    .line 41
    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->EjP()Lorg/json/JSONObject;

    move-result-object v4

    .line 42
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->Sj()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->sP:Lorg/json/JSONObject;

    invoke-static {v5, v6}, Lcom/bytedance/adsdk/ugeno/TKC/sP;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    .line 43
    invoke-virtual {v2, v5}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v2, v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->vS(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v2, v4}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(Lorg/json/JSONObject;)V

    .line 46
    invoke-virtual {v2, p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Sj(Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;)V

    .line 47
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->sP:Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP(Lorg/json/JSONObject;)V

    .line 48
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->Dq:Lcom/bytedance/adsdk/ugeno/core/HiB;

    if-nez v0, :cond_4

    .line 49
    invoke-virtual {v2, v3}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Sj(Z)V

    goto :goto_0

    .line 50
    :cond_4
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/core/HiB;->EjP()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Sj(Z)V

    .line 51
    :goto_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->TEQ:Lcom/bytedance/adsdk/ugeno/core/Dq;

    invoke-virtual {v2, v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Sj(Lcom/bytedance/adsdk/ugeno/core/Dq;)V

    .line 52
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->Fmk:Lcom/bytedance/adsdk/ugeno/EjP/Sj/Sj;

    invoke-virtual {v2, v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Sj(Lcom/bytedance/adsdk/ugeno/EjP/Sj/Sj;)V

    .line 53
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 54
    instance-of v5, p2, Lcom/bytedance/adsdk/ugeno/sP/Sj;

    if-eqz v5, :cond_5

    .line 55
    check-cast p2, Lcom/bytedance/adsdk/ugeno/sP/Sj;

    invoke-virtual {p2}, Lcom/bytedance/adsdk/ugeno/sP/Sj;->TEQ()Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;

    move-result-object v1

    .line 56
    invoke-virtual {v2, p2}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Sj(Lcom/bytedance/adsdk/ugeno/sP/Sj;)V

    .line 57
    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 59
    invoke-virtual {v4, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->sP:Lorg/json/JSONObject;

    invoke-static {v5, v6}, Lcom/bytedance/adsdk/ugeno/TKC/sP;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    .line 60
    invoke-virtual {v2, p2, v5}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_5

    .line 61
    iget-object v6, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj:Landroid/content/Context;

    invoke-virtual {v1, v6, p2, v5}, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->Sj(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_7

    .line 62
    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->Sj()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Sj(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    :cond_7
    instance-of p2, v2, Lcom/bytedance/adsdk/ugeno/sP/Sj;

    if-eqz p2, :cond_e

    .line 64
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->HiB()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 65
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_8

    goto :goto_3

    .line 66
    :cond_8
    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->WMZ()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Swiper"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 67
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-eq p2, v3, :cond_9

    .line 68
    const-string p2, "UGTemplateEngine"

    const-string v0, "Swiper must be only one widget"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;

    .line 70
    invoke-virtual {p0, p2, v2}, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj(Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;Lcom/bytedance/adsdk/ugeno/sP/TKC;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 71
    invoke-virtual {p2}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->UHs()Z

    move-result v0

    if-nez v0, :cond_a

    .line 72
    move-object v0, v2

    check-cast v0, Lcom/bytedance/adsdk/ugeno/sP/Sj;

    invoke-virtual {p2}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->ley()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/bytedance/adsdk/ugeno/sP/Sj;->Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 73
    :cond_b
    :goto_3
    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->WMZ()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RecyclerLayout"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 74
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->Dq:Lcom/bytedance/adsdk/ugeno/core/HiB;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/HiB;->TKC()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 75
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_d

    .line 76
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;

    .line 77
    invoke-virtual {p0, p2, v2}, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj(Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;Lcom/bytedance/adsdk/ugeno/sP/TKC;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 78
    invoke-virtual {p2}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Wjd()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 79
    move-object v0, v2

    check-cast v0, Lcom/bytedance/adsdk/ugeno/sP/Sj;

    invoke-virtual {v0, p2}, Lcom/bytedance/adsdk/ugeno/sP/Sj;->Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;)V

    goto :goto_4

    :cond_d
    return-object v2

    .line 80
    :cond_e
    iput-object v2, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    return-object v2
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/bytedance/adsdk/ugeno/sP/TKC;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/bytedance/adsdk/ugeno/sP/TKC<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 18
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->sP:Lorg/json/JSONObject;

    .line 19
    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->vS:Lcom/bytedance/adsdk/ugeno/core/Zq;

    if-eqz p2, :cond_0

    .line 20
    invoke-interface {p2}, Lcom/bytedance/adsdk/ugeno/core/Zq;->Sj()V

    .line 21
    :cond_0
    new-instance p2, Lcom/bytedance/adsdk/ugeno/EjP/Sj/Sj;

    invoke-direct {p2}, Lcom/bytedance/adsdk/ugeno/EjP/Sj/Sj;-><init>()V

    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->Fmk:Lcom/bytedance/adsdk/ugeno/EjP/Sj/Sj;

    .line 22
    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->HiB:Lcom/bytedance/adsdk/ugeno/core/aa;

    instance-of p2, p2, Lcom/bytedance/adsdk/ugeno/core/Sj/sP;

    const/4 p3, 0x0

    if-nez p2, :cond_2

    .line 23
    invoke-virtual {p0, p1, p3}, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj(Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;Lcom/bytedance/adsdk/ugeno/sP/TKC;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 24
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->vS:Lcom/bytedance/adsdk/ugeno/core/Zq;

    if-eqz p1, :cond_1

    .line 25
    invoke-interface {p1}, Lcom/bytedance/adsdk/ugeno/core/Zq;->sP()V

    .line 26
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->vS:Lcom/bytedance/adsdk/ugeno/core/Zq;

    invoke-virtual {p1, p2}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Sj(Lcom/bytedance/adsdk/ugeno/core/Zq;)V

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;)V

    .line 28
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    return-object p1

    .line 29
    :cond_2
    throw p3
.end method

.method public Sj(Lorg/json/JSONObject;)Lcom/bytedance/adsdk/ugeno/sP/TKC;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/bytedance/adsdk/ugeno/sP/TKC<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->vS:Lcom/bytedance/adsdk/ugeno/core/Zq;

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/core/Zq;->Sj()V

    .line 83
    :cond_0
    new-instance v0, Lcom/bytedance/adsdk/ugeno/core/HiB;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->sP:Lorg/json/JSONObject;

    invoke-direct {v0, p1, v1}, Lcom/bytedance/adsdk/ugeno/core/HiB;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->Dq:Lcom/bytedance/adsdk/ugeno/core/HiB;

    .line 84
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->HiB:Lcom/bytedance/adsdk/ugeno/core/aa;

    instance-of p1, p1, Lcom/bytedance/adsdk/ugeno/core/Sj/sP;

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 85
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/core/HiB;->Sj()Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;

    move-result-object p1

    .line 86
    invoke-virtual {p0, p1, v1}, Lcom/bytedance/adsdk/ugeno/core/uA;->sP(Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;Lcom/bytedance/adsdk/ugeno/sP/TKC;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 87
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->vS:Lcom/bytedance/adsdk/ugeno/core/Zq;

    if-eqz p1, :cond_1

    .line 88
    invoke-interface {p1}, Lcom/bytedance/adsdk/ugeno/core/Zq;->sP()V

    .line 89
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->vS:Lcom/bytedance/adsdk/ugeno/core/Zq;

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Sj(Lcom/bytedance/adsdk/ugeno/core/Zq;)V

    .line 90
    :cond_1
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    return-object p1

    .line 91
    :cond_2
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/core/HiB;->sP()Ljava/lang/String;

    throw v1
.end method

.method public Sj(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/bytedance/adsdk/ugeno/sP/TKC;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/bytedance/adsdk/ugeno/sP/TKC<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 4
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->sP:Lorg/json/JSONObject;

    .line 5
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->vS:Lcom/bytedance/adsdk/ugeno/core/Zq;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/core/Zq;->Sj()V

    .line 7
    :cond_0
    new-instance v0, Lcom/bytedance/adsdk/ugeno/core/HiB;

    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/adsdk/ugeno/core/HiB;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->Dq:Lcom/bytedance/adsdk/ugeno/core/HiB;

    .line 8
    new-instance p1, Lcom/bytedance/adsdk/ugeno/EjP/Sj/Sj;

    invoke-direct {p1}, Lcom/bytedance/adsdk/ugeno/EjP/Sj/Sj;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->Fmk:Lcom/bytedance/adsdk/ugeno/EjP/Sj/Sj;

    .line 9
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->HiB:Lcom/bytedance/adsdk/ugeno/core/aa;

    instance-of p1, p1, Lcom/bytedance/adsdk/ugeno/core/Sj/sP;

    const/4 p2, 0x0

    if-nez p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->Dq:Lcom/bytedance/adsdk/ugeno/core/HiB;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/HiB;->Sj()Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;

    move-result-object p1

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj(Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;Lcom/bytedance/adsdk/ugeno/sP/TKC;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 12
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->vS:Lcom/bytedance/adsdk/ugeno/core/Zq;

    if-eqz p1, :cond_1

    .line 13
    invoke-interface {p1}, Lcom/bytedance/adsdk/ugeno/core/Zq;->sP()V

    .line 14
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->vS:Lcom/bytedance/adsdk/ugeno/core/Zq;

    invoke-virtual {p1, p2}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Sj(Lcom/bytedance/adsdk/ugeno/core/Zq;)V

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;)V

    .line 16
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    return-object p1

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->Dq:Lcom/bytedance/adsdk/ugeno/core/HiB;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/HiB;->sP()Ljava/lang/String;

    throw p2
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/core/Fmk;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->Jcg:Lcom/bytedance/adsdk/ugeno/core/Fmk;

    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/core/aa;)V
    .locals 1

    .line 119
    invoke-static {}, Lcom/bytedance/adsdk/ugeno/HiB;->Sj()Lcom/bytedance/adsdk/ugeno/HiB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/HiB;->HiB()Lcom/bytedance/adsdk/ugeno/core/Sj/Sj;

    move-result-object v0

    if-nez v0, :cond_0

    .line 120
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->HiB:Lcom/bytedance/adsdk/ugeno/core/aa;

    return-void

    .line 121
    :cond_0
    invoke-interface {v0, p1}, Lcom/bytedance/adsdk/ugeno/core/Sj/Sj;->Sj(Lcom/bytedance/adsdk/ugeno/core/aa;)Lcom/bytedance/adsdk/ugeno/core/Sj/sP;

    move-result-object v0

    if-nez v0, :cond_1

    .line 122
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->HiB:Lcom/bytedance/adsdk/ugeno/core/aa;

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 123
    throw p1
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;Lorg/json/JSONObject;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 92
    :cond_0
    instance-of v0, p1, Lcom/bytedance/adsdk/ugeno/sP/Sj;

    if-eqz v0, :cond_3

    .line 93
    invoke-virtual {p1, p2}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Sj(Lorg/json/JSONObject;)V

    .line 94
    check-cast p1, Lcom/bytedance/adsdk/ugeno/sP/Sj;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/sP/Sj;->uA()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 95
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_1

    .line 96
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 97
    invoke-virtual {p0, v0, p2}, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    .line 98
    :cond_3
    invoke-virtual {p1, p2}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Sj(Lorg/json/JSONObject;)V

    return-void
.end method

.method public Sj(Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/core/Dq;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->TEQ:Lcom/bytedance/adsdk/ugeno/core/Dq;

    .line 2
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->uA:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/bytedance/adsdk/ugeno/core/Dq;->Sj()Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->sP:Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method public Sj()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->sef:Z

    return v0
.end method

.method public sP(Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;Lcom/bytedance/adsdk/ugeno/sP/TKC;)Lcom/bytedance/adsdk/ugeno/sP/TKC;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;",
            "Lcom/bytedance/adsdk/ugeno/sP/TKC<",
            "Landroid/view/View;",
            ">;)",
            "Lcom/bytedance/adsdk/ugeno/sP/TKC<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/bytedance/adsdk/ugeno/core/HiB;->Sj(Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->TKC()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/core/EjP;->Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/core/sP;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "not found component "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    iput-boolean v3, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->sef:Z

    .line 6
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->Zq:Ljava/util/List;

    if-nez p1, :cond_1

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->Zq:Ljava/util/List;

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->Zq:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    .line 9
    :cond_2
    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/bytedance/adsdk/ugeno/core/sP;->Sj(Landroid/content/Context;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object v2

    if-nez v2, :cond_3

    return-object v1

    .line 10
    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->Sj()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->sP:Lorg/json/JSONObject;

    invoke-static {v4, v5}, Lcom/bytedance/adsdk/ugeno/TKC/sP;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-virtual {v2, v4}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2, v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->vS(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->EjP()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(Lorg/json/JSONObject;)V

    .line 14
    invoke-virtual {v2, p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Sj(Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;)V

    .line 15
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->TEQ:Lcom/bytedance/adsdk/ugeno/core/Dq;

    invoke-virtual {v2, v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Sj(Lcom/bytedance/adsdk/ugeno/core/Dq;)V

    .line 16
    instance-of v0, p2, Lcom/bytedance/adsdk/ugeno/sP/Sj;

    if-eqz v0, :cond_4

    .line 17
    check-cast p2, Lcom/bytedance/adsdk/ugeno/sP/Sj;

    invoke-virtual {v2, p2}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Sj(Lcom/bytedance/adsdk/ugeno/sP/Sj;)V

    .line 18
    invoke-virtual {p2}, Lcom/bytedance/adsdk/ugeno/sP/Sj;->TEQ()Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;

    move-result-object v1

    .line 19
    :cond_4
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->EjP()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    .line 20
    :cond_5
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->EjP()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->sP:Lorg/json/JSONObject;

    invoke-static {v4, v5}, Lcom/bytedance/adsdk/ugeno/TKC/sP;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    .line 23
    invoke-virtual {v2, v0, v4}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_5

    .line 24
    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj:Landroid/content/Context;

    invoke-virtual {v1, v5, v0, v4}, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->Sj(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :cond_6
    instance-of p2, v2, Lcom/bytedance/adsdk/ugeno/sP/Sj;

    if-eqz p2, :cond_d

    .line 26
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->HiB()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 27
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_7

    goto :goto_2

    .line 28
    :cond_7
    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->WMZ()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Swiper"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 29
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-eq p2, v3, :cond_8

    .line 30
    const-string p2, "UGTemplateEngine"

    const-string v0, "Swiper must be only one widget"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;

    .line 32
    invoke-virtual {p0, p2, v2}, Lcom/bytedance/adsdk/ugeno/core/uA;->sP(Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;Lcom/bytedance/adsdk/ugeno/sP/TKC;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 33
    invoke-virtual {p2}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Wjd()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 34
    move-object v0, v2

    check-cast v0, Lcom/bytedance/adsdk/ugeno/sP/Sj;

    invoke-virtual {v0, p2}, Lcom/bytedance/adsdk/ugeno/sP/Sj;->Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;)V

    goto :goto_1

    .line 35
    :cond_a
    :goto_2
    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->WMZ()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RecyclerLayout"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 36
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->Dq:Lcom/bytedance/adsdk/ugeno/core/HiB;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/HiB;->TKC()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 37
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_c

    .line 38
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;

    .line 39
    invoke-virtual {p0, p2, v2}, Lcom/bytedance/adsdk/ugeno/core/uA;->sP(Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;Lcom/bytedance/adsdk/ugeno/sP/TKC;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 40
    invoke-virtual {p2}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Wjd()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 41
    move-object v0, v2

    check-cast v0, Lcom/bytedance/adsdk/ugeno/sP/Sj;

    invoke-virtual {v0, p2}, Lcom/bytedance/adsdk/ugeno/sP/Sj;->Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;)V

    goto :goto_3

    :cond_c
    return-object v2

    :cond_d
    if-eqz v1, :cond_e

    .line 42
    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->Sj()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Sj(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    :cond_e
    iput-object v2, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    return-object v2
.end method

.method public sP()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->Zq:Ljava/util/List;

    return-object v0
.end method

.method public sP(Lorg/json/JSONObject;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->vS:Lcom/bytedance/adsdk/ugeno/core/Zq;

    if-eqz v0, :cond_0

    .line 45
    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/core/Zq;->TKC()V

    .line 46
    :cond_0
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->sP:Lorg/json/JSONObject;

    .line 47
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;Lorg/json/JSONObject;)V

    .line 48
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;)V

    .line 49
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->vS:Lcom/bytedance/adsdk/ugeno/core/Zq;

    if-eqz p1, :cond_1

    .line 50
    new-instance p1, Lcom/bytedance/adsdk/ugeno/core/sef;

    invoke-direct {p1}, Lcom/bytedance/adsdk/ugeno/core/sef;-><init>()V

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/core/sef;->Sj(I)V

    .line 52
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/core/sef;->Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;)V

    .line 53
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/uA;->vS:Lcom/bytedance/adsdk/ugeno/core/Zq;

    invoke-interface {v0, p1}, Lcom/bytedance/adsdk/ugeno/core/Zq;->Sj(Lcom/bytedance/adsdk/ugeno/core/sef;)V

    :cond_1
    return-void
.end method
