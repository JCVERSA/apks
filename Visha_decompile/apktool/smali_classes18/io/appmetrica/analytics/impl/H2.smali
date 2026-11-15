.class public final Lio/appmetrica/analytics/impl/H2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/G2;

.field public final b:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/G2;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/H2;->a:Lio/appmetrica/analytics/impl/G2;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/H2;->b:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/appmetrica/analytics/impl/H2;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lio/appmetrica/analytics/impl/H2;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/H2;->a:Lio/appmetrica/analytics/impl/G2;

    iget-object v3, p1, Lio/appmetrica/analytics/impl/H2;->a:Lio/appmetrica/analytics/impl/G2;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/H2;->b:Ljava/lang/Boolean;

    if-eqz p0, :cond_3

    iget-object p1, p1, Lio/appmetrica/analytics/impl/H2;->b:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object p0, p1, Lio/appmetrica/analytics/impl/H2;->b:Ljava/lang/Boolean;

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/H2;->a:Lio/appmetrica/analytics/impl/G2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lio/appmetrica/analytics/impl/H2;->b:Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method
