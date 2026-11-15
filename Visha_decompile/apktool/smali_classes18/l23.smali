.class public final Ll23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/d;


# instance fields
.field public final synthetic b:Lkotlin/coroutines/d;

.field public final c:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lkotlin/coroutines/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ll23;->b:Lkotlin/coroutines/d;

    iput-object p1, p0, Ll23;->c:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Ls74;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ll23;->b:Lkotlin/coroutines/d;

    invoke-interface {p0, p1, p2}, Lkotlin/coroutines/d;->fold(Ljava/lang/Object;Ls74;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Lkotlin/coroutines/d$c;)Lkotlin/coroutines/d$b;
    .locals 0

    iget-object p0, p0, Ll23;->b:Lkotlin/coroutines/d;

    invoke-interface {p0, p1}, Lkotlin/coroutines/d;->get(Lkotlin/coroutines/d$c;)Lkotlin/coroutines/d$b;

    move-result-object p0

    return-object p0
.end method

.method public minusKey(Lkotlin/coroutines/d$c;)Lkotlin/coroutines/d;
    .locals 0

    iget-object p0, p0, Ll23;->b:Lkotlin/coroutines/d;

    invoke-interface {p0, p1}, Lkotlin/coroutines/d;->minusKey(Lkotlin/coroutines/d$c;)Lkotlin/coroutines/d;

    move-result-object p0

    return-object p0
.end method

.method public plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 0

    iget-object p0, p0, Ll23;->b:Lkotlin/coroutines/d;

    invoke-interface {p0, p1}, Lkotlin/coroutines/d;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    return-object p0
.end method
