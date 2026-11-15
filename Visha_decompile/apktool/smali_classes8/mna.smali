.class public Lmna;
.super Lj1;
.source "SourceFile"

# interfaces
.implements Lv0;


# instance fields
.field public b:Lp1;


# direct methods
.method public constructor <init>(Ljava/util/Date;Ljava/util/Locale;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Lj1;-><init>()V

    new-instance v0, Ljava/util/SimpleTimeZone;

    const/4 v1, 0x0

    const-string v2, "Z"

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmss"

    invoke-direct {v3, v4, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x79e

    if-lt p2, v0, :cond_1

    const/16 v0, 0x801

    if-le p2, v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p2, Leq1;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Leq1;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object p2, p0, Lmna;->b:Lp1;

    goto :goto_2

    :cond_1
    :goto_1
    new-instance p2, Lrp1;

    invoke-direct {p2, p1}, Lrp1;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :goto_2
    return-void
.end method

.method public constructor <init>(Lp1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lj1;-><init>()V

    instance-of v0, p1, La2;

    if-nez v0, :cond_1

    instance-of v0, p1, Lc1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown object passed to Time"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Lmna;->b:Lp1;

    return-void
.end method

.method public static n(Ljava/lang/Object;)Lmna;
    .locals 3

    if-eqz p0, :cond_3

    instance-of v0, p0, Lmna;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, La2;

    if-eqz v0, :cond_1

    new-instance v0, Lmna;

    check-cast p0, La2;

    invoke-direct {v0, p0}, Lmna;-><init>(Lp1;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lc1;

    if-eqz v0, :cond_2

    new-instance v0, Lmna;

    check-cast p0, Lc1;

    invoke-direct {v0, p0}, Lmna;-><init>(Lp1;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    check-cast p0, Lmna;

    return-object p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 0

    iget-object p0, p0, Lmna;->b:Lp1;

    return-object p0
.end method

.method public m()Ljava/util/Date;
    .locals 3

    :try_start_0
    iget-object p0, p0, Lmna;->b:Lp1;

    instance-of v0, p0, La2;

    if-eqz v0, :cond_0

    check-cast p0, La2;

    invoke-virtual {p0}, La2;->x()Ljava/util/Date;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    check-cast p0, Lc1;

    invoke-virtual {p0}, Lc1;->A()Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid date string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lmna;->b:Lp1;

    instance-of v0, p0, La2;

    if-eqz v0, :cond_0

    check-cast p0, La2;

    invoke-virtual {p0}, La2;->y()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p0, Lc1;

    invoke-virtual {p0}, Lc1;->C()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lmna;->o()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
