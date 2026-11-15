.class public final Lio/appmetrica/analytics/impl/h3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoStorage;


# instance fields
.field public final a:Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

.field public b:Lio/appmetrica/analytics/impl/u2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-class v0, Lio/appmetrica/analytics/impl/u2;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/sm;->a(Ljava/lang/Class;)Lio/appmetrica/analytics/impl/tm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/tm;->a(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/h3;-><init>(Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/h3;->a:Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    .line 4
    invoke-interface {p1}, Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;->read()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/impl/u2;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/h3;->b:Lio/appmetrica/analytics/impl/u2;

    return-void
.end method


# virtual methods
.method public final getBillingInfo()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/billinginterface/internal/BillingInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/h3;->b:Lio/appmetrica/analytics/impl/u2;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/u2;->a:Ljava/util/List;

    return-object p0
.end method

.method public final isFirstInappCheckOccurred()Z
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/h3;->b:Lio/appmetrica/analytics/impl/u2;

    iget-boolean p0, p0, Lio/appmetrica/analytics/impl/u2;->b:Z

    return p0
.end method

.method public final saveInfo(Ljava/util/List;Z)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/billinginterface/internal/BillingInfo;",
            ">;Z)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/billinginterface/internal/BillingInfo;

    goto :goto_0

    :cond_0
    new-instance v0, Lio/appmetrica/analytics/impl/u2;

    invoke-direct {v0, p1, p2}, Lio/appmetrica/analytics/impl/u2;-><init>(Ljava/util/List;Z)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/h3;->b:Lio/appmetrica/analytics/impl/u2;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/h3;->a:Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    invoke-interface {p0, v0}, Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;->save(Ljava/lang/Object;)V

    return-void
.end method
