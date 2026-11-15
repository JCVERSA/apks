.class public final Lio8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgx9;
.implements Lnz3;
.implements Li94;


# instance fields
.field public final synthetic b:Lgx9;

.field public final c:Lkotlinx/coroutines/j;


# direct methods
.method public constructor <init>(Lgx9;Lkotlinx/coroutines/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio8;->b:Lgx9;

    iput-object p2, p0, Lio8;->c:Lkotlinx/coroutines/j;

    return-void
.end method


# virtual methods
.method public collect(Loz3;Lwh1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio8;->b:Lgx9;

    invoke-interface {p0, p1, p2}, Lkg9;->collect(Loz3;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public d(Lkotlin/coroutines/d;ILkotlinx/coroutines/channels/BufferOverflow;)Lnz3;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lhx9;->d(Lgx9;Lkotlin/coroutines/d;ILkotlinx/coroutines/channels/BufferOverflow;)Lnz3;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio8;->b:Lgx9;

    invoke-interface {p0}, Lgx9;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
