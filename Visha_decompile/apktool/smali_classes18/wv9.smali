.class public final Lwv9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwh1;
.implements Lok1;


# instance fields
.field public final b:Lwh1;

.field public final c:Lkotlin/coroutines/d;


# direct methods
.method public constructor <init>(Lwh1;Lkotlin/coroutines/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwv9;->b:Lwh1;

    iput-object p2, p0, Lwv9;->c:Lkotlin/coroutines/d;

    return-void
.end method


# virtual methods
.method public getCallerFrame()Lok1;
    .locals 1

    iget-object p0, p0, Lwv9;->b:Lwh1;

    instance-of v0, p0, Lok1;

    if-eqz v0, :cond_0

    check-cast p0, Lok1;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getContext()Lkotlin/coroutines/d;
    .locals 0

    iget-object p0, p0, Lwv9;->c:Lkotlin/coroutines/d;

    return-object p0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lwv9;->b:Lwh1;

    invoke-interface {p0, p1}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
