.class public Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Jcg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Jcg<",
        "Lcom/bytedance/sdk/component/adexpress/vS/RiZ;",
        ">;"
    }
.end annotation


# instance fields
.field private Dq:I

.field private EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

.field private HiB:Ljava/lang/String;

.field private Jcg:I

.field private Sj:Lcom/bytedance/sdk/component/adexpress/vS/RiZ;

.field private TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;

.field private sP:Landroid/content/Context;

.field private uA:Lorg/json/JSONObject;

.field private vS:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;Ljava/lang/String;IIILorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->sP:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->HiB:Ljava/lang/String;

    .line 11
    .line 12
    iput p5, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->vS:I

    .line 13
    .line 14
    iput p6, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->Jcg:I

    .line 15
    .line 16
    iput p7, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->Dq:I

    .line 17
    .line 18
    iput-object p8, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->uA:Lorg/json/JSONObject;

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->HiB()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private HiB()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;->getDynamicClickListener()Lcom/bytedance/sdk/component/adexpress/dynamic/vS/Sj;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "convertActionType"

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    :catchall_0
    const-string v1, "16"

    .line 19
    .line 20
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->HiB:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    new-instance v1, Lcom/bytedance/sdk/component/adexpress/vS/RiZ;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->sP:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {v3}, Lcom/bytedance/sdk/component/adexpress/TKC/Sj;->Dq(Landroid/content/Context;)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    iget v5, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->vS:I

    .line 37
    .line 38
    iget v6, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->Jcg:I

    .line 39
    .line 40
    iget v7, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->Dq:I

    .line 41
    .line 42
    iget-object v8, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->uA:Lorg/json/JSONObject;

    .line 43
    .line 44
    move-object v2, v1

    .line 45
    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/component/adexpress/vS/RiZ;-><init>(Landroid/content/Context;Landroid/view/View;IIILorg/json/JSONObject;)V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/RiZ;

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/vS/RiZ;->getShakeLayout()Landroid/widget/LinearLayout;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/RiZ;

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/vS/RiZ;->getShakeLayout()Landroid/widget/LinearLayout;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    move-object v2, v0

    .line 63
    check-cast v2, Landroid/view/View$OnClickListener;

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    new-instance v1, Lcom/bytedance/sdk/component/adexpress/vS/RiZ;

    .line 70
    .line 71
    iget-object v4, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->sP:Landroid/content/Context;

    .line 72
    .line 73
    invoke-static {v4}, Lcom/bytedance/sdk/component/adexpress/TKC/Sj;->Jcg(Landroid/content/Context;)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    iget v6, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->vS:I

    .line 78
    .line 79
    iget v7, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->Jcg:I

    .line 80
    .line 81
    iget v8, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->Dq:I

    .line 82
    .line 83
    iget-object v9, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->uA:Lorg/json/JSONObject;

    .line 84
    .line 85
    move-object v3, v1

    .line 86
    invoke-direct/range {v3 .. v9}, Lcom/bytedance/sdk/component/adexpress/vS/RiZ;-><init>(Landroid/content/Context;Landroid/view/View;IIILorg/json/JSONObject;)V

    .line 87
    .line 88
    .line 89
    iput-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/RiZ;

    .line 90
    .line 91
    :cond_1
    :goto_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 92
    .line 93
    const/4 v2, -0x1

    .line 94
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 95
    .line 96
    .line 97
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/RiZ;

    .line 98
    .line 99
    const/16 v3, 0x11

    .line 100
    .line 101
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 102
    .line 103
    .line 104
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 105
    .line 106
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/RiZ;

    .line 107
    .line 108
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/RiZ;

    .line 112
    .line 113
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->sP:Landroid/content/Context;

    .line 114
    .line 115
    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    .line 116
    .line 117
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->kb()I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    int-to-float v3, v3

    .line 122
    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/adexpress/EjP/Jcg;->Sj(Landroid/content/Context;F)F

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 127
    .line 128
    .line 129
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/RiZ;

    .line 130
    .line 131
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    .line 132
    .line 133
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->sdp()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/adexpress/vS/RiZ;->setShakeText(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/RiZ;

    .line 141
    .line 142
    const/4 v2, 0x0

    .line 143
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 144
    .line 145
    .line 146
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/RiZ;

    .line 147
    .line 148
    new-instance v2, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq$1;

    .line 149
    .line 150
    invoke-direct {v2, p0, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq$1;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;Lcom/bytedance/sdk/component/adexpress/dynamic/vS/Sj;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/adexpress/vS/RiZ;->setOnShakeViewListener(Lcom/bytedance/sdk/component/adexpress/vS/RiZ$Sj;)V

    .line 154
    .line 155
    .line 156
    return-void
.end method


# virtual methods
.method public EjP()Lcom/bytedance/sdk/component/adexpress/vS/RiZ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/RiZ;

    .line 2
    .line 3
    return-object v0
.end method

.method public Sj()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/RiZ;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/vS/RiZ;->Sj()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public synthetic TKC()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->EjP()Lcom/bytedance/sdk/component/adexpress/vS/RiZ;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public sP()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/RiZ;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
