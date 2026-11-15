.class public final Lcom/yandex/mobile/ads/impl/ig1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic c:[Laf5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Laf5;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/jg1;

.field private final b:Lcom/yandex/mobile/ads/impl/go1;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "getLoadController()Lcom/monetization/ads/base/BaseAdLoadController;"

    const/4 v1, 0x0

    const-class v2, Lcom/yandex/mobile/ads/impl/ig1;

    const-string v3, "loadController"

    invoke-static {v2, v3, v0, v1}, Lcom/yandex/mobile/ads/impl/ta;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcf5;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Laf5;

    aput-object v0, v2, v1

    sput-object v2, Lcom/yandex/mobile/ads/impl/ig1;->c:[Laf5;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/ck;Lcom/yandex/mobile/ads/impl/hz0;Lcom/yandex/mobile/ads/impl/g5;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/wa;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/wa;-><init>()V

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yandex/mobile/ads/impl/ig1;-><init>(Lcom/yandex/mobile/ads/impl/ck;Lcom/yandex/mobile/ads/impl/hz0;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/wa;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ck;Lcom/yandex/mobile/ads/impl/hz0;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/wa;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/ck<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/hz0;",
            "Lcom/yandex/mobile/ads/impl/g5;",
            "Lcom/yandex/mobile/ads/impl/wa;",
            ")V"
        }
    .end annotation

    .line 3
    const-string v0, "loadController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediationData"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adLoadingPhasesManager"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterLoadingDurationProvider"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/ho1;->a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/go1;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ig1;->b:Lcom/yandex/mobile/ads/impl/go1;

    .line 6
    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/g5;->b()Ljava/util/List;

    move-result-object p1

    .line 7
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/wa;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance p3, Lcom/yandex/mobile/ads/impl/kg1;

    invoke-direct {p3, p1, p2}, Lcom/yandex/mobile/ads/impl/kg1;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/hz0;)V

    .line 9
    new-instance p1, Lcom/yandex/mobile/ads/impl/jg1;

    invoke-direct {p1, p3}, Lcom/yandex/mobile/ads/impl/jg1;-><init>(Lcom/yandex/mobile/ads/impl/kg1;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ig1;->a:Lcom/yandex/mobile/ads/impl/jg1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ig1;->b:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v1, Lcom/yandex/mobile/ads/impl/ig1;->c:[Laf5;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/ck;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ck;->h()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ig1;->a:Lcom/yandex/mobile/ads/impl/jg1;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/ck;->a(Lcom/yandex/mobile/ads/impl/jg1;)V

    :cond_0
    return-void
.end method
