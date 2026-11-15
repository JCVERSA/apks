.class public final Lio/appmetrica/analytics/impl/uf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/Map;

.field public final e:Lio/appmetrica/analytics/impl/nf;

.field public final f:Lio/appmetrica/analytics/impl/nf;

.field public final g:Ljava/util/List;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/ecommerce/ECommerceProduct;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->getSku()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p1}, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->getCategoriesPath()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->arrayListCopyOfNullableCollection(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    .line 4
    invoke-virtual {p1}, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->getPayload()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->mapCopyOfNullableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 5
    invoke-virtual {p1}, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->getActualPrice()Lio/appmetrica/analytics/ecommerce/ECommercePrice;

    move-result-object v0

    const/4 v5, 0x0

    if-nez v0, :cond_0

    move-object v6, v5

    goto :goto_0

    :cond_0
    new-instance v0, Lio/appmetrica/analytics/impl/nf;

    invoke-virtual {p1}, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->getActualPrice()Lio/appmetrica/analytics/ecommerce/ECommercePrice;

    move-result-object v6

    invoke-direct {v0, v6}, Lio/appmetrica/analytics/impl/nf;-><init>(Lio/appmetrica/analytics/ecommerce/ECommercePrice;)V

    move-object v6, v0

    .line 6
    :goto_0
    invoke-virtual {p1}, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->getOriginalPrice()Lio/appmetrica/analytics/ecommerce/ECommercePrice;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v7, v5

    goto :goto_1

    :cond_1
    new-instance v0, Lio/appmetrica/analytics/impl/nf;

    invoke-virtual {p1}, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->getOriginalPrice()Lio/appmetrica/analytics/ecommerce/ECommercePrice;

    move-result-object v5

    invoke-direct {v0, v5}, Lio/appmetrica/analytics/impl/nf;-><init>(Lio/appmetrica/analytics/ecommerce/ECommercePrice;)V

    move-object v7, v0

    .line 7
    :goto_1
    invoke-virtual {p1}, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->getPromocodes()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->arrayListCopyOfNullableCollection(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    move-object v0, p0

    move-object v5, v6

    move-object v6, v7

    move-object v7, p1

    .line 8
    invoke-direct/range {v0 .. v7}, Lio/appmetrica/analytics/impl/uf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lio/appmetrica/analytics/impl/nf;Lio/appmetrica/analytics/impl/nf;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lio/appmetrica/analytics/impl/nf;Lio/appmetrica/analytics/impl/nf;Ljava/util/List;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lio/appmetrica/analytics/impl/uf;->a:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lio/appmetrica/analytics/impl/uf;->b:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lio/appmetrica/analytics/impl/uf;->c:Ljava/util/List;

    .line 13
    iput-object p4, p0, Lio/appmetrica/analytics/impl/uf;->d:Ljava/util/Map;

    .line 14
    iput-object p5, p0, Lio/appmetrica/analytics/impl/uf;->e:Lio/appmetrica/analytics/impl/nf;

    .line 15
    iput-object p6, p0, Lio/appmetrica/analytics/impl/uf;->f:Lio/appmetrica/analytics/impl/nf;

    .line 16
    iput-object p7, p0, Lio/appmetrica/analytics/impl/uf;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProductWrapper{sku=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/uf;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/uf;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', categoriesPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/uf;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/uf;->d:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", actualPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/uf;->e:Lio/appmetrica/analytics/impl/nf;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", originalPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/uf;->f:Lio/appmetrica/analytics/impl/nf;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", promocodes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/uf;->g:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
