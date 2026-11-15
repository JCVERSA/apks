.class public final Lcom/vungle/ads/internal/presenter/NativeAdPresenter$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/vungle/ads/internal/ui/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->onDownload(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $deeplinkUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/vungle/ads/internal/presenter/NativeAdPresenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter$b;->$deeplinkUrl:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter$b;->this$0:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onDeeplinkClick(Z)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/vungle/ads/LinkError;

    .line 4
    .line 5
    sget-object v1, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->DEEPLINK_OPEN_FAILED:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "Fail to open "

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v3, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter$b;->$deeplinkUrl:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/LinkError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter$b;->this$0:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->access$getLogEntry(Lcom/vungle/ads/internal/presenter/NativeAdPresenter;)Lcom/vungle/ads/internal/util/n;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/VungleError;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter$b;->this$0:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->access$getAdvertisement$p(Lcom/vungle/ads/internal/presenter/NativeAdPresenter;)Lcom/vungle/ads/internal/model/AdPayload;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const/4 v0, 0x0

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    const/4 v5, 0x4

    .line 56
    const/4 v6, 0x0

    .line 57
    const-string v2, "deeplink.click"

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    invoke-static/range {v1 .. v6}, Lcom/vungle/ads/internal/model/AdPayload;->getTpatUrls$default(Lcom/vungle/ads/internal/model/AdPayload;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    move-object p1, v0

    .line 66
    :goto_0
    if-eqz p1, :cond_2

    .line 67
    .line 68
    check-cast p1, Ljava/lang/Iterable;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter$b;->this$0:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;

    .line 71
    .line 72
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Ljava/lang/String;

    .line 87
    .line 88
    new-instance v3, Lcom/vungle/ads/internal/network/f$a;

    .line 89
    .line 90
    invoke-direct {v3, v2}, Lcom/vungle/ads/internal/network/f$a;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string v2, "deeplink.click"

    .line 94
    .line 95
    invoke-virtual {v3, v2}, Lcom/vungle/ads/internal/network/f$a;->tpatKey(Ljava/lang/String;)Lcom/vungle/ads/internal/network/f$a;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-static {v1}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->access$getLogEntry(Lcom/vungle/ads/internal/presenter/NativeAdPresenter;)Lcom/vungle/ads/internal/util/n;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v2, v3}, Lcom/vungle/ads/internal/network/f$a;->withLogEntry(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/internal/network/f$a;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v2}, Lcom/vungle/ads/internal/network/f$a;->build()Lcom/vungle/ads/internal/network/f;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-static {v1}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->access$getTpatSender(Lcom/vungle/ads/internal/presenter/NativeAdPresenter;)Lcom/vungle/ads/internal/network/h;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    const/4 v4, 0x0

    .line 116
    const/4 v5, 0x2

    .line 117
    invoke-static {v3, v2, v4, v5, v0}, Lcom/vungle/ads/internal/network/h;->sendTpat$default(Lcom/vungle/ads/internal/network/h;Lcom/vungle/ads/internal/network/f;ZILjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_2
    return-void
.end method
