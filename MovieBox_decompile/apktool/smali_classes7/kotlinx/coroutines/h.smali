.class public final Lkotlinx/coroutines/h;
.super Lkotlinx/coroutines/EventLoopImplBase;
.source "source.java"


# instance fields
.field private final a:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/EventLoopImplBase;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/h;->a:Ljava/lang/Thread;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected getThread()Ljava/lang/Thread;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/h;->a:Ljava/lang/Thread;

    .line 2
    .line 3
    return-object v0
.end method
