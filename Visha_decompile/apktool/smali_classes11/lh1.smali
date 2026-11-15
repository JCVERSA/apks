.class public final synthetic Llh1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/javascript/ContextAction;


# instance fields
.field public final synthetic b:Lorg/mozilla/javascript/Callable;

.field public final synthetic c:Lorg/mozilla/javascript/Scriptable;

.field public final synthetic d:Lorg/mozilla/javascript/Scriptable;

.field public final synthetic e:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llh1;->b:Lorg/mozilla/javascript/Callable;

    iput-object p2, p0, Llh1;->c:Lorg/mozilla/javascript/Scriptable;

    iput-object p3, p0, Llh1;->d:Lorg/mozilla/javascript/Scriptable;

    iput-object p4, p0, Llh1;->e:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Llh1;->b:Lorg/mozilla/javascript/Callable;

    iget-object v1, p0, Llh1;->c:Lorg/mozilla/javascript/Scriptable;

    iget-object v2, p0, Llh1;->d:Lorg/mozilla/javascript/Scriptable;

    iget-object p0, p0, Llh1;->e:[Ljava/lang/Object;

    invoke-static {v0, v1, v2, p0, p1}, Lorg/mozilla/javascript/Context;->a(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
