.class public final Lcom/yandex/mobile/ads/impl/p50;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/p50$a;
    }
.end annotation


# static fields
.field private static c:Lcom/yandex/mobile/ads/impl/p50;

.field private static final d:Ljava/lang/Object;

.field public static final synthetic e:I


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o50;

.field private b:Lcom/yandex/mobile/ads/impl/bj0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/p50;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o50;Lcom/yandex/mobile/ads/impl/bj0;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "environmentConfiguration"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "appMetricaProvider"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/p50;->a:Lcom/yandex/mobile/ads/impl/o50;

    invoke-static {}, Ly71;->k()Ljava/util/List;

    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/p50;->b:Lcom/yandex/mobile/ads/impl/bj0;

    return-void
.end method

.method public static final synthetic a()Lcom/yandex/mobile/ads/impl/p50;
    .locals 1

    .line 2
    sget-object v0, Lcom/yandex/mobile/ads/impl/p50;->c:Lcom/yandex/mobile/ads/impl/p50;

    return-object v0
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/p50;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/yandex/mobile/ads/impl/p50;->c:Lcom/yandex/mobile/ads/impl/p50;

    return-void
.end method

.method public static final synthetic b()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/yandex/mobile/ads/impl/p50;->d:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final c()Lcom/yandex/mobile/ads/impl/o50;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p50;->a:Lcom/yandex/mobile/ads/impl/o50;

    return-object p0
.end method

.method public final d()Lcom/yandex/mobile/ads/impl/bj0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/p50;->b:Lcom/yandex/mobile/ads/impl/bj0;

    return-object p0
.end method
