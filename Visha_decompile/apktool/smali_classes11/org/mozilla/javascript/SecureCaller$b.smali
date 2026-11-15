.class public final Lorg/mozilla/javascript/SecureCaller$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/javascript/SecureCaller;->callSecurely(Ljava/security/CodeSource;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/ClassLoader;

.field public final synthetic b:Ljava/security/CodeSource;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/security/CodeSource;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/SecureCaller$b;->a:Ljava/lang/ClassLoader;

    iput-object p2, p0, Lorg/mozilla/javascript/SecureCaller$b;->b:Ljava/security/CodeSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/SecureCaller$b;->a:Ljava/lang/ClassLoader;

    const-class v1, Lorg/mozilla/javascript/SecureCaller$b;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eq v0, v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/SecureCaller$b;->a:Ljava/lang/ClassLoader;

    :goto_0
    new-instance v1, Lorg/mozilla/javascript/SecureCaller$d;

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/SecureCaller$d;-><init>(Ljava/lang/ClassLoader;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lorg/mozilla/javascript/SecureCaller;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Impl"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/mozilla/javascript/SecureCaller;->access$000()[B

    move-result-object v2

    iget-object p0, p0, Lorg/mozilla/javascript/SecureCaller$b;->b:Ljava/security/CodeSource;

    invoke-virtual {v1, v0, v2, p0}, Lorg/mozilla/javascript/SecureCaller$d;->a(Ljava/lang/String;[BLjava/security/CodeSource;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
