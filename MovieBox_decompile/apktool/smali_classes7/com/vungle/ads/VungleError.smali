.class public abstract Lcom/vungle/ads/VungleError;
.super Ljava/lang/Exception;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0019\u0008\u0004\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0011\u0010\t\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\r\u001a\u00020\u0000H\u0000\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u0011\u001a\u00020\u000eH\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0019\u0010\u0016\u001a\u00020\u00002\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0000\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001a\u0010\u001a\u001a\u00020\u00192\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0096\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001d\u001a\u00020\u001cH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u001fR\u0017\u0010\u0006\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010 \u001a\u0004\u0008!\u0010\nR\u0017\u0010\"\u001a\u00020\u001c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010\u001eR\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010%\u0082\u00015&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ\u00a8\u0006["
    }
    d2 = {
        "Lcom/vungle/ads/VungleError;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;",
        "loggableReason",
        "",
        "errorMessage",
        "<init>",
        "(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V",
        "getLocalizedMessage",
        "()Ljava/lang/String;",
        "logError$vungle_ads_release",
        "()Lcom/vungle/ads/VungleError;",
        "logError",
        "",
        "logErrorNoReturnValue$vungle_ads_release",
        "()V",
        "logErrorNoReturnValue",
        "Lcom/vungle/ads/internal/util/n;",
        "logEntry",
        "setLogEntry$vungle_ads_release",
        "(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/VungleError;",
        "setLogEntry",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "",
        "hashCode",
        "()I",
        "Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;",
        "Ljava/lang/String;",
        "getErrorMessage",
        "code",
        "I",
        "getCode",
        "Lcom/vungle/ads/internal/util/n;",
        "Lcom/vungle/ads/APIFailedStatusCodeError;",
        "Lcom/vungle/ads/AdCantPlayWithoutWebView;",
        "Lcom/vungle/ads/AdExpiredError;",
        "Lcom/vungle/ads/AdExpiredOnPlayError;",
        "Lcom/vungle/ads/AdMarkupInvalidError;",
        "Lcom/vungle/ads/AdMarkupJsonError;",
        "Lcom/vungle/ads/AdNotLoadedCantPlay;",
        "Lcom/vungle/ads/AdPayloadError;",
        "Lcom/vungle/ads/AdResponseEmptyError;",
        "Lcom/vungle/ads/AdRetryActiveError;",
        "Lcom/vungle/ads/AdRetryError;",
        "Lcom/vungle/ads/AssetDownloadError;",
        "Lcom/vungle/ads/AssetFailedStatusCodeError;",
        "Lcom/vungle/ads/AssetFailedToDeleteError;",
        "Lcom/vungle/ads/AssetRequestError;",
        "Lcom/vungle/ads/AssetResponseDataError;",
        "Lcom/vungle/ads/AssetWriteError;",
        "Lcom/vungle/ads/ConcurrentPlaybackUnsupported;",
        "Lcom/vungle/ads/EvaluateJsError;",
        "Lcom/vungle/ads/GzipEncodeError;",
        "Lcom/vungle/ads/HeartbeatMissingError;",
        "Lcom/vungle/ads/IndexHtmlError;",
        "Lcom/vungle/ads/InvalidAdStateError;",
        "Lcom/vungle/ads/InvalidAppId;",
        "Lcom/vungle/ads/InvalidAssetUrlError;",
        "Lcom/vungle/ads/InvalidBannerSizeError;",
        "Lcom/vungle/ads/InvalidBidPayloadError;",
        "Lcom/vungle/ads/InvalidCTAUrl;",
        "Lcom/vungle/ads/InvalidEndpointError;",
        "Lcom/vungle/ads/InvalidEventIdError;",
        "Lcom/vungle/ads/InvalidTemplateURLError;",
        "Lcom/vungle/ads/InvalidWaterfallPlacementError;",
        "Lcom/vungle/ads/JsonEncodeError;",
        "Lcom/vungle/ads/LinkError;",
        "Lcom/vungle/ads/MraidJsError;",
        "Lcom/vungle/ads/MraidTemplateError;",
        "Lcom/vungle/ads/NativeAssetError;",
        "Lcom/vungle/ads/NetworkTimeoutError;",
        "Lcom/vungle/ads/NetworkUnreachable;",
        "Lcom/vungle/ads/NoSpaceError;",
        "Lcom/vungle/ads/OmSdkJsError;",
        "Lcom/vungle/ads/OutOfMemory;",
        "Lcom/vungle/ads/PlacementAdTypeMismatchError;",
        "Lcom/vungle/ads/PlacementNotFoundError;",
        "Lcom/vungle/ads/PrivacyUrlError;",
        "Lcom/vungle/ads/SdkNotInitialized;",
        "Lcom/vungle/ads/SdkVersionTooLow;",
        "Lcom/vungle/ads/TemplateUnzipError;",
        "Lcom/vungle/ads/TpatError;",
        "Lcom/vungle/ads/UserAgentError;",
        "Lcom/vungle/ads/WebViewError;",
        "Lcom/vungle/ads/WebViewRenderProcessUnresponsive;",
        "Lcom/vungle/ads/WebViewRenderingProcessGone;",
        "vungle-ads_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final code:I

.field private final errorMessage:Ljava/lang/String;

.field private logEntry:Lcom/vungle/ads/internal/util/n;

.field private final loggableReason:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;


# direct methods
.method private constructor <init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/vungle/ads/VungleError;->loggableReason:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 4
    iput-object p2, p0, Lcom/vungle/ads/VungleError;->errorMessage:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/vungle/ads/VungleError;->code:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/vungle/ads/VungleError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v2, 0x0

    .line 17
    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    return v2

    .line 25
    :cond_2
    const-string v1, "null cannot be cast to non-null type com.vungle.ads.VungleError"

    .line 26
    .line 27
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    check-cast p1, Lcom/vungle/ads/VungleError;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/vungle/ads/VungleError;->loggableReason:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 33
    .line 34
    iget-object v3, p1, Lcom/vungle/ads/VungleError;->loggableReason:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 35
    .line 36
    if-eq v1, v3, :cond_3

    .line 37
    .line 38
    return v2

    .line 39
    :cond_3
    iget-object v1, p0, Lcom/vungle/ads/VungleError;->errorMessage:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v3, p1, Lcom/vungle/ads/VungleError;->errorMessage:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_4

    .line 48
    .line 49
    return v2

    .line 50
    :cond_4
    iget-object v1, p0, Lcom/vungle/ads/VungleError;->logEntry:Lcom/vungle/ads/internal/util/n;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/vungle/ads/VungleError;->logEntry:Lcom/vungle/ads/internal/util/n;

    .line 53
    .line 54
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_5

    .line 59
    .line 60
    return v2

    .line 61
    :cond_5
    return v0
.end method

.method public final getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/ads/VungleError;->code:I

    .line 2
    .line 3
    return v0
.end method

.method public final getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleError;->errorMessage:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleError;->errorMessage:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleError;->loggableReason:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/vungle/ads/VungleError;->errorMessage:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-object v1, p0, Lcom/vungle/ads/VungleError;->logEntry:Lcom/vungle/ads/internal/util/n;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/vungle/ads/internal/util/n;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    :goto_0
    add-int/2addr v0, v1

    .line 29
    return v0
.end method

.method public final logError$vungle_ads_release()Lcom/vungle/ads/VungleError;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final logErrorNoReturnValue$vungle_ads_release()V
    .locals 4

    .line 1
    sget-object v0, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/vungle/ads/VungleError;->loggableReason:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/vungle/ads/VungleError;->errorMessage:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/vungle/ads/VungleError;->logEntry:Lcom/vungle/ads/internal/util/n;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lcom/vungle/ads/AnalyticsClient;->logError$vungle_ads_release(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;Lcom/vungle/ads/internal/util/n;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/VungleError;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/VungleError;->logEntry:Lcom/vungle/ads/internal/util/n;

    .line 2
    .line 3
    return-object p0
.end method
