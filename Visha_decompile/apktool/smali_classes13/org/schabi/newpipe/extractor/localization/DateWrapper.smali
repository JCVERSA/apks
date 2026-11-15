.class public Lorg/schabi/newpipe/extractor/localization/DateWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final isApproximation:Z

.field private final offsetDateTime:Ljava/time/OffsetDateTime;


# direct methods
.method public constructor <init>(Ljava/time/OffsetDateTime;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;-><init>(Ljava/time/OffsetDateTime;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/time/OffsetDateTime;Z)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-virtual {p1, v0}, Ljava/time/OffsetDateTime;->withOffsetSameInstant(Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->offsetDateTime:Ljava/time/OffsetDateTime;

    .line 6
    iput-boolean p2, p0, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->isApproximation:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;-><init>(Ljava/util/Calendar;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/util/Calendar;->toInstant()Ljava/time/Instant;

    move-result-object p1

    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-static {p1, v0}, Ljava/time/OffsetDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/OffsetDateTime;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;-><init>(Ljava/time/OffsetDateTime;Z)V

    return-void
.end method


# virtual methods
.method public date()Ljava/util/Calendar;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->offsetDateTime:Ljava/time/OffsetDateTime;

    invoke-virtual {p0}, Ljava/time/OffsetDateTime;->toZonedDateTime()Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-static {p0}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object p0

    return-object p0
.end method

.method public isApproximation()Z
    .locals 0

    iget-boolean p0, p0, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->isApproximation:Z

    return p0
.end method

.method public offsetDateTime()Ljava/time/OffsetDateTime;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->offsetDateTime:Ljava/time/OffsetDateTime;

    return-object p0
.end method
