.class public final Lio/appmetrica/analytics/impl/mg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lio/appmetrica/analytics/impl/Si;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/ecommerce/ECommerceReferrer;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lio/appmetrica/analytics/ecommerce/ECommerceReferrer;->getType()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lio/appmetrica/analytics/ecommerce/ECommerceReferrer;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lio/appmetrica/analytics/ecommerce/ECommerceReferrer;->getScreen()Lio/appmetrica/analytics/ecommerce/ECommerceScreen;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lio/appmetrica/analytics/impl/Si;

    invoke-virtual {p1}, Lio/appmetrica/analytics/ecommerce/ECommerceReferrer;->getScreen()Lio/appmetrica/analytics/ecommerce/ECommerceScreen;

    move-result-object p1

    invoke-direct {v2, p1}, Lio/appmetrica/analytics/impl/Si;-><init>(Lio/appmetrica/analytics/ecommerce/ECommerceScreen;)V

    move-object p1, v2

    .line 4
    :goto_0
    invoke-direct {p0, v0, v1, p1}, Lio/appmetrica/analytics/impl/mg;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/impl/Si;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/impl/Si;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lio/appmetrica/analytics/impl/mg;->a:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lio/appmetrica/analytics/impl/mg;->b:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lio/appmetrica/analytics/impl/mg;->c:Lio/appmetrica/analytics/impl/Si;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReferrerWrapper{type=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/mg;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', identifier=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/mg;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/mg;->c:Lio/appmetrica/analytics/impl/Si;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
