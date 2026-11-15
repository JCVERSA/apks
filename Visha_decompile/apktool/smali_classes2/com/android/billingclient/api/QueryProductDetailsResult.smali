.class public final Lcom/android/billingclient/api/QueryProductDetailsResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/android/billingclient/api/zzu;
.end annotation


# instance fields
.field private final productDetailsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;"
        }
    .end annotation
.end field

.field private final unfetchedProductList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/UnfetchedProduct;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/UnfetchedProduct;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/QueryProductDetailsResult;->productDetailsList:Ljava/util/List;

    iput-object p2, p0, Lcom/android/billingclient/api/QueryProductDetailsResult;->unfetchedProductList:Ljava/util/List;

    return-void
.end method

.method public static create(Ljava/util/List;Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsResult;
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/UnfetchedProduct;",
            ">;)",
            "Lcom/android/billingclient/api/QueryProductDetailsResult;"
        }
    .end annotation

    new-instance v0, Lcom/android/billingclient/api/QueryProductDetailsResult;

    invoke-direct {v0, p0, p1}, Lcom/android/billingclient/api/QueryProductDetailsResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public getProductDetailsList()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/android/billingclient/api/zzu;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/billingclient/api/QueryProductDetailsResult;->productDetailsList:Ljava/util/List;

    return-object p0
.end method

.method public getUnfetchedProductList()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/android/billingclient/api/zzu;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/UnfetchedProduct;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/billingclient/api/QueryProductDetailsResult;->unfetchedProductList:Ljava/util/List;

    return-object p0
.end method
