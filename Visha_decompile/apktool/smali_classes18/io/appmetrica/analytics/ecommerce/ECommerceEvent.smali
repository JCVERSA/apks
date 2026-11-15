.class public abstract Lio/appmetrica/analytics/ecommerce/ECommerceEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/xf;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCartItemEvent(Lio/appmetrica/analytics/ecommerce/ECommerceCartItem;)Lio/appmetrica/analytics/ecommerce/ECommerceEvent;
    .locals 2
    .param p0    # Lio/appmetrica/analytics/ecommerce/ECommerceCartItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/impl/B3;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lio/appmetrica/analytics/impl/B3;-><init>(ILio/appmetrica/analytics/ecommerce/ECommerceCartItem;)V

    return-object v0
.end method

.method public static beginCheckoutEvent(Lio/appmetrica/analytics/ecommerce/ECommerceOrder;)Lio/appmetrica/analytics/ecommerce/ECommerceEvent;
    .locals 2
    .param p0    # Lio/appmetrica/analytics/ecommerce/ECommerceOrder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/impl/fe;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lio/appmetrica/analytics/impl/fe;-><init>(ILio/appmetrica/analytics/ecommerce/ECommerceOrder;)V

    return-object v0
.end method

.method public static purchaseEvent(Lio/appmetrica/analytics/ecommerce/ECommerceOrder;)Lio/appmetrica/analytics/ecommerce/ECommerceEvent;
    .locals 2
    .param p0    # Lio/appmetrica/analytics/ecommerce/ECommerceOrder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/impl/fe;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lio/appmetrica/analytics/impl/fe;-><init>(ILio/appmetrica/analytics/ecommerce/ECommerceOrder;)V

    return-object v0
.end method

.method public static removeCartItemEvent(Lio/appmetrica/analytics/ecommerce/ECommerceCartItem;)Lio/appmetrica/analytics/ecommerce/ECommerceEvent;
    .locals 2
    .param p0    # Lio/appmetrica/analytics/ecommerce/ECommerceCartItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/impl/B3;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lio/appmetrica/analytics/impl/B3;-><init>(ILio/appmetrica/analytics/ecommerce/ECommerceCartItem;)V

    return-object v0
.end method

.method public static showProductCardEvent(Lio/appmetrica/analytics/ecommerce/ECommerceProduct;Lio/appmetrica/analytics/ecommerce/ECommerceScreen;)Lio/appmetrica/analytics/ecommerce/ECommerceEvent;
    .locals 1
    .param p0    # Lio/appmetrica/analytics/ecommerce/ECommerceProduct;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lio/appmetrica/analytics/ecommerce/ECommerceScreen;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/impl/Dk;

    invoke-direct {v0, p0, p1}, Lio/appmetrica/analytics/impl/Dk;-><init>(Lio/appmetrica/analytics/ecommerce/ECommerceProduct;Lio/appmetrica/analytics/ecommerce/ECommerceScreen;)V

    return-object v0
.end method

.method public static showProductDetailsEvent(Lio/appmetrica/analytics/ecommerce/ECommerceProduct;Lio/appmetrica/analytics/ecommerce/ECommerceReferrer;)Lio/appmetrica/analytics/ecommerce/ECommerceEvent;
    .locals 1
    .param p0    # Lio/appmetrica/analytics/ecommerce/ECommerceProduct;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lio/appmetrica/analytics/ecommerce/ECommerceReferrer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/impl/Fk;

    invoke-direct {v0, p0, p1}, Lio/appmetrica/analytics/impl/Fk;-><init>(Lio/appmetrica/analytics/ecommerce/ECommerceProduct;Lio/appmetrica/analytics/ecommerce/ECommerceReferrer;)V

    return-object v0
.end method

.method public static showScreenEvent(Lio/appmetrica/analytics/ecommerce/ECommerceScreen;)Lio/appmetrica/analytics/ecommerce/ECommerceEvent;
    .locals 1
    .param p0    # Lio/appmetrica/analytics/ecommerce/ECommerceScreen;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/impl/Hk;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/Hk;-><init>(Lio/appmetrica/analytics/ecommerce/ECommerceScreen;)V

    return-object v0
.end method


# virtual methods
.method public getPublicDescription()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p0, "E-commerce base event"

    return-object p0
.end method

.method public abstract synthetic toProto()Ljava/util/List;
.end method
