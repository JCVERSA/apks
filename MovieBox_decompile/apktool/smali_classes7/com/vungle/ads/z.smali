.class public final Lcom/vungle/ads/z;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/z$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/z$a;

.field public static final TAG:Ljava/lang/String; = "VungleAds"

.field public static final firstPartyData:Lrx/b;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static initializer:Lcom/vungle/ads/internal/VungleInitializer;

.field private static vungleInternal:Lcom/vungle/ads/internal/VungleInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/ads/z$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/vungle/ads/z$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/vungle/ads/z;->Companion:Lcom/vungle/ads/z$a;

    .line 8
    .line 9
    new-instance v0, Lcom/vungle/ads/internal/VungleInternal;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/vungle/ads/internal/VungleInternal;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/vungle/ads/z;->vungleInternal:Lcom/vungle/ads/internal/VungleInternal;

    .line 15
    .line 16
    new-instance v0, Lcom/vungle/ads/internal/VungleInitializer;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/vungle/ads/internal/VungleInitializer;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/vungle/ads/z;->initializer:Lcom/vungle/ads/internal/VungleInitializer;

    .line 22
    .line 23
    new-instance v0, Lrx/b;

    .line 24
    .line 25
    invoke-direct {v0}, Lrx/b;-><init>()V

    .line 26
    .line 27
    .line 28
    sput-object v0, Lcom/vungle/ads/z;->firstPartyData:Lrx/b;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getInitializer$cp()Lcom/vungle/ads/internal/VungleInitializer;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/z;->initializer:Lcom/vungle/ads/internal/VungleInitializer;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getVungleInternal$cp()Lcom/vungle/ads/internal/VungleInternal;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/z;->vungleInternal:Lcom/vungle/ads/internal/VungleInternal;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final deInit(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/vungle/ads/z;->Companion:Lcom/vungle/ads/z$a;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/vungle/ads/z$a;->deInit(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final getBiddingToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/vungle/ads/z;->Companion:Lcom/vungle/ads/z$a;

    invoke-virtual {v0, p0}, Lcom/vungle/ads/z$a;->getBiddingToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getBiddingToken(Landroid/content/Context;Lcom/vungle/ads/i;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 2
    sget-object v0, Lcom/vungle/ads/z;->Companion:Lcom/vungle/ads/z$a;

    invoke-virtual {v0, p0, p1}, Lcom/vungle/ads/z$a;->getBiddingToken(Landroid/content/Context;Lcom/vungle/ads/i;)V

    return-void
.end method

.method public static final getSdkVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/vungle/ads/z;->Companion:Lcom/vungle/ads/z$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/vungle/ads/z$a;->getSdkVersion()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static final init(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/m;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/vungle/ads/z;->Companion:Lcom/vungle/ads/z$a;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lcom/vungle/ads/z$a;->init(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/m;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final isInitialized()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/vungle/ads/z;->Companion:Lcom/vungle/ads/z$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/vungle/ads/z$a;->isInitialized()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static final isInline(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/vungle/ads/z;->Companion:Lcom/vungle/ads/z$a;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/vungle/ads/z$a;->isInline(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static final setIntegrationName(Lcom/vungle/ads/VungleWrapperFramework;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/vungle/ads/z;->Companion:Lcom/vungle/ads/z$a;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/vungle/ads/z$a;->setIntegrationName(Lcom/vungle/ads/VungleWrapperFramework;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
