.class public Lorg/mozilla/javascript/PolicySecurityController$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/javascript/PolicySecurityController;->callWithDomain(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/mozilla/javascript/Context;

.field public final synthetic b:Lorg/mozilla/javascript/PolicySecurityController;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/PolicySecurityController;Lorg/mozilla/javascript/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/PolicySecurityController$b;->b:Lorg/mozilla/javascript/PolicySecurityController;

    iput-object p2, p0, Lorg/mozilla/javascript/PolicySecurityController$b;->a:Lorg/mozilla/javascript/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/PolicySecurityController$b;->a:Lorg/mozilla/javascript/Context;

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getApplicationClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    return-object p0
.end method
