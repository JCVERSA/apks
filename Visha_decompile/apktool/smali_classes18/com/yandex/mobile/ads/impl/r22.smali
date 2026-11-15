.class public final Lcom/yandex/mobile/ads/impl/r22;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/sp1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/sp1;)V
    .locals 1

    const-string v0, "reporter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/r22;->a:Lcom/yandex/mobile/ads/impl/sp1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/gl0;)V
    .locals 3

    const-string v0, "initializationCallSource"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/r22;->a:Lcom/yandex/mobile/ads/impl/sp1;

    new-instance v0, Lcom/yandex/mobile/ads/impl/op1;

    sget-object v1, Lcom/yandex/mobile/ads/impl/op1$b;->b0:Lcom/yandex/mobile/ads/impl/op1$b;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/gl0;->a()Ljava/lang/String;

    move-result-object p1

    const-string v2, "call_source"

    invoke-static {v2, p1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lky5;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    const-string v2, "reportType"

    invoke-static {v1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "reportData"

    invoke-static {p1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/op1$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lkotlin/collections/a;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/yandex/mobile/ads/impl/op1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/f;)V

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/sp1;->a(Lcom/yandex/mobile/ads/impl/op1;)V

    return-void
.end method
