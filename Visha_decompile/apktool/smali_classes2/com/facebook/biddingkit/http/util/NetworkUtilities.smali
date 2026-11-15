.class public Lcom/facebook/biddingkit/http/util/NetworkUtilities;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AD_READ_TIMEOUT_SANDBOX_MS:I = 0x1d4c0

.field private static final AD_REQUEST_TIMEOUT_MS:I = 0x7530

.field private static final AD_REQUEST_TIMEOUT_SANDBOX_MS:I = 0x57e40

.field private static final PINNED_SHA1_CERTIFICATES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PINNED_SHA1_PUBLIC_KEYS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static testHttpClient:Lcom/facebook/biddingkit/http/client/AndroidHttpClient;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/facebook/biddingkit/http/util/NetworkUtilities;->PINNED_SHA1_CERTIFICATES:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    sput-object v1, Lcom/facebook/biddingkit/http/util/NetworkUtilities;->PINNED_SHA1_PUBLIC_KEYS:Ljava/util/Set;

    const-string v2, "1ww8E0AYsR2oX5lndk2hwp2Uosk=\n"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "mOTdnSGD1SmegENz//Kn4cSHn14=\n"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "H7hrEWjsdDFUBi6MnMWxcaS3zLQ=\n"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "orAitN2YRTqgCPUHW8KJW7r1IUY=\n"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "M5zdV8/VsUEWm2Ff8xQoeC0dpjk=\n"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "9a0LzBrVbNFQclschmwwrZLvIbA=\n"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "Avrz4pFDVGhgeFdpTfXkW2iFGGg=\n"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "jDlu2bB0Rmqr47pjguyML79Aye0=\n"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "WCsptscss8t/NCgA1DxvmnaolGk=\n"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "oDHEZ4Lm5sZiwsh8dtqapizKvY4=\n"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "yj/IKGD+GsjgDNPj6SzsWN2sLT0=\n"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "BrJZJ8QqchYxwe/ZQx5kj6YuHjk=\n"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "npmkiplgsUkmu387AuItorCrcoA=\n"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "kX5zLTMPmhJAT3PYvqNpSLkp3/w=\n"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "toZ2GRnRjC9P5VVUdCpOrFH8lfQ=\n"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "3lKvjNsfmrn+WmfDhvr2iVh/yRs=\n"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "B08QtE4yLCdli4rptyqAEczXOeA=\n"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "XZXI6anZbdKf+taURdnyUH5ipgM=\n"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "bhbUIW5tqP+DrjCAXQxkIyBbTZU=\n"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "UbxPdxcIz+UJ3enqpVSOkcBneFM=\n"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "4kx7eUDImQCtxhdmZFPeQvoM1ig=\n"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "SXxoaOSEzPC6BgGmxAt/EAcsajw=\n"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "blhOM3W9V/bVQhsWAcLYwPU6n24=\n"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "T5x9IXmcrQ7YuQxXnxoCmeeQ84c=\n"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "b7+z1e0c+vrbTfOzogbkyuNbLFM=\n"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "nw+owQDOD/aWeu/JoBj4apDZ3co=\n"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "rvde5sbMtJH1szWIuROLvT7cgSo=\n"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "QIN33WddQIcN4iqJBUUodfI23tQ=\n"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "jfAKrXw/TPNCdeLsGb3zKOIkaSI=\n"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "m2VirtEZk8KAfti3Hh8IwICjc08=\n"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/biddingkit/http/util/NetworkUtilities;->testHttpClient:Lcom/facebook/biddingkit/http/client/AndroidHttpClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createHttpsClient()Lcom/facebook/biddingkit/http/client/AndroidHttpClient;
    .locals 2

    sget-object v0, Lcom/facebook/biddingkit/http/util/NetworkUtilities;->testHttpClient:Lcom/facebook/biddingkit/http/client/AndroidHttpClient;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;

    invoke-direct {v0}, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;-><init>()V

    invoke-static {v0}, Lcom/facebook/biddingkit/http/util/NetworkUtilities;->setupClient(Lcom/facebook/biddingkit/http/client/AndroidHttpClient;)V

    invoke-static {}, Lcom/facebook/biddingkit/http/util/NetworkUtilities;->isSandboxUrl()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/facebook/biddingkit/http/util/NetworkUtilities;->PINNED_SHA1_PUBLIC_KEYS:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->setPinnedPublicKeys(Ljava/util/Set;)V

    sget-object v1, Lcom/facebook/biddingkit/http/util/NetworkUtilities;->PINNED_SHA1_CERTIFICATES:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->setPinnedCertificates(Ljava/util/Set;)V

    :cond_1
    return-object v0
.end method

.method public static isSandboxUrl()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static setTestHttpClient(Lcom/facebook/biddingkit/http/client/AndroidHttpClient;)V
    .locals 0
    .param p0    # Lcom/facebook/biddingkit/http/client/AndroidHttpClient;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sput-object p0, Lcom/facebook/biddingkit/http/util/NetworkUtilities;->testHttpClient:Lcom/facebook/biddingkit/http/client/AndroidHttpClient;

    return-void
.end method

.method private static setupClient(Lcom/facebook/biddingkit/http/client/AndroidHttpClient;)V
    .locals 1

    invoke-static {}, Lcom/facebook/biddingkit/http/util/NetworkUtilities;->isSandboxUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x57e40

    invoke-virtual {p0, v0}, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->setConnectionTimeout(I)V

    const v0, 0x1d4c0

    invoke-virtual {p0, v0}, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->setReadTimeout(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x7530

    invoke-virtual {p0, v0}, Lcom/facebook/biddingkit/http/client/AndroidHttpClient;->setConnectionTimeout(I)V

    :goto_0
    return-void
.end method
