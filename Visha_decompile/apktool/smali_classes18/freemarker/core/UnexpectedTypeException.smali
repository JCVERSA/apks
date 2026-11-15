.class public Lfreemarker/core/UnexpectedTypeException;
.super Lfreemarker/template/TemplateException;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lfreemarker/core/Environment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Lfreemarker/core/Environment;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/Environment;Lq0d;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, v0, p2}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;Lfreemarker/core/t0;Lq0d;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/t0;Lzfa;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/Environment;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/InvalidReferenceException;
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 3
    invoke-static/range {v0 .. v5}, Lfreemarker/core/UnexpectedTypeException;->newDesciptionBuilder(Lfreemarker/core/t0;Ljava/lang/String;Lzfa;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/Environment;)Lq0d;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p0, p3, p5, p1, p2}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;Lfreemarker/core/t0;Lq0d;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/t0;Lzfa;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/String;Lfreemarker/core/Environment;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/InvalidReferenceException;
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    .line 4
    invoke-static/range {v0 .. v5}, Lfreemarker/core/UnexpectedTypeException;->newDesciptionBuilder(Lfreemarker/core/t0;Ljava/lang/String;Lzfa;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/Environment;)Lq0d;

    move-result-object p2

    .line 5
    invoke-virtual {p2, p5}, Lq0d;->h(Ljava/lang/String;)Lq0d;

    move-result-object p2

    const/4 p3, 0x0

    .line 6
    invoke-direct {p0, p3, p6, p1, p2}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;Lfreemarker/core/t0;Lq0d;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/t0;Lzfa;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/String;Lfreemarker/core/Environment;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/InvalidReferenceException;
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    .line 7
    invoke-static/range {v0 .. v5}, Lfreemarker/core/UnexpectedTypeException;->newDesciptionBuilder(Lfreemarker/core/t0;Ljava/lang/String;Lzfa;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/Environment;)Lq0d;

    move-result-object p2

    .line 8
    invoke-virtual {p2, p5}, Lq0d;->j([Ljava/lang/Object;)Lq0d;

    move-result-object p2

    const/4 p3, 0x0

    .line 9
    invoke-direct {p0, p3, p6, p1, p2}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;Lfreemarker/core/t0;Lq0d;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lzfa;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/String;Lfreemarker/core/Environment;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/InvalidReferenceException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    .line 10
    invoke-static/range {v0 .. v5}, Lfreemarker/core/UnexpectedTypeException;->newDesciptionBuilder(Lfreemarker/core/t0;Ljava/lang/String;Lzfa;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/Environment;)Lq0d;

    move-result-object p1

    .line 11
    invoke-virtual {p1, p5}, Lq0d;->j([Ljava/lang/Object;)Lq0d;

    move-result-object p1

    const/4 p2, 0x0

    .line 12
    invoke-direct {p0, p2, p6, p2, p1}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;Lfreemarker/core/t0;Lq0d;)V

    return-void
.end method

.method private static newDesciptionBuilder(Lfreemarker/core/t0;Ljava/lang/String;Lzfa;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/Environment;)Lq0d;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/InvalidReferenceException;
        }
    .end annotation

    if-eqz p2, :cond_1

    new-instance p5, Lq0d;

    invoke-static {p3, p0, p1, p2}, Lfreemarker/core/UnexpectedTypeException;->unexpectedTypeErrorDescription(Ljava/lang/String;Lfreemarker/core/t0;Ljava/lang/String;Lzfa;)[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p5, p1}, Lq0d;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p5, p0}, Lq0d;->b(Lfreemarker/core/t0;)Lq0d;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lq0d;->e(Z)Lq0d;

    move-result-object p0

    instance-of p1, p2, Le1d;

    if-eqz p1, :cond_0

    check-cast p2, Le1d;

    invoke-interface {p2, p4}, Le1d;->explainTypeError([Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lq0d;->i([Ljava/lang/Object;)Lq0d;

    :cond_0
    return-object p0

    :cond_1
    invoke-static {p0, p5}, Lfreemarker/core/InvalidReferenceException;->getInstance(Lfreemarker/core/t0;Lfreemarker/core/Environment;)Lfreemarker/core/InvalidReferenceException;

    move-result-object p0

    throw p0
.end method

.method private static unexpectedTypeErrorDescription(Ljava/lang/String;Lfreemarker/core/t0;Ljava/lang/String;Lzfa;)[Ljava/lang/Object;
    .locals 7

    new-instance v1, Le0d;

    invoke-direct {v1, p0}, Le0d;-><init>(Ljava/lang/Object;)V

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    const-string p0, "this"

    :goto_0
    move-object v3, p0

    goto :goto_1

    :cond_0
    const-string p0, "the expression"

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const-string v0, "assignment target variable "

    aput-object v0, p0, p1

    new-instance p1, Lk0d;

    invoke-direct {p1, p2}, Lk0d;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x1

    aput-object p1, p0, v0

    goto :goto_0

    :goto_1
    new-instance v5, Le0d;

    new-instance p0, Lg0d;

    invoke-direct {p0, p3}, Lg0d;-><init>(Lzfa;)V

    invoke-direct {v5, p0}, Le0d;-><init>(Ljava/lang/Object;)V

    if-nez p2, :cond_2

    const-string p0, ":"

    :goto_2
    move-object v6, p0

    goto :goto_3

    :cond_2
    const-string p0, "."

    goto :goto_2

    :goto_3
    const-string v0, "Expected "

    const-string v2, ", but "

    const-string v4, " has evaluated to "

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
