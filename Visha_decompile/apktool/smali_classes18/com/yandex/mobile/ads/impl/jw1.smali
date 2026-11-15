.class public final Lcom/yandex/mobile/ads/impl/jw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/l81;


# static fields
.field static final synthetic f:[Laf5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Laf5;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;

.field private final b:Lcom/yandex/mobile/ads/impl/gw1;

.field private final c:Lcom/yandex/mobile/ads/impl/go1;

.field private final d:Lcom/yandex/mobile/ads/impl/xt1;

.field private final e:Lcom/yandex/mobile/ads/impl/t71;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "getNativeAdLoadManager()Lcom/monetization/ads/nativeads/NativeAdLoadManager;"

    const/4 v1, 0x0

    const-class v2, Lcom/yandex/mobile/ads/impl/jw1;

    const-string v3, "nativeAdLoadManager"

    invoke-static {v2, v3, v0, v1}, Lcom/yandex/mobile/ads/impl/ta;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcf5;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Laf5;

    aput-object v0, v2, v1

    sput-object v2, Lcom/yandex/mobile/ads/impl/jw1;->f:[Laf5;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/g61;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/gw1;)V
    .locals 1

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeAdLoadManager"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adConfiguration"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sdkNativeAdFactoriesProviderCreator"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/jw1;->a:Lcom/yandex/mobile/ads/impl/o3;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/jw1;->b:Lcom/yandex/mobile/ads/impl/gw1;

    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/ho1;->a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/go1;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/jw1;->c:Lcom/yandex/mobile/ads/impl/go1;

    new-instance p1, Lcom/yandex/mobile/ads/impl/xt1;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ck;->f()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/yandex/mobile/ads/impl/xt1;-><init>(Lcom/yandex/mobile/ads/impl/o3;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/jw1;->d:Lcom/yandex/mobile/ads/impl/xt1;

    new-instance p1, Lcom/yandex/mobile/ads/impl/t71;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ck;->f()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/yandex/mobile/ads/impl/t71;-><init>(Lcom/yandex/mobile/ads/impl/o3;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/jw1;->e:Lcom/yandex/mobile/ads/impl/t71;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Lcom/yandex/mobile/ads/impl/y61;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jw1;->c:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v1, Lcom/yandex/mobile/ads/impl/jw1;->f:[Laf5;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/g61;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ck;->i()Lcom/yandex/mobile/ads/impl/g5;

    move-result-object v1

    sget-object v2, Lcom/yandex/mobile/ads/impl/f5;->c:Lcom/yandex/mobile/ads/impl/f5;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "adLoadingPhaseType"

    invoke-static {v2, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/yandex/mobile/ads/impl/g5;->a(Lcom/yandex/mobile/ads/impl/f5;Lcom/yandex/mobile/ads/impl/ha2;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/u71;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/o8;->I()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/y61;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/jw1;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-direct {v1, p2, v2, v3}, Lcom/yandex/mobile/ads/impl/u71;-><init>(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/y61;Lcom/yandex/mobile/ads/impl/o3;)V

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/jw1;->d:Lcom/yandex/mobile/ads/impl/xt1;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/jw1;->e:Lcom/yandex/mobile/ads/impl/t71;

    invoke-virtual {v2, p1, p2, v3}, Lcom/yandex/mobile/ads/impl/xt1;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/t71;)V

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/jw1;->d:Lcom/yandex/mobile/ads/impl/xt1;

    invoke-virtual {v2, p1, p2, v1}, Lcom/yandex/mobile/ads/impl/xt1;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/u71;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jw1;->b:Lcom/yandex/mobile/ads/impl/gw1;

    invoke-virtual {p0, p2}, Lcom/yandex/mobile/ads/impl/gw1;->a(Lcom/yandex/mobile/ads/impl/o8;)Lcom/yandex/mobile/ads/impl/s51;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Lcom/yandex/mobile/ads/impl/g61;->a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/s51;)V

    :cond_0
    return-void
.end method
