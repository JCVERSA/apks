.class public final Lcom/yandex/mobile/ads/impl/xx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/vx;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ns0;

.field private final b:Lcom/yandex/mobile/ads/impl/oo1;

.field private final c:Lcom/yandex/mobile/ads/impl/cx;

.field private final d:Lkotlinx/coroutines/c;

.field private e:Lcom/yandex/mobile/ads/impl/rx;

.field private final f:Lnw6;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ns0;Lcom/yandex/mobile/ads/impl/oo1;Lcom/yandex/mobile/ads/impl/cx;Lkotlinx/coroutines/c;)V
    .locals 1

    const-string v0, "localDataSource"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteDataSource"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataMerger"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioDispatcher"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/xx;->a:Lcom/yandex/mobile/ads/impl/ns0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/xx;->b:Lcom/yandex/mobile/ads/impl/oo1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/xx;->c:Lcom/yandex/mobile/ads/impl/cx;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/xx;->d:Lkotlinx/coroutines/c;

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-static {p3, p1, p2}, Lsw6;->b(ZILjava/lang/Object;)Lnw6;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/xx;->f:Lnw6;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/xx;)Lcom/yandex/mobile/ads/impl/cx;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xx;->c:Lcom/yandex/mobile/ads/impl/cx;

    return-object p0
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/xx;Lcom/yandex/mobile/ads/impl/rx;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/xx;->e:Lcom/yandex/mobile/ads/impl/rx;

    return-void
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/xx;)Lcom/yandex/mobile/ads/impl/rx;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xx;->e:Lcom/yandex/mobile/ads/impl/rx;

    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/mobile/ads/impl/xx;)Lcom/yandex/mobile/ads/impl/ns0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xx;->a:Lcom/yandex/mobile/ads/impl/ns0;

    return-object p0
.end method

.method public static final synthetic d(Lcom/yandex/mobile/ads/impl/xx;)Lnw6;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xx;->f:Lnw6;

    return-object p0
.end method

.method public static final synthetic e(Lcom/yandex/mobile/ads/impl/xx;)Lcom/yandex/mobile/ads/impl/oo1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xx;->b:Lcom/yandex/mobile/ads/impl/oo1;

    return-object p0
.end method


# virtual methods
.method public final a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/xx;->d:Lkotlinx/coroutines/c;

    new-instance v1, Lcom/yandex/mobile/ads/impl/wx;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/yandex/mobile/ads/impl/wx;-><init>(Lcom/yandex/mobile/ads/impl/xx;ZLwh1;)V

    invoke-static {v0, v1, p2}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a(Z)V
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xx;->a:Lcom/yandex/mobile/ads/impl/ns0;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/ns0;->a(Z)V

    return-void
.end method

.method public final a()Z
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xx;->a:Lcom/yandex/mobile/ads/impl/ns0;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/ns0;->a()Lcom/yandex/mobile/ads/impl/nx;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/nx;->c()Lcom/yandex/mobile/ads/impl/hx;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/hx;->a()Z

    move-result p0

    return p0
.end method
