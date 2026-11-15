.class public Lorg/mozilla/javascript/PolicySecurityController$d;
.super Ljava/security/SecureClassLoader;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/javascript/GeneratedClassLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/PolicySecurityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Ljava/security/CodeSource;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/security/CodeSource;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/security/SecureClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    iput-object p2, p0, Lorg/mozilla/javascript/PolicySecurityController$d;->a:Ljava/security/CodeSource;

    return-void
.end method


# virtual methods
.method public defineClass(Ljava/lang/String;[B)Ljava/lang/Class;
    .locals 6

    array-length v4, p2

    iget-object v5, p0, Lorg/mozilla/javascript/PolicySecurityController$d;->a:Ljava/security/CodeSource;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Ljava/security/SecureClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public linkClass(Ljava/lang/Class;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->resolveClass(Ljava/lang/Class;)V

    return-void
.end method
