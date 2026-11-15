.class public final Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;
.super Landroid/widget/FrameLayout;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001d\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\u000f\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J)\u0010\u0014\u001a\u00020\u00082\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "destroy",
        "()V",
        "Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;",
        "data",
        "Lcom/transsion/ad/bidding/base/r;",
        "viewBinder",
        "onClick",
        "(Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;Lcom/transsion/ad/bidding/base/r;)V",
        "Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;",
        "adManager",
        "absAdLayoutProvider",
        "showData",
        "(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;Lcom/transsion/ad/bidding/base/r;)V",
        "Lcom/transsion/ad/view/native_ad/BiddingIconView;",
        "a",
        "Lcom/transsion/ad/view/native_ad/BiddingIconView;",
        "biddingIconView",
        "Lcom/hisavana/mediation/ad/TAdNativeView;",
        "b",
        "Lcom/hisavana/mediation/ad/TAdNativeView;",
        "tAdNativeView",
        "lib_ad_gpRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private a:Lcom/transsion/ad/view/native_ad/BiddingIconView;

.field private b:Lcom/hisavana/mediation/ad/TAdNativeView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->a:Lcom/transsion/ad/view/native_ad/BiddingIconView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->destroy()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->b:Lcom/hisavana/mediation/ad/TAdNativeView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/hisavana/mediation/ad/TAdNativeView;->release()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public final onClick(Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;Lcom/transsion/ad/bidding/base/r;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;->getType()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    if-nez p1, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-ne v0, v1, :cond_2

    .line 22
    .line 23
    iget-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->a:Lcom/transsion/ad/view/native_ad/BiddingIconView;

    .line 24
    .line 25
    if-eqz p1, :cond_5

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/transsion/ad/view/native_ad/BiddingIconView;->iconPerformClick()V

    .line 28
    .line 29
    .line 30
    goto :goto_3

    .line 31
    :cond_2
    :goto_1
    if-nez p1, :cond_3

    .line 32
    .line 33
    goto :goto_3

    .line 34
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    const/4 v0, 0x2

    .line 39
    if-ne p1, v0, :cond_5

    .line 40
    .line 41
    iget-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->b:Lcom/hisavana/mediation/ad/TAdNativeView;

    .line 42
    .line 43
    if-eqz p1, :cond_5

    .line 44
    .line 45
    if-eqz p2, :cond_4

    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/transsion/ad/bidding/base/r;->s()Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    if-eqz p2, :cond_4

    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    goto :goto_2

    .line 58
    :cond_4
    const/4 p2, 0x0

    .line 59
    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lcom/hisavana/mediation/ad/TIconView;

    .line 64
    .line 65
    if-eqz p1, :cond_5

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 68
    .line 69
    .line 70
    :cond_5
    :goto_3
    return-void
.end method

.method public final showData(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;Lcom/transsion/ad/bidding/base/r;)V
    .locals 7

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->E(Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;->getType()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const/16 v2, 0x8

    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    const/4 v4, 0x1

    .line 20
    if-ne v0, v4, :cond_b

    .line 21
    .line 22
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->a:Lcom/transsion/ad/view/native_ad/BiddingIconView;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->destroy()V

    .line 27
    .line 28
    .line 29
    :cond_1
    sget-object v0, Lci/q;->a:Lci/q;

    .line 30
    .line 31
    iget-object v5, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->a:Lcom/transsion/ad/view/native_ad/BiddingIconView;

    .line 32
    .line 33
    invoke-virtual {v0, v5}, Lci/q;->a(Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lcom/transsion/ad/view/native_ad/BiddingIconView;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    const-string v6, "getContext(...)"

    .line 43
    .line 44
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 v6, 0x0

    .line 48
    invoke-direct {v0, v5, v6, v3, v6}, Lcom/transsion/ad/view/native_ad/BiddingIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->a:Lcom/transsion/ad/view/native_ad/BiddingIconView;

    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;->isDisplay()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->a:Lcom/transsion/ad/view/native_ad/BiddingIconView;

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    invoke-virtual {v0, v4}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->isReportAdDisplay(Z)V

    .line 64
    .line 65
    .line 66
    :cond_2
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->a:Lcom/transsion/ad/view/native_ad/BiddingIconView;

    .line 67
    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    move-object v3, v6

    .line 78
    :goto_0
    invoke-virtual {v0, v3}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->setSceneId(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_4
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->a:Lcom/transsion/ad/view/native_ad/BiddingIconView;

    .line 82
    .line 83
    if-eqz v0, :cond_6

    .line 84
    .line 85
    if-eqz p1, :cond_5

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->K()Loh/a;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    :cond_5
    invoke-virtual {v0, v6}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->setListener(Loh/a;)V

    .line 92
    .line 93
    .line 94
    :cond_6
    iget-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->a:Lcom/transsion/ad/view/native_ad/BiddingIconView;

    .line 95
    .line 96
    if-eqz p1, :cond_7

    .line 97
    .line 98
    invoke-virtual {p2}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;->getRecommendInfo()Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-virtual {p1, p2}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->setRecommendInfo(Lcom/transsion/ad/ps/model/RecommendInfo;)V

    .line 103
    .line 104
    .line 105
    :cond_7
    iget-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->a:Lcom/transsion/ad/view/native_ad/BiddingIconView;

    .line 106
    .line 107
    if-eqz p1, :cond_8

    .line 108
    .line 109
    invoke-virtual {p1, p3}, Lcom/transsion/ad/view/native_ad/BiddingIconView;->bindIconView(Lcom/transsion/ad/bidding/base/r;)V

    .line 110
    .line 111
    .line 112
    :cond_8
    iget-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->b:Lcom/hisavana/mediation/ad/TAdNativeView;

    .line 113
    .line 114
    if-eqz p1, :cond_9

    .line 115
    .line 116
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    :cond_9
    iget-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->a:Lcom/transsion/ad/view/native_ad/BiddingIconView;

    .line 120
    .line 121
    if-eqz p1, :cond_a

    .line 122
    .line 123
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    :cond_a
    iget-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->a:Lcom/transsion/ad/view/native_ad/BiddingIconView;

    .line 127
    .line 128
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_b
    invoke-virtual {p2}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;->getType()I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-ne v0, v3, :cond_10

    .line 137
    .line 138
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->b:Lcom/hisavana/mediation/ad/TAdNativeView;

    .line 139
    .line 140
    if-eqz v0, :cond_c

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/hisavana/mediation/ad/TAdNativeView;->release()V

    .line 143
    .line 144
    .line 145
    :cond_c
    sget-object v0, Lci/q;->a:Lci/q;

    .line 146
    .line 147
    iget-object v3, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->b:Lcom/hisavana/mediation/ad/TAdNativeView;

    .line 148
    .line 149
    invoke-virtual {v0, v3}, Lci/q;->a(Landroid/view/View;)V

    .line 150
    .line 151
    .line 152
    new-instance v0, Lcom/hisavana/mediation/ad/TAdNativeView;

    .line 153
    .line 154
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-direct {v0, v3}, Lcom/hisavana/mediation/ad/TAdNativeView;-><init>(Landroid/content/Context;)V

    .line 159
    .line 160
    .line 161
    iput-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->b:Lcom/hisavana/mediation/ad/TAdNativeView;

    .line 162
    .line 163
    invoke-virtual {p2}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;->getNativeInfo()Lcom/hisavana/common/bean/TAdNativeInfo;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    if-eqz p2, :cond_d

    .line 168
    .line 169
    if-eqz p3, :cond_d

    .line 170
    .line 171
    invoke-virtual {p3}, Lcom/transsion/ad/bidding/base/r;->g()Lcom/transsion/ad/bidding/base/w;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {p3, v3, p2}, Lcom/transsion/ad/bidding/base/r;->q(Lcom/transsion/ad/bidding/base/w;Lcom/hisavana/common/bean/TAdNativeInfo;)Lcom/hisavana/mediation/ad/ViewBinder;

    .line 176
    .line 177
    .line 178
    move-result-object p3

    .line 179
    if-eqz p3, :cond_d

    .line 180
    .line 181
    if-eqz p1, :cond_d

    .line 182
    .line 183
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->M()Lcom/hisavana/mediation/ad/TNativeAd;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    if-eqz p1, :cond_d

    .line 188
    .line 189
    invoke-virtual {p1, v0, p2, p3}, Lcom/hisavana/mediation/ad/TNativeAd;->bindNativeView(Lcom/hisavana/mediation/ad/TAdNativeView;Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/mediation/ad/ViewBinder;)V

    .line 190
    .line 191
    .line 192
    :cond_d
    iget-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->a:Lcom/transsion/ad/view/native_ad/BiddingIconView;

    .line 193
    .line 194
    if-eqz p1, :cond_e

    .line 195
    .line 196
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 197
    .line 198
    .line 199
    :cond_e
    iget-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->b:Lcom/hisavana/mediation/ad/TAdNativeView;

    .line 200
    .line 201
    if-eqz p1, :cond_f

    .line 202
    .line 203
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 204
    .line 205
    .line 206
    :cond_f
    iget-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->b:Lcom/hisavana/mediation/ad/TAdNativeView;

    .line 207
    .line 208
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 209
    .line 210
    .line 211
    :cond_10
    :goto_1
    return-void
.end method
