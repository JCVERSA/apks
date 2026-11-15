.class public final Lcom/transsion/cloud_drive/base/utils/jsonadapters/LocalDateTimeAdapter;
.super Lcom/squareup/moshi/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/moshi/e;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0017\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\r\u001a\u00020\u000c2\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0002H\u0017\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u001c\u0010\u0013\u001a\n \u0010*\u0004\u0018\u00010\u000f0\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/utils/jsonadapters/LocalDateTimeAdapter;",
        "Lcom/squareup/moshi/e;",
        "Ljava/time/LocalDateTime;",
        "<init>",
        "()V",
        "Lcom/squareup/moshi/JsonReader;",
        "reader",
        "fromJson",
        "(Lcom/squareup/moshi/JsonReader;)Ljava/time/LocalDateTime;",
        "Lrc5;",
        "writer",
        "value",
        "Lzfb;",
        "toJson",
        "(Lrc5;Ljava/time/LocalDateTime;)V",
        "Ljava/time/format/DateTimeFormatter;",
        "kotlin.jvm.PlatformType",
        "a",
        "Ljava/time/format/DateTimeFormatter;",
        "formatter",
        "cloud-drive-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Ljava/time/format/DateTimeFormatter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/squareup/moshi/e;-><init>()V

    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud_drive/base/utils/jsonadapters/LocalDateTimeAdapter;->a:Ljava/time/format/DateTimeFormatter;

    return-void
.end method


# virtual methods
.method public bridge synthetic fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/cloud_drive/base/utils/jsonadapters/LocalDateTimeAdapter;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/time/LocalDateTime;
    .locals 1
    .annotation runtime Lz64;
    .end annotation

    const-string p0, "reader"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->K()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object p0

    sget-object v0, Lcom/squareup/moshi/JsonReader$Token;->NULL:Lcom/squareup/moshi/JsonReader$Token;

    if-ne p0, v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->H()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/time/LocalDateTime;

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->I()Ljava/lang/String;

    move-result-object p0

    const-string p1, "nextString(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {p0}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_1
    invoke-static {p0}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object p0

    .line 7
    sget-object p1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-virtual {p1}, Ljava/time/ZoneOffset;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toJson(Lrc5;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/time/LocalDateTime;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud_drive/base/utils/jsonadapters/LocalDateTimeAdapter;->toJson(Lrc5;Ljava/time/LocalDateTime;)V

    return-void
.end method

.method public toJson(Lrc5;Ljava/time/LocalDateTime;)V
    .locals 1
    .annotation runtime Luoa;
    .end annotation

    const-string v0, "writer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lrc5;->E()Lrc5;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/transsion/cloud_drive/base/utils/jsonadapters/LocalDateTimeAdapter;->a:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {p2, p0}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lrc5;->Q(Ljava/lang/String;)Lrc5;

    :goto_0
    return-void
.end method
