.class final Lfreemarker/core/MiscUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfreemarker/core/t0;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/t0;

    iget v1, p0, Lfreemarker/core/t1;->d:I

    iget v2, v0, Lfreemarker/core/t1;->d:I

    sub-int/2addr v1, v2

    if-eqz v1, :cond_0

    return v1

    :cond_0
    iget p0, p0, Lfreemarker/core/t1;->c:I

    iget v0, v0, Lfreemarker/core/t1;->c:I

    sub-int/2addr p0, v0

    if-eqz p0, :cond_1

    return p0

    :cond_1
    if-ne p1, p2, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
