.class public Lkm9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/reflect/Member;

.field public final c:[Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Member;[Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkm9;->b:Ljava/lang/reflect/Member;

    iput-object p2, p0, Lkm9;->c:[Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final b(ILzfa;Ljava/lang/Class;)Lfreemarker/template/TemplateModelException;
    .locals 8

    new-instance v0, Lfreemarker/core/_TemplateModelException;

    iget-object p0, p0, Lkm9;->b:Ljava/lang/reflect/Member;

    invoke-static {p0}, Lu0d;->g(Ljava/lang/reflect/Member;)[Ljava/lang/Object;

    move-result-object v1

    new-instance v3, Ll0d;

    new-instance p0, Ljava/lang/Integer;

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v3, p0}, Ll0d;-><init>(Ljava/lang/Object;)V

    invoke-static {p3}, Lhx0;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lg0d;

    invoke-direct {v7, p2}, Lg0d;-><init>(Lzfa;)V

    const-string v2, " couldn\'t be called: Can\'t convert the "

    const-string v4, " argument\'s value to the target Java type, "

    const-string v6, ". The type of the actual value was: "

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lfreemarker/core/_TemplateModelException;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public final c(ILjava/lang/Class;)Lfreemarker/template/TemplateModelException;
    .locals 7

    new-instance v0, Lfreemarker/core/_TemplateModelException;

    iget-object p0, p0, Lkm9;->b:Ljava/lang/reflect/Member;

    invoke-static {p0}, Lu0d;->g(Ljava/lang/reflect/Member;)[Ljava/lang/Object;

    move-result-object v1

    new-instance v3, Ll0d;

    new-instance p0, Ljava/lang/Integer;

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v3, p0}, Ll0d;-><init>(Ljava/lang/Object;)V

    invoke-static {p2}, Lhx0;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ") is primitive and so can\'t store null."

    const-string v2, " couldn\'t be called: The value of the "

    const-string v4, " argument was null, but the target Java parameter type ("

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lfreemarker/core/_TemplateModelException;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public e()Ljava/lang/reflect/Member;
    .locals 0

    iget-object p0, p0, Lkm9;->b:Ljava/lang/reflect/Member;

    return-object p0
.end method

.method public l(Ljava/util/List;Lfreemarker/ext/beans/b;)[Ljava/lang/Object;
    .locals 12

    if-nez p1, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lkm9;->b:Ljava/lang/reflect/Member;

    invoke-static {v0}, Lu0d;->i(Ljava/lang/reflect/Member;)Z

    move-result v0

    iget-object v1, p0, Lkm9;->c:[Ljava/lang/Class;

    array-length v1, v1

    const-string v2, " arguments"

    const-string v3, " argument"

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    sub-int/2addr v1, v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-le v1, v5, :cond_4

    new-instance p2, Lfreemarker/core/_TemplateModelException;

    iget-object p0, p0, Lkm9;->b:Ljava/lang/reflect/Member;

    invoke-static {p0}, Lu0d;->g(Ljava/lang/reflect/Member;)[Ljava/lang/Object;

    move-result-object v5

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v1}, Ljava/lang/Integer;-><init>(I)V

    if-ne v1, v4, :cond_1

    move-object v8, v3

    goto :goto_0

    :cond_1
    move-object v8, v2

    :goto_0
    new-instance v10, Ljava/lang/Integer;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-direct {v10, p0}, Ljava/lang/Integer;-><init>(I)V

    const-string v11, " was given."

    const-string v6, " takes at least "

    const-string v9, ", but "

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p2, p0}, Lfreemarker/core/_TemplateModelException;-><init>([Ljava/lang/Object;)V

    throw p2

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-eq v1, v5, :cond_4

    new-instance p2, Lfreemarker/core/_TemplateModelException;

    iget-object p0, p0, Lkm9;->b:Ljava/lang/reflect/Member;

    invoke-static {p0}, Lu0d;->g(Ljava/lang/reflect/Member;)[Ljava/lang/Object;

    move-result-object v5

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v1}, Ljava/lang/Integer;-><init>(I)V

    if-ne v1, v4, :cond_3

    move-object v8, v3

    goto :goto_1

    :cond_3
    move-object v8, v2

    :goto_1
    new-instance v10, Ljava/lang/Integer;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-direct {v10, p0}, Ljava/lang/Integer;-><init>(I)V

    const-string v11, " was given."

    const-string v6, " takes "

    const-string v9, ", but "

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p2, p0}, Lfreemarker/core/_TemplateModelException;-><init>([Ljava/lang/Object;)V

    throw p2

    :cond_4
    iget-object v1, p0, Lkm9;->c:[Ljava/lang/Class;

    invoke-virtual {p0, p1, v1, v0, p2}, Lkm9;->m(Ljava/util/List;[Ljava/lang/Class;ZLfreemarker/ext/beans/b;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final m(Ljava/util/List;[Ljava/lang/Class;ZLfreemarker/ext/beans/b;)[Ljava/lang/Object;
    .locals 10

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    if-eqz p3, :cond_1

    add-int/lit8 v3, v0, -0x1

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_5

    aget-object v6, p2, v5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lzfa;

    invoke-virtual {p4, v7, v6}, Lfreemarker/ext/beans/b;->L(Lzfa;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lhc7;->d:Ljava/lang/Object;

    if-eq v8, v9, :cond_4

    if-nez v8, :cond_3

    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v5, v6}, Lkm9;->c(ILjava/lang/Class;)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    throw p0

    :cond_3
    :goto_2
    add-int/lit8 v6, v5, 0x1

    aput-object v8, v2, v5

    move v5, v6

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v5, v7, v6}, Lkm9;->b(ILzfa;Ljava/lang/Class;)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    throw p0

    :cond_5
    if-eqz p3, :cond_d

    const/4 p3, 0x1

    sub-int/2addr v0, p3

    aget-object p2, p2, v0

    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v2, v5

    goto :goto_6

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzfa;

    sub-int/2addr v1, v5

    if-ne v1, p3, :cond_7

    invoke-virtual {p4, v3, p2}, Lfreemarker/ext/beans/b;->L(Lzfa;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    sget-object p3, Lhc7;->d:Ljava/lang/Object;

    if-eq p2, p3, :cond_7

    aput-object p2, v2, v5

    goto :goto_6

    :cond_7
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    :goto_3
    if-ge v4, v1, :cond_c

    if-nez v4, :cond_8

    move-object p3, v3

    goto :goto_4

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    :goto_4
    check-cast p3, Lzfa;

    invoke-virtual {p4, p3, v0}, Lfreemarker/ext/beans/b;->L(Lzfa;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lhc7;->d:Ljava/lang/Object;

    if-eq v6, v7, :cond_b

    if-nez v6, :cond_a

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result p3

    if-nez p3, :cond_9

    goto :goto_5

    :cond_9
    add-int/2addr v5, v4

    invoke-virtual {p0, v5, v0}, Lkm9;->c(ILjava/lang/Class;)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    throw p0

    :cond_a
    :goto_5
    invoke-static {p2, v4, v6}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_b
    add-int/2addr v5, v4

    invoke-virtual {p0, v5, p3, v0}, Lkm9;->b(ILzfa;Ljava/lang/Class;)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    throw p0

    :cond_c
    aput-object p2, v2, v5

    :cond_d
    :goto_6
    return-object v2
.end method
