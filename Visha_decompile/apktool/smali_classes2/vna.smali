.class public abstract Lvna;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/ThreadLocal;

.field public static final b:[Ljava/lang/String;

.field public static final c:[I

.field public static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lvna$a;

    invoke-direct {v0}, Lvna$a;-><init>()V

    sput-object v0, Lvna;->a:Ljava/lang/ThreadLocal;

    const-string/jumbo v11, "\u9a6c"

    const-string/jumbo v12, "\u7f8a"

    const-string/jumbo v1, "\u7334"

    const-string/jumbo v2, "\u9e21"

    const-string/jumbo v3, "\u72d7"

    const-string/jumbo v4, "\u732a"

    const-string/jumbo v5, "\u9f20"

    const-string/jumbo v6, "\u725b"

    const-string/jumbo v7, "\u864e"

    const-string/jumbo v8, "\u5154"

    const-string/jumbo v9, "\u9f99"

    const-string/jumbo v10, "\u86c7"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvna;->b:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lvna;->c:[I

    const-string/jumbo v11, "\u5c04\u624b\u5ea7"

    const-string/jumbo v12, "\u6469\u7faf\u5ea7"

    const-string/jumbo v1, "\u6c34\u74f6\u5ea7"

    const-string/jumbo v2, "\u53cc\u9c7c\u5ea7"

    const-string/jumbo v3, "\u767d\u7f8a\u5ea7"

    const-string/jumbo v4, "\u91d1\u725b\u5ea7"

    const-string/jumbo v5, "\u53cc\u5b50\u5ea7"

    const-string/jumbo v6, "\u5de8\u87f9\u5ea7"

    const-string/jumbo v7, "\u72ee\u5b50\u5ea7"

    const-string/jumbo v8, "\u5904\u5973\u5ea7"

    const-string/jumbo v9, "\u5929\u79e4\u5ea7"

    const-string/jumbo v10, "\u5929\u874e\u5ea7"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvna;->d:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x14
        0x13
        0x15
        0x15
        0x15
        0x16
        0x17
        0x17
        0x17
        0x18
        0x17
        0x16
    .end array-data
.end method

.method public static a(Ljava/util/Date;)J
    .locals 2

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static b()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static c(Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .locals 2

    sget-object v0, Lvna;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    if-nez v1, :cond_0

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public static d(JLjava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p2}, Lvna;->c(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lvna;->e(JLjava/text/DateFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(JLjava/text/DateFormat;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 0

    invoke-static {p1}, Lvna;->c(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object p1

    invoke-static {p0, p1}, Lvna;->g(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;
    .locals 0

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
