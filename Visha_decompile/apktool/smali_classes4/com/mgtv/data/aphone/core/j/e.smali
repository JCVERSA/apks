.class public Lcom/mgtv/data/aphone/core/j/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/text/SimpleDateFormat;

.field public static final b:Ljava/text/SimpleDateFormat;

.field public static final c:Ljava/text/SimpleDateFormat;

.field public static final d:Ljava/text/SimpleDateFormat;

.field public static final e:Ljava/text/SimpleDateFormat;

.field public static final f:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/j/e;->a:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/j/e;->b:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/j/e;->c:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/j/e;->d:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/j/e;->e:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mgtv/data/aphone/core/j/e;->f:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static a(Ljava/util/Date;Ljava/util/Date;)I
    .locals 4

    .line 3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 6
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x6

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 8
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 10
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-eq v0, p0, :cond_4

    const/4 v2, 0x0

    :goto_0
    if-ge v0, p0, :cond_3

    .line 11
    rem-int/lit8 v3, v0, 0x4

    if-nez v3, :cond_0

    rem-int/lit8 v3, v0, 0x64

    if-nez v3, :cond_1

    :cond_0
    rem-int/lit16 v3, v0, 0x190

    if-nez v3, :cond_2

    :cond_1
    add-int/lit16 v2, v2, 0x16e

    goto :goto_1

    :cond_2
    add-int/lit16 v2, v2, 0x16d

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    sub-int/2addr p1, v1

    add-int/2addr v2, p1

    return v2

    .line 12
    :cond_4
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5224\u65adday2 - day1 : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return p1
.end method

.method public static a(J)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/mgtv/data/aphone/core/j/e;->b:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1, v0}, Lcom/mgtv/data/aphone/core/j/e;->a(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(JLjava/text/SimpleDateFormat;)Ljava/lang/String;
    .locals 1

    .line 2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(J)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mgtv/data/aphone/core/j/e;->a:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1, v0}, Lcom/mgtv/data/aphone/core/j/e;->a(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(J)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mgtv/data/aphone/core/j/e;->c:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1, v0}, Lcom/mgtv/data/aphone/core/j/e;->a(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(J)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mgtv/data/aphone/core/j/e;->e:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1, v0}, Lcom/mgtv/data/aphone/core/j/e;->a(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(J)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mgtv/data/aphone/core/j/e;->f:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1, v0}, Lcom/mgtv/data/aphone/core/j/e;->a(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
