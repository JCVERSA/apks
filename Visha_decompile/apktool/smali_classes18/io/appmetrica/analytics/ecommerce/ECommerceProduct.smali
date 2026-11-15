.class public Lio/appmetrica/analytics/ecommerce/ECommerceProduct;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;

.field private d:Ljava/util/Map;

.field private e:Lio/appmetrica/analytics/ecommerce/ECommercePrice;

.field private f:Lio/appmetrica/analytics/ecommerce/ECommercePrice;

.field private g:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActualPrice()Lio/appmetrica/analytics/ecommerce/ECommercePrice;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->e:Lio/appmetrica/analytics/ecommerce/ECommercePrice;

    return-object p0
.end method

.method public getCategoriesPath()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->c:Ljava/util/List;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getOriginalPrice()Lio/appmetrica/analytics/ecommerce/ECommercePrice;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->f:Lio/appmetrica/analytics/ecommerce/ECommercePrice;

    return-object p0
.end method

.method public getPayload()Ljava/util/Map;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->d:Ljava/util/Map;

    return-object p0
.end method

.method public getPromocodes()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->g:Ljava/util/List;

    return-object p0
.end method

.method public getSku()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->a:Ljava/lang/String;

    return-object p0
.end method

.method public setActualPrice(Lio/appmetrica/analytics/ecommerce/ECommercePrice;)Lio/appmetrica/analytics/ecommerce/ECommerceProduct;
    .locals 0
    .param p1    # Lio/appmetrica/analytics/ecommerce/ECommercePrice;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->e:Lio/appmetrica/analytics/ecommerce/ECommercePrice;

    return-object p0
.end method

.method public setCategoriesPath(Ljava/util/List;)Lio/appmetrica/analytics/ecommerce/ECommerceProduct;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/appmetrica/analytics/ecommerce/ECommerceProduct;"
        }
    .end annotation

    iput-object p1, p0, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->c:Ljava/util/List;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lio/appmetrica/analytics/ecommerce/ECommerceProduct;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setOriginalPrice(Lio/appmetrica/analytics/ecommerce/ECommercePrice;)Lio/appmetrica/analytics/ecommerce/ECommerceProduct;
    .locals 0
    .param p1    # Lio/appmetrica/analytics/ecommerce/ECommercePrice;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->f:Lio/appmetrica/analytics/ecommerce/ECommercePrice;

    return-object p0
.end method

.method public setPayload(Ljava/util/Map;)Lio/appmetrica/analytics/ecommerce/ECommerceProduct;
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/appmetrica/analytics/ecommerce/ECommerceProduct;"
        }
    .end annotation

    iput-object p1, p0, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->d:Ljava/util/Map;

    return-object p0
.end method

.method public setPromocodes(Ljava/util/List;)Lio/appmetrica/analytics/ecommerce/ECommerceProduct;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/appmetrica/analytics/ecommerce/ECommerceProduct;"
        }
    .end annotation

    iput-object p1, p0, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->g:Ljava/util/List;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ECommerceProduct{sku=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', categoriesPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->d:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", actualPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->e:Lio/appmetrica/analytics/ecommerce/ECommercePrice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", originalPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->f:Lio/appmetrica/analytics/ecommerce/ECommercePrice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", promocodes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/appmetrica/analytics/ecommerce/ECommerceProduct;->g:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
