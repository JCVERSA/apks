.class public Lorg/mvel2/util/MethodStub;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lorg/mvel2/util/StaticStub;


# instance fields
.field private classReference:Ljava/lang/Class;

.field private transient method:Ljava/lang/reflect/Method;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lorg/mvel2/util/MethodStub;->classReference:Ljava/lang/Class;

    .line 6
    iput-object p2, p0, Lorg/mvel2/util/MethodStub;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/mvel2/util/MethodStub;->classReference:Ljava/lang/Class;

    .line 3
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/util/MethodStub;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lorg/mvel2/util/MethodStub;->method:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    invoke-virtual {p2, p1, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getClassReference()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/util/MethodStub;->classReference:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/mvel2/util/MethodStub;->method:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lorg/mvel2/util/MethodStub;->classReference:Ljava/lang/Class;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    array-length v1, v0

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_1

    .line 14
    .line 15
    aget-object v3, v0, v2

    .line 16
    .line 17
    iget-object v4, p0, Lorg/mvel2/util/MethodStub;->name:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    iput-object v3, p0, Lorg/mvel2/util/MethodStub;->method:Ljava/lang/reflect/Method;

    .line 30
    .line 31
    return-object v3

    .line 32
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p0, Lorg/mvel2/util/MethodStub;->method:Ljava/lang/reflect/Method;

    .line 36
    .line 37
    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/util/MethodStub;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setClassReference(Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/util/MethodStub;->classReference:Ljava/lang/Class;

    .line 2
    .line 3
    return-void
.end method

.method public setMethodName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/util/MethodStub;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
