.class public final Lio/appmetrica/analytics/impl/Fk;
.super Lio/appmetrica/analytics/ecommerce/ECommerceEvent;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/uf;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Lio/appmetrica/analytics/impl/mg;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Lio/appmetrica/analytics/impl/h8;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/ecommerce/ECommerceProduct;Lio/appmetrica/analytics/ecommerce/ECommerceReferrer;)V
    .locals 1
    .param p1    # Lio/appmetrica/analytics/ecommerce/ECommerceProduct;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/ecommerce/ECommerceReferrer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/uf;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/uf;-><init>(Lio/appmetrica/analytics/ecommerce/ECommerceProduct;)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lio/appmetrica/analytics/impl/mg;

    invoke-direct {p1, p2}, Lio/appmetrica/analytics/impl/mg;-><init>(Lio/appmetrica/analytics/ecommerce/ECommerceReferrer;)V

    :goto_0
    new-instance p2, Lio/appmetrica/analytics/impl/Gk;

    invoke-direct {p2}, Lio/appmetrica/analytics/impl/Gk;-><init>()V

    .line 3
    invoke-direct {p0, v0, p1, p2}, Lio/appmetrica/analytics/impl/Fk;-><init>(Lio/appmetrica/analytics/impl/uf;Lio/appmetrica/analytics/impl/mg;Lio/appmetrica/analytics/impl/h8;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/uf;Lio/appmetrica/analytics/impl/mg;Lio/appmetrica/analytics/impl/h8;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/uf;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/impl/mg;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lio/appmetrica/analytics/impl/h8;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/uf;",
            "Lio/appmetrica/analytics/impl/mg;",
            "Lio/appmetrica/analytics/impl/h8;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lio/appmetrica/analytics/ecommerce/ECommerceEvent;-><init>()V

    .line 5
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Fk;->a:Lio/appmetrica/analytics/impl/uf;

    .line 6
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Fk;->b:Lio/appmetrica/analytics/impl/mg;

    .line 7
    iput-object p3, p0, Lio/appmetrica/analytics/impl/Fk;->c:Lio/appmetrica/analytics/impl/h8;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/h8;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/impl/h8;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Fk;->c:Lio/appmetrica/analytics/impl/h8;

    return-object p0
.end method

.method public final getPublicDescription()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p0, "shown product details info"

    return-object p0
.end method

.method public final toProto()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/ti;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fk;->c:Lio/appmetrica/analytics/impl/h8;

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/coreapi/internal/data/Converter;->fromModel(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShownProductDetailInfoEvent{product="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Fk;->a:Lio/appmetrica/analytics/impl/uf;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", referrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Fk;->b:Lio/appmetrica/analytics/impl/mg;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", converter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Fk;->c:Lio/appmetrica/analytics/impl/h8;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
