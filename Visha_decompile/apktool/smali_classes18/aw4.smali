.class public final Law4;
.super Lfreemarker/core/w0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZLjava/util/TimeZone;Lzv4;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lfreemarker/core/w0;-><init>(Ljava/lang/String;IIZLjava/util/TimeZone;Lzv4;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/util/Date;ZZZILjava/util/TimeZone;Lfreemarker/template/utility/DateUtil$b;)Ljava/lang/String;
    .locals 7

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    const/4 p0, 0x1

    :goto_0
    move v3, p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    move-object v0, p1

    move v1, p2

    move v2, p3

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-static/range {v0 .. v6}, Lfreemarker/template/utility/DateUtil;->b(Ljava/util/Date;ZZZILjava/util/TimeZone;Lfreemarker/template/utility/DateUtil$b;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    const-string p0, "ISO 8601 (subset) date"

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    const-string p0, "ISO 8601 (subset) date-time"

    return-object p0
.end method

.method public i()Ljava/lang/String;
    .locals 0

    const-string p0, "ISO 8601 (subset) time"

    return-object p0
.end method

.method public j()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public k(Ljava/lang/String;Ljava/util/TimeZone;Lfreemarker/template/utility/DateUtil$a;)Ljava/util/Date;
    .locals 0

    invoke-static {p1, p2, p3}, Lfreemarker/template/utility/DateUtil;->k(Ljava/lang/String;Ljava/util/TimeZone;Lfreemarker/template/utility/DateUtil$a;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public l(Ljava/lang/String;Ljava/util/TimeZone;Lfreemarker/template/utility/DateUtil$a;)Ljava/util/Date;
    .locals 0

    invoke-static {p1, p2, p3}, Lfreemarker/template/utility/DateUtil;->l(Ljava/lang/String;Ljava/util/TimeZone;Lfreemarker/template/utility/DateUtil$a;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public m(Ljava/lang/String;Ljava/util/TimeZone;Lfreemarker/template/utility/DateUtil$a;)Ljava/util/Date;
    .locals 0

    invoke-static {p1, p2, p3}, Lfreemarker/template/utility/DateUtil;->m(Ljava/lang/String;Ljava/util/TimeZone;Lfreemarker/template/utility/DateUtil$a;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method
