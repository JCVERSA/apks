.class public final Lcom/yandex/mobile/ads/impl/uw0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/gx0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/gx0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/gx0;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/uw0;->a:Lcom/yandex/mobile/ads/impl/gx0;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/uw0;)Lcom/yandex/mobile/ads/impl/gx0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uw0;->a:Lcom/yandex/mobile/ads/impl/gx0;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/s41;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/s41;",
            ")",
            "Ljava/util/Set<",
            "Lcom/yandex/mobile/ads/impl/wu0;",
            ">;"
        }
    .end annotation

    .line 2
    const-string v0, "nativeAdBlock"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/s41;->c()Lcom/yandex/mobile/ads/impl/y61;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/y61;->e()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Li81;->b0(Ljava/lang/Iterable;)Lpc9;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/yandex/mobile/ads/impl/uw0$a;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/uw0$a;-><init>(Lcom/yandex/mobile/ads/impl/uw0;)V

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->L(Lpc9;Le74;)Lpc9;

    move-result-object p0

    .line 5
    sget-object p1, Lcom/yandex/mobile/ads/impl/uw0$b;->b:Lcom/yandex/mobile/ads/impl/uw0$b;

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->R(Lpc9;Le74;)Lpc9;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lkotlin/sequences/SequencesKt___SequencesKt;->H(Lpc9;)Lpc9;

    move-result-object p0

    .line 7
    invoke-static {p0}, Lkotlin/sequences/SequencesKt___SequencesKt;->e0(Lpc9;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
