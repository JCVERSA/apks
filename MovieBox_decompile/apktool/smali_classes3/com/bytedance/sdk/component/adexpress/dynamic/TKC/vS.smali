.class public Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/vS;
.super Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu<",
        "Lcom/bytedance/sdk/component/adexpress/vS/vS;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;IIILorg/json/JSONObject;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->sP:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;

    .line 9
    .line 10
    move-object v0, p0

    .line 11
    move v1, p4

    .line 12
    move v2, p5

    .line 13
    move v3, p6

    .line 14
    move-object v4, p7

    .line 15
    move-object v5, p3

    .line 16
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/vS;->Sj(IIILorg/json/JSONObject;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private Sj(IIILorg/json/JSONObject;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/bytedance/sdk/component/adexpress/vS/vS;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->sP:Landroid/content/Context;

    .line 4
    .line 5
    move-object v0, v6

    .line 6
    move v2, p1

    .line 7
    move v3, p2

    .line 8
    move v4, p3

    .line 9
    move-object v5, p4

    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/component/adexpress/vS/vS;-><init>(Landroid/content/Context;IIILorg/json/JSONObject;)V

    .line 11
    .line 12
    .line 13
    iput-object v6, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/zR;

    .line 14
    .line 15
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 16
    .line 17
    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->sP:Landroid/content/Context;

    .line 18
    .line 19
    const/high16 p3, 0x43960000    # 300.0f

    .line 20
    .line 21
    invoke-static {p2, p3}, Lcom/bytedance/sdk/component/adexpress/EjP/Jcg;->Sj(Landroid/content/Context;F)F

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    float-to-int p2, p2

    .line 26
    const/4 p3, -0x1

    .line 27
    invoke-direct {p1, p3, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 28
    .line 29
    .line 30
    const/16 p2, 0x51

    .line 31
    .line 32
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 33
    .line 34
    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->sP:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {p5}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->ndK()I

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    const/4 p4, 0x0

    .line 41
    if-lez p3, :cond_0

    .line 42
    .line 43
    invoke-virtual {p5}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->ndK()I

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->sP()Z

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    if-eqz p3, :cond_1

    .line 53
    .line 54
    move p3, p4

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/16 p3, 0x78

    .line 57
    .line 58
    :goto_0
    int-to-float p3, p3

    .line 59
    invoke-static {p2, p3}, Lcom/bytedance/sdk/component/adexpress/EjP/Jcg;->Sj(Landroid/content/Context;F)F

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    float-to-int p2, p2

    .line 64
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 65
    .line 66
    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/zR;

    .line 67
    .line 68
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/zR;

    .line 72
    .line 73
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/zR;

    .line 77
    .line 78
    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    .line 79
    .line 80
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->sdp()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/vS/zR;->setSlideText(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/zR;

    .line 88
    .line 89
    instance-of p2, p1, Lcom/bytedance/sdk/component/adexpress/vS/vS;

    .line 90
    .line 91
    if-eqz p2, :cond_2

    .line 92
    .line 93
    check-cast p1, Lcom/bytedance/sdk/component/adexpress/vS/vS;

    .line 94
    .line 95
    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    .line 96
    .line 97
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->IOh()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/vS/vS;->setShakeText(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/zR;

    .line 105
    .line 106
    check-cast p1, Lcom/bytedance/sdk/component/adexpress/vS/vS;

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/vS/vS;->getShakeView()Lcom/bytedance/sdk/component/adexpress/vS/sU;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    if-eqz p1, :cond_2

    .line 113
    .line 114
    new-instance p2, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/vS$1;

    .line 115
    .line 116
    invoke-direct {p2, p0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/vS$1;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/vS;Lcom/bytedance/sdk/component/adexpress/vS/sU;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/vS/RiZ;->setOnShakeViewListener(Lcom/bytedance/sdk/component/adexpress/vS/RiZ$Sj;)V

    .line 120
    .line 121
    .line 122
    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;

    .line 123
    .line 124
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;->getDynamicClickListener()Lcom/bytedance/sdk/component/adexpress/dynamic/vS/Sj;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    check-cast p2, Landroid/view/View$OnClickListener;

    .line 129
    .line 130
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    .line 132
    .line 133
    :cond_2
    return-void
.end method


# virtual methods
.method protected EjP()V
    .locals 0

    .line 1
    return-void
.end method
