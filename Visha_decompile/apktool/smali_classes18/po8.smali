.class public final Lpo8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljgc;


# instance fields
.field public final b:Lkotlinx/coroutines/CancellableContinuationImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpo8;->b:Lkotlinx/coroutines/CancellableContinuationImpl;

    return-void
.end method


# virtual methods
.method public invokeOnCancellation(Loa9;I)V
    .locals 0

    iget-object p0, p0, Lpo8;->b:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Loa9;I)V

    return-void
.end method
