.class public final synthetic Lkotlinx/coroutines/android/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/android/HandlerContext;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/android/HandlerContext;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/android/d;->a:Lkotlinx/coroutines/android/HandlerContext;

    .line 5
    .line 6
    iput-object p2, p0, Lkotlinx/coroutines/android/d;->b:Ljava/lang/Runnable;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/android/d;->a:Lkotlinx/coroutines/android/HandlerContext;

    .line 2
    .line 3
    iget-object v1, p0, Lkotlinx/coroutines/android/d;->b:Ljava/lang/Runnable;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Throwable;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/android/HandlerContext;->t(Lkotlinx/coroutines/android/HandlerContext;Ljava/lang/Runnable;Ljava/lang/Throwable;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
