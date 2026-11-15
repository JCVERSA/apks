.class public Lfreemarker/ext/beans/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgv8;
.implements Lqpc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/beans/b$b;,
        Lfreemarker/ext/beans/b$a;
    }
.end annotation


# static fields
.field public static final A:Lfq6;

.field public static synthetic B:Ljava/lang/Class;

.field public static synthetic C:Ljava/lang/Class;

.field public static synthetic D:Ljava/lang/Class;

.field public static synthetic E:Ljava/lang/Class;

.field public static synthetic F:Ljava/lang/Class;

.field public static synthetic G:Ljava/lang/Class;

.field public static synthetic H:Ljava/lang/Class;

.field public static synthetic I:Ljava/lang/Class;

.field public static synthetic J:Ljava/lang/Class;

.field public static synthetic K:Ljava/lang/Class;

.field public static synthetic L:Ljava/lang/Class;

.field public static synthetic M:Ljava/lang/Class;

.field public static synthetic N:Ljava/lang/Class;

.field public static synthetic O:Ljava/lang/Class;

.field public static synthetic P:Ljava/lang/Class;

.field public static synthetic Q:Ljava/lang/Class;

.field public static synthetic R:Ljava/lang/Class;

.field public static synthetic S:Ljava/lang/Class;

.field public static synthetic T:Ljava/lang/Class;

.field public static synthetic U:Ljava/lang/Class;

.field public static synthetic V:Ljava/lang/Class;

.field public static synthetic W:Ljava/lang/Class;

.field public static synthetic X:Ljava/lang/Class;

.field public static synthetic Y:Ljava/lang/Class;

.field public static synthetic Z:Ljava/lang/Class;

.field public static synthetic a0:Ljava/lang/Class;

.field public static synthetic b0:Ljava/lang/Class;

.field public static synthetic c0:Ljava/lang/Class;

.field public static synthetic d0:Ljava/lang/Class;

.field public static synthetic e0:Ljava/lang/Class;

.field public static final u:Lpq5;

.field public static final v:Ljava/lang/Object;

.field public static final w:Ljava/lang/Class;

.field public static final x:Ljava/lang/reflect/Constructor;

.field public static volatile y:Z

.field public static final z:Lfq6;


# instance fields
.field public final e:Ljava/lang/Object;

.field public f:Lfreemarker/ext/beans/c;

.field public final g:Lmx9;

.field public final h:Llw0;

.field public final i:Leq6;

.field public final j:Lai0;

.field public final k:Lai0;

.field public volatile l:Z

.field public m:Lzfa;

.field public n:I

.field public o:Lgc7;

.field public p:Z

.field public q:Z

.field public r:Z

.field public final s:Lfreemarker/template/Version;

.field public final t:Lfq6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "freemarker.beans"

    invoke-static {v0}, Lpq5;->k(Ljava/lang/String;)Lpq5;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/b;->u:Lpq5;

    sget-object v0, Lhc7;->d:Ljava/lang/Object;

    sput-object v0, Lfreemarker/ext/beans/b;->v:Ljava/lang/Object;

    :try_start_0
    const-class v0, Ljava/lang/Iterable;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lfreemarker/ext/beans/b;->w:Ljava/lang/Class;

    invoke-static {}, Lfreemarker/ext/beans/b;->m()Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/b;->x:Ljava/lang/reflect/Constructor;

    new-instance v0, Lvd0;

    invoke-direct {v0}, Lvd0;-><init>()V

    sput-object v0, Lfreemarker/ext/beans/b;->z:Lfq6;

    new-instance v0, Lwd0;

    invoke-direct {v0}, Lwd0;-><init>()V

    sput-object v0, Lfreemarker/ext/beans/b;->A:Lfq6;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lxe1;->k0:Lfreemarker/template/Version;

    invoke-direct {p0, v0}, Lfreemarker/ext/beans/b;-><init>(Lfreemarker/template/Version;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/template/Version;)V
    .locals 1

    .line 2
    new-instance v0, Ltd0;

    invoke-direct {v0, p1}, Ltd0;-><init>(Lfreemarker/template/Version;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lfreemarker/ext/beans/b;-><init>(Lxd0;Z)V

    return-void
.end method

.method public constructor <init>(Lxd0;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lfreemarker/ext/beans/b;-><init>(Lxd0;ZZ)V

    return-void
.end method

.method public constructor <init>(Lxd0;ZZ)V
    .locals 8

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    .line 5
    iput-object p3, p0, Lfreemarker/ext/beans/b;->m:Lzfa;

    .line 6
    iput-object p0, p0, Lfreemarker/ext/beans/b;->o:Lgc7;

    const/4 p3, 0x1

    .line 7
    iput-boolean p3, p0, Lfreemarker/ext/beans/b;->p:Z

    .line 8
    new-instance v0, Lud0;

    invoke-direct {v0, p0}, Lud0;-><init>(Lfreemarker/ext/beans/b;)V

    iput-object v0, p0, Lfreemarker/ext/beans/b;->t:Lfq6;

    .line 9
    invoke-virtual {p1}, Lxd0;->e()Lfreemarker/ext/beans/d;

    move-result-object v0

    if-nez v0, :cond_9

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 11
    :goto_0
    const-string v3, "freemarker.ext.beans.BeansWrapper"

    if-nez v2, :cond_6

    :try_start_0
    sget-object v4, Lfreemarker/ext/beans/b;->B:Ljava/lang/Class;

    if-nez v4, :cond_0

    const-string v4, "freemarker.template.DefaultObjectWrapper"

    .line 12
    invoke-static {v4}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lfreemarker/ext/beans/b;->B:Ljava/lang/Class;

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_0
    :goto_1
    if-eq v0, v4, :cond_6

    sget-object v4, Lfreemarker/ext/beans/b;->C:Ljava/lang/Class;

    if-nez v4, :cond_1

    .line 13
    invoke-static {v3}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lfreemarker/ext/beans/b;->C:Ljava/lang/Class;

    :cond_1
    if-eq v0, v4, :cond_6

    sget-object v4, Lfreemarker/ext/beans/b;->D:Ljava/lang/Class;

    if-nez v4, :cond_2

    const-string v4, "freemarker.template.SimpleObjectWrapper"

    .line 14
    invoke-static {v4}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lfreemarker/ext/beans/b;->D:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eq v0, v4, :cond_6

    .line 15
    :try_start_1
    const-string v4, "finetuneMethodAppearance"

    sget-object v5, Lfreemarker/ext/beans/b;->E:Ljava/lang/Class;

    if-nez v5, :cond_3

    const-string v5, "java.lang.Class"

    .line 16
    invoke-static {v5}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lfreemarker/ext/beans/b;->E:Ljava/lang/Class;

    :cond_3
    sget-object v6, Lfreemarker/ext/beans/b;->F:Ljava/lang/Class;

    if-nez v6, :cond_4

    const-string v6, "java.lang.reflect.Method"

    invoke-static {v6}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lfreemarker/ext/beans/b;->F:Ljava/lang/Class;

    :cond_4
    sget-object v7, Lfreemarker/ext/beans/b;->G:Ljava/lang/Class;

    if-nez v7, :cond_5

    const-string v7, "freemarker.ext.beans.BeansWrapper$MethodAppearanceDecision"

    invoke-static {v7}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sput-object v7, Lfreemarker/ext/beans/b;->G:Ljava/lang/Class;

    :cond_5
    filled-new-array {v5, v6, v7}, [Ljava/lang/Class;

    move-result-object v5

    .line 17
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, p3

    goto :goto_0

    .line 18
    :catch_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 19
    :goto_2
    sget-object v4, Lfreemarker/ext/beans/b;->u:Lpq5;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Failed to check if finetuneMethodAppearance is overidden in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "; acting like if it was, but this way it won\'t utilize the shared class introspection "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "cache."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v2}, Lpq5;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, p3

    move v2, v0

    goto :goto_3

    :cond_6
    move v0, v1

    :goto_3
    if-eqz v2, :cond_9

    if-nez v0, :cond_8

    .line 20
    sget-boolean v0, Lfreemarker/ext/beans/b;->y:Z

    if-nez v0, :cond_8

    .line 21
    sget-object v0, Lfreemarker/ext/beans/b;->u:Lpq5;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Overriding "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v4, Lfreemarker/ext/beans/b;->C:Ljava/lang/Class;

    if-nez v4, :cond_7

    invoke-static {v3}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lfreemarker/ext/beans/b;->C:Ljava/lang/Class;

    :cond_7
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ".finetuneMethodAppearance is deprecated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "and will be banned sometimes in the future. Use setMethodAppearanceFineTuner instead."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpq5;->z(Ljava/lang/String;)V

    .line 22
    sput-boolean p3, Lfreemarker/ext/beans/b;->y:Z

    .line 23
    :cond_8
    invoke-virtual {p1, v1}, Lxd0;->a(Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lxd0;

    .line 24
    new-instance p3, Lfreemarker/ext/beans/a;

    invoke-direct {p3, p0}, Lfreemarker/ext/beans/a;-><init>(Lfreemarker/ext/beans/b;)V

    invoke-virtual {p1, p3}, Lxd0;->j(Lfreemarker/ext/beans/d;)V

    .line 25
    :cond_9
    invoke-virtual {p1}, Lxd0;->d()Lfreemarker/template/Version;

    move-result-object p3

    iput-object p3, p0, Lfreemarker/ext/beans/b;->s:Lfreemarker/template/Version;

    .line 26
    invoke-virtual {p1}, Lxd0;->h()Z

    move-result p3

    iput-boolean p3, p0, Lfreemarker/ext/beans/b;->q:Z

    .line 27
    invoke-virtual {p1}, Lxd0;->c()I

    move-result p3

    iput p3, p0, Lfreemarker/ext/beans/b;->n:I

    .line 28
    invoke-virtual {p1}, Lxd0;->f()Lgc7;

    move-result-object p3

    if-eqz p3, :cond_a

    invoke-virtual {p1}, Lxd0;->f()Lgc7;

    move-result-object p3

    goto :goto_4

    :cond_a
    move-object p3, p0

    :goto_4
    iput-object p3, p0, Lfreemarker/ext/beans/b;->o:Lgc7;

    .line 29
    invoke-virtual {p1}, Lxd0;->i()Z

    move-result p3

    iput-boolean p3, p0, Lfreemarker/ext/beans/b;->r:Z

    if-nez p2, :cond_b

    .line 30
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lfreemarker/ext/beans/b;->e:Ljava/lang/Object;

    .line 31
    new-instance v0, Lfreemarker/ext/beans/c;

    iget-object v1, p1, Lxd0;->c:Lyw0;

    invoke-direct {v0, v1, p3}, Lfreemarker/ext/beans/c;-><init>(Lyw0;Ljava/lang/Object;)V

    iput-object v0, p0, Lfreemarker/ext/beans/b;->f:Lfreemarker/ext/beans/c;

    goto :goto_5

    .line 32
    :cond_b
    iget-object p3, p1, Lxd0;->c:Lyw0;

    invoke-virtual {p3}, Lyw0;->a()Lfreemarker/ext/beans/c;

    move-result-object p3

    iput-object p3, p0, Lfreemarker/ext/beans/b;->f:Lfreemarker/ext/beans/c;

    .line 33
    invoke-virtual {p3}, Lfreemarker/ext/beans/c;->s()Ljava/lang/Object;

    move-result-object p3

    iput-object p3, p0, Lfreemarker/ext/beans/b;->e:Ljava/lang/Object;

    .line 34
    :goto_5
    new-instance p3, Lai0;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p3, v0, p0}, Lai0;-><init>(Ljava/lang/Boolean;Lfreemarker/ext/beans/b;)V

    iput-object p3, p0, Lfreemarker/ext/beans/b;->j:Lai0;

    .line 35
    new-instance p3, Lai0;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p3, v0, p0}, Lai0;-><init>(Ljava/lang/Boolean;Lfreemarker/ext/beans/b;)V

    iput-object p3, p0, Lfreemarker/ext/beans/b;->k:Lai0;

    .line 36
    new-instance p3, Lmx9;

    invoke-direct {p3, p0}, Lmx9;-><init>(Lfreemarker/ext/beans/b;)V

    iput-object p3, p0, Lfreemarker/ext/beans/b;->g:Lmx9;

    .line 37
    invoke-static {p0}, Lfreemarker/ext/beans/b;->l(Lfreemarker/ext/beans/b;)Llw0;

    move-result-object p3

    iput-object p3, p0, Lfreemarker/ext/beans/b;->h:Llw0;

    .line 38
    new-instance p3, Lsd0;

    invoke-direct {p3, p0}, Lsd0;-><init>(Lfreemarker/ext/beans/b;)V

    iput-object p3, p0, Lfreemarker/ext/beans/b;->i:Leq6;

    .line 39
    invoke-virtual {p1}, Lxd0;->g()Z

    move-result p1

    invoke-virtual {p0, p1}, Lfreemarker/ext/beans/b;->J(Z)V

    .line 40
    invoke-virtual {p0, p2}, Lfreemarker/ext/beans/b;->n(Z)V

    return-void
.end method

.method public static A(Lfreemarker/template/Version;)Z
    .locals 1

    invoke-virtual {p0}, Lfreemarker/template/Version;->intValue()I

    move-result p0

    sget v0, Ld1d;->d:I

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static G(Lfreemarker/template/Version;)Lfreemarker/template/Version;
    .locals 2

    invoke-static {p0}, Ld1d;->a(Lfreemarker/template/Version;)V

    invoke-virtual {p0}, Lfreemarker/template/Version;->intValue()I

    move-result v0

    sget v1, Ld1d;->a:I

    if-lt v0, v1, :cond_1

    invoke-static {p0}, Lfreemarker/ext/beans/b;->A(Lfreemarker/template/Version;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lxe1;->h0:Lfreemarker/template/Version;

    goto :goto_0

    :cond_0
    sget-object p0, Lxe1;->e0:Lfreemarker/template/Version;

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Version must be at least 2.3.0."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic e(Lfreemarker/ext/beans/b;)Lai0;
    .locals 0

    iget-object p0, p0, Lfreemarker/ext/beans/b;->k:Lai0;

    return-object p0
.end method

.method public static synthetic f(Lfreemarker/ext/beans/b;)Lai0;
    .locals 0

    iget-object p0, p0, Lfreemarker/ext/beans/b;->j:Lai0;

    return-object p0
.end method

.method public static synthetic i(Ljava/lang/String;)Ljava/lang/Class;
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

.method public static j(Ljava/math/BigDecimal;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_13

    sget-object v0, Lfreemarker/ext/beans/b;->X:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.Integer"

    invoke-static {v0}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/b;->X:Ljava/lang/Class;

    :cond_0
    if-ne p1, v0, :cond_1

    goto/16 :goto_5

    :cond_1
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_12

    sget-object v0, Lfreemarker/ext/beans/b;->Z:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "java.lang.Double"

    invoke-static {v0}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/b;->Z:Ljava/lang/Class;

    :cond_2
    if-ne p1, v0, :cond_3

    goto/16 :goto_4

    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_11

    sget-object v0, Lfreemarker/ext/beans/b;->Y:Ljava/lang/Class;

    if-nez v0, :cond_4

    const-string v0, "java.lang.Long"

    invoke-static {v0}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/b;->Y:Ljava/lang/Class;

    :cond_4
    if-ne p1, v0, :cond_5

    goto/16 :goto_3

    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_10

    sget-object v0, Lfreemarker/ext/beans/b;->b0:Ljava/lang/Class;

    if-nez v0, :cond_6

    const-string v0, "java.lang.Float"

    invoke-static {v0}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/b;->b0:Ljava/lang/Class;

    :cond_6
    if-ne p1, v0, :cond_7

    goto :goto_2

    :cond_7
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_f

    sget-object v0, Lfreemarker/ext/beans/b;->d0:Ljava/lang/Class;

    if-nez v0, :cond_8

    const-string v0, "java.lang.Short"

    invoke-static {v0}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/b;->d0:Ljava/lang/Class;

    :cond_8
    if-ne p1, v0, :cond_9

    goto :goto_1

    :cond_9
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_e

    sget-object v0, Lfreemarker/ext/beans/b;->c0:Ljava/lang/Class;

    if-nez v0, :cond_a

    const-string v0, "java.lang.Byte"

    invoke-static {v0}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/b;->c0:Ljava/lang/Class;

    :cond_a
    if-ne p1, v0, :cond_b

    goto :goto_0

    :cond_b
    sget-object v0, Lfreemarker/ext/beans/b;->e0:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-string v0, "java.math.BigInteger"

    invoke-static {v0}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/b;->e0:Ljava/lang/Class;

    :cond_c
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    :cond_d
    return-object p0

    :cond_e
    :goto_0
    new-instance p1, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    invoke-direct {p1, p0}, Ljava/lang/Byte;-><init>(B)V

    return-object p1

    :cond_f
    :goto_1
    new-instance p1, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    invoke-direct {p1, p0}, Ljava/lang/Short;-><init>(S)V

    return-object p1

    :cond_10
    :goto_2
    new-instance p1, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    invoke-direct {p1, p0}, Ljava/lang/Float;-><init>(F)V

    return-object p1

    :cond_11
    :goto_3
    new-instance p1, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-object p1

    :cond_12
    :goto_4
    new-instance p1, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object p1

    :cond_13
    :goto_5
    new-instance p1, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p1
.end method

.method public static k([Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 6

    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    instance-of v5, v4, Ljava/math/BigDecimal;

    if-eqz v5, :cond_0

    check-cast v4, Ljava/math/BigDecimal;

    aget-object v5, p0, v3

    invoke-static {v4, v5}, Lfreemarker/ext/beans/b;->j(Ljava/math/BigDecimal;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, p1, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-le v1, v0, :cond_3

    add-int/lit8 v2, v0, -0x1

    aget-object p0, p0, v2

    :goto_1
    if-ge v0, v1, :cond_3

    aget-object v2, p1, v0

    instance-of v3, v2, Ljava/math/BigDecimal;

    if-eqz v3, :cond_2

    check-cast v2, Ljava/math/BigDecimal;

    invoke-static {v2, p0}, Lfreemarker/ext/beans/b;->j(Ljava/math/BigDecimal;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static l(Lfreemarker/ext/beans/b;)Llw0;
    .locals 1

    sget-object v0, Lfreemarker/ext/beans/b;->x:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    :try_start_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Llw0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lfreemarker/template/utility/UndeclaredThrowableException;

    invoke-direct {v0, p0}, Lfreemarker/template/utility/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static m()Ljava/lang/reflect/Constructor;
    .locals 2

    :try_start_0
    const-class v0, Lo0d;

    sget-object v1, Lfreemarker/ext/beans/b;->C:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "freemarker.ext.beans.BeansWrapper"

    invoke-static {v1}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/b;->C:Ljava/lang/Class;

    :cond_0
    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static p(Ljava/lang/Number;Ljava/lang/Class;Z)Ljava/lang/Number;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_24

    sget-object v0, Lfreemarker/ext/beans/b;->X:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "java.lang.Integer"

    invoke-static {v0}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/b;->X:Ljava/lang/Class;

    :cond_1
    if-ne p1, v0, :cond_2

    goto/16 :goto_a

    :cond_2
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_22

    sget-object v0, Lfreemarker/ext/beans/b;->Y:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string v0, "java.lang.Long"

    invoke-static {v0}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/b;->Y:Ljava/lang/Class;

    :cond_3
    if-ne p1, v0, :cond_4

    goto/16 :goto_8

    :cond_4
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_20

    sget-object v0, Lfreemarker/ext/beans/b;->Z:Ljava/lang/Class;

    if-nez v0, :cond_5

    const-string v0, "java.lang.Double"

    invoke-static {v0}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/b;->Z:Ljava/lang/Class;

    :cond_5
    if-ne p1, v0, :cond_6

    goto/16 :goto_6

    :cond_6
    sget-object v0, Lfreemarker/ext/beans/b;->a0:Ljava/lang/Class;

    if-nez v0, :cond_7

    const-string v0, "java.math.BigDecimal"

    invoke-static {v0}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/b;->a0:Ljava/lang/Class;

    :cond_7
    if-ne p1, v0, :cond_b

    instance-of p1, p0, Ljava/math/BigDecimal;

    if-eqz p1, :cond_8

    return-object p0

    :cond_8
    instance-of p1, p0, Ljava/math/BigInteger;

    if-eqz p1, :cond_9

    new-instance p1, Ljava/math/BigDecimal;

    check-cast p0, Ljava/math/BigInteger;

    invoke-direct {p1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object p1

    :cond_9
    instance-of p1, p0, Ljava/lang/Long;

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_a
    new-instance p1, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    return-object p1

    :cond_b
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_1e

    sget-object v0, Lfreemarker/ext/beans/b;->b0:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-string v0, "java.lang.Float"

    invoke-static {v0}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/b;->b0:Ljava/lang/Class;

    :cond_c
    if-ne p1, v0, :cond_d

    goto/16 :goto_4

    :cond_d
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_1c

    sget-object v0, Lfreemarker/ext/beans/b;->c0:Ljava/lang/Class;

    if-nez v0, :cond_e

    const-string v0, "java.lang.Byte"

    invoke-static {v0}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/b;->c0:Ljava/lang/Class;

    :cond_e
    if-ne p1, v0, :cond_f

    goto/16 :goto_2

    :cond_f
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_1a

    sget-object v0, Lfreemarker/ext/beans/b;->d0:Ljava/lang/Class;

    if-nez v0, :cond_10

    const-string v0, "java.lang.Short"

    invoke-static {v0}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/b;->d0:Ljava/lang/Class;

    :cond_10
    if-ne p1, v0, :cond_11

    goto :goto_0

    :cond_11
    sget-object v0, Lfreemarker/ext/beans/b;->e0:Ljava/lang/Class;

    if-nez v0, :cond_12

    const-string v0, "java.math.BigInteger"

    invoke-static {v0}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/b;->e0:Ljava/lang/Class;

    :cond_12
    if-ne p1, v0, :cond_17

    instance-of p1, p0, Ljava/math/BigInteger;

    if-eqz p1, :cond_13

    return-object p0

    :cond_13
    if-eqz p2, :cond_16

    instance-of p1, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerBigDecimal;

    if-eqz p1, :cond_14

    check-cast p0, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerBigDecimal;

    invoke-virtual {p0}, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerBigDecimal;->bigIntegerValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_14
    instance-of p1, p0, Ljava/math/BigDecimal;

    if-eqz p1, :cond_15

    check-cast p0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_15
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_16
    new-instance p1, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_17
    instance-of p2, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;

    if-eqz p2, :cond_18

    check-cast p0, Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;

    invoke-virtual {p0}, Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;->getSourceNumber()Ljava/lang/Number;

    move-result-object p0

    :cond_18
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    return-object p0

    :cond_19
    const/4 p0, 0x0

    return-object p0

    :cond_1a
    :goto_0
    instance-of p1, p0, Ljava/lang/Short;

    if-eqz p1, :cond_1b

    check-cast p0, Ljava/lang/Short;

    goto :goto_1

    :cond_1b
    new-instance p1, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    invoke-direct {p1, p0}, Ljava/lang/Short;-><init>(S)V

    move-object p0, p1

    :goto_1
    return-object p0

    :cond_1c
    :goto_2
    instance-of p1, p0, Ljava/lang/Byte;

    if-eqz p1, :cond_1d

    check-cast p0, Ljava/lang/Byte;

    goto :goto_3

    :cond_1d
    new-instance p1, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    invoke-direct {p1, p0}, Ljava/lang/Byte;-><init>(B)V

    move-object p0, p1

    :goto_3
    return-object p0

    :cond_1e
    :goto_4
    instance-of p1, p0, Ljava/lang/Float;

    if-eqz p1, :cond_1f

    check-cast p0, Ljava/lang/Float;

    goto :goto_5

    :cond_1f
    new-instance p1, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-direct {p1, p0}, Ljava/lang/Float;-><init>(F)V

    move-object p0, p1

    :goto_5
    return-object p0

    :cond_20
    :goto_6
    instance-of p1, p0, Ljava/lang/Double;

    if-eqz p1, :cond_21

    check-cast p0, Ljava/lang/Double;

    goto :goto_7

    :cond_21
    new-instance p1, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/lang/Double;-><init>(D)V

    move-object p0, p1

    :goto_7
    return-object p0

    :cond_22
    :goto_8
    instance-of p1, p0, Ljava/lang/Long;

    if-eqz p1, :cond_23

    check-cast p0, Ljava/lang/Long;

    goto :goto_9

    :cond_23
    new-instance p1, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/lang/Long;-><init>(J)V

    move-object p0, p1

    :goto_9
    return-object p0

    :cond_24
    :goto_a
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_25

    check-cast p0, Ljava/lang/Integer;

    goto :goto_b

    :cond_25
    new-instance p1, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    move-object p0, p1

    :goto_b
    return-object p0
.end method

.method public static final s()Lfreemarker/ext/beans/b;
    .locals 1

    sget-object v0, Lyd0;->a:Lfreemarker/ext/beans/b;

    return-object v0
.end method


# virtual methods
.method public B()Z
    .locals 0

    iget-boolean p0, p0, Lfreemarker/ext/beans/b;->p:Z

    return p0
.end method

.method public C()Z
    .locals 0

    iget-boolean p0, p0, Lfreemarker/ext/beans/b;->r:Z

    return p0
.end method

.method public D()Z
    .locals 0

    iget-boolean p0, p0, Lfreemarker/ext/beans/b;->l:Z

    return p0
.end method

.method public E(Ljava/util/List;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p1, Lqc9;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lqc9;

    invoke-virtual {p1}, Lqc9;->c()Lnga;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1, p3}, Lfreemarker/ext/beans/b;->P(Lnga;Ljava/lang/Class;ZLjava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_1
    new-instance p3, Lfreemarker/ext/util/IdentityHashMap;

    invoke-direct {p3}, Lfreemarker/ext/util/IdentityHashMap;-><init>()V

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-virtual {p2, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    const/4 v8, 0x1

    if-nez v3, :cond_4

    invoke-static {p2}, Lhx0;->l(Ljava/lang/Class;)Z

    move-result v4

    sget-object v3, Lfreemarker/ext/beans/b;->R:Ljava/lang/Class;

    if-nez v3, :cond_3

    const-string v3, "java.util.List"

    invoke-static {v3}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lfreemarker/ext/beans/b;->R:Ljava/lang/Class;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_3
    :goto_1
    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    move v3, v8

    :cond_4
    if-eqz v4, :cond_5

    instance-of v9, v7, Ljava/lang/Number;

    if-eqz v9, :cond_5

    check-cast v7, Ljava/lang/Number;

    invoke-static {v7, p2, v8}, Lfreemarker/ext/beans/b;->p(Ljava/lang/Number;Ljava/lang/Class;Z)Ljava/lang/Number;

    move-result-object v7

    goto/16 :goto_2

    :cond_5
    sget-object v9, Lfreemarker/ext/beans/b;->Q:Ljava/lang/Class;

    if-nez v9, :cond_6

    const-string v9, "java.lang.String"

    invoke-static {v9}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lfreemarker/ext/beans/b;->Q:Ljava/lang/Class;

    :cond_6
    if-ne p2, v9, :cond_7

    instance-of v9, v7, Ljava/lang/Character;

    if-eqz v9, :cond_7

    check-cast v7, Ljava/lang/Character;

    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_7
    sget-object v9, Lfreemarker/ext/beans/b;->T:Ljava/lang/Class;

    if-nez v9, :cond_8

    const-string v9, "java.lang.Character"

    invoke-static {v9}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lfreemarker/ext/beans/b;->T:Ljava/lang/Class;

    :cond_8
    if-eq p2, v9, :cond_9

    sget-object v9, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p2, v9, :cond_a

    :cond_9
    instance-of v9, v7, Ljava/lang/String;

    if-eqz v9, :cond_a

    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v10, v8, :cond_d

    new-instance v7, Ljava/lang/Character;

    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Character;-><init>(C)V

    goto :goto_2

    :cond_a
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-eqz v8, :cond_c

    instance-of v8, v7, Ljava/util/List;

    if-eqz v8, :cond_b

    check-cast v7, Ljava/util/List;

    invoke-virtual {p0, v7, p2, p3}, Lfreemarker/ext/beans/b;->E(Ljava/util/List;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_2

    :cond_b
    instance-of v8, v7, Lnga;

    if-eqz v8, :cond_d

    check-cast v7, Lnga;

    invoke-virtual {p0, v7, p2, v1, p3}, Lfreemarker/ext/beans/b;->P(Lnga;Ljava/lang/Class;ZLjava/util/Map;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_2

    :cond_c
    if-eqz v5, :cond_d

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual {p0, v7}, Lfreemarker/ext/beans/b;->g(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_d
    :goto_2
    :try_start_1
    invoke-static {v0, v6, v7}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    new-instance p2, Lfreemarker/template/TemplateModelException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Failed to convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Lhx0;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " object to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v0}, Lhx0;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ": Problematic List item at index "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, " with value type: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v7}, Lhx0;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_e
    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :goto_3
    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw p0
.end method

.method public F(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/Object;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lfreemarker/ext/beans/b;->f:Lfreemarker/ext/beans/c;

    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/c;->k(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lfreemarker/ext/beans/c;->s:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v1, v0, Lkm9;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lkm9;

    invoke-virtual {v0}, Lkm9;->e()Ljava/lang/reflect/Member;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, p2, p0}, Lkm9;->l(Ljava/util/List;Lfreemarker/ext/beans/b;)[Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lfreemarker/template/TemplateModelException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    :try_start_2
    instance-of p2, p0, Lfreemarker/template/TemplateModelException;

    if-eqz p2, :cond_0

    check-cast p0, Lfreemarker/template/TemplateModelException;

    throw p0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {v2, v1, p0}, Lu0d;->o(Ljava/lang/Object;Ljava/lang/reflect/Member;Ljava/lang/Throwable;)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    throw p0

    :cond_1
    instance-of v1, v0, Lfu7;

    if-eqz v1, :cond_3

    check-cast v0, Lfu7;

    invoke-virtual {v0, p2, p0}, Lfu7;->f(Ljava/util/List;Lfreemarker/ext/beans/b;)Lan6;

    move-result-object p2
    :try_end_2
    .catch Lfreemarker/template/TemplateModelException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {p2, p0}, Lan6;->b(Lfreemarker/ext/beans/b;)Ljava/lang/Object;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return-object p0

    :catch_3
    move-exception p0

    :try_start_4
    instance-of v0, p0, Lfreemarker/template/TemplateModelException;

    if-eqz v0, :cond_2

    check-cast p0, Lfreemarker/template/TemplateModelException;

    throw p0

    :cond_2
    invoke-virtual {p2}, Lan6;->a()Lqq0;

    move-result-object p2

    invoke-static {v2, p2, p0}, Lu0d;->m(Ljava/lang/Object;Lqq0;Ljava/lang/Throwable;)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    throw p0

    :cond_3
    new-instance p0, Lfreemarker/core/BugException;

    invoke-direct {p0}, Lfreemarker/core/BugException;-><init>()V

    throw p0

    :cond_4
    new-instance p0, Lfreemarker/template/TemplateModelException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Class "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " has no public constructors."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catch Lfreemarker/template/TemplateModelException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_0
    new-instance p2, Lfreemarker/template/TemplateModelException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Error while creating new instance of class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "; see cause exception"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :goto_1
    throw p0
.end method

.method public final H()V
    .locals 2

    iget-object v0, p0, Lfreemarker/ext/beans/b;->g:Lmx9;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lfreemarker/ext/beans/b;->f:Lfreemarker/ext/beans/c;

    invoke-virtual {v1, v0}, Lfreemarker/ext/beans/c;->y(Llw0;)V

    :cond_0
    iget-object v0, p0, Lfreemarker/ext/beans/b;->h:Llw0;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lfreemarker/ext/beans/b;->f:Lfreemarker/ext/beans/c;

    invoke-virtual {v1, v0}, Lfreemarker/ext/beans/c;->y(Llw0;)V

    :cond_1
    iget-object v0, p0, Lfreemarker/ext/beans/b;->i:Leq6;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lfreemarker/ext/beans/b;->f:Lfreemarker/ext/beans/c;

    invoke-virtual {p0, v0}, Lfreemarker/ext/beans/c;->z(Leq6;)V

    :cond_2
    return-void
.end method

.method public I(Z)V
    .locals 0

    invoke-virtual {p0}, Lfreemarker/ext/beans/b;->h()V

    iput-boolean p1, p0, Lfreemarker/ext/beans/b;->r:Z

    return-void
.end method

.method public J(Z)V
    .locals 0

    invoke-virtual {p0}, Lfreemarker/ext/beans/b;->h()V

    iget-object p0, p0, Lfreemarker/ext/beans/b;->i:Leq6;

    invoke-virtual {p0, p1}, Leq6;->g(Z)V

    return-void
.end method

.method public K()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "simpleMapWrapper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lfreemarker/ext/beans/b;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "exposureLevel="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lfreemarker/ext/beans/b;->f:Lfreemarker/ext/beans/c;

    invoke-virtual {v2}, Lfreemarker/ext/beans/c;->p()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "exposeFields="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lfreemarker/ext/beans/b;->f:Lfreemarker/ext/beans/c;

    invoke-virtual {v2}, Lfreemarker/ext/beans/c;->o()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "sharedClassIntrospCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lfreemarker/ext/beans/b;->f:Lfreemarker/ext/beans/c;

    invoke-virtual {v1}, Lfreemarker/ext/beans/c;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lfreemarker/ext/beans/b;->f:Lfreemarker/ext/beans/c;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "none"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public L(Lzfa;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lfreemarker/ext/beans/b;->M(Lzfa;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public M(Lzfa;Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lfreemarker/ext/beans/b;->N(Lzfa;Ljava/lang/Class;ILjava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    and-int/lit8 p1, p3, 0x1

    if-eqz p1, :cond_0

    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-static {p0, p3}, Lfreemarker/ext/beans/OverloadedNumberUtil;->a(Ljava/lang/Number;I)Ljava/lang/Number;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final N(Lzfa;Ljava/lang/Class;ILjava/util/Map;)Ljava/lang/Object;
    .locals 6

    if-eqz p1, :cond_48

    iget-object v0, p0, Lfreemarker/ext/beans/b;->m:Lzfa;

    if-ne p1, v0, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p0}, Lfreemarker/ext/beans/b;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lhx0;->m(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    :cond_1
    instance-of v1, p1, Lc8;

    const-string v2, "java.lang.Object"

    if-eqz v1, :cond_6

    move-object v1, p1

    check-cast v1, Lc8;

    invoke-interface {v1, p2}, Lc8;->getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lfreemarker/ext/beans/b;->P:Ljava/lang/Class;

    if-nez v3, :cond_2

    invoke-static {v2}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lfreemarker/ext/beans/b;->P:Ljava/lang/Class;

    :cond_2
    if-eq p2, v3, :cond_5

    invoke-virtual {p2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    sget-object v3, Lfreemarker/ext/beans/b;->P:Ljava/lang/Class;

    if-nez v3, :cond_4

    invoke-static {v2}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lfreemarker/ext/beans/b;->P:Ljava/lang/Class;

    :cond_4
    if-eq p2, v3, :cond_6

    instance-of v3, v1, Ljava/lang/Number;

    if-eqz v3, :cond_6

    invoke-static {p2}, Lhx0;->l(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_6

    check-cast v1, Ljava/lang/Number;

    invoke-static {v1, p2, v0}, Lfreemarker/ext/beans/b;->p(Ljava/lang/Number;Ljava/lang/Class;Z)Ljava/lang/Number;

    move-result-object v1

    if-eqz v1, :cond_6

    :cond_5
    :goto_0
    return-object v1

    :cond_6
    instance-of v1, p1, Llpc;

    if-eqz v1, :cond_b

    move-object v1, p1

    check-cast v1, Llpc;

    invoke-interface {v1}, Llpc;->getWrappedObject()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lfreemarker/ext/beans/b;->P:Ljava/lang/Class;

    if-nez v3, :cond_7

    invoke-static {v2}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lfreemarker/ext/beans/b;->P:Ljava/lang/Class;

    :cond_7
    if-eq p2, v3, :cond_a

    invoke-virtual {p2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_1

    :cond_8
    sget-object v3, Lfreemarker/ext/beans/b;->P:Ljava/lang/Class;

    if-nez v3, :cond_9

    invoke-static {v2}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lfreemarker/ext/beans/b;->P:Ljava/lang/Class;

    :cond_9
    if-eq p2, v3, :cond_b

    instance-of v3, v1, Ljava/lang/Number;

    if-eqz v3, :cond_b

    invoke-static {p2}, Lhx0;->l(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_b

    check-cast v1, Ljava/lang/Number;

    invoke-static {v1, p2, v0}, Lfreemarker/ext/beans/b;->p(Ljava/lang/Number;Ljava/lang/Class;Z)Ljava/lang/Number;

    move-result-object v1

    if-eqz v1, :cond_b

    :cond_a
    :goto_1
    return-object v1

    :cond_b
    sget-object v1, Lfreemarker/ext/beans/b;->P:Ljava/lang/Class;

    if-nez v1, :cond_c

    invoke-static {v2}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/b;->P:Ljava/lang/Class;

    :cond_c
    const-string v2, "java.lang.Boolean"

    const-string v3, "java.lang.String"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p2, v1, :cond_26

    sget-object v1, Lfreemarker/ext/beans/b;->Q:Ljava/lang/Class;

    if-nez v1, :cond_d

    invoke-static {v3}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/b;->Q:Ljava/lang/Class;

    :cond_d
    if-ne v1, p2, :cond_f

    instance-of p0, p1, Lmga;

    if-eqz p0, :cond_e

    check-cast p1, Lmga;

    invoke-interface {p1}, Lmga;->getAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    sget-object p0, Lhc7;->d:Ljava/lang/Object;

    return-object p0

    :cond_f
    invoke-static {p2}, Lhx0;->l(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_10

    instance-of v1, p1, Lhga;

    if-eqz v1, :cond_10

    move-object v1, p1

    check-cast v1, Lhga;

    invoke-interface {v1}, Lhga;->getAsNumber()Ljava/lang/Number;

    move-result-object v1

    invoke-static {v1, p2, v0}, Lfreemarker/ext/beans/b;->p(Ljava/lang/Number;Ljava/lang/Class;Z)Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_10

    return-object v0

    :cond_10
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, p2, :cond_24

    sget-object v0, Lfreemarker/ext/beans/b;->L:Ljava/lang/Class;

    if-nez v0, :cond_11

    invoke-static {v2}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/b;->L:Ljava/lang/Class;

    :cond_11
    if-ne v0, p2, :cond_12

    goto/16 :goto_3

    :cond_12
    sget-object v0, Lfreemarker/ext/beans/b;->H:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "java.util.Map"

    invoke-static {v0}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/b;->H:Ljava/lang/Class;

    :cond_13
    if-ne v0, p2, :cond_14

    instance-of v0, p1, Lofa;

    if-eqz v0, :cond_14

    new-instance p2, Lco4;

    check-cast p1, Lofa;

    invoke-direct {p2, p1, p0}, Lco4;-><init>(Lofa;Lfreemarker/ext/beans/b;)V

    return-object p2

    :cond_14
    sget-object v0, Lfreemarker/ext/beans/b;->R:Ljava/lang/Class;

    if-nez v0, :cond_15

    const-string v0, "java.util.List"

    invoke-static {v0}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/b;->R:Ljava/lang/Class;

    :cond_15
    if-ne v0, p2, :cond_16

    instance-of v0, p1, Lnga;

    if-eqz v0, :cond_16

    new-instance p2, Lqc9;

    check-cast p1, Lnga;

    invoke-direct {p2, p1, p0}, Lqc9;-><init>(Lnga;Lfreemarker/ext/beans/b;)V

    return-object p2

    :cond_16
    sget-object v0, Lfreemarker/ext/beans/b;->S:Ljava/lang/Class;

    if-nez v0, :cond_17

    const-string v0, "java.util.Set"

    invoke-static {v0}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/b;->S:Ljava/lang/Class;

    :cond_17
    if-ne v0, p2, :cond_18

    instance-of v0, p1, Lbfa;

    if-eqz v0, :cond_18

    new-instance p2, Loe9;

    check-cast p1, Lbfa;

    invoke-direct {p2, p1, p0}, Loe9;-><init>(Lbfa;Lfreemarker/ext/beans/b;)V

    return-object p2

    :cond_18
    sget-object v0, Lfreemarker/ext/beans/b;->I:Ljava/lang/Class;

    if-nez v0, :cond_19

    const-string v0, "java.util.Collection"

    invoke-static {v0}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/b;->I:Ljava/lang/Class;

    :cond_19
    if-eq v0, p2, :cond_1a

    sget-object v0, Lfreemarker/ext/beans/b;->w:Ljava/lang/Class;

    if-ne v0, p2, :cond_1c

    :cond_1a
    instance-of v0, p1, Lbfa;

    if-eqz v0, :cond_1b

    new-instance p2, Lm71;

    check-cast p1, Lbfa;

    invoke-direct {p2, p1, p0}, Lm71;-><init>(Lbfa;Lfreemarker/ext/beans/b;)V

    return-object p2

    :cond_1b
    instance-of v0, p1, Lnga;

    if-eqz v0, :cond_1c

    new-instance p2, Lqc9;

    check-cast p1, Lnga;

    invoke-direct {p2, p1, p0}, Lqc9;-><init>(Lnga;Lfreemarker/ext/beans/b;)V

    return-object p2

    :cond_1c
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1e

    instance-of p3, p1, Lnga;

    if-eqz p3, :cond_1d

    check-cast p1, Lnga;

    invoke-virtual {p0, p1, p2, v5, p4}, Lfreemarker/ext/beans/b;->P(Lnga;Ljava/lang/Class;ZLjava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1d
    sget-object p0, Lhc7;->d:Ljava/lang/Object;

    return-object p0

    :cond_1e
    sget-object p4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p4, p2, :cond_22

    sget-object p4, Lfreemarker/ext/beans/b;->T:Ljava/lang/Class;

    if-nez p4, :cond_1f

    const-string p4, "java.lang.Character"

    invoke-static {p4}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p4

    sput-object p4, Lfreemarker/ext/beans/b;->T:Ljava/lang/Class;

    :cond_1f
    if-ne p2, p4, :cond_20

    goto :goto_2

    :cond_20
    sget-object p4, Lfreemarker/ext/beans/b;->K:Ljava/lang/Class;

    if-nez p4, :cond_21

    const-string p4, "java.util.Date"

    invoke-static {p4}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p4

    sput-object p4, Lfreemarker/ext/beans/b;->K:Ljava/lang/Class;

    :cond_21
    invoke-virtual {p4, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_26

    instance-of p4, p1, Lffa;

    if-eqz p4, :cond_26

    move-object p4, p1

    check-cast p4, Lffa;

    invoke-interface {p4}, Lffa;->f()Ljava/util/Date;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    return-object p4

    :cond_22
    :goto_2
    instance-of p0, p1, Lmga;

    if-eqz p0, :cond_23

    check-cast p1, Lmga;

    invoke-interface {p1}, Lmga;->getAsString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, v5, :cond_23

    new-instance p1, Ljava/lang/Character;

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-direct {p1, p0}, Ljava/lang/Character;-><init>(C)V

    return-object p1

    :cond_23
    sget-object p0, Lhc7;->d:Ljava/lang/Object;

    return-object p0

    :cond_24
    :goto_3
    instance-of p0, p1, Lfreemarker/template/a;

    if-eqz p0, :cond_25

    check-cast p1, Lfreemarker/template/a;

    invoke-interface {p1}, Lfreemarker/template/a;->getAsBoolean()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_25
    sget-object p0, Lhc7;->d:Ljava/lang/Object;

    return-object p0

    :cond_26
    :goto_4
    if-eqz p3, :cond_27

    and-int/lit16 p4, p3, 0x800

    if-eqz p4, :cond_29

    :cond_27
    instance-of p4, p1, Lhga;

    if-eqz p4, :cond_29

    move-object p4, p1

    check-cast p4, Lhga;

    invoke-interface {p4}, Lhga;->getAsNumber()Ljava/lang/Number;

    move-result-object p4

    if-nez p3, :cond_28

    invoke-virtual {p2, p4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_28
    return-object p4

    :cond_29
    if-eqz p3, :cond_2a

    and-int/lit16 p4, p3, 0x1000

    if-eqz p4, :cond_2c

    :cond_2a
    instance-of p4, p1, Lffa;

    if-eqz p4, :cond_2c

    move-object p4, p1

    check-cast p4, Lffa;

    invoke-interface {p4}, Lffa;->f()Ljava/util/Date;

    move-result-object p4

    if-nez p3, :cond_2b

    invoke-virtual {p2, p4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_2b
    return-object p4

    :cond_2c
    if-eqz p3, :cond_2d

    const p4, 0x82000

    and-int/2addr p4, p3

    if-eqz p4, :cond_34

    :cond_2d
    instance-of p4, p1, Lmga;

    if-eqz p4, :cond_34

    if-nez p3, :cond_2f

    sget-object p4, Lfreemarker/ext/beans/b;->Q:Ljava/lang/Class;

    if-nez p4, :cond_2e

    invoke-static {v3}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p4

    sput-object p4, Lfreemarker/ext/beans/b;->Q:Ljava/lang/Class;

    :cond_2e
    invoke-virtual {p2, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_34

    :cond_2f
    move-object p4, p1

    check-cast p4, Lmga;

    invoke-interface {p4}, Lmga;->getAsString()Ljava/lang/String;

    move-result-object p4

    if-eqz p3, :cond_33

    const/high16 v0, 0x80000

    and-int/2addr v0, p3

    if-nez v0, :cond_30

    goto :goto_5

    :cond_30
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v5, :cond_32

    and-int/lit16 p0, p3, 0x2000

    if-eqz p0, :cond_31

    new-instance p0, Lmv0;

    invoke-direct {p0, p4}, Lmv0;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_31
    new-instance p0, Ljava/lang/Character;

    invoke-virtual {p4, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-direct {p0, p1}, Ljava/lang/Character;-><init>(C)V

    return-object p0

    :cond_32
    and-int/lit16 v0, p3, 0x2000

    if-eqz v0, :cond_34

    :cond_33
    :goto_5
    return-object p4

    :cond_34
    if-eqz p3, :cond_35

    and-int/lit16 p4, p3, 0x4000

    if-eqz p4, :cond_38

    :cond_35
    instance-of p4, p1, Lfreemarker/template/a;

    if-eqz p4, :cond_38

    if-nez p3, :cond_37

    sget-object p4, Lfreemarker/ext/beans/b;->L:Ljava/lang/Class;

    if-nez p4, :cond_36

    invoke-static {v2}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p4

    sput-object p4, Lfreemarker/ext/beans/b;->L:Ljava/lang/Class;

    :cond_36
    invoke-virtual {p2, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_38

    :cond_37
    check-cast p1, Lfreemarker/template/a;

    invoke-interface {p1}, Lfreemarker/template/a;->getAsBoolean()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_38
    if-eqz p3, :cond_39

    const p4, 0x8000

    and-int/2addr p4, p3

    if-eqz p4, :cond_3c

    :cond_39
    instance-of p4, p1, Lofa;

    if-eqz p4, :cond_3c

    if-nez p3, :cond_3b

    sget-object p4, Lfreemarker/ext/beans/b;->U:Ljava/lang/Class;

    if-nez p4, :cond_3a

    const-string p4, "freemarker.ext.beans.HashAdapter"

    invoke-static {p4}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p4

    sput-object p4, Lfreemarker/ext/beans/b;->U:Ljava/lang/Class;

    :cond_3a
    invoke-virtual {p2, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_3c

    :cond_3b
    new-instance p2, Lco4;

    check-cast p1, Lofa;

    invoke-direct {p2, p1, p0}, Lco4;-><init>(Lofa;Lfreemarker/ext/beans/b;)V

    return-object p2

    :cond_3c
    if-eqz p3, :cond_3d

    const/high16 p4, 0x10000

    and-int/2addr p4, p3

    if-eqz p4, :cond_40

    :cond_3d
    instance-of p4, p1, Lnga;

    if-eqz p4, :cond_40

    if-nez p3, :cond_3f

    sget-object p4, Lfreemarker/ext/beans/b;->V:Ljava/lang/Class;

    if-nez p4, :cond_3e

    const-string p4, "freemarker.ext.beans.SequenceAdapter"

    invoke-static {p4}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p4

    sput-object p4, Lfreemarker/ext/beans/b;->V:Ljava/lang/Class;

    :cond_3e
    invoke-virtual {p2, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_40

    :cond_3f
    new-instance p2, Lqc9;

    check-cast p1, Lnga;

    invoke-direct {p2, p1, p0}, Lqc9;-><init>(Lnga;Lfreemarker/ext/beans/b;)V

    return-object p2

    :cond_40
    if-eqz p3, :cond_41

    const/high16 p4, 0x20000

    and-int/2addr p4, p3

    if-eqz p4, :cond_44

    :cond_41
    instance-of p4, p1, Lbfa;

    if-eqz p4, :cond_44

    if-nez p3, :cond_43

    sget-object p4, Lfreemarker/ext/beans/b;->W:Ljava/lang/Class;

    if-nez p4, :cond_42

    const-string p4, "freemarker.ext.beans.SetAdapter"

    invoke-static {p4}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p4

    sput-object p4, Lfreemarker/ext/beans/b;->W:Ljava/lang/Class;

    :cond_42
    invoke-virtual {p2, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_44

    :cond_43
    new-instance p2, Loe9;

    check-cast p1, Lbfa;

    invoke-direct {p2, p1, p0}, Loe9;-><init>(Lbfa;Lfreemarker/ext/beans/b;)V

    return-object p2

    :cond_44
    const/high16 p4, 0x40000

    and-int/2addr p4, p3

    if-eqz p4, :cond_45

    instance-of p4, p1, Lnga;

    if-eqz p4, :cond_45

    new-instance p2, Lqc9;

    check-cast p1, Lnga;

    invoke-direct {p2, p1, p0}, Lqc9;-><init>(Lnga;Lfreemarker/ext/beans/b;)V

    return-object p2

    :cond_45
    if-nez p3, :cond_47

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_46

    return-object p1

    :cond_46
    sget-object p0, Lhc7;->d:Ljava/lang/Object;

    return-object p0

    :cond_47
    move p3, v4

    goto/16 :goto_4

    :cond_48
    :goto_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public O(Lzfa;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lfreemarker/ext/beans/b;->L(Lzfa;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lhc7;->d:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lfreemarker/template/TemplateModelException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Can not unwrap model of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " to type "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public P(Lnga;Ljava/lang/Class;ZLjava/util/Map;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p1

    move-object/from16 v0, p4

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_1
    new-instance v0, Lfreemarker/ext/util/IdentityHashMap;

    invoke-direct {v0}, Lfreemarker/ext/util/IdentityHashMap;-><init>()V

    goto :goto_0

    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lnga;->size()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-interface/range {p1 .. p1}, Lnga;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_2
    if-ge v6, v4, :cond_4

    invoke-interface {v1, v6}, Lnga;->get(I)Lzfa;

    move-result-object v7

    move-object/from16 v8, p0

    invoke-virtual {v8, v7, v0, v5, v2}, Lfreemarker/ext/beans/b;->N(Lzfa;Ljava/lang/Class;ILjava/util/Map;)Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lhc7;->d:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v9, v10, :cond_3

    if-eqz p3, :cond_2

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v10

    :cond_2
    :try_start_1
    new-instance v0, Lfreemarker/core/_TemplateModelException;

    const-string v8, "Failed to convert "

    new-instance v9, Lg0d;

    invoke-direct {v9, v1}, Lg0d;-><init>(Lzfa;)V

    const-string v10, " object to "

    new-instance v11, Lm0d;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v11, v3}, Lm0d;-><init>(Ljava/lang/Class;)V

    const-string v12, ": Problematic sequence item at index "

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v6}, Ljava/lang/Integer;-><init>(I)V

    const-string v14, " with value type: "

    new-instance v15, Lg0d;

    invoke-direct {v15, v7}, Lg0d;-><init>(Lzfa;)V

    filled-new-array/range {v8 .. v15}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v3}, Lfreemarker/core/_TemplateModelException;-><init>([Ljava/lang/Object;)V

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_3
    invoke-static {v3, v6, v9}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :goto_3
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
.end method

.method public a(Ljava/lang/Object;)Lofa;
    .locals 1

    new-instance v0, Lp0;

    invoke-direct {v0, p1, p0}, Lp0;-><init>(Ljava/lang/Object;Lfreemarker/ext/beans/b;)V

    return-object v0
.end method

.method public b(Lzfa;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lfreemarker/ext/beans/b;->P:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.Object"

    invoke-static {v0}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/b;->P:Ljava/lang/Class;

    :cond_0
    invoke-virtual {p0, p1, v0}, Lfreemarker/ext/beans/b;->O(Lzfa;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public c(Ljava/lang/Object;)Lzfa;
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lfreemarker/ext/beans/b;->m:Lzfa;

    return-object p0

    :cond_0
    iget-object p0, p0, Lfreemarker/ext/beans/b;->i:Leq6;

    invoke-virtual {p0, p1}, Leq6;->c(Ljava/lang/Object;)Lzfa;

    move-result-object p0

    return-object p0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfreemarker/ext/beans/b;->l:Z

    return-void
.end method

.method public g(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    instance-of p0, p1, [Ljava/lang/Object;

    if-eqz p0, :cond_1

    check-cast p1, [Ljava/lang/Object;

    array-length p0, p1

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance p0, Lp17;

    invoke-direct {p0, p1}, Lp17;-><init>([Ljava/lang/Object;)V

    :goto_0
    return-object p0

    :cond_1
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1

    :cond_2
    new-instance p0, Llf8;

    invoke-direct {p0, p1}, Llf8;-><init>(Ljava/lang/Object;)V

    :goto_1
    return-object p0
.end method

.method public h()V
    .locals 3

    iget-boolean v0, p0, Lfreemarker/ext/beans/b;->l:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can\'t modify the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " object, as it was write protected."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lfreemarker/ext/beans/b;->d()V

    :cond_0
    invoke-virtual {p0}, Lfreemarker/ext/beans/b;->H()V

    return-void
.end method

.method public o(Ljava/lang/Class;Ljava/lang/reflect/Method;Lfreemarker/ext/beans/b$a;)V
    .locals 0

    return-void
.end method

.method public q()Lfreemarker/ext/beans/c;
    .locals 0

    iget-object p0, p0, Lfreemarker/ext/beans/b;->f:Lfreemarker/ext/beans/c;

    return-object p0
.end method

.method public r()I
    .locals 0

    iget p0, p0, Lfreemarker/ext/beans/b;->n:I

    return p0
.end method

.method public t()I
    .locals 0

    iget-object p0, p0, Lfreemarker/ext/beans/b;->f:Lfreemarker/ext/beans/c;

    invoke-virtual {p0}, Lfreemarker/ext/beans/c;->p()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lfreemarker/ext/beans/b;->K()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p0}, Lhx0;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lfreemarker/ext/beans/b;->s:Lfreemarker/template/Version;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ", ..."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u()Lfreemarker/template/Version;
    .locals 0

    iget-object p0, p0, Lfreemarker/ext/beans/b;->s:Lfreemarker/template/Version;

    return-object p0
.end method

.method public v(Ljava/lang/Class;)Lfq6;
    .locals 1

    sget-object v0, Lfreemarker/ext/beans/b;->H:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.util.Map"

    invoke-static {v0}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/b;->H:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lfreemarker/ext/beans/b;->q:Z

    if-eqz p0, :cond_1

    sget-object p0, Lim9;->c:Lfq6;

    goto :goto_0

    :cond_1
    sget-object p0, Ldy5;->i:Lfq6;

    :goto_0
    return-object p0

    :cond_2
    sget-object v0, Lfreemarker/ext/beans/b;->I:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string v0, "java.util.Collection"

    invoke-static {v0}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/b;->I:Ljava/lang/Class;

    :cond_3
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lp71;->i:Lfq6;

    return-object p0

    :cond_4
    sget-object v0, Lfreemarker/ext/beans/b;->J:Ljava/lang/Class;

    if-nez v0, :cond_5

    const-string v0, "java.lang.Number"

    invoke-static {v0}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/b;->J:Ljava/lang/Class;

    :cond_5
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, Lw37;->h:Lfq6;

    return-object p0

    :cond_6
    sget-object v0, Lfreemarker/ext/beans/b;->K:Ljava/lang/Class;

    if-nez v0, :cond_7

    const-string v0, "java.util.Date"

    invoke-static {v0}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/b;->K:Ljava/lang/Class;

    :cond_7
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Let1;->i:Lfq6;

    return-object p0

    :cond_8
    sget-object v0, Lfreemarker/ext/beans/b;->L:Ljava/lang/Class;

    if-nez v0, :cond_9

    const-string v0, "java.lang.Boolean"

    invoke-static {v0}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/b;->L:Ljava/lang/Class;

    :cond_9
    if-ne v0, p1, :cond_a

    iget-object p0, p0, Lfreemarker/ext/beans/b;->t:Lfq6;

    return-object p0

    :cond_a
    sget-object p0, Lfreemarker/ext/beans/b;->M:Ljava/lang/Class;

    if-nez p0, :cond_b

    const-string p0, "java.util.ResourceBundle"

    invoke-static {p0}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lfreemarker/ext/beans/b;->M:Ljava/lang/Class;

    :cond_b
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_c

    sget-object p0, Lxt8;->i:Lfq6;

    return-object p0

    :cond_c
    sget-object p0, Lfreemarker/ext/beans/b;->N:Ljava/lang/Class;

    if-nez p0, :cond_d

    const-string p0, "java.util.Iterator"

    invoke-static {p0}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lfreemarker/ext/beans/b;->N:Ljava/lang/Class;

    :cond_d
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_e

    sget-object p0, Lfreemarker/ext/beans/b;->z:Lfq6;

    return-object p0

    :cond_e
    sget-object p0, Lfreemarker/ext/beans/b;->O:Ljava/lang/Class;

    if-nez p0, :cond_f

    const-string p0, "java.util.Enumeration"

    invoke-static {p0}, Lfreemarker/ext/beans/b;->i(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lfreemarker/ext/beans/b;->O:Ljava/lang/Class;

    :cond_f
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_10

    sget-object p0, Lfreemarker/ext/beans/b;->A:Lfq6;

    return-object p0

    :cond_10
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p0

    if-eqz p0, :cond_11

    sget-object p0, Ldh;->i:Lfq6;

    return-object p0

    :cond_11
    sget-object p0, Lyz9;->h:Lfq6;

    return-object p0
.end method

.method public w()Lgc7;
    .locals 0

    iget-object p0, p0, Lfreemarker/ext/beans/b;->o:Lgc7;

    return-object p0
.end method

.method public x()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lfreemarker/ext/beans/b;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public y(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lzfa;
    .locals 0

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p2

    sget-object p3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p2, p3, :cond_0

    sget-object p0, Lzfa;->X4:Lzfa;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lfreemarker/ext/beans/b;->w()Lgc7;

    move-result-object p0

    invoke-interface {p0, p1}, Lgc7;->c(Ljava/lang/Object;)Lzfa;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public z()Z
    .locals 0

    invoke-virtual {p0}, Lfreemarker/ext/beans/b;->u()Lfreemarker/template/Version;

    move-result-object p0

    invoke-static {p0}, Lfreemarker/ext/beans/b;->A(Lfreemarker/template/Version;)Z

    move-result p0

    return p0
.end method
