.class public abstract Lfreemarker/core/BuiltInsForSequences;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/BuiltInsForSequences$sortBI;,
        Lfreemarker/core/BuiltInsForSequences$h;,
        Lfreemarker/core/BuiltInsForSequences$g;,
        Lfreemarker/core/BuiltInsForSequences$f;,
        Lfreemarker/core/BuiltInsForSequences$e;,
        Lfreemarker/core/BuiltInsForSequences$d;,
        Lfreemarker/core/BuiltInsForSequences$c;,
        Lfreemarker/core/BuiltInsForSequences$b;,
        Lfreemarker/core/BuiltInsForSequences$a;
    }
.end annotation


# direct methods
.method public static synthetic a(ILzfa;Lzfa;Lfreemarker/core/Environment;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lfreemarker/core/BuiltInsForSequences;->d(ILzfa;Lzfa;Lfreemarker/core/Environment;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lzfa;)Z
    .locals 0

    invoke-static {p0}, Lfreemarker/core/BuiltInsForSequences;->c(Lzfa;)Z

    move-result p0

    return p0
.end method

.method public static c(Lzfa;)Z
    .locals 2

    instance-of v0, p0, Lp71;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lp71;

    invoke-virtual {p0}, Lp71;->p()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static d(ILzfa;Lzfa;Lfreemarker/core/Environment;)Z
    .locals 12

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p1

    move-object v4, p2

    move-object v11, p3

    :try_start_0
    invoke-static/range {v0 .. v11}, Lfreemarker/core/q0;->d(Lzfa;Lfreemarker/core/t0;ILjava/lang/String;Lzfa;Lfreemarker/core/t0;Lfreemarker/core/t0;ZZZZLfreemarker/core/Environment;)Z

    move-result p0
    :try_end_0
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    new-instance p2, Lfreemarker/core/_TemplateModelException;

    new-instance p3, Ljava/lang/Integer;

    invoke-direct {p3, p0}, Ljava/lang/Integer;-><init>(I)V

    new-instance p0, Li0d;

    invoke-direct {p0, p1}, Li0d;-><init>(Ljava/lang/Throwable;)V

    const-string v0, "This error has occurred when comparing sequence item at 0-based index "

    const-string v1, " to the searched item:\n"

    filled-new-array {v0, p3, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw p2
.end method
