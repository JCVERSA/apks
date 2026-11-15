.class public final Lcom/yandex/mobile/ads/impl/xl0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ld2$a;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/a8;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/gt;)V
    .locals 1

    const-string v0, "coreInstreamAdBreak"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/a8;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/gt;->a()Lcom/yandex/mobile/ads/impl/p2;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/a8;-><init>(Lcom/yandex/mobile/ads/impl/p2;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/xl0;->a:Lcom/yandex/mobile/ads/impl/a8;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/yandex/mobile/ads/impl/pp1;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/pp1;-><init>(Ljava/util/Map;I)V

    sget-object v1, Lcom/yandex/mobile/ads/impl/ts;->h:Lcom/yandex/mobile/ads/impl/ts;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ts;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_type"

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/xl0;->a:Lcom/yandex/mobile/ads/impl/a8;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/a8;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "page_id"

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/xl0;->a:Lcom/yandex/mobile/ads/impl/a8;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/a8;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "category_id"

    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xl0;->a:Lcom/yandex/mobile/ads/impl/a8;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/a8;->c()Ljava/lang/String;

    move-result-object p0

    const-string v1, "imp_id"

    invoke-virtual {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/pp1;->b()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
