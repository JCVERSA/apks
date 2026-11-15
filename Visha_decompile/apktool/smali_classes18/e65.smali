.class public final Le65;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le65$a;
    }
.end annotation


# static fields
.field public static final a:Le65;

.field public static b:Le65$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Le65;

    invoke-direct {v0}, Le65;-><init>()V

    sput-object v0, Le65;->a:Le65;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Le65$a;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const/4 p1, 0x0

    :try_start_0
    new-instance v0, Le65$a;

    const-string v1, "getType"

    invoke-virtual {p0, v1, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v2, "getAccessor"

    invoke-virtual {p0, v2, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Le65$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Le65$a;

    invoke-direct {v0, p1, p1}, Le65$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    :goto_0
    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Le65$a;
    .locals 1

    sget-object v0, Le65;->b:Le65$a;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Le65;->a(Ljava/lang/Object;)Le65$a;

    move-result-object v0

    sput-object v0, Le65;->b:Le65$a;

    :cond_0
    return-object v0
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 1

    const-string v0, "recordComponent"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Le65;->b(Ljava/lang/Object;)Le65$a;

    move-result-object p0

    invoke-virtual {p0}, Le65$a;->a()Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type java.lang.reflect.Method"

    invoke-static {p0, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1

    const-string v0, "recordComponent"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Le65;->b(Ljava/lang/Object;)Le65$a;

    move-result-object p0

    invoke-virtual {p0}, Le65$a;->b()Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type java.lang.Class<*>"

    invoke-static {p0, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Class;

    return-object p0
.end method
