.class public Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/AdSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private Dq:Ljava/lang/String;

.field private final EjP:Z

.field private Fmk:Z

.field private HiB:I

.field private final Jcg:I

.field private RiZ:Z

.field private Sj:Ljava/lang/String;

.field private TEQ:I

.field private TKC:I

.field private TzV:Ljava/lang/String;

.field private Ym:F

.field private Zq:Ljava/lang/String;

.field private aa:F

.field private dNu:Ljava/lang/String;

.field private dx:I

.field private sP:I

.field private sU:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private sef:Ljava/lang/String;

.field private uA:Ljava/lang/String;

.field private uvD:Ljava/lang/String;

.field private final vS:Ljava/lang/String;

.field private zR:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x280

    .line 5
    .line 6
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->sP:I

    .line 7
    .line 8
    const/16 v0, 0x140

    .line 9
    .line 10
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->TKC:I

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->EjP:Z

    .line 14
    .line 15
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->HiB:I

    .line 16
    .line 17
    const-string v1, ""

    .line 18
    .line 19
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->vS:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->Jcg:I

    .line 23
    .line 24
    const-string v1, "defaultUser"

    .line 25
    .line 26
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->uA:Ljava/lang/String;

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->RiZ:Z

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->sU:Ljava/util/Map;

    .line 32
    .line 33
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->zR:I

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public build()Lcom/bytedance/sdk/openadsdk/AdSlot;
    .locals 3

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;-><init>(Lcom/bytedance/sdk/openadsdk/AdSlot$1;)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->Sj:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->HiB:I

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;Z)Z

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->sP:I

    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->sP(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I

    .line 24
    .line 25
    .line 26
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->TKC:I

    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->TKC(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->Ym:F

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    cmpg-float v2, v1, v2

    .line 35
    .line 36
    if-gtz v2, :cond_0

    .line 37
    .line 38
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->sP:I

    .line 39
    .line 40
    int-to-float v1, v1

    .line 41
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;F)F

    .line 42
    .line 43
    .line 44
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->TKC:I

    .line 45
    .line 46
    int-to-float v1, v1

    .line 47
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->sP(Lcom/bytedance/sdk/openadsdk/AdSlot;F)F

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;F)F

    .line 52
    .line 53
    .line 54
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->aa:F

    .line 55
    .line 56
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->sP(Lcom/bytedance/sdk/openadsdk/AdSlot;F)F

    .line 57
    .line 58
    .line 59
    :goto_0
    const-string v1, ""

    .line 60
    .line 61
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->sP(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->EjP(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->Dq:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->TKC(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->uA:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->EjP(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->TEQ:I

    .line 79
    .line 80
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->HiB(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I

    .line 81
    .line 82
    .line 83
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->RiZ:Z

    .line 84
    .line 85
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->sP(Lcom/bytedance/sdk/openadsdk/AdSlot;Z)Z

    .line 86
    .line 87
    .line 88
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->Fmk:Z

    .line 89
    .line 90
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->TKC(Lcom/bytedance/sdk/openadsdk/AdSlot;Z)Z

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->sef:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->HiB(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->Zq:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->vS(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->uvD:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->Jcg(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->dNu:Ljava/lang/String;

    .line 109
    .line 110
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->Dq(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->TzV:Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->uA(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->sU:Ljava/util/Map;

    .line 119
    .line 120
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/util/Map;)Ljava/util/Map;

    .line 121
    .line 122
    .line 123
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->dx:I

    .line 124
    .line 125
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->vS(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I

    .line 126
    .line 127
    .line 128
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->zR:I

    .line 129
    .line 130
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->Jcg(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I

    .line 131
    .line 132
    .line 133
    return-object v0
.end method

.method public isExpressAd(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->Fmk:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 1

    .line 1
    if-gtz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    :cond_0
    const/16 v0, 0x14

    .line 5
    .line 6
    if-le p1, v0, :cond_1

    .line 7
    .line 8
    move p1, v0

    .line 9
    :cond_1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->HiB:I

    .line 10
    .line 11
    return-object p0
.end method

.method public setAdId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->Zq:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setBannerType(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->zR:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->Sj:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setCreativeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->uvD:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDurationSlotType(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->dx:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->Ym:F

    .line 2
    .line 3
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->aa:F

    .line 4
    .line 5
    return-object p0
.end method

.method public setExt(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->dNu:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->sP:I

    .line 2
    .line 3
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->TKC:I

    .line 4
    .line 5
    return-object p0
.end method

.method public setIsAutoPlay(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->RiZ:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setMediaExtra(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->Dq:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setNativeAdType(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->TEQ:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setRequestExtraMap(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->sU:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public setRewardAmount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-object p0
.end method

.method public setRewardName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-object p0
.end method

.method public setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-object p0
.end method

.method public setUserData(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->TzV:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setUserID(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->uA:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public withBid(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Zq;->EjP()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-static {p1}, Ly5/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    :cond_1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->sef:Ljava/lang/String;

    .line 18
    .line 19
    return-object p0
.end method
