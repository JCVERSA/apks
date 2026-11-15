.class public abstract Lfreemarker/core/f1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Use ?date, ?time, or ?datetime to tell FreeMarker the exact type."

    const-string v1, "If you need a particular format only once, use ?string(pattern), like ?string(\'dd.MM.yyyy HH:mm:ss\'), to specify which fields to display. "

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfreemarker/core/f1;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/StringBuffer;Lfreemarker/core/t0;)Ljava/lang/StringBuffer;
    .locals 2

    instance-of v0, p1, Lfreemarker/core/k1;

    if-nez v0, :cond_0

    instance-of v0, p1, Lfreemarker/core/r1;

    if-nez v0, :cond_0

    instance-of v0, p1, Lfreemarker/core/i;

    if-nez v0, :cond_0

    instance-of v0, p1, Lfreemarker/core/c1;

    if-nez v0, :cond_0

    instance-of v0, p1, Lfreemarker/core/v0;

    if-nez v0, :cond_0

    instance-of v0, p1, Lfreemarker/core/x0;

    if-nez v0, :cond_0

    instance-of v0, p1, Lfreemarker/core/m0;

    if-nez v0, :cond_0

    instance-of v0, p1, Lfreemarker/core/n0;

    if-nez v0, :cond_0

    instance-of v0, p1, Lfreemarker/core/g1;

    if-nez v0, :cond_0

    instance-of v0, p1, Lfreemarker/core/j;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p1}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v0, :cond_2

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    return-object p0
.end method

.method public static b(Ljava/lang/String;Lfreemarker/template/Template;II)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lfreemarker/template/Template;->E0()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1, p2, p3}, Lfreemarker/core/f1;->c(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lfreemarker/core/f1;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)Ljava/lang/String;
    .locals 2

    if-gez p4, :cond_0

    const-string p1, "?eval-ed string"

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "template "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Ln0a;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "nameless template"

    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_3

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, " in "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p3, :cond_2

    const-string p3, "function "

    goto :goto_1

    :cond_2
    const-string p3, "macro "

    :goto_1
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p2}, Ln0a;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    const-string p1, ""

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p4, p5}, Lfreemarker/core/f1;->h(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lfreemarker/core/e1;II)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lfreemarker/core/t1;->y()Lfreemarker/template/Template;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lfreemarker/template/Template;->E0()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lfreemarker/core/e1;->q0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lfreemarker/core/e1;->s0()Z

    move-result v4

    const-string v1, "at"

    move v5, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Lfreemarker/core/f1;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lfreemarker/template/Template;II)Ljava/lang/String;
    .locals 1

    const-string v0, "at"

    invoke-static {v0, p0, p1, p2}, Lfreemarker/core/f1;->b(Ljava/lang/String;Lfreemarker/template/Template;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    const-string v0, "in"

    invoke-static {v0, p0, p1, p2}, Lfreemarker/core/f1;->c(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(II)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const v1, -0x3b9aca01

    sub-int/2addr p0, v1

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p0, ", column "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    const-string v2, "an"

    const/16 v3, 0x61

    if-eq v1, v3, :cond_b

    const/16 v4, 0x65

    if-eq v1, v4, :cond_b

    const/16 v5, 0x69

    if-ne v1, v5, :cond_2

    goto :goto_2

    :cond_2
    const/16 v6, 0x68

    const-string v7, "a"

    const-string v8, "a(n)"

    if-ne v1, v6, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "has"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "hi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "ht"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    return-object v2

    :cond_4
    return-object v8

    :cond_5
    :goto_0
    return-object v7

    :cond_6
    const/16 v6, 0x75

    if-eq v1, v6, :cond_a

    const/16 v9, 0x6f

    if-ne v1, v9, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v10, 0x1

    if-le v8, v10, :cond_8

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :cond_8
    const/16 p0, 0x78

    if-ne v1, p0, :cond_9

    if-eq v0, v3, :cond_9

    if-eq v0, v4, :cond_9

    if-eq v0, v5, :cond_9

    if-eq v0, v3, :cond_9

    if-eq v0, v9, :cond_9

    if-eq v0, v6, :cond_9

    return-object v2

    :cond_9
    return-object v7

    :cond_a
    :goto_1
    return-object v8

    :cond_b
    :goto_2
    return-object v2
.end method

.method public static j(Ljava/lang/String;II)Lfreemarker/template/TemplateModelException;
    .locals 0

    invoke-static {p0, p1, p2, p2}, Lfreemarker/core/f1;->k(Ljava/lang/String;III)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/lang/String;III)Lfreemarker/template/TemplateModelException;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "("

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    const-string p0, "..."

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string p0, ") expects "

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    if-ne p2, p3, :cond_2

    if-nez p3, :cond_1

    const-string p2, "no"

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sub-int v1, p3, p2

    if-ne v1, p0, :cond_3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, " or "

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p2, 0x7fffffff

    if-eq p3, p2, :cond_4

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string p2, " or more (unlimited)"

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const-string p2, " argument"

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-le p3, p0, :cond_5

    const-string p0, "s"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string p0, " but has received "

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_6

    const-string p0, "none"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    new-instance p0, Ljava/lang/Integer;

    invoke-direct {p0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lfreemarker/core/_TemplateModelException;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/core/_TemplateModelException;-><init>([Ljava/lang/Object;)V

    return-object p0
.end method

.method public static l(Lfreemarker/core/t0;Lfreemarker/core/UnformattableDateException;)Lfreemarker/template/TemplateModelException;
    .locals 3

    new-instance v0, Lfreemarker/core/_TemplateModelException;

    new-instance v1, Lq0d;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lq0d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lq0d;->b(Lfreemarker/core/t0;)Lq0d;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;Lq0d;)V

    return-object v0
.end method

.method public static m(Lfreemarker/core/t0;Lfreemarker/core/UnknownDateTypeFormattingUnsupportedException;)Lfreemarker/core/_TemplateModelException;
    .locals 3

    new-instance v0, Lfreemarker/core/_TemplateModelException;

    new-instance v1, Lq0d;

    const-string v2, "Can\'t convert the date-like value to string because it isn\'t known if it\'s a date (no time part), time or date-time value."

    invoke-direct {v1, v2}, Lq0d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lq0d;->b(Lfreemarker/core/t0;)Lq0d;

    move-result-object p0

    sget-object v1, Lfreemarker/core/f1;->a:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lq0d;->j([Ljava/lang/Object;)Lq0d;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;Lq0d;)V

    return-object v0
.end method

.method public static n(Ljava/lang/String;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateException;
    .locals 3

    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    const-string v1, "Instantiating "

    const-string v2, " is not allowed in the template for security reasons."

    filled-new-array {v1, p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static o(Ljava/lang/String;I[Ljava/lang/Object;)Lfreemarker/template/TemplateModelException;
    .locals 3

    new-instance v0, Lfreemarker/core/_TemplateModelException;

    new-instance v1, Ljava/lang/Integer;

    add-int/lit8 p1, p1, 0x1

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const-string p1, " had invalid value: "

    const-string v2, "(...) argument #"

    filled-new-array {p0, v2, v1, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lfreemarker/core/_TemplateModelException;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static p(Ljava/lang/String;ILzfa;)Lfreemarker/template/TemplateModelException;
    .locals 1

    const-string v0, "number"

    invoke-static {p0, p1, v0, p2}, Lfreemarker/core/f1;->r(Ljava/lang/String;ILjava/lang/String;Lzfa;)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    return-object p0
.end method

.method public static q(Ljava/lang/String;ILzfa;)Lfreemarker/template/TemplateModelException;
    .locals 1

    const-string v0, "string"

    invoke-static {p0, p1, v0, p2}, Lfreemarker/core/f1;->r(Ljava/lang/String;ILjava/lang/String;Lzfa;)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    return-object p0
.end method

.method public static r(Ljava/lang/String;ILjava/lang/String;Lzfa;)Lfreemarker/template/TemplateModelException;
    .locals 9

    new-instance v0, Lfreemarker/core/_TemplateModelException;

    new-instance v3, Le0d;

    invoke-direct {v3, p2}, Le0d;-><init>(Ljava/lang/Object;)V

    new-instance v5, Ljava/lang/Integer;

    add-int/lit8 p1, p1, 0x1

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Le0d;

    new-instance p1, Lg0d;

    invoke-direct {p1, p3}, Lg0d;-><init>(Lzfa;)V

    invoke-direct {v7, p1}, Le0d;-><init>(Ljava/lang/Object;)V

    const-string v8, "."

    const-string v2, "(...) expects "

    const-string v4, " as argument #"

    const-string v6, ", but received "

    move-object v1, p0

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lfreemarker/core/_TemplateModelException;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static s(Ljava/lang/String;[Ljava/lang/Object;)Lfreemarker/template/TemplateModelException;
    .locals 2

    new-instance v0, Lfreemarker/core/_TemplateModelException;

    const-string v1, "(...) arguments have invalid value: "

    filled-new-array {p0, v1, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lfreemarker/core/_TemplateModelException;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static t(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    const/16 v4, 0xd

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v1, :cond_2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    move v0, v2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p1, :cond_3

    add-int/lit8 p1, p1, -0x3

    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    if-nez v2, :cond_4

    return-object p0

    :cond_4
    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "..."

    if-eqz v0, :cond_7

    const-string v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
