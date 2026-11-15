.class public final Lcom/hisavana/vungle/util/VungleUtil;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J*\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/hisavana/vungle/util/VungleUtil;",
        "",
        "<init>",
        "()V",
        "TAG_MEDIA_VIEW",
        "",
        "TAG_ICON_VIEW",
        "getNativeInfo",
        "Lcom/hisavana/common/bean/TAdNativeInfo;",
        "ad",
        "Lcom/vungle/ads/NativeAd;",
        "adt",
        "",
        "ttl",
        "vungleNative",
        "Lcom/hisavana/vungle/excuter/VungleNative;",
        "liftoff_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/hisavana/vungle/util/VungleUtil;

.field public static final TAG_ICON_VIEW:Ljava/lang/String; = "vungle_icon_view"

.field public static final TAG_MEDIA_VIEW:Ljava/lang/String; = "vungle_media_view"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/hisavana/vungle/util/VungleUtil;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hisavana/vungle/util/VungleUtil;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/hisavana/vungle/util/VungleUtil;->INSTANCE:Lcom/hisavana/vungle/util/VungleUtil;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getNativeInfo(Lcom/vungle/ads/NativeAd;IILcom/hisavana/vungle/excuter/VungleNative;)Lcom/hisavana/common/bean/TAdNativeInfo;
    .locals 3

    .line 1
    const-string v0, "vungleNative"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    new-instance v0, Lcom/hisavana/common/bean/AdNativeInfo;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/hisavana/common/bean/AdNativeInfo;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p4}, Lcom/hisavana/common/base/BaseNative;->getTriggerId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdNativeInfo;->setTriggerId(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->o()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdId(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p4}, Lcom/hisavana/common/base/BaseAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const-wide/16 v1, 0x0

    .line 45
    .line 46
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/hisavana/common/bean/AdNativeInfo;->setEcpmPrice(D)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p2}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdType(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p3}, Lcom/hisavana/common/bean/AdNativeInfo;->setTtl(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p4}, Lcom/hisavana/common/base/BaseAd;->getAdSource()I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    invoke-virtual {v0, p2}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdSource(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getCreativeId()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {v0, p2}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdCreateId(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/vungle/ads/NativeAd;->getAdTitle()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {v0, p2}, Lcom/hisavana/common/bean/AdNativeInfo;->setTitle(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/vungle/ads/NativeAd;->getAdBodyText()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {v0, p2}, Lcom/hisavana/common/bean/AdNativeInfo;->setDescription(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/vungle/ads/NativeAd;->getAdCallToActionText()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {v0, p2}, Lcom/hisavana/common/bean/AdNativeInfo;->setAdCallToAction(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/vungle/ads/NativeAd;->getAdStarRating()Ljava/lang/Double;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    if-eqz p2, :cond_1

    .line 95
    .line 96
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    .line 97
    .line 98
    .line 99
    move-result-wide p2

    .line 100
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-virtual {v0, p2}, Lcom/hisavana/common/bean/AdNativeInfo;->setRating(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_1
    invoke-virtual {p1}, Lcom/vungle/ads/NativeAd;->getAppIcon()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    if-lez p2, :cond_2

    .line 116
    .line 117
    new-instance p2, Lcom/hisavana/common/bean/AdNativeInfo$Image;

    .line 118
    .line 119
    invoke-direct {p2}, Lcom/hisavana/common/bean/AdNativeInfo$Image;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/vungle/ads/NativeAd;->getAppIcon()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p3

    .line 126
    invoke-virtual {p2, p3}, Lcom/hisavana/common/bean/AdNativeInfo$Image;->setUrl(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, p2}, Lcom/hisavana/common/bean/AdNativeInfo;->setIcon(Lcom/hisavana/common/bean/AdNativeInfo$Image;)V

    .line 130
    .line 131
    .line 132
    :cond_2
    new-instance p2, Lcom/hisavana/vungle/util/VungleUtil$getNativeInfo$1$2;

    .line 133
    .line 134
    invoke-direct {p2, p1, p4, v0}, Lcom/hisavana/vungle/util/VungleUtil$getNativeInfo$1$2;-><init>(Lcom/vungle/ads/NativeAd;Lcom/hisavana/vungle/excuter/VungleNative;Lcom/hisavana/common/bean/AdNativeInfo;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, p2}, Lcom/hisavana/common/bean/AdNativeInfo;->setNativeAdWrapper(Lcom/hisavana/common/bean/NativeAdWrapper;)V

    .line 138
    .line 139
    .line 140
    return-object v0

    .line 141
    :cond_3
    const/4 p1, 0x0

    .line 142
    return-object p1
.end method
