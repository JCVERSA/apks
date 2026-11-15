.class public final Lfreemarker/core/n1;
.super Lifa;
.source "SourceFile"


# static fields
.field public static final n:[Ljava/lang/String;


# instance fields
.field public final l:Ljava/lang/String;

.field public final m:Lfreemarker/core/t0;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    const-string v19, "urlEscapingCharset"

    const-string v20, "url_escaping_charset"

    const-string v0, "booleanFormat"

    const-string v1, "boolean_format"

    const-string v2, "classicCompatible"

    const-string v3, "classic_compatible"

    const-string v4, "dateFormat"

    const-string v5, "date_format"

    const-string v6, "datetimeFormat"

    const-string v7, "datetime_format"

    const-string v8, "locale"

    const-string v9, "numberFormat"

    const-string v10, "number_format"

    const-string v11, "outputEncoding"

    const-string v12, "output_encoding"

    const-string v13, "sqlDateAndTimeTimeZone"

    const-string v14, "sql_date_and_time_time_zone"

    const-string v15, "timeFormat"

    const-string v16, "timeZone"

    const-string v17, "time_format"

    const-string v18, "time_zone"

    filled-new-array/range {v0 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfreemarker/core/n1;->n:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/Token;Lfreemarker/core/u0;Lfreemarker/core/t0;Lxe1;)V
    .locals 5

    invoke-direct {p0}, Lifa;-><init>()V

    iget-object v0, p1, Lfreemarker/core/Token;->image:Ljava/lang/String;

    sget-object v1, Lfreemarker/core/n1;->n:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_6

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 p3, 0x1

    invoke-static {p4, p3}, Ld1d;->b(Lxe1;Z)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    invoke-static {p4, v1}, Ld1d;->b(Lxe1;Z)Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_4

    const-string p4, "Unknown setting name: "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v0}, Ln0a;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p4, "."

    invoke-virtual {p0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p4, " The allowed setting names are: "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p2, p2, Lfreemarker/core/u0;->o:I

    const/16 p4, 0xa

    const/16 v0, 0xb

    if-eq p2, p4, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    move p4, v1

    :goto_1
    sget-object v2, Lfreemarker/core/n1;->n:[Ljava/lang/String;

    array-length v3, v2

    if-ge p4, v3, :cond_5

    aget-object v3, v2, p4

    invoke-static {v3}, Ld0d;->b(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc

    if-ne p2, v4, :cond_1

    if-eq v3, v0, :cond_3

    goto :goto_2

    :cond_1
    if-eq v3, v4, :cond_3

    :goto_2
    if-eqz p3, :cond_2

    move p3, v1

    goto :goto_3

    :cond_2
    const-string v3, ", "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    aget-object v2, v2, p4

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_4
    const-string p2, "The setting name is recognized, but changing this setting from inside a template isn\'t supported."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    new-instance p2, Lfreemarker/core/ParseException;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3, p1}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw p2

    :cond_6
    iput-object v0, p0, Lfreemarker/core/n1;->l:Ljava/lang/String;

    iput-object p3, p0, Lfreemarker/core/n1;->m:Lfreemarker/core/t0;

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)V
    .locals 2

    iget-object v0, p0, Lfreemarker/core/n1;->m:Lfreemarker/core/t0;

    invoke-virtual {v0, p1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v0

    instance-of v1, v0, Lmga;

    if-eqz v1, :cond_0

    check-cast v0, Lmga;

    invoke-interface {v0}, Lmga;->getAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lfreemarker/template/a;

    if-eqz v1, :cond_2

    check-cast v0, Lfreemarker/template/a;

    invoke-interface {v0}, Lfreemarker/template/a;->getAsBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "true"

    goto :goto_0

    :cond_1
    const-string v0, "false"

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lhga;

    if-eqz v1, :cond_3

    check-cast v0, Lhga;

    invoke-interface {v0}, Lhga;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lfreemarker/core/n1;->m:Lfreemarker/core/t0;

    invoke-virtual {v0, p1}, Lfreemarker/core/t0;->L(Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object p0, p0, Lfreemarker/core/n1;->l:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lfreemarker/core/Configurable;->d0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public J(Z)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_0

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/n1;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lfreemarker/core/n1;->l:Ljava/lang/String;

    invoke-static {v1}, Ld0d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lfreemarker/core/n1;->m:Lfreemarker/core/t0;

    invoke-virtual {p0}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_1

    const-string p0, "/>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    const-string p0, "#setting"

    return-object p0
.end method

.method public s()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public t(I)Ljw7;
    .locals 0

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    sget-object p0, Ljw7;->f:Ljw7;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Ljw7;->g:Ljw7;

    return-object p0
.end method

.method public u(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lfreemarker/core/n1;->m:Lfreemarker/core/t0;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    iget-object p0, p0, Lfreemarker/core/n1;->l:Ljava/lang/String;

    return-object p0
.end method
