.class public final Lf65;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf65$a;
    }
.end annotation


# static fields
.field public static final a:Lf65;

.field public static b:Lf65$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf65;

    invoke-direct {v0}, Lf65;-><init>()V

    sput-object v0, Lf65;->a:Lf65;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lf65$a;
    .locals 6

    const-class p0, Ljava/lang/Class;

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lf65$a;

    const-string v2, "isSealed"

    invoke-virtual {p0, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "getPermittedSubclasses"

    invoke-virtual {p0, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v4, "isRecord"

    invoke-virtual {p0, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v5, "getRecordComponents"

    invoke-virtual {p0, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-direct {v1, v2, v3, v4, p0}, Lf65$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v1, Lf65$a;

    invoke-direct {v1, v0, v0, v0, v0}, Lf65$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    :goto_0
    return-object v1
.end method

.method public final b()Lf65$a;
    .locals 1

    sget-object v0, Lf65;->b:Lf65$a;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lf65;->a()Lf65$a;

    move-result-object v0

    sput-object v0, Lf65;->b:Lf65$a;

    :cond_0
    return-object v0
.end method

.method public final c(Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 1

    const-string v0, "clazz"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lf65;->b()Lf65$a;

    move-result-object p0

    invoke-virtual {p0}, Lf65$a;->a()Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type kotlin.Array<java.lang.Class<*>>"

    invoke-static {p0, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, [Ljava/lang/Class;

    return-object p0
.end method

.method public final d(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 1

    const-string v0, "clazz"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lf65;->b()Lf65$a;

    move-result-object p0

    invoke-virtual {p0}, Lf65$a;->b()Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public final e(Ljava/lang/Class;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "clazz"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lf65;->b()Lf65$a;

    move-result-object p0

    invoke-virtual {p0}, Lf65$a;->c()Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p0, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public final f(Ljava/lang/Class;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "clazz"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lf65;->b()Lf65$a;

    move-result-object p0

    invoke-virtual {p0}, Lf65$a;->d()Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p0, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method
