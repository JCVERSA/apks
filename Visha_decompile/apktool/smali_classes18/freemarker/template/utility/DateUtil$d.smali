.class public final Lfreemarker/template/utility/DateUtil$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/utility/DateUtil$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/utility/DateUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public a:Ljava/util/GregorianCalendar;

.field public b:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/TimeZone;Ljava/util/Date;)Ljava/util/GregorianCalendar;
    .locals 3

    iget-object v0, p0, Lfreemarker/template/utility/DateUtil$d;->a:Ljava/util/GregorianCalendar;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    iput-object v0, p0, Lfreemarker/template/utility/DateUtil$d;->a:Ljava/util/GregorianCalendar;

    new-instance p1, Ljava/util/Date;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {p1, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lfreemarker/template/utility/DateUtil$d;->b:Ljava/util/TimeZone;

    if-eq v1, p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    iput-object p1, p0, Lfreemarker/template/utility/DateUtil$d;->b:Ljava/util/TimeZone;

    :cond_1
    :goto_0
    iget-object p1, p0, Lfreemarker/template/utility/DateUtil$d;->a:Ljava/util/GregorianCalendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object p0, p0, Lfreemarker/template/utility/DateUtil$d;->a:Ljava/util/GregorianCalendar;

    return-object p0
.end method
