.class public final Lcom/yandex/mobile/ads/impl/u91;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/x71;

.field private b:Lcom/yandex/mobile/ads/impl/fh;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/x71;Lcom/yandex/mobile/ads/impl/fh;)V
    .locals 1

    const-string v0, "reportManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetsRenderedReportParameterProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/u91;->a:Lcom/yandex/mobile/ads/impl/x71;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/u91;->b:Lcom/yandex/mobile/ads/impl/fh;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/u91;->a:Lcom/yandex/mobile/ads/impl/x71;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/x71;->a()Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/pp1;->b()Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u91;->b:Lcom/yandex/mobile/ads/impl/fh;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/fh;->a()Ljava/util/HashMap;

    move-result-object p0

    const-string v1, "rendered"

    invoke-static {v1, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lky5;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    const-string v1, "assets"

    invoke-static {v1, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lky5;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/collections/a;->s(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
