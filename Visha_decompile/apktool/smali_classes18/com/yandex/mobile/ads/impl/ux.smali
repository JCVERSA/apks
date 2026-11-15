.class public final Lcom/yandex/mobile/ads/impl/ux;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/tx;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ns0;

.field private final b:Lcom/yandex/mobile/ads/impl/oo1;

.field private final c:Lcom/yandex/mobile/ads/impl/zz0;

.field private final d:Lcom/yandex/mobile/ads/impl/kl0;

.field private final e:Lcom/yandex/mobile/ads/impl/ml0;

.field private final f:Lkotlinx/coroutines/c;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ns0;Lcom/yandex/mobile/ads/impl/oo1;Lcom/yandex/mobile/ads/impl/zz0;Lcom/yandex/mobile/ads/impl/kl0;Lcom/yandex/mobile/ads/impl/ml0;Lkotlinx/coroutines/c;)V
    .locals 1

    const-string v0, "localDataSource"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteDataSource"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networksMapper"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inspectorReportMapper"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportStorage"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioDispatcher"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ux;->a:Lcom/yandex/mobile/ads/impl/ns0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ux;->b:Lcom/yandex/mobile/ads/impl/oo1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ux;->c:Lcom/yandex/mobile/ads/impl/zz0;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/ux;->d:Lcom/yandex/mobile/ads/impl/kl0;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/ux;->e:Lcom/yandex/mobile/ads/impl/ml0;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/ux;->f:Lkotlinx/coroutines/c;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/ux;)Lcom/yandex/mobile/ads/impl/kl0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ux;->d:Lcom/yandex/mobile/ads/impl/kl0;

    return-object p0
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/ux;)Lcom/yandex/mobile/ads/impl/ns0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ux;->a:Lcom/yandex/mobile/ads/impl/ns0;

    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/mobile/ads/impl/ux;)Lcom/yandex/mobile/ads/impl/zz0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ux;->c:Lcom/yandex/mobile/ads/impl/zz0;

    return-object p0
.end method

.method public static final synthetic d(Lcom/yandex/mobile/ads/impl/ux;)Lcom/yandex/mobile/ads/impl/oo1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ux;->b:Lcom/yandex/mobile/ads/impl/oo1;

    return-object p0
.end method

.method public static final synthetic e(Lcom/yandex/mobile/ads/impl/ux;)Lcom/yandex/mobile/ads/impl/ml0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ux;->e:Lcom/yandex/mobile/ads/impl/ml0;

    return-object p0
.end method


# virtual methods
.method public final a(Lwh1;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/ll0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ux;->f:Lkotlinx/coroutines/c;

    new-instance v1, Lcom/yandex/mobile/ads/impl/ux$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/yandex/mobile/ads/impl/ux$a;-><init>(Lcom/yandex/mobile/ads/impl/ux;Lwh1;)V

    invoke-static {v0, v1, p1}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
