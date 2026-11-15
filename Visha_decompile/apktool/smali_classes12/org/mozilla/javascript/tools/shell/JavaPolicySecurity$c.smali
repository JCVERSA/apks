.class public Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;->callWithDomain(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/mozilla/javascript/Callable;

.field public final synthetic b:Lorg/mozilla/javascript/Context;

.field public final synthetic c:Lorg/mozilla/javascript/Scriptable;

.field public final synthetic d:Lorg/mozilla/javascript/Scriptable;

.field public final synthetic e:[Ljava/lang/Object;

.field public final synthetic f:Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$c;->f:Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;

    iput-object p2, p0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$c;->a:Lorg/mozilla/javascript/Callable;

    iput-object p3, p0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$c;->b:Lorg/mozilla/javascript/Context;

    iput-object p4, p0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$c;->c:Lorg/mozilla/javascript/Scriptable;

    iput-object p5, p0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$c;->d:Lorg/mozilla/javascript/Scriptable;

    iput-object p6, p0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$c;->e:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$c;->a:Lorg/mozilla/javascript/Callable;

    iget-object v1, p0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$c;->b:Lorg/mozilla/javascript/Context;

    iget-object v2, p0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$c;->c:Lorg/mozilla/javascript/Scriptable;

    iget-object v3, p0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$c;->d:Lorg/mozilla/javascript/Scriptable;

    iget-object p0, p0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$c;->e:[Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3, p0}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
