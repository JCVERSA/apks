.class public final Lcom/yandex/div/evaluable/types/DateTime;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/evaluable/types/DateTime$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/yandex/div/evaluable/types/DateTime$a;

.field public static final h:Ljava/util/SimpleTimeZone;


# instance fields
.field public final b:J

.field public final c:Ljava/util/TimeZone;

.field public final d:Lyi5;

.field public final e:I

.field public final f:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/yandex/div/evaluable/types/DateTime$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/evaluable/types/DateTime$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/evaluable/types/DateTime;->g:Lcom/yandex/div/evaluable/types/DateTime$a;

    new-instance v0, Ljava/util/SimpleTimeZone;

    const/4 v1, 0x0

    const-string v2, "UTC"

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/div/evaluable/types/DateTime;->h:Ljava/util/SimpleTimeZone;

    return-void
.end method

.method public constructor <init>(JLjava/util/TimeZone;)V
    .locals 2

    const-string v0, "timezone"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/yandex/div/evaluable/types/DateTime;->b:J

    iput-object p3, p0, Lcom/yandex/div/evaluable/types/DateTime;->c:Ljava/util/TimeZone;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/yandex/div/evaluable/types/DateTime$calendar$2;

    invoke-direct {v1, p0}, Lcom/yandex/div/evaluable/types/DateTime$calendar$2;-><init>(Lcom/yandex/div/evaluable/types/DateTime;)V

    invoke-static {v0, v1}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/div/evaluable/types/DateTime;->d:Lyi5;

    invoke-virtual {p3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p3

    div-int/lit8 p3, p3, 0x3c

    iput p3, p0, Lcom/yandex/div/evaluable/types/DateTime;->e:I

    const v0, 0xea60

    mul-int/2addr p3, v0

    int-to-long v0, p3

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/yandex/div/evaluable/types/DateTime;->f:J

    return-void
.end method

.method public static final synthetic a()Ljava/util/SimpleTimeZone;
    .locals 1

    sget-object v0, Lcom/yandex/div/evaluable/types/DateTime;->h:Ljava/util/SimpleTimeZone;

    return-object v0
.end method


# virtual methods
.method public b(Lcom/yandex/div/evaluable/types/DateTime;)I
    .locals 2

    const-string v0, "other"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/yandex/div/evaluable/types/DateTime;->f:J

    iget-wide p0, p1, Lcom/yandex/div/evaluable/types/DateTime;->f:J

    invoke-static {v0, v1, p0, p1}, Ly45;->m(JJ)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/yandex/div/evaluable/types/DateTime;

    invoke-virtual {p0, p1}, Lcom/yandex/div/evaluable/types/DateTime;->b(Lcom/yandex/div/evaluable/types/DateTime;)I

    move-result p0

    return p0
.end method

.method public final d()Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/evaluable/types/DateTime;->d:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    return-object p0
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lcom/yandex/div/evaluable/types/DateTime;->b:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/div/evaluable/types/DateTime;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-wide v3, p0, Lcom/yandex/div/evaluable/types/DateTime;->f:J

    check-cast p1, Lcom/yandex/div/evaluable/types/DateTime;

    iget-wide p0, p1, Lcom/yandex/div/evaluable/types/DateTime;->f:J

    cmp-long p0, v3, p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final f()Ljava/util/TimeZone;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/evaluable/types/DateTime;->c:Ljava/util/TimeZone;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/yandex/div/evaluable/types/DateTime;->f:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/yandex/div/evaluable/types/DateTime;->g:Lcom/yandex/div/evaluable/types/DateTime$a;

    invoke-virtual {p0}, Lcom/yandex/div/evaluable/types/DateTime;->d()Ljava/util/Calendar;

    move-result-object p0

    const-string v1, "calendar"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/yandex/div/evaluable/types/DateTime$a;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
