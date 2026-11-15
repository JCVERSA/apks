.class public Lorg/mozilla/javascript/jdk18/VMBridge_jdk18$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/javascript/jdk18/VMBridge_jdk18;->newInterfaceProxy(Ljava/lang/Object;Lorg/mozilla/javascript/ContextFactory;Lorg/mozilla/javascript/InterfaceAdapter;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lorg/mozilla/javascript/InterfaceAdapter;

.field public final synthetic d:Lorg/mozilla/javascript/ContextFactory;

.field public final synthetic e:Lorg/mozilla/javascript/Scriptable;

.field public final synthetic f:Lorg/mozilla/javascript/jdk18/VMBridge_jdk18;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/jdk18/VMBridge_jdk18;Ljava/lang/Object;Lorg/mozilla/javascript/InterfaceAdapter;Lorg/mozilla/javascript/ContextFactory;Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/jdk18/VMBridge_jdk18$a;->f:Lorg/mozilla/javascript/jdk18/VMBridge_jdk18;

    iput-object p2, p0, Lorg/mozilla/javascript/jdk18/VMBridge_jdk18$a;->b:Ljava/lang/Object;

    iput-object p3, p0, Lorg/mozilla/javascript/jdk18/VMBridge_jdk18$a;->c:Lorg/mozilla/javascript/InterfaceAdapter;

    iput-object p4, p0, Lorg/mozilla/javascript/jdk18/VMBridge_jdk18$a;->d:Lorg/mozilla/javascript/ContextFactory;

    iput-object p5, p0, Lorg/mozilla/javascript/jdk18/VMBridge_jdk18$a;->e:Lorg/mozilla/javascript/Scriptable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_3

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "equals"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    aget-object p2, p3, p0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v1, "hashCode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lorg/mozilla/javascript/jdk18/VMBridge_jdk18$a;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v1, "toString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Proxy["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/mozilla/javascript/jdk18/VMBridge_jdk18$a;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object v0, p0, Lorg/mozilla/javascript/jdk18/VMBridge_jdk18$a;->c:Lorg/mozilla/javascript/InterfaceAdapter;

    iget-object v1, p0, Lorg/mozilla/javascript/jdk18/VMBridge_jdk18$a;->d:Lorg/mozilla/javascript/ContextFactory;

    iget-object v2, p0, Lorg/mozilla/javascript/jdk18/VMBridge_jdk18$a;->b:Ljava/lang/Object;

    iget-object v3, p0, Lorg/mozilla/javascript/jdk18/VMBridge_jdk18$a;->e:Lorg/mozilla/javascript/Scriptable;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/InterfaceAdapter;->invoke(Lorg/mozilla/javascript/ContextFactory;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
