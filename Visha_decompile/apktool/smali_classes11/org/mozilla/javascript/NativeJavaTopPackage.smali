.class public Lorg/mozilla/javascript/NativeJavaTopPackage;
.super Lorg/mozilla/javascript/NativeJavaPackage;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/javascript/Function;
.implements Lorg/mozilla/javascript/IdFunctionCall;


# static fields
.field private static final FTAG:Ljava/lang/Object;

.field private static final Id_getClass:I = 0x1

.field private static final commonPackages:[[Ljava/lang/String;

.field private static final serialVersionUID:J = -0x1433fecca5b554afL


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "lang"

    const-string v1, "reflect"

    const-string v2, "java"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v0, "io"

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "math"

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "net"

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "util"

    const-string v1, "zip"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "text"

    const-string v1, "resources"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "applet"

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v9

    const-string v0, "javax"

    const-string v1, "swing"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v10

    filled-new-array/range {v3 .. v10}, [[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/NativeJavaTopPackage;->commonPackages:[[Ljava/lang/String;

    const-string v0, "JavaTopPackage"

    sput-object v0, Lorg/mozilla/javascript/NativeJavaTopPackage;->FTAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, ""

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/javascript/NativeJavaPackage;-><init>(ZLjava/lang/String;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 9

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getApplicationClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    new-instance v7, Lorg/mozilla/javascript/NativeJavaTopPackage;

    invoke-direct {v7, p0}, Lorg/mozilla/javascript/NativeJavaTopPackage;-><init>(Ljava/lang/ClassLoader;)V

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    invoke-virtual {v7, p0}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {v7, p1}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    sget-object v1, Lorg/mozilla/javascript/NativeJavaTopPackage;->commonPackages:[[Ljava/lang/String;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    move v1, p0

    move-object v2, v7

    :goto_1
    sget-object v3, Lorg/mozilla/javascript/NativeJavaTopPackage;->commonPackages:[[Ljava/lang/String;

    aget-object v3, v3, v0

    array-length v4, v3

    if-eq v1, v4, :cond_0

    aget-object v3, v3, v1

    invoke-virtual {v2, v3, p1}, Lorg/mozilla/javascript/NativeJavaPackage;->forcePackage(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/NativeJavaPackage;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v8, Lorg/mozilla/javascript/IdFunctionObject;

    sget-object v2, Lorg/mozilla/javascript/NativeJavaTopPackage;->FTAG:Ljava/lang/Object;

    const-string v4, "getClass"

    const/4 v5, 0x1

    const/4 v3, 0x1

    move-object v0, v8

    move-object v1, v7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/mozilla/javascript/IdFunctionObject;-><init>(Lorg/mozilla/javascript/IdFunctionCall;Ljava/lang/Object;ILjava/lang/String;ILorg/mozilla/javascript/Scriptable;)V

    invoke-static {}, Lorg/mozilla/javascript/ScriptRuntime;->getTopPackageNames()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Lorg/mozilla/javascript/NativeJavaPackage;

    move v2, p0

    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v7, v3, v7}, Lorg/mozilla/javascript/NativeJavaPackage;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/NativeJavaPackage;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    check-cast p1, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz p2, :cond_3

    invoke-virtual {v8}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    :cond_3
    invoke-virtual {v8}, Lorg/mozilla/javascript/IdFunctionObject;->exportAsScopeProperty()V

    const-string p2, "Packages"

    const/4 v2, 0x2

    invoke-virtual {p1, p2, v7, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    :goto_3
    array-length p2, v0

    if-ge p0, p2, :cond_4

    aget-object p2, v0, p0

    aget-object v3, v1, p0

    invoke-virtual {p1, p2, v3, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method private js_getClass(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 1

    array-length p1, p3

    if-lez p1, :cond_2

    const/4 p1, 0x0

    aget-object p2, p3, p1

    instance-of p3, p2, Lorg/mozilla/javascript/Wrapper;

    if-eqz p3, :cond_2

    check-cast p2, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {p2}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    :goto_0
    const/16 p3, 0x2e

    invoke-virtual {p2, p3, p1}, Ljava/lang/String;->indexOf(II)I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-interface {p0, p1, p0}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz p1, :cond_2

    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    if-ne p3, v0, :cond_1

    return-object p0

    :cond_1
    add-int/lit8 p1, p3, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "msg.not.java.obj"

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p4}, Lorg/mozilla/javascript/NativeJavaTopPackage;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method public construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 1

    array-length p0, p3

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    aget-object p0, p3, p0

    instance-of p3, p0, Lorg/mozilla/javascript/Wrapper;

    if-eqz p3, :cond_0

    check-cast p0, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {p0}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p0

    :cond_0
    instance-of p3, p0, Ljava/lang/ClassLoader;

    if-eqz p3, :cond_1

    check-cast p0, Ljava/lang/ClassLoader;

    goto :goto_0

    :cond_1
    move-object p0, p1

    :goto_0
    if-nez p0, :cond_2

    const-string p0, "msg.not.classloader"

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    return-object p1

    :cond_2
    new-instance p1, Lorg/mozilla/javascript/NativeJavaPackage;

    const/4 p3, 0x1

    const-string v0, ""

    invoke-direct {p1, p3, v0, p0}, Lorg/mozilla/javascript/NativeJavaPackage;-><init>(ZLjava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;)V

    return-object p1
.end method

.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p4, Lorg/mozilla/javascript/NativeJavaTopPackage;->FTAG:Ljava/lang/Object;

    invoke-virtual {p1, p4}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result p4

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    invoke-direct {p0, p2, p3, p5}, Lorg/mozilla/javascript/NativeJavaTopPackage;->js_getClass(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->unknown()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
