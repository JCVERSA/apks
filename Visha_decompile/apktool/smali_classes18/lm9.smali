.class public final Llm9;
.super Lkm9;
.source "SourceFile"

# interfaces
.implements Lyfa;
.implements Lnga;
.implements Le1d;


# static fields
.field public static synthetic f:Ljava/lang/Class;


# instance fields
.field public final d:Ljava/lang/Object;

.field public final e:Lfreemarker/ext/beans/b;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Class;Lfreemarker/ext/beans/b;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lkm9;-><init>(Ljava/lang/reflect/Member;[Ljava/lang/Class;)V

    iput-object p1, p0, Llm9;->d:Ljava/lang/Object;

    iput-object p4, p0, Llm9;->e:Lfreemarker/ext/beans/b;

    return-void
.end method

.method public static synthetic n(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 4

    :try_start_0
    iget-object v0, p0, Llm9;->e:Lfreemarker/ext/beans/b;

    iget-object v1, p0, Llm9;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Lkm9;->e()Ljava/lang/reflect/Member;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    iget-object v3, p0, Llm9;->e:Lfreemarker/ext/beans/b;

    invoke-virtual {p0, p1, v3}, Lkm9;->l(Ljava/util/List;Lfreemarker/ext/beans/b;)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lfreemarker/ext/beans/b;->y(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lzfa;

    move-result-object p0
    :try_end_0
    .catch Lfreemarker/template/TemplateModelException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    iget-object v0, p0, Llm9;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Lkm9;->e()Ljava/lang/reflect/Member;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lu0d;->o(Ljava/lang/Object;Ljava/lang/reflect/Member;Ljava/lang/Throwable;)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    throw p0

    :goto_1
    throw p0
.end method

.method public explainTypeError([Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lkm9;->e()Ljava/lang/reflect/Member;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    check-cast p0, Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_6

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_6

    sget-object v1, Llm9;->f:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "java.lang.Void"

    invoke-static {v1}, Llm9;->n(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Llm9;->f:Ljava/lang/Class;

    :cond_1
    if-ne p1, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "get"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_3

    const-string p0, "Maybe using obj.something instead of obj.getSomething will yield the desired value."

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v0, "is"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    array-length p1, p1

    if-nez p1, :cond_4

    const-string p0, "Maybe using obj.something instead of obj.isSomething will yield the desired value."

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    array-length p0, p0

    if-eqz p0, :cond_5

    const-string p0, "params"

    goto :goto_0

    :cond_5
    const-string p0, ""

    :goto_0
    const-string p1, ") instead of obj.something will yield the desired value"

    const-string v0, "Maybe using obj.something("

    filled-new-array {v0, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_1
    return-object v0
.end method

.method public get(I)Lzfa;
    .locals 2

    new-instance v0, Lfreemarker/template/SimpleNumber;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v1}, Lfreemarker/template/SimpleNumber;-><init>(Ljava/lang/Number;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Llm9;->exec(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzfa;

    return-object p0
.end method

.method public size()I
    .locals 3

    new-instance v0, Lfreemarker/template/TemplateModelException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Getting the number of items or enumerating the items is not supported on this "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Lhx0;->e(Lzfa;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " value.\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "Hint 1: Maybe you wanted to call this method first and then do something with its return value. "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "Hint 2: Getting items by intex possibly works, hence it\'s a \"+sequence\"."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lkm9;->e()Ljava/lang/reflect/Member;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
