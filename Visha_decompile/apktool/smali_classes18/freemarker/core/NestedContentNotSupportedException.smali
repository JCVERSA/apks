.class Lfreemarker/core/NestedContentNotSupportedException;
.super Lfreemarker/template/TemplateException;
.source "SourceFile"


# direct methods
.method private constructor <init>(Lfreemarker/core/Environment;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, p1}, Lfreemarker/core/NestedContentNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lfreemarker/core/Environment;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Exception;Lfreemarker/core/Environment;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lfreemarker/core/NestedContentNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lfreemarker/core/Environment;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lfreemarker/core/Environment;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0, p2}, Lfreemarker/core/NestedContentNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lfreemarker/core/Environment;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Exception;Lfreemarker/core/Environment;)V
    .locals 3

    .line 4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Nested content (body) not supported."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    invoke-static {p1}, Ln0a;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Lfreemarker/core/Environment;)V

    return-void
.end method

.method public static check(Lhfa;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/NestedContentNotSupportedException;
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    instance-of v0, p0, Lfreemarker/core/Environment$a;

    if-eqz v0, :cond_1

    check-cast p0, Lfreemarker/core/Environment$a;

    invoke-virtual {p0}, Lfreemarker/core/Environment$a;->a()Lifa;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Lfreemarker/core/NestedContentNotSupportedException;

    invoke-static {}, Lfreemarker/core/Environment;->y0()Lfreemarker/core/Environment;

    move-result-object v0

    invoke-direct {p0, v0}, Lfreemarker/core/NestedContentNotSupportedException;-><init>(Lfreemarker/core/Environment;)V

    throw p0
.end method
