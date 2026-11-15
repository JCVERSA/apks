.class public final Lcom/yandex/mobile/ads/impl/ou1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Lnw6;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/g5;

.field private final b:Lcom/yandex/mobile/ads/impl/kx1;

.field private final c:Lcom/yandex/mobile/ads/impl/nu1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lsw6;->b(ZILjava/lang/Object;)Lnw6;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/ou1;->d:Lnw6;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/p50;Lcom/yandex/mobile/ads/impl/jc;Lcom/yandex/mobile/ads/impl/g5;)V
    .locals 8

    .line 1
    new-instance v6, Lcom/yandex/mobile/ads/impl/kx1;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/kx1;-><init>()V

    .line 2
    new-instance v7, Lcom/yandex/mobile/ads/impl/nu1;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "getApplicationContext(...)"

    invoke-static {v1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/yandex/mobile/ads/impl/bv1;->c()Lcom/yandex/mobile/ads/impl/s01;

    move-result-object v2

    move-object v0, v7

    move-object v3, p4

    move-object v4, p3

    move-object v5, p5

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/nu1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/jc;Lcom/yandex/mobile/ads/impl/p50;Lcom/yandex/mobile/ads/impl/g5;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 5
    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/impl/ou1;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/p50;Lcom/yandex/mobile/ads/impl/jc;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/kx1;Lcom/yandex/mobile/ads/impl/nu1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/p50;Lcom/yandex/mobile/ads/impl/jc;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/kx1;Lcom/yandex/mobile/ads/impl/nu1;)V
    .locals 1

    .line 6
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sdkEnvironmentModule"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "environmentController"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "advertisingConfiguration"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adLoadingPhasesManager"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sensitiveModeChecker"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sdkConfigurationLoader"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/ou1;->a:Lcom/yandex/mobile/ads/impl/g5;

    .line 9
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/ou1;->b:Lcom/yandex/mobile/ads/impl/kx1;

    .line 10
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/ou1;->c:Lcom/yandex/mobile/ads/impl/nu1;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/ou1;)Lcom/yandex/mobile/ads/impl/g5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ou1;->a:Lcom/yandex/mobile/ads/impl/g5;

    return-object p0
.end method

.method public static final synthetic a()Lnw6;
    .locals 1

    .line 2
    sget-object v0, Lcom/yandex/mobile/ads/impl/ou1;->d:Lnw6;

    return-object v0
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/ou1;)Lcom/yandex/mobile/ads/impl/nu1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ou1;->c:Lcom/yandex/mobile/ads/impl/nu1;

    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/mobile/ads/impl/ou1;)Lcom/yandex/mobile/ads/impl/kx1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ou1;->b:Lcom/yandex/mobile/ads/impl/kx1;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/gl0;Lwh1;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/gl0;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/yu1;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3
    invoke-static {}, Lcom/yandex/mobile/ads/impl/qu;->a()Lkotlinx/coroutines/c;

    move-result-object v0

    new-instance v1, Lcom/yandex/mobile/ads/impl/ou1$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/yandex/mobile/ads/impl/ou1$a;-><init>(Lcom/yandex/mobile/ads/impl/ou1;Lcom/yandex/mobile/ads/impl/gl0;Lwh1;)V

    invoke-static {v0, v1, p2}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
