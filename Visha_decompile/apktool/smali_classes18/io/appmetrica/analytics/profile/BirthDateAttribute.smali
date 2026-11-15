.class public Lio/appmetrica/analytics/profile/BirthDateAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lio/appmetrica/analytics/impl/A6;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/A6;

    new-instance v1, Lio/appmetrica/analytics/impl/g8;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/g8;-><init>()V

    new-instance v2, Lio/appmetrica/analytics/impl/al;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/al;-><init>()V

    const-string v3, "appmetrica_birth_date"

    invoke-direct {v0, v3, v1, v2}, Lio/appmetrica/analytics/impl/A6;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/Pn;Lio/appmetrica/analytics/impl/n2;)V

    iput-object v0, p0, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a:Lio/appmetrica/analytics/impl/A6;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Calendar;Ljava/lang/String;Lio/appmetrica/analytics/impl/U2;)Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 8

    new-instance v0, Lio/appmetrica/analytics/profile/UserProfileUpdate;

    new-instance v7, Lio/appmetrica/analytics/impl/zm;

    iget-object p0, p0, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a:Lio/appmetrica/analytics/impl/A6;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/A6;->c:Ljava/lang/String;

    new-instance p0, Ljava/text/SimpleDateFormat;

    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lio/appmetrica/analytics/impl/f8;

    invoke-direct {v4}, Lio/appmetrica/analytics/impl/f8;-><init>()V

    new-instance v5, Lio/appmetrica/analytics/impl/g8;

    invoke-direct {v5}, Lio/appmetrica/analytics/impl/g8;-><init>()V

    move-object v1, v7

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/zm;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/impl/in;Lio/appmetrica/analytics/impl/Pn;Lio/appmetrica/analytics/impl/U2;)V

    invoke-direct {v0, v7}, Lio/appmetrica/analytics/profile/UserProfileUpdate;-><init>(Lio/appmetrica/analytics/impl/zd;)V

    return-object v0
.end method

.method public withAge(I)Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/Bn;",
            ">;"
        }
    .end annotation

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v0, p1

    new-instance p1, Ljava/util/GregorianCalendar;

    invoke-direct {p1}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    new-instance v0, Lio/appmetrica/analytics/impl/J4;

    iget-object v1, p0, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a:Lio/appmetrica/analytics/impl/A6;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/A6;->b:Lio/appmetrica/analytics/impl/n2;

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/J4;-><init>(Lio/appmetrica/analytics/impl/n2;)V

    const-string v1, "yyyy"

    invoke-virtual {p0, p1, v1, v0}, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lio/appmetrica/analytics/impl/U2;)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object p0

    return-object p0
.end method

.method public withAgeIfUndefined(I)Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/Bn;",
            ">;"
        }
    .end annotation

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v0, p1

    new-instance p1, Ljava/util/GregorianCalendar;

    invoke-direct {p1}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    new-instance v0, Lio/appmetrica/analytics/impl/Bk;

    iget-object v1, p0, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a:Lio/appmetrica/analytics/impl/A6;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/A6;->b:Lio/appmetrica/analytics/impl/n2;

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Bk;-><init>(Lio/appmetrica/analytics/impl/n2;)V

    const-string v1, "yyyy"

    invoke-virtual {p0, p1, v1, v0}, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lio/appmetrica/analytics/impl/U2;)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object p0

    return-object p0
.end method

.method public withBirthDate(I)Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/Bn;",
            ">;"
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 7
    new-instance p1, Lio/appmetrica/analytics/impl/J4;

    iget-object v1, p0, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a:Lio/appmetrica/analytics/impl/A6;

    .line 8
    iget-object v1, v1, Lio/appmetrica/analytics/impl/A6;->b:Lio/appmetrica/analytics/impl/n2;

    .line 9
    invoke-direct {p1, v1}, Lio/appmetrica/analytics/impl/J4;-><init>(Lio/appmetrica/analytics/impl/n2;)V

    const-string v1, "yyyy"

    invoke-virtual {p0, v0, v1, p1}, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lio/appmetrica/analytics/impl/U2;)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object p0

    return-object p0
.end method

.method public withBirthDate(II)Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/Bn;",
            ">;"
        }
    .end annotation

    .line 10
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr p2, v1

    const/4 p1, 0x2

    .line 12
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    .line 13
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    .line 14
    new-instance p1, Lio/appmetrica/analytics/impl/J4;

    iget-object p2, p0, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a:Lio/appmetrica/analytics/impl/A6;

    .line 15
    iget-object p2, p2, Lio/appmetrica/analytics/impl/A6;->b:Lio/appmetrica/analytics/impl/n2;

    .line 16
    invoke-direct {p1, p2}, Lio/appmetrica/analytics/impl/J4;-><init>(Lio/appmetrica/analytics/impl/n2;)V

    .line 17
    const-string p2, "yyyy-MM"

    invoke-virtual {p0, v0, p2, p1}, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lio/appmetrica/analytics/impl/U2;)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object p0

    return-object p0
.end method

.method public withBirthDate(III)Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/Bn;",
            ">;"
        }
    .end annotation

    .line 18
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr p2, v1

    const/4 p1, 0x2

    .line 20
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    .line 21
    invoke-virtual {v0, p1, p3}, Ljava/util/Calendar;->set(II)V

    .line 22
    new-instance p1, Lio/appmetrica/analytics/impl/J4;

    iget-object p2, p0, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a:Lio/appmetrica/analytics/impl/A6;

    .line 23
    iget-object p2, p2, Lio/appmetrica/analytics/impl/A6;->b:Lio/appmetrica/analytics/impl/n2;

    .line 24
    invoke-direct {p1, p2}, Lio/appmetrica/analytics/impl/J4;-><init>(Lio/appmetrica/analytics/impl/n2;)V

    .line 25
    const-string p2, "yyyy-MM-dd"

    invoke-virtual {p0, v0, p2, p1}, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lio/appmetrica/analytics/impl/U2;)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object p0

    return-object p0
.end method

.method public withBirthDate(Ljava/util/Calendar;)Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 2
    .param p1    # Ljava/util/Calendar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            ")",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/Bn;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/J4;

    iget-object v1, p0, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a:Lio/appmetrica/analytics/impl/A6;

    .line 2
    iget-object v1, v1, Lio/appmetrica/analytics/impl/A6;->b:Lio/appmetrica/analytics/impl/n2;

    .line 3
    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/J4;-><init>(Lio/appmetrica/analytics/impl/n2;)V

    .line 4
    const-string v1, "yyyy-MM-dd"

    invoke-virtual {p0, p1, v1, v0}, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lio/appmetrica/analytics/impl/U2;)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object p0

    return-object p0
.end method

.method public withBirthDateIfUndefined(I)Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/Bn;",
            ">;"
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 7
    new-instance p1, Lio/appmetrica/analytics/impl/Bk;

    iget-object v1, p0, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a:Lio/appmetrica/analytics/impl/A6;

    .line 8
    iget-object v1, v1, Lio/appmetrica/analytics/impl/A6;->b:Lio/appmetrica/analytics/impl/n2;

    .line 9
    invoke-direct {p1, v1}, Lio/appmetrica/analytics/impl/Bk;-><init>(Lio/appmetrica/analytics/impl/n2;)V

    .line 10
    const-string v1, "yyyy"

    invoke-virtual {p0, v0, v1, p1}, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lio/appmetrica/analytics/impl/U2;)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object p0

    return-object p0
.end method

.method public withBirthDateIfUndefined(II)Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/Bn;",
            ">;"
        }
    .end annotation

    .line 11
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr p2, v1

    const/4 p1, 0x2

    .line 13
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    .line 14
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    .line 15
    new-instance p1, Lio/appmetrica/analytics/impl/Bk;

    iget-object p2, p0, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a:Lio/appmetrica/analytics/impl/A6;

    .line 16
    iget-object p2, p2, Lio/appmetrica/analytics/impl/A6;->b:Lio/appmetrica/analytics/impl/n2;

    .line 17
    invoke-direct {p1, p2}, Lio/appmetrica/analytics/impl/Bk;-><init>(Lio/appmetrica/analytics/impl/n2;)V

    .line 18
    const-string p2, "yyyy-MM"

    invoke-virtual {p0, v0, p2, p1}, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lio/appmetrica/analytics/impl/U2;)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object p0

    return-object p0
.end method

.method public withBirthDateIfUndefined(III)Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/Bn;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr p2, v1

    const/4 p1, 0x2

    .line 21
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    .line 22
    invoke-virtual {v0, p1, p3}, Ljava/util/Calendar;->set(II)V

    .line 23
    new-instance p1, Lio/appmetrica/analytics/impl/Bk;

    iget-object p2, p0, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a:Lio/appmetrica/analytics/impl/A6;

    .line 24
    iget-object p2, p2, Lio/appmetrica/analytics/impl/A6;->b:Lio/appmetrica/analytics/impl/n2;

    .line 25
    invoke-direct {p1, p2}, Lio/appmetrica/analytics/impl/Bk;-><init>(Lio/appmetrica/analytics/impl/n2;)V

    .line 26
    const-string p2, "yyyy-MM-dd"

    invoke-virtual {p0, v0, p2, p1}, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lio/appmetrica/analytics/impl/U2;)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object p0

    return-object p0
.end method

.method public withBirthDateIfUndefined(Ljava/util/Calendar;)Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 2
    .param p1    # Ljava/util/Calendar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            ")",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/Bn;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/Bk;

    iget-object v1, p0, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a:Lio/appmetrica/analytics/impl/A6;

    .line 2
    iget-object v1, v1, Lio/appmetrica/analytics/impl/A6;->b:Lio/appmetrica/analytics/impl/n2;

    .line 3
    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Bk;-><init>(Lio/appmetrica/analytics/impl/n2;)V

    .line 4
    const-string v1, "yyyy-MM-dd"

    invoke-virtual {p0, p1, v1, v0}, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a(Ljava/util/Calendar;Ljava/lang/String;Lio/appmetrica/analytics/impl/U2;)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object p0

    return-object p0
.end method

.method public withValueReset()Lio/appmetrica/analytics/profile/UserProfileUpdate;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/profile/UserProfileUpdate<",
            "+",
            "Lio/appmetrica/analytics/impl/Bn;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/profile/UserProfileUpdate;

    new-instance v1, Lio/appmetrica/analytics/impl/ri;

    iget-object p0, p0, Lio/appmetrica/analytics/profile/BirthDateAttribute;->a:Lio/appmetrica/analytics/impl/A6;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/A6;->c:Ljava/lang/String;

    new-instance v2, Lio/appmetrica/analytics/impl/g8;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/g8;-><init>()V

    new-instance v3, Lio/appmetrica/analytics/impl/al;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/al;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v1, v4, p0, v2, v3}, Lio/appmetrica/analytics/impl/ri;-><init>(ILjava/lang/String;Lio/appmetrica/analytics/impl/Pn;Lio/appmetrica/analytics/impl/n2;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/profile/UserProfileUpdate;-><init>(Lio/appmetrica/analytics/impl/zd;)V

    return-object v0
.end method
