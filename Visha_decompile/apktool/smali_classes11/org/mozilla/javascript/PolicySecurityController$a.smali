.class public Lorg/mozilla/javascript/PolicySecurityController$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/javascript/PolicySecurityController;->createClassLoader(Ljava/lang/ClassLoader;Ljava/lang/Object;)Lorg/mozilla/javascript/GeneratedClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/ClassLoader;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lorg/mozilla/javascript/PolicySecurityController;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/PolicySecurityController;Ljava/lang/ClassLoader;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/PolicySecurityController$a;->c:Lorg/mozilla/javascript/PolicySecurityController;

    iput-object p2, p0, Lorg/mozilla/javascript/PolicySecurityController$a;->a:Ljava/lang/ClassLoader;

    iput-object p3, p0, Lorg/mozilla/javascript/PolicySecurityController$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/mozilla/javascript/PolicySecurityController$d;

    iget-object v1, p0, Lorg/mozilla/javascript/PolicySecurityController$a;->a:Ljava/lang/ClassLoader;

    iget-object p0, p0, Lorg/mozilla/javascript/PolicySecurityController$a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/security/CodeSource;

    invoke-direct {v0, v1, p0}, Lorg/mozilla/javascript/PolicySecurityController$d;-><init>(Ljava/lang/ClassLoader;Ljava/security/CodeSource;)V

    return-object v0
.end method
