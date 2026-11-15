.class public final Lcom/yandex/mobile/ads/impl/tb1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/gx0;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/gx0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/gx0;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/tb1;-><init>(Lcom/yandex/mobile/ads/impl/gx0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/gx0;)V
    .locals 1

    .line 3
    const-string v0, "mediaValuesProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/tb1;->a:Lcom/yandex/mobile/ads/impl/gx0;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/tb1;)Lcom/yandex/mobile/ads/impl/gx0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/tb1;->a:Lcom/yandex/mobile/ads/impl/gx0;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/y61;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/y61;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2
    const-string v0, "nativeAdResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/y61;->e()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Li81;->b0(Ljava/lang/Iterable;)Lpc9;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/yandex/mobile/ads/impl/wb1;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/wb1;-><init>(Lcom/yandex/mobile/ads/impl/tb1;)V

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->L(Lpc9;Le74;)Lpc9;

    move-result-object p0

    .line 5
    sget-object p1, Lcom/yandex/mobile/ads/impl/xb1;->b:Lcom/yandex/mobile/ads/impl/xb1;

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->S(Lpc9;Le74;)Lpc9;

    move-result-object p0

    .line 6
    sget-object p1, Lcom/yandex/mobile/ads/impl/tb1$a;->b:Lcom/yandex/mobile/ads/impl/tb1$a;

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->R(Lpc9;Le74;)Lpc9;

    move-result-object p0

    .line 7
    sget-object p1, Lcom/yandex/mobile/ads/impl/tb1$b;->b:Lcom/yandex/mobile/ads/impl/tb1$b;

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->R(Lpc9;Le74;)Lpc9;

    move-result-object p0

    .line 8
    invoke-static {p0}, Lkotlin/sequences/SequencesKt___SequencesKt;->c0(Lpc9;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/y61;)Ljava/util/SortedSet;
    .locals 1

    const-string v0, "nativeAdResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/y61;->e()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Li81;->b0(Ljava/lang/Iterable;)Lpc9;

    move-result-object p1

    new-instance v0, Lcom/yandex/mobile/ads/impl/wb1;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/wb1;-><init>(Lcom/yandex/mobile/ads/impl/tb1;)V

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->L(Lpc9;Le74;)Lpc9;

    move-result-object p0

    sget-object p1, Lcom/yandex/mobile/ads/impl/xb1;->b:Lcom/yandex/mobile/ads/impl/xb1;

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->S(Lpc9;Le74;)Lpc9;

    move-result-object p0

    sget-object p1, Lcom/yandex/mobile/ads/impl/ub1;->b:Lcom/yandex/mobile/ads/impl/ub1;

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->R(Lpc9;Le74;)Lpc9;

    move-result-object p0

    sget-object p1, Lcom/yandex/mobile/ads/impl/vb1;->b:Lcom/yandex/mobile/ads/impl/vb1;

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->R(Lpc9;Le74;)Lpc9;

    move-result-object p0

    invoke-static {p0}, Lad9;->t(Lpc9;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lcom/yandex/mobile/ads/impl/y61;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/y61;",
            ")",
            "Ljava/util/Set<",
            "Lcom/yandex/mobile/ads/impl/xj0;",
            ">;"
        }
    .end annotation

    const-string v0, "nativeAdResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/y61;->e()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Li81;->b0(Ljava/lang/Iterable;)Lpc9;

    move-result-object p1

    new-instance v0, Lcom/yandex/mobile/ads/impl/wb1;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/wb1;-><init>(Lcom/yandex/mobile/ads/impl/tb1;)V

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->L(Lpc9;Le74;)Lpc9;

    move-result-object p0

    sget-object p1, Lcom/yandex/mobile/ads/impl/xb1;->b:Lcom/yandex/mobile/ads/impl/xb1;

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->S(Lpc9;Le74;)Lpc9;

    move-result-object p0

    sget-object p1, Lcom/yandex/mobile/ads/impl/tb1$c;->b:Lcom/yandex/mobile/ads/impl/tb1$c;

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->S(Lpc9;Le74;)Lpc9;

    move-result-object p0

    invoke-static {p0}, Lkotlin/sequences/SequencesKt___SequencesKt;->e0(Lpc9;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
