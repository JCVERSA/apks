.class public final Lcom/vungle/ads/internal/network/VungleApiClient$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/network/VungleApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/internal/network/VungleApiClient$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBASE_URL$vungle_ads_release()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/vungle/ads/internal/network/VungleApiClient;->access$getBASE_URL$cp()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final reset$vungle_ads_release()V
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/network/k;->INSTANCE:Lcom/vungle/ads/internal/network/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/vungle/ads/internal/network/k;->reset()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
