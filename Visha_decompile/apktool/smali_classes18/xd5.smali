.class public Lxd5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgc7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxd5$a;
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/Class;

.field public static final h:Lxd5;

.field public static synthetic i:Ljava/lang/Class;


# instance fields
.field public final e:Leq6;

.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lxd5;->i:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.python.core.PyObject"

    invoke-static {v0}, Lxd5;->d(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lxd5;->i:Ljava/lang/Class;

    :cond_0
    sput-object v0, Lxd5;->g:Ljava/lang/Class;

    new-instance v0, Lxd5;

    invoke-direct {v0}, Lxd5;-><init>()V

    sput-object v0, Lxd5;->h:Lxd5;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lvd5;

    invoke-direct {v0, p0}, Lvd5;-><init>(Lxd5;)V

    iput-object v0, p0, Lxd5;->e:Leq6;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lxd5;->f:Z

    return-void
.end method

.method public static synthetic d(Ljava/lang/String;)Ljava/lang/Class;
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
.method public c(Ljava/lang/Object;)Lzfa;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lxd5;->e:Leq6;

    invoke-virtual {p0, p1}, Leq6;->c(Ljava/lang/Object;)Lzfa;

    move-result-object p0

    return-object p0
.end method

.method public e()Z
    .locals 0

    iget-boolean p0, p0, Lxd5;->f:Z

    return p0
.end method

.method public f(Lzfa;)Lorg/python/core/PyObject;
    .locals 1

    instance-of v0, p1, Lc8;

    if-eqz v0, :cond_0

    check-cast p1, Lc8;

    sget-object p0, Lxd5;->g:Ljava/lang/Class;

    invoke-interface {p1, p0}, Lc8;->getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/python/core/Py;->java2py(Ljava/lang/Object;)Lorg/python/core/PyObject;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p1, Llpc;

    if-eqz v0, :cond_1

    check-cast p1, Llpc;

    invoke-interface {p1}, Llpc;->getWrappedObject()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/python/core/Py;->java2py(Ljava/lang/Object;)Lorg/python/core/PyObject;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p1, Lmga;

    if-eqz v0, :cond_2

    new-instance p0, Lorg/python/core/PyString;

    check-cast p1, Lmga;

    invoke-interface {p1}, Lmga;->getAsString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/python/core/PyString;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_2
    instance-of v0, p1, Lhga;

    if-eqz v0, :cond_5

    check-cast p1, Lhga;

    invoke-interface {p1}, Lhga;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    instance-of p1, p0, Ljava/math/BigDecimal;

    if-eqz p1, :cond_3

    invoke-static {p0}, Lms7;->a(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p0

    :cond_3
    instance-of p1, p0, Ljava/math/BigInteger;

    if-eqz p1, :cond_4

    new-instance p1, Lorg/python/core/PyLong;

    check-cast p0, Ljava/math/BigInteger;

    invoke-direct {p1, p0}, Lorg/python/core/PyLong;-><init>(Ljava/math/BigInteger;)V

    return-object p1

    :cond_4
    invoke-static {p0}, Lorg/python/core/Py;->java2py(Ljava/lang/Object;)Lorg/python/core/PyObject;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance v0, Lxd5$a;

    invoke-direct {v0, p0, p1}, Lxd5$a;-><init>(Lxd5;Lzfa;)V

    return-object v0
.end method
