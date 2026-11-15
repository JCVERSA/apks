.class public abstract Lkotlin/coroutines/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/d$c;


# instance fields
.field public final b:Le74;

.field public final c:Lkotlin/coroutines/d$c;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/d$c;Le74;)V
    .locals 1

    const-string v0, "baseKey"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeCast"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlin/coroutines/b;->b:Le74;

    instance-of p2, p1, Lkotlin/coroutines/b;

    if-eqz p2, :cond_0

    check-cast p1, Lkotlin/coroutines/b;

    iget-object p1, p1, Lkotlin/coroutines/b;->c:Lkotlin/coroutines/d$c;

    :cond_0
    iput-object p1, p0, Lkotlin/coroutines/b;->c:Lkotlin/coroutines/d$c;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/d$c;)Z
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq p1, p0, :cond_1

    iget-object p0, p0, Lkotlin/coroutines/b;->c:Lkotlin/coroutines/d$c;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final b(Lkotlin/coroutines/d$b;)Lkotlin/coroutines/d$b;
    .locals 1

    const-string v0, "element"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/coroutines/b;->b:Le74;

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/coroutines/d$b;

    return-object p0
.end method
