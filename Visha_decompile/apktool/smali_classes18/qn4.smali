.class public final synthetic Lqn4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc2;


# instance fields
.field public final synthetic b:Lkotlinx/coroutines/android/HandlerContext;

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/android/HandlerContext;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqn4;->b:Lkotlinx/coroutines/android/HandlerContext;

    iput-object p2, p0, Lqn4;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    iget-object v0, p0, Lqn4;->b:Lkotlinx/coroutines/android/HandlerContext;

    iget-object p0, p0, Lqn4;->c:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lkotlinx/coroutines/android/HandlerContext;->E(Lkotlinx/coroutines/android/HandlerContext;Ljava/lang/Runnable;)V

    return-void
.end method
