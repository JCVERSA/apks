.class public final Lsq6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsq6$a;
    }
.end annotation


# static fields
.field public static final a:Lsq6;

.field public static final b:Lsq6$a;

.field public static c:Lsq6$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lsq6;

    invoke-direct {v0}, Lsq6;-><init>()V

    sput-object v0, Lsq6;->a:Lsq6;

    new-instance v0, Lsq6$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lsq6$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    sput-object v0, Lsq6;->b:Lsq6$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Lsq6$a;
    .locals 3

    :try_start_0
    const-class p0, Ljava/lang/Class;

    const-string v0, "getModule"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v2, "java.lang.Module"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getDescriptor"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v2, "java.lang.module.ModuleDescriptor"

    invoke-virtual {p1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v2, "name"

    invoke-virtual {p1, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-instance v1, Lsq6$a;

    invoke-direct {v1, p0, v0, p1}, Lsq6$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    sput-object v1, Lsq6;->c:Lsq6$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    sget-object p0, Lsq6;->b:Lsq6$a;

    sput-object p0, Lsq6;->c:Lsq6$a;

    return-object p0
.end method

.method public final b(Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/String;
    .locals 2

    const-string v0, "continuation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lsq6;->c:Lsq6$a;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lsq6;->a(Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Lsq6$a;

    move-result-object v0

    :cond_0
    sget-object p0, Lsq6;->b:Lsq6$a;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_1

    return-object v1

    :cond_1
    iget-object p0, v0, Lsq6$a;->a:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, v0, Lsq6$a;->b:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, v0, Lsq6$a;->c:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_4
    move-object p0, v1

    :goto_0
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_5

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    :cond_5
    :goto_1
    return-object v1
.end method
