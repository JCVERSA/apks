.class public final Lfu7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfu7$a;
    }
.end annotation


# instance fields
.field public final a:Lhu7;

.field public b:Lhu7;

.field public final c:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lfu7;->c:Z

    new-instance v0, Lbu7;

    invoke-direct {v0, p1}, Lbu7;-><init>(Z)V

    iput-object v0, p0, Lfu7;->a:Lhu7;

    return-void
.end method

.method public static synthetic a(Lfu7;)Lhu7;
    .locals 0

    iget-object p0, p0, Lfu7;->a:Lhu7;

    return-object p0
.end method

.method public static synthetic b(Lfu7;)Lhu7;
    .locals 0

    iget-object p0, p0, Lfu7;->b:Lhu7;

    return-object p0
.end method


# virtual methods
.method public final c(Lar8;)V
    .locals 2

    iget-object v0, p0, Lfu7;->a:Lhu7;

    invoke-virtual {v0, p1}, Lhu7;->a(Lar8;)V

    invoke-virtual {p1}, Lar8;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfu7;->b:Lhu7;

    if-nez v0, :cond_0

    new-instance v0, Liu7;

    iget-boolean v1, p0, Lfu7;->c:Z

    invoke-direct {v0, v1}, Liu7;-><init>(Z)V

    iput-object v0, p0, Lfu7;->b:Lhu7;

    :cond_0
    iget-object p0, p0, Lfu7;->b:Lhu7;

    invoke-virtual {p0, p1}, Lhu7;->a(Lar8;)V

    :cond_1
    return-void
.end method

.method public d(Ljava/lang/reflect/Constructor;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lar8;

    invoke-direct {v1, p1, v0}, Lar8;-><init>(Ljava/lang/reflect/Constructor;[Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lfu7;->c(Lar8;)V

    return-void
.end method

.method public e(Ljava/lang/reflect/Method;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lar8;

    invoke-direct {v1, p1, v0}, Lar8;-><init>(Ljava/lang/reflect/Method;[Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lfu7;->c(Lar8;)V

    return-void
.end method

.method public f(Ljava/util/List;Lfreemarker/ext/beans/b;)Lan6;
    .locals 2

    iget-object v0, p0, Lfu7;->a:Lhu7;

    invoke-virtual {v0, p1, p2}, Lhu7;->f(Ljava/util/List;Lfreemarker/ext/beans/b;)Lf96;

    move-result-object v0

    instance-of v1, v0, Lan6;

    if-eqz v1, :cond_0

    check-cast v0, Lan6;

    return-object v0

    :cond_0
    iget-object v1, p0, Lfu7;->b:Lhu7;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2}, Lhu7;->f(Ljava/util/List;Lfreemarker/ext/beans/b;)Lf96;

    move-result-object p2

    instance-of v1, p2, Lan6;

    if-eqz v1, :cond_2

    check-cast p2, Lan6;

    return-object p2

    :cond_1
    const/4 p2, 0x0

    :cond_2
    new-instance v1, Lq0d;

    check-cast v0, Ls93;

    check-cast p2, Ls93;

    invoke-virtual {p0, v0, p2, p1}, Lfu7;->j(Ls93;Ls93;Ljava/util/List;)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\nThe matching overload was searched among these members:\n"

    invoke-virtual {p0}, Lfu7;->i()Lf0d;

    move-result-object v0

    filled-new-array {p1, p2, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, p1}, Lq0d;-><init>([Ljava/lang/Object;)V

    iget-boolean p0, p0, Lfu7;->c:Z

    if-nez p0, :cond_3

    const-string p0, "You seem to use BeansWrapper with incompatibleImprovements set below 2.3.21. If you think this error is unfounded, enabling 2.3.21 fixes may helps. See version history for more."

    invoke-virtual {v1, p0}, Lq0d;->h(Ljava/lang/String;)Lq0d;

    :cond_3
    new-instance p0, Lfreemarker/core/_TemplateModelException;

    invoke-direct {p0, v1}, Lfreemarker/core/_TemplateModelException;-><init>(Lq0d;)V

    throw p0
.end method

.method public final g(Ljava/util/List;)Lf0d;
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzfa;

    invoke-static {v2}, Lhx0;->e(Lzfa;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ldu7;

    invoke-direct {p1, p0, v0}, Ldu7;-><init>(Lfu7;[Ljava/lang/Object;)V

    return-object p1
.end method

.method public final h([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Leu7;

    invoke-direct {p1, p0, v0}, Leu7;-><init>(Lfu7;[Ljava/lang/Object;)V

    return-object p1
.end method

.method public final i()Lf0d;
    .locals 2

    new-instance v0, Lcu7;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcu7;-><init>(Lfu7;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final j(Ls93;Ls93;Ljava/util/List;)[Ljava/lang/Object;
    .locals 3

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ls93;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "When trying to call the non-varargs overloads:\n"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p3}, Lfu7;->k(Ls93;Ljava/util/List;)[Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    const-string p3, "\nWhen trying to call the varargs overloads:\n"

    aput-object p3, v0, p1

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lfu7;->k(Ls93;Ljava/util/List;)[Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v0, p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p3}, Lfu7;->k(Ls93;Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p3}, Lfu7;->k(Ls93;Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public final k(Ls93;Ljava/util/List;)[Ljava/lang/Object;
    .locals 8

    invoke-virtual {p1}, Ls93;->d()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Ls93;->c()Ljava/lang/Object;

    move-result-object p1

    const-string v1, ""

    const-string v2, "."

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "\nThe FTL type of the argument values were: "

    aput-object v7, v6, v5

    invoke-virtual {p0, p2}, Lfu7;->g(Ljava/util/List;)Lf0d;

    move-result-object p2

    aput-object p2, v6, v4

    aput-object v2, v6, v3

    goto :goto_0

    :cond_0
    move-object v6, v1

    :goto_0
    if-eqz v0, :cond_1

    new-array v1, v3, [Ljava/lang/Object;

    const-string p2, "\nThe Java type of the argument values were: "

    aput-object p2, v1, v5

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lfu7;->h([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v4

    :cond_1
    filled-new-array {p1, v6, v1}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
