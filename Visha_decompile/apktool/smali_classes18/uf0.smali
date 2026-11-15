.class public final Luf0;
.super Lkotlinx/coroutines/EventLoopImplBase;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/EventLoopImplBase;-><init>()V

    iput-object p1, p0, Luf0;->b:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public getThread()Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Luf0;->b:Ljava/lang/Thread;

    return-object p0
.end method
