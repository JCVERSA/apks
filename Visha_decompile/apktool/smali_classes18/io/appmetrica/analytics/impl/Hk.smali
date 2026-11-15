.class public final Lio/appmetrica/analytics/impl/Hk;
.super Lio/appmetrica/analytics/ecommerce/ECommerceEvent;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Si;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Lio/appmetrica/analytics/impl/h8;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/ecommerce/ECommerceScreen;)V
    .locals 1
    .param p1    # Lio/appmetrica/analytics/ecommerce/ECommerceScreen;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/Si;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/Si;-><init>(Lio/appmetrica/analytics/ecommerce/ECommerceScreen;)V

    new-instance p1, Lio/appmetrica/analytics/impl/Ik;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/Ik;-><init>()V

    invoke-direct {p0, v0, p1}, Lio/appmetrica/analytics/impl/Hk;-><init>(Lio/appmetrica/analytics/impl/Si;Lio/appmetrica/analytics/impl/h8;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Si;Lio/appmetrica/analytics/impl/h8;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/Si;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/impl/h8;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/Si;",
            "Lio/appmetrica/analytics/impl/h8;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lio/appmetrica/analytics/ecommerce/ECommerceEvent;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Hk;->a:Lio/appmetrica/analytics/impl/Si;

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Hk;->b:Lio/appmetrica/analytics/impl/h8;

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

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Hk;->b:Lio/appmetrica/analytics/impl/h8;

    return-object p0
.end method

.method public final getPublicDescription()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p0, "shown screen info"

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

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Hk;->b:Lio/appmetrica/analytics/impl/h8;

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/coreapi/internal/data/Converter;->fromModel(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShownScreenInfoEvent{screen="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Hk;->a:Lio/appmetrica/analytics/impl/Si;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", converter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Hk;->b:Lio/appmetrica/analytics/impl/h8;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
