.class public Lorg/mozilla/javascript/NativeIterator$WrappedJavaIterator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/NativeIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WrappedJavaIterator"
.end annotation


# instance fields
.field private iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "*>;"
        }
    .end annotation
.end field

.field private scope:Lorg/mozilla/javascript/Scriptable;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lorg/mozilla/javascript/Scriptable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;",
            "Lorg/mozilla/javascript/Scriptable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/NativeIterator$WrappedJavaIterator;->iterator:Ljava/util/Iterator;

    iput-object p2, p0, Lorg/mozilla/javascript/NativeIterator$WrappedJavaIterator;->scope:Lorg/mozilla/javascript/Scriptable;

    return-void
.end method


# virtual methods
.method public __iterator__(Z)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/NativeIterator$WrappedJavaIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/mozilla/javascript/NativeIterator$WrappedJavaIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lorg/mozilla/javascript/JavaScriptException;

    iget-object p0, p0, Lorg/mozilla/javascript/NativeIterator$WrappedJavaIterator;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {p0}, Lorg/mozilla/javascript/NativeIterator;->getStopIterationObject(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    throw v0
.end method
