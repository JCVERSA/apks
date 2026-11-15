.class public final Lcom/yandex/mobile/ads/impl/s71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdapterListener;


# static fields
.field static final synthetic o:[Laf5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Laf5;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Lcom/yandex/mobile/ads/impl/y61;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/rx0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/rx0<",
            "Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdapter;",
            "Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdapterListener;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/mobile/ads/impl/wx0;

.field private final d:Lcom/yandex/mobile/ads/impl/oy0;

.field private final e:Lcom/yandex/mobile/ads/impl/ok0;

.field private final f:Landroid/content/Context;

.field private final g:Lcom/yandex/mobile/ads/impl/go1;

.field private final h:Ljava/util/LinkedHashMap;

.field private final i:Ljava/util/LinkedHashMap;

.field private final j:Lcom/yandex/mobile/ads/impl/kj0;

.field private final k:Lcom/yandex/mobile/ads/impl/ny0;

.field private final l:Lcom/yandex/mobile/ads/impl/ay0;

.field private final m:Lcom/yandex/mobile/ads/impl/xy0;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "getNativeAdLoadManager()Lcom/monetization/ads/nativeads/NativeAdLoadManager;"

    const/4 v1, 0x0

    const-class v2, Lcom/yandex/mobile/ads/impl/s71;

    const-string v3, "nativeAdLoadManager"

    invoke-static {v2, v3, v0, v1}, Lcom/yandex/mobile/ads/impl/ta;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcf5;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Laf5;

    aput-object v0, v2, v1

    sput-object v2, Lcom/yandex/mobile/ads/impl/s71;->o:[Laf5;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/g61;Lcom/yandex/mobile/ads/impl/rx0;)V
    .locals 7

    .line 1
    new-instance v4, Lcom/yandex/mobile/ads/impl/wx0;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/wx0;-><init>()V

    .line 2
    new-instance v5, Lcom/yandex/mobile/ads/impl/oy0;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/oy0;-><init>()V

    .line 3
    new-instance v6, Lcom/yandex/mobile/ads/impl/ok0;

    invoke-direct {v6, p3}, Lcom/yandex/mobile/ads/impl/ok0;-><init>(Lcom/yandex/mobile/ads/impl/rx0;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 4
    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/s71;-><init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/g61;Lcom/yandex/mobile/ads/impl/rx0;Lcom/yandex/mobile/ads/impl/wx0;Lcom/yandex/mobile/ads/impl/oy0;Lcom/yandex/mobile/ads/impl/ok0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/g61;Lcom/yandex/mobile/ads/impl/rx0;Lcom/yandex/mobile/ads/impl/wx0;Lcom/yandex/mobile/ads/impl/oy0;Lcom/yandex/mobile/ads/impl/ok0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Lcom/yandex/mobile/ads/impl/y61;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/g61;",
            "Lcom/yandex/mobile/ads/impl/rx0<",
            "Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdapter;",
            "Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdapterListener;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/wx0;",
            "Lcom/yandex/mobile/ads/impl/oy0;",
            "Lcom/yandex/mobile/ads/impl/ok0;",
            ")V"
        }
    .end annotation

    .line 5
    const-string v0, "adResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdLoadManager"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediatedAdController"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdEventObservable"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediatedImagesExtractor"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impressionDataProvider"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/s71;->a:Lcom/yandex/mobile/ads/impl/o8;

    .line 8
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/s71;->b:Lcom/yandex/mobile/ads/impl/rx0;

    .line 9
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/s71;->c:Lcom/yandex/mobile/ads/impl/wx0;

    .line 10
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/s71;->d:Lcom/yandex/mobile/ads/impl/oy0;

    .line 11
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/s71;->e:Lcom/yandex/mobile/ads/impl/ok0;

    .line 12
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ck;->l()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/s71;->f:Landroid/content/Context;

    .line 13
    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/ho1;->a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/go1;

    move-result-object p4

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/s71;->g:Lcom/yandex/mobile/ads/impl/go1;

    .line 14
    new-instance p4, Ljava/util/LinkedHashMap;

    invoke-direct {p4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/s71;->h:Ljava/util/LinkedHashMap;

    .line 15
    new-instance p5, Ljava/util/LinkedHashMap;

    invoke-direct {p5}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/s71;->i:Ljava/util/LinkedHashMap;

    .line 16
    new-instance p5, Lcom/yandex/mobile/ads/impl/kj0;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ck;->l()Landroid/content/Context;

    move-result-object p6

    invoke-direct {p5, p6}, Lcom/yandex/mobile/ads/impl/kj0;-><init>(Landroid/content/Context;)V

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/s71;->j:Lcom/yandex/mobile/ads/impl/kj0;

    .line 17
    new-instance p6, Lcom/yandex/mobile/ads/impl/ny0;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ck;->l()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p6, v0}, Lcom/yandex/mobile/ads/impl/ny0;-><init>(Landroid/content/Context;)V

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/s71;->k:Lcom/yandex/mobile/ads/impl/ny0;

    .line 18
    new-instance v0, Lcom/yandex/mobile/ads/impl/ay0;

    .line 19
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ck;->l()Landroid/content/Context;

    move-result-object p2

    .line 20
    invoke-direct {v0, p2, p5, p6}, Lcom/yandex/mobile/ads/impl/ay0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/kj0;Lcom/yandex/mobile/ads/impl/ny0;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/s71;->l:Lcom/yandex/mobile/ads/impl/ay0;

    .line 21
    new-instance p2, Lcom/yandex/mobile/ads/impl/xy0;

    .line 22
    const-string p5, "applicationContext"

    invoke-static {p1, p5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p2, p1, p3, p4}, Lcom/yandex/mobile/ads/impl/xy0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/rx0;Ljava/util/LinkedHashMap;)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/s71;->m:Lcom/yandex/mobile/ads/impl/xy0;

    return-void
.end method

.method private final a(Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;Lcom/yandex/mobile/ads/impl/gr1;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/s71;->g:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v1, Lcom/yandex/mobile/ads/impl/s71;->o:[Laf5;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/g61;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/s71;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/gr1;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "native_ad_type"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/s71;->b:Lcom/yandex/mobile/ads/impl/rx0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ck;->l()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/s71;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2, v3}, Lcom/yandex/mobile/ads/impl/rx0;->c(Landroid/content/Context;Ljava/util/Map;)V

    .line 5
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/s71;->i:Ljava/util/LinkedHashMap;

    .line 6
    invoke-interface {p1}, Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;->getMediatedNativeAdAssets()Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdAssets;

    move-result-object v2

    invoke-virtual {v2}, Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdAssets;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    invoke-static {v3, v2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-static {v2}, Lky5;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    .line 7
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 8
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/s71;->d:Lcom/yandex/mobile/ads/impl/oy0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    const-string v1, "mediatedNativeAd"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-interface {p1}, Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;->getMediatedNativeAdAssets()Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdAssets;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdAssets;->getFavicon()Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdImage;

    move-result-object v2

    invoke-virtual {v1}, Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdAssets;->getIcon()Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdImage;

    move-result-object v3

    invoke-virtual {v1}, Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdAssets;->getImage()Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdImage;

    move-result-object v1

    filled-new-array {v2, v3, v1}, [Lcom/monetization/ads/mediation/nativeads/MediatedNativeAdImage;

    move-result-object v1

    invoke-static {v1}, Ly71;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/s71;->k:Lcom/yandex/mobile/ads/impl/ny0;

    invoke-virtual {v2, v1}, Lcom/yandex/mobile/ads/impl/ny0;->b(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 13
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/s71;->j:Lcom/yandex/mobile/ads/impl/kj0;

    invoke-virtual {v3, v2}, Lcom/yandex/mobile/ads/impl/kj0;->a(Ljava/util/LinkedHashMap;)V

    .line 14
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/s71;->l:Lcom/yandex/mobile/ads/impl/ay0;

    new-instance v3, Letd;

    invoke-direct {v3, p1, p0, v0}, Letd;-><init>(Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;Lcom/yandex/mobile/ads/impl/s71;Lcom/yandex/mobile/ads/impl/g61;)V

    invoke-virtual {v2, p1, p2, v1, v3}, Lcom/yandex/mobile/ads/impl/ay0;->a(Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;Lcom/yandex/mobile/ads/impl/gr1;Ljava/util/List;Lcom/yandex/mobile/ads/impl/ay0$a;)V

    :cond_0
    return-void
.end method

.method private static final a(Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;Lcom/yandex/mobile/ads/impl/s71;Lcom/yandex/mobile/ads/impl/g61;Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 7

    .line 15
    const-string v0, "$mediatedNativeAd"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "convertedAdResponse"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v4, Lcom/yandex/mobile/ads/impl/ez0;

    .line 17
    iget-object v0, p1, Lcom/yandex/mobile/ads/impl/s71;->m:Lcom/yandex/mobile/ads/impl/xy0;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ck;->j()Lcom/yandex/mobile/ads/impl/l7;

    move-result-object v1

    .line 18
    new-instance v2, Lcom/yandex/mobile/ads/impl/bx1;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/bx1;-><init>()V

    .line 19
    invoke-direct {v4, p0, v0, v1, v2}, Lcom/yandex/mobile/ads/impl/ez0;-><init>(Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;Lcom/yandex/mobile/ads/impl/xy0;Lcom/yandex/mobile/ads/impl/l7;Lcom/yandex/mobile/ads/impl/ec1;)V

    .line 20
    new-instance p0, Lftd;

    invoke-direct {p0, p1}, Lftd;-><init>(Lcom/yandex/mobile/ads/impl/s71;)V

    .line 21
    new-instance v3, Lcom/yandex/mobile/ads/impl/vx0;

    invoke-direct {v3, p0}, Lcom/yandex/mobile/ads/impl/vx0;-><init>(Lcom/yandex/mobile/ads/impl/vx0$a;)V

    .line 22
    new-instance v5, Lcom/yandex/mobile/ads/impl/ry0;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/ry0;-><init>()V

    .line 23
    new-instance v6, Lcom/yandex/mobile/ads/impl/dz0;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/dz0;-><init>()V

    .line 24
    new-instance v2, Lcom/yandex/mobile/ads/impl/xx0;

    .line 25
    iget-object p0, p1, Lcom/yandex/mobile/ads/impl/s71;->a:Lcom/yandex/mobile/ads/impl/o8;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/s71;->b:Lcom/yandex/mobile/ads/impl/rx0;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/rx0;->a()Lcom/yandex/mobile/ads/impl/qx0;

    move-result-object p1

    .line 26
    invoke-direct {v2, p0, p1}, Lcom/yandex/mobile/ads/impl/xx0;-><init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/qx0;)V

    .line 27
    new-instance p0, Lcom/yandex/mobile/ads/impl/s51;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/s51;-><init>(Lcom/yandex/mobile/ads/impl/y4;Lcom/yandex/mobile/ads/impl/q51;Lcom/yandex/mobile/ads/impl/ec1;Lcom/yandex/mobile/ads/impl/jx0;Lcom/yandex/mobile/ads/impl/p62;)V

    .line 28
    invoke-virtual {p2, p3, p0}, Lcom/yandex/mobile/ads/impl/g61;->a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/s51;)V

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/s71;Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;Lcom/yandex/mobile/ads/impl/gr1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/s71;->a(Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;Lcom/yandex/mobile/ads/impl/gr1;)V

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/s71;Lcom/yandex/mobile/ads/impl/p51;)V
    .locals 1

    .line 29
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controller"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s71;->c:Lcom/yandex/mobile/ads/impl/wx0;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/wx0;->a(Lcom/yandex/mobile/ads/impl/p51;)V

    return-void
.end method

.method private final b(Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;Lcom/yandex/mobile/ads/impl/gr1;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/s71;->g:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v1, Lcom/yandex/mobile/ads/impl/s71;->o:[Laf5;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/g61;

    if-eqz v0, :cond_2

    .line 3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/s71;->b:Lcom/yandex/mobile/ads/impl/rx0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/rx0;->a()Lcom/yandex/mobile/ads/impl/qx0;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/qx0;->a()Lcom/yandex/mobile/ads/impl/tx0;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/tx0;->a()Lcom/monetization/ads/mediation/base/model/MediatedAdObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/monetization/ads/mediation/base/model/MediatedAdObject;->getAd()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lcom/monetization/ads/mediation/base/model/MediatedAdObject;->getInfo()Lcom/monetization/ads/mediation/base/model/MediatedAdObjectInfo;

    move-result-object v1

    .line 5
    new-instance v3, Lcom/yandex/mobile/ads/impl/s71$a;

    invoke-direct {v3, p0, p1, p2}, Lcom/yandex/mobile/ads/impl/s71$a;-><init>(Lcom/yandex/mobile/ads/impl/s71;Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;Lcom/yandex/mobile/ads/impl/gr1;)V

    new-instance p1, Lcom/yandex/mobile/ads/impl/s71$b;

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/s71$b;-><init>(Lcom/yandex/mobile/ads/impl/s71;)V

    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/yandex/mobile/ads/impl/ck;->a(Ljava/lang/Object;Lcom/monetization/ads/mediation/base/model/MediatedAdObjectInfo;Lc74;Le74;)V

    goto :goto_1

    .line 6
    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->a([Ljava/lang/Object;)V

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/s71;->a(Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;Lcom/yandex/mobile/ads/impl/gr1;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/s71;Lcom/yandex/mobile/ads/impl/p51;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/s71;->a(Lcom/yandex/mobile/ads/impl/s71;Lcom/yandex/mobile/ads/impl/p51;)V

    return-void
.end method

.method public static synthetic c(Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;Lcom/yandex/mobile/ads/impl/s71;Lcom/yandex/mobile/ads/impl/g61;Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/s71;->a(Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;Lcom/yandex/mobile/ads/impl/s71;Lcom/yandex/mobile/ads/impl/g61;Lcom/yandex/mobile/ads/impl/o8;)V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 5

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/s71;->g:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v1, Lcom/yandex/mobile/ads/impl/s71;->o:[Laf5;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/g61;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ck;->j()Lcom/yandex/mobile/ads/impl/l7;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/l7;->a()V

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/s71;->b:Lcom/yandex/mobile/ads/impl/rx0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/s71;->f:Landroid/content/Context;

    const-string v2, "applicationContext"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/s71;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1, v3}, Lcom/yandex/mobile/ads/impl/rx0;->a(Landroid/content/Context;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/s71;->f:Landroid/content/Context;

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/yandex/mobile/ads/impl/op1$b;->C:Lcom/yandex/mobile/ads/impl/op1$b;

    new-instance v2, Lcom/yandex/mobile/ads/impl/pp1;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/s71;->h:Ljava/util/LinkedHashMap;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/yandex/mobile/ads/impl/pp1;-><init>(Ljava/util/Map;I)V

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/op1$b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "event_type"

    invoke-virtual {v2, v1, v3}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/s71;->i:Ljava/util/LinkedHashMap;

    const-string v3, "ad_info"

    invoke-virtual {v2, v1, v3}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/s71;->a:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o8;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/yandex/mobile/ads/impl/pp1;->a(Ljava/util/List;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/s71;->a:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o8;->s()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Lcom/yandex/mobile/ads/impl/pp1;->a(Ljava/util/Map;)V

    :cond_1
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/s71;->b:Lcom/yandex/mobile/ads/impl/rx0;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/pp1;->b()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/yandex/mobile/ads/impl/rx0;->d(Landroid/content/Context;Ljava/util/Map;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s71;->c:Lcom/yandex/mobile/ads/impl/wx0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/wx0;->a()V

    return-void
.end method

.method public final onAdClosed()V
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/s71;->c:Lcom/yandex/mobile/ads/impl/wx0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/wx0;->b()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/s71;->g:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v1, Lcom/yandex/mobile/ads/impl/s71;->o:[Laf5;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/g61;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ck;->j()Lcom/yandex/mobile/ads/impl/l7;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/l7;->b()V

    :cond_0
    return-void
.end method

.method public final onAdFailedToLoad(Lcom/monetization/ads/mediation/base/MediatedAdRequestError;)V
    .locals 5

    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/s71;->g:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v1, Lcom/yandex/mobile/ads/impl/s71;->o:[Laf5;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/g61;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/yandex/mobile/ads/impl/w3;

    invoke-virtual {p1}, Lcom/monetization/ads/mediation/base/MediatedAdRequestError;->getCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/monetization/ads/mediation/base/MediatedAdRequestError;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/monetization/ads/mediation/base/MediatedAdRequestError;->getDescription()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/yandex/mobile/ads/impl/w3;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/s71;->b:Lcom/yandex/mobile/ads/impl/rx0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ck;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, v1, p0}, Lcom/yandex/mobile/ads/impl/rx0;->b(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/w3;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onAdImpression()V
    .locals 5

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/s71;->n:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/s71;->n:Z

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/s71;->b:Lcom/yandex/mobile/ads/impl/rx0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/s71;->f:Landroid/content/Context;

    const-string v2, "applicationContext"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/s71;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1, v3}, Lcom/yandex/mobile/ads/impl/rx0;->b(Landroid/content/Context;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/s71;->f:Landroid/content/Context;

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/yandex/mobile/ads/impl/op1$b;->y:Lcom/yandex/mobile/ads/impl/op1$b;

    new-instance v2, Lcom/yandex/mobile/ads/impl/pp1;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/s71;->h:Ljava/util/LinkedHashMap;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/yandex/mobile/ads/impl/pp1;-><init>(Ljava/util/Map;I)V

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/op1$b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "event_type"

    invoke-virtual {v2, v1, v3}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/s71;->i:Ljava/util/LinkedHashMap;

    const-string v3, "ad_info"

    invoke-virtual {v2, v1, v3}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/s71;->a:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o8;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/yandex/mobile/ads/impl/pp1;->a(Ljava/util/List;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/s71;->a:Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o8;->s()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Lcom/yandex/mobile/ads/impl/pp1;->a(Ljava/util/Map;)V

    :cond_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/s71;->b:Lcom/yandex/mobile/ads/impl/rx0;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/pp1;->b()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/yandex/mobile/ads/impl/rx0;->d(Landroid/content/Context;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/s71;->e:Lcom/yandex/mobile/ads/impl/ok0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ok0;->a()Lcom/yandex/mobile/ads/impl/t4;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s71;->c:Lcom/yandex/mobile/ads/impl/wx0;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/wx0;->a(Lcom/yandex/mobile/ads/impl/t4;)V

    :cond_1
    return-void
.end method

.method public final onAdLeftApplication()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s71;->c:Lcom/yandex/mobile/ads/impl/wx0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/wx0;->c()V

    return-void
.end method

.method public final onAdOpened()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s71;->c:Lcom/yandex/mobile/ads/impl/wx0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/wx0;->d()V

    return-void
.end method

.method public final onAppInstallAdLoaded(Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;)V
    .locals 1

    const-string v0, "mediatedNativeAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/yandex/mobile/ads/impl/gr1;->d:Lcom/yandex/mobile/ads/impl/gr1;

    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/s71;->b(Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;Lcom/yandex/mobile/ads/impl/gr1;)V

    return-void
.end method

.method public final onContentAdLoaded(Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;)V
    .locals 1

    const-string v0, "mediatedNativeAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/yandex/mobile/ads/impl/gr1;->c:Lcom/yandex/mobile/ads/impl/gr1;

    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/s71;->b(Lcom/monetization/ads/mediation/nativeads/MediatedNativeAd;Lcom/yandex/mobile/ads/impl/gr1;)V

    return-void
.end method
