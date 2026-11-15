.class public abstract Lu0d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/reflect/Method;

.field public static final b:Ljava/lang/reflect/Method;

.field public static synthetic c:Ljava/lang/Class;

.field public static synthetic d:Ljava/lang/Class;

.field public static synthetic e:Ljava/lang/Class;

.field public static synthetic f:Ljava/lang/Class;

.field public static synthetic g:Ljava/lang/Class;

.field public static synthetic h:Ljava/lang/Class;

.field public static synthetic i:Ljava/lang/Class;

.field public static synthetic j:Ljava/lang/Class;

.field public static synthetic k:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lu0d;->c:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.reflect.Method"

    invoke-static {v0}, Lu0d;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lu0d;->c:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lu0d;->d(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lu0d;->a:Ljava/lang/reflect/Method;

    sget-object v0, Lu0d;->d:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "java.lang.reflect.Constructor"

    invoke-static {v0}, Lu0d;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lu0d;->d:Ljava/lang/Class;

    :cond_1
    invoke-static {v0}, Lu0d;->d(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lu0d;->b:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/Class;
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

.method public static b(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Set;)V
    .locals 2

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0, p1, p2}, Lu0d;->b(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Set;)V

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    aget-object v1, p0, v0

    invoke-static {v1, p1, p2}, Lu0d;->b(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Set;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static c(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Set;
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, p1, v0}, Lu0d;->b(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Set;)V

    return-object v0
.end method

.method public static d(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "isVarArgs"

    invoke-virtual {p0, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static e(Ljava/lang/reflect/Member;)[Ljava/lang/Class;
    .locals 1

    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/reflect/Constructor;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\"member\" must be Method or Constructor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Ljava/lang/Object;Z)[Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "constructor "

    goto :goto_0

    :cond_0
    const-string p1, "method "

    :goto_0
    new-instance v0, Lk0d;

    invoke-direct {v0, p0}, Lk0d;-><init>(Ljava/lang/Object;)V

    const-string p0, "Java "

    filled-new-array {p0, p1, v0}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/reflect/Member;)[Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    invoke-static {p0, v0}, Lu0d;->f(Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/Class;Ljava/lang/Class;ZI)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-lt p3, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-ne p1, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    const-string v4, "java.lang.Number"

    const/4 v5, 0x3

    if-eqz v2, :cond_c

    if-eqz v3, :cond_5

    if-lt p3, v5, :cond_3

    return v0

    :cond_3
    invoke-static {p0, p1}, Lu0d;->l(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_4

    move v0, v5

    :cond_4
    return v0

    :cond_5
    if-eqz p2, :cond_b

    invoke-static {p0}, Lhx0;->m(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    if-ne p0, p1, :cond_6

    const/4 p0, 0x2

    return p0

    :cond_6
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_7

    return v1

    :cond_7
    if-lt p3, v5, :cond_8

    return v0

    :cond_8
    sget-object p2, Lu0d;->e:Ljava/lang/Class;

    if-nez p2, :cond_9

    invoke-static {v4}, Lu0d;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    sput-object p2, Lu0d;->e:Ljava/lang/Class;

    :cond_9
    invoke-virtual {p2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_b

    sget-object p2, Lu0d;->e:Ljava/lang/Class;

    if-nez p2, :cond_a

    invoke-static {v4}, Lu0d;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    sput-object p2, Lu0d;->e:Ljava/lang/Class;

    :cond_a
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-static {p0, p1}, Lu0d;->k(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_b

    move v0, v5

    :cond_b
    return v0

    :cond_c
    if-lt p3, v5, :cond_d

    return v0

    :cond_d
    if-eqz p2, :cond_10

    if-nez v3, :cond_10

    sget-object p2, Lu0d;->e:Ljava/lang/Class;

    if-nez p2, :cond_e

    invoke-static {v4}, Lu0d;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    sput-object p2, Lu0d;->e:Ljava/lang/Class;

    :cond_e
    invoke-virtual {p2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_10

    sget-object p2, Lu0d;->e:Ljava/lang/Class;

    if-nez p2, :cond_f

    invoke-static {v4}, Lu0d;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    sput-object p2, Lu0d;->e:Ljava/lang/Class;

    :cond_f
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_10

    invoke-static {p0, p1}, Lu0d;->k(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_10

    move v0, v5

    :cond_10
    return v0
.end method

.method public static i(Ljava/lang/reflect/Member;)Z
    .locals 1

    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lu0d;->a:Ljava/lang/reflect/Method;

    invoke-static {p0, v0}, Lu0d;->j(Ljava/lang/reflect/Member;Ljava/lang/reflect/Method;)Z

    move-result p0

    return p0

    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_1

    sget-object v0, Lu0d;->b:Ljava/lang/reflect/Method;

    invoke-static {p0, v0}, Lu0d;->j(Ljava/lang/reflect/Member;Ljava/lang/reflect/Method;)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Lfreemarker/core/BugException;

    invoke-direct {p0}, Lfreemarker/core/BugException;-><init>()V

    throw p0
.end method

.method public static j(Ljava/lang/reflect/Member;Ljava/lang/reflect/Method;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Lfreemarker/template/utility/UndeclaredThrowableException;

    invoke-direct {p1, p0}, Lfreemarker/template/utility/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static k(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 7

    sget-object v0, Lu0d;->f:Ljava/lang/Class;

    const-string v1, "java.lang.Short"

    if-nez v0, :cond_0

    invoke-static {v1}, Lu0d;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lu0d;->f:Ljava/lang/Class;

    :cond_0
    const/4 v2, 0x1

    const-string v3, "java.lang.Byte"

    if-ne p1, v0, :cond_2

    sget-object v0, Lu0d;->g:Ljava/lang/Class;

    if-nez v0, :cond_1

    invoke-static {v3}, Lu0d;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lu0d;->g:Ljava/lang/Class;

    :cond_1
    if-ne p0, v0, :cond_2

    return v2

    :cond_2
    sget-object v0, Lu0d;->h:Ljava/lang/Class;

    const-string v4, "java.lang.Integer"

    if-nez v0, :cond_3

    invoke-static {v4}, Lu0d;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lu0d;->h:Ljava/lang/Class;

    :cond_3
    if-ne p1, v0, :cond_7

    sget-object v0, Lu0d;->f:Ljava/lang/Class;

    if-nez v0, :cond_4

    invoke-static {v1}, Lu0d;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lu0d;->f:Ljava/lang/Class;

    :cond_4
    if-eq p0, v0, :cond_6

    sget-object v0, Lu0d;->g:Ljava/lang/Class;

    if-nez v0, :cond_5

    invoke-static {v3}, Lu0d;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lu0d;->g:Ljava/lang/Class;

    :cond_5
    if-ne p0, v0, :cond_7

    :cond_6
    return v2

    :cond_7
    sget-object v0, Lu0d;->i:Ljava/lang/Class;

    const-string v5, "java.lang.Long"

    if-nez v0, :cond_8

    invoke-static {v5}, Lu0d;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lu0d;->i:Ljava/lang/Class;

    :cond_8
    if-ne p1, v0, :cond_d

    sget-object v0, Lu0d;->h:Ljava/lang/Class;

    if-nez v0, :cond_9

    invoke-static {v4}, Lu0d;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lu0d;->h:Ljava/lang/Class;

    :cond_9
    if-eq p0, v0, :cond_c

    sget-object v0, Lu0d;->f:Ljava/lang/Class;

    if-nez v0, :cond_a

    invoke-static {v1}, Lu0d;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lu0d;->f:Ljava/lang/Class;

    :cond_a
    if-eq p0, v0, :cond_c

    sget-object v0, Lu0d;->g:Ljava/lang/Class;

    if-nez v0, :cond_b

    invoke-static {v3}, Lu0d;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lu0d;->g:Ljava/lang/Class;

    :cond_b
    if-ne p0, v0, :cond_d

    :cond_c
    return v2

    :cond_d
    sget-object v0, Lu0d;->j:Ljava/lang/Class;

    const-string v6, "java.lang.Float"

    if-nez v0, :cond_e

    invoke-static {v6}, Lu0d;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lu0d;->j:Ljava/lang/Class;

    :cond_e
    if-ne p1, v0, :cond_14

    sget-object v0, Lu0d;->i:Ljava/lang/Class;

    if-nez v0, :cond_f

    invoke-static {v5}, Lu0d;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lu0d;->i:Ljava/lang/Class;

    :cond_f
    if-eq p0, v0, :cond_13

    sget-object v0, Lu0d;->h:Ljava/lang/Class;

    if-nez v0, :cond_10

    invoke-static {v4}, Lu0d;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lu0d;->h:Ljava/lang/Class;

    :cond_10
    if-eq p0, v0, :cond_13

    sget-object v0, Lu0d;->f:Ljava/lang/Class;

    if-nez v0, :cond_11

    invoke-static {v1}, Lu0d;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lu0d;->f:Ljava/lang/Class;

    :cond_11
    if-eq p0, v0, :cond_13

    sget-object v0, Lu0d;->g:Ljava/lang/Class;

    if-nez v0, :cond_12

    invoke-static {v3}, Lu0d;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lu0d;->g:Ljava/lang/Class;

    :cond_12
    if-ne p0, v0, :cond_14

    :cond_13
    return v2

    :cond_14
    sget-object v0, Lu0d;->k:Ljava/lang/Class;

    if-nez v0, :cond_15

    const-string v0, "java.lang.Double"

    invoke-static {v0}, Lu0d;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lu0d;->k:Ljava/lang/Class;

    :cond_15
    if-ne p1, v0, :cond_1c

    sget-object p1, Lu0d;->j:Ljava/lang/Class;

    if-nez p1, :cond_16

    invoke-static {v6}, Lu0d;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sput-object p1, Lu0d;->j:Ljava/lang/Class;

    :cond_16
    if-eq p0, p1, :cond_1b

    sget-object p1, Lu0d;->i:Ljava/lang/Class;

    if-nez p1, :cond_17

    invoke-static {v5}, Lu0d;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sput-object p1, Lu0d;->i:Ljava/lang/Class;

    :cond_17
    if-eq p0, p1, :cond_1b

    sget-object p1, Lu0d;->h:Ljava/lang/Class;

    if-nez p1, :cond_18

    invoke-static {v4}, Lu0d;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sput-object p1, Lu0d;->h:Ljava/lang/Class;

    :cond_18
    if-eq p0, p1, :cond_1b

    sget-object p1, Lu0d;->f:Ljava/lang/Class;

    if-nez p1, :cond_19

    invoke-static {v1}, Lu0d;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sput-object p1, Lu0d;->f:Ljava/lang/Class;

    :cond_19
    if-eq p0, p1, :cond_1b

    sget-object p1, Lu0d;->g:Ljava/lang/Class;

    if-nez p1, :cond_1a

    invoke-static {v3}, Lu0d;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sput-object p1, Lu0d;->g:Ljava/lang/Class;

    :cond_1a
    if-ne p0, p1, :cond_1c

    :cond_1b
    return v2

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public static l(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 6

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_0

    return v1

    :cond_0
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_2

    if-eq p0, v0, :cond_1

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v3, :cond_2

    :cond_1
    return v1

    :cond_2
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v3, :cond_4

    if-eq p0, v2, :cond_3

    if-eq p0, v0, :cond_3

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v4, :cond_4

    :cond_3
    return v1

    :cond_4
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v4, :cond_6

    if-eq p0, v3, :cond_5

    if-eq p0, v2, :cond_5

    if-eq p0, v0, :cond_5

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v5, :cond_6

    :cond_5
    return v1

    :cond_6
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v5, :cond_8

    if-eq p0, v4, :cond_7

    if-eq p0, v3, :cond_7

    if-eq p0, v2, :cond_7

    if-eq p0, v0, :cond_7

    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_8

    :cond_7
    return v1

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static m(Ljava/lang/Object;Lqq0;Ljava/lang/Throwable;)Lfreemarker/template/TemplateModelException;
    .locals 2

    new-instance v0, Lt0d;

    invoke-direct {v0, p1}, Lt0d;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lqq0;->f()Z

    move-result v1

    invoke-virtual {p1}, Lqq0;->e()Z

    move-result p1

    invoke-static {p0, v0, v1, p1, p2}, Lu0d;->n(Ljava/lang/Object;Ljava/lang/Object;ZZLjava/lang/Throwable;)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    return-object p0
.end method

.method public static n(Ljava/lang/Object;Ljava/lang/Object;ZZLjava/lang/Throwable;)Lfreemarker/template/TemplateModelException;
    .locals 2

    :goto_0
    instance-of v0, p4, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p4, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lfreemarker/core/_TemplateModelException;

    invoke-static {p1, p3}, Lu0d;->f(Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object p1

    if-nez p2, :cond_2

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v1, " when invoked on "

    aput-object v1, p2, p3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    const/4 v1, 0x1

    aput-object p3, p2, v1

    const/4 p3, 0x2

    const-string v1, " object "

    aput-object v1, p2, p3

    new-instance p3, Lk0d;

    invoke-direct {p3, p0}, Lk0d;-><init>(Ljava/lang/Object;)V

    const/4 p0, 0x3

    aput-object p3, p2, p0

    goto :goto_2

    :cond_2
    :goto_1
    const-string p2, ""

    :goto_2
    const-string p0, "; see cause exception in the Java stack trace."

    const-string p3, " threw an exception"

    filled-new-array {p1, p3, p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p4, p0}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static o(Ljava/lang/Object;Ljava/lang/reflect/Member;Ljava/lang/Throwable;)Lfreemarker/template/TemplateModelException;
    .locals 2

    invoke-interface {p1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    instance-of v1, p1, Ljava/lang/reflect/Constructor;

    invoke-static {p0, p1, v0, v1, p2}, Lu0d;->n(Ljava/lang/Object;Ljava/lang/Object;ZZLjava/lang/Throwable;)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    return-object p0
.end method

.method public static p(Ljava/lang/reflect/Member;)Ljava/lang/String;
    .locals 6

    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\"member\" must be a Method or Constructor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    const-string v1, "static "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lhx0;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {p0}, Lu0d;->e(Ljava/lang/reflect/Member;)[Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_6

    if-eqz v3, :cond_4

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    aget-object v4, v1, v3

    invoke-static {v4}, Lhx0;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_5

    const-string v5, "[]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {p0}, Lu0d;->i(Ljava/lang/reflect/Member;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "..."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
