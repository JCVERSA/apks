.class public Lorg/mozilla/javascript/PolicySecurityController$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/javascript/PolicySecurityController;->callWithDomain(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/ClassLoader;

.field public final synthetic b:Ljava/security/CodeSource;

.field public final synthetic c:Lorg/mozilla/javascript/PolicySecurityController;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/PolicySecurityController;Ljava/lang/ClassLoader;Ljava/security/CodeSource;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/PolicySecurityController$c;->c:Lorg/mozilla/javascript/PolicySecurityController;

    iput-object p2, p0, Lorg/mozilla/javascript/PolicySecurityController$c;->a:Ljava/lang/ClassLoader;

    iput-object p3, p0, Lorg/mozilla/javascript/PolicySecurityController$c;->b:Ljava/security/CodeSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/mozilla/javascript/PolicySecurityController$d;

    iget-object v1, p0, Lorg/mozilla/javascript/PolicySecurityController$c;->a:Ljava/lang/ClassLoader;

    iget-object p0, p0, Lorg/mozilla/javascript/PolicySecurityController$c;->b:Ljava/security/CodeSource;

    invoke-direct {v0, v1, p0}, Lorg/mozilla/javascript/PolicySecurityController$d;-><init>(Ljava/lang/ClassLoader;Ljava/security/CodeSource;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/mozilla/javascript/PolicySecurityController$SecureCaller;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Impl"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lorg/mozilla/javascript/PolicySecurityController;->access$000()[B

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/mozilla/javascript/PolicySecurityController$d;->defineClass(Ljava/lang/String;[B)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
