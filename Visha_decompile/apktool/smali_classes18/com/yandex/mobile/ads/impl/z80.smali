.class public final Lcom/yandex/mobile/ads/impl/z80;
.super Lcom/yandex/mobile/ads/impl/ak;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/impl/ak<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final K:Lcom/yandex/mobile/ads/impl/ka0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/ck;Lcom/yandex/mobile/ads/impl/ck;Lcom/yandex/mobile/ads/impl/ka0;Lcom/yandex/mobile/ads/impl/sx1;Lcom/yandex/mobile/ads/impl/cd1;Lcom/yandex/mobile/ads/impl/d8;)V
    .locals 12

    const-string v0, "context"

    move-object v2, p1

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    move-object v3, p2

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    move-object v4, p3

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "query"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestListener"

    move-object/from16 v7, p5

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    move-object/from16 v8, p6

    invoke-static {v8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionStorage"

    move-object/from16 v10, p8

    invoke-static {v10, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkResponseParserCreator"

    move-object/from16 v6, p9

    invoke-static {v6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequestReporter"

    move-object/from16 v9, p10

    invoke-static {v9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v11, 0x600

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/yandex/mobile/ads/impl/ak;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/cd1;Lcom/yandex/mobile/ads/impl/eq1;Lcom/yandex/mobile/ads/impl/qk$a;Lcom/yandex/mobile/ads/impl/lq1;Lcom/yandex/mobile/ads/impl/sx1;I)V

    move-object v0, p0

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/z80;->K:Lcom/yandex/mobile/ads/impl/ka0;

    return-void
.end method


# virtual methods
.method public final e()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/yandex/mobile/ads/impl/ak;->e()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lky5;->e()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/z80;->K:Lcom/yandex/mobile/ads/impl/ka0;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/yandex/mobile/ads/impl/vh0;->M:Lcom/yandex/mobile/ads/impl/vh0;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/vh0;->a()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/z80;->K:Lcom/yandex/mobile/ads/impl/ka0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ka0;->a()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {v1}, Lky5;->d(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
