.class public final Lio/appmetrica/analytics/impl/B3;
.super Lio/appmetrica/analytics/ecommerce/ECommerceEvent;
.source "SourceFile"


# static fields
.field public static final d:I = 0x4

.field public static final e:I = 0x5


# instance fields
.field public final a:I

.field public final b:Lio/appmetrica/analytics/impl/E3;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Lio/appmetrica/analytics/impl/h8;


# direct methods
.method public constructor <init>(ILio/appmetrica/analytics/ecommerce/ECommerceCartItem;)V
    .locals 1
    .param p2    # Lio/appmetrica/analytics/ecommerce/ECommerceCartItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/E3;

    invoke-direct {v0, p2}, Lio/appmetrica/analytics/impl/E3;-><init>(Lio/appmetrica/analytics/ecommerce/ECommerceCartItem;)V

    new-instance p2, Lio/appmetrica/analytics/impl/C3;

    invoke-direct {p2}, Lio/appmetrica/analytics/impl/C3;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lio/appmetrica/analytics/impl/B3;-><init>(ILio/appmetrica/analytics/impl/E3;Lio/appmetrica/analytics/impl/h8;)V

    return-void
.end method

.method public constructor <init>(ILio/appmetrica/analytics/impl/E3;Lio/appmetrica/analytics/impl/h8;)V
    .locals 0
    .param p2    # Lio/appmetrica/analytics/impl/E3;
        .annotation build Landroidx/annotation/NonNull;
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
            "(I",
            "Lio/appmetrica/analytics/impl/E3;",
            "Lio/appmetrica/analytics/impl/h8;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lio/appmetrica/analytics/ecommerce/ECommerceEvent;-><init>()V

    .line 3
    iput p1, p0, Lio/appmetrica/analytics/impl/B3;->a:I

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/impl/B3;->b:Lio/appmetrica/analytics/impl/E3;

    .line 5
    iput-object p3, p0, Lio/appmetrica/analytics/impl/B3;->c:Lio/appmetrica/analytics/impl/h8;

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

    iget-object p0, p0, Lio/appmetrica/analytics/impl/B3;->c:Lio/appmetrica/analytics/impl/h8;

    return-object p0
.end method

.method public final getPublicDescription()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget p0, p0, Lio/appmetrica/analytics/impl/B3;->a:I

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "unknown cart action info"

    return-object p0

    :cond_0
    const-string p0, "remove cart item info"

    return-object p0

    :cond_1
    const-string p0, "add cart item info"

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

    iget-object v0, p0, Lio/appmetrica/analytics/impl/B3;->c:Lio/appmetrica/analytics/impl/h8;

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/coreapi/internal/data/Converter;->fromModel(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CartActionInfoEvent{eventType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lio/appmetrica/analytics/impl/B3;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cartItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/B3;->b:Lio/appmetrica/analytics/impl/E3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", converter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/B3;->c:Lio/appmetrica/analytics/impl/h8;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
