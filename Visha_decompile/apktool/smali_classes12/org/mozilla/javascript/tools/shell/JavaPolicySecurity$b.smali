.class public Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;->createClassLoader(Ljava/lang/ClassLoader;Ljava/lang/Object;)Lorg/mozilla/javascript/GeneratedClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/ClassLoader;

.field public final synthetic b:Ljava/security/ProtectionDomain;

.field public final synthetic c:Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$b;->c:Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;

    iput-object p2, p0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$b;->a:Ljava/lang/ClassLoader;

    iput-object p3, p0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$b;->b:Ljava/security/ProtectionDomain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$d;
    .locals 2

    new-instance v0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$d;

    iget-object v1, p0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$b;->a:Ljava/lang/ClassLoader;

    iget-object p0, p0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$b;->b:Ljava/security/ProtectionDomain;

    invoke-direct {v0, v1, p0}, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$d;-><init>(Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)V

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$b;->a()Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$d;

    move-result-object p0

    return-object p0
.end method
