.class public final Lio/appmetrica/analytics/impl/D;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/appmetrica/analytics/impl/D;->a:I

    iput p2, p0, Lio/appmetrica/analytics/impl/D;->b:I

    iput p3, p0, Lio/appmetrica/analytics/impl/D;->c:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Lio/appmetrica/analytics/impl/D;

    invoke-static {v2, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    if-eqz p1, :cond_6

    check-cast p1, Lio/appmetrica/analytics/impl/D;

    iget v1, p0, Lio/appmetrica/analytics/impl/D;->a:I

    iget v3, p1, Lio/appmetrica/analytics/impl/D;->a:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lio/appmetrica/analytics/impl/D;->b:I

    iget v3, p1, Lio/appmetrica/analytics/impl/D;->b:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lio/appmetrica/analytics/impl/D;->c:I

    iget p1, p1, Lio/appmetrica/analytics/impl/D;->c:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0

    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type io.appmetrica.analytics.impl.id.AdvIdGetterController.CanTrackIdentifiers"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lio/appmetrica/analytics/impl/D;->a:I

    invoke-static {v0}, Lio/appmetrica/analytics/impl/Q7;->a(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/appmetrica/analytics/impl/D;->b:I

    invoke-static {v1}, Lio/appmetrica/analytics/impl/Q7;->a(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget p0, p0, Lio/appmetrica/analytics/impl/D;->c:I

    invoke-static {p0}, Lio/appmetrica/analytics/impl/Q7;->a(I)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CanTrackIdentifiers(canTrackGaid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lio/appmetrica/analytics/impl/D;->a:I

    invoke-static {v1}, Lio/appmetrica/analytics/impl/E;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", canTrackHoaid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/appmetrica/analytics/impl/D;->b:I

    invoke-static {v1}, Lio/appmetrica/analytics/impl/E;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", canTrackYandexAdvId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lio/appmetrica/analytics/impl/D;->c:I

    invoke-static {p0}, Lio/appmetrica/analytics/impl/E;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
