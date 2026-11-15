.class public final Lcom/yandex/mobile/ads/impl/ba0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/l90;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/l90;)V
    .locals 1

    const-string v0, "divKitViewPreloader"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ba0;->a:Lcom/yandex/mobile/ads/impl/l90;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/ba0;)Lcom/yandex/mobile/ads/impl/l90;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ba0;->a:Lcom/yandex/mobile/ads/impl/l90;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/gs0;Lwh1;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/gs0;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/n90;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lmc2;->a()Lkotlinx/coroutines/c;

    move-result-object v0

    new-instance v1, Lcom/yandex/mobile/ads/impl/ba0$a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/yandex/mobile/ads/impl/ba0$a;-><init>(Lcom/yandex/mobile/ads/impl/gs0;Lcom/yandex/mobile/ads/impl/ba0;Lwh1;)V

    invoke-static {v0, v1, p2}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
