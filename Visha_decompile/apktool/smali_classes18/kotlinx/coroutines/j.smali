.class public interface abstract Lkotlinx/coroutines/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/d$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/j$a;,
        Lkotlinx/coroutines/j$b;
    }
.end annotation


# static fields
.field public static final B6:Lkotlinx/coroutines/j$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/j$b;->b:Lkotlinx/coroutines/j$b;

    sput-object v0, Lkotlinx/coroutines/j;->B6:Lkotlinx/coroutines/j$b;

    return-void
.end method


# virtual methods
.method public abstract attachChild(Lxv0;)Lvv0;
.end method

.method public abstract cancel(Ljava/util/concurrent/CancellationException;)V
.end method

.method public abstract getCancellationException()Ljava/util/concurrent/CancellationException;
.end method

.method public abstract getChildren()Lpc9;
.end method

.method public abstract getOnJoin()Lsa9;
.end method

.method public abstract invokeOnCompletion(Le74;)Luc2;
.end method

.method public abstract invokeOnCompletion(ZZLe74;)Luc2;
.end method

.method public abstract isActive()Z
.end method

.method public abstract isCompleted()Z
.end method

.method public abstract join(Lwh1;)Ljava/lang/Object;
.end method

.method public abstract start()Z
.end method
