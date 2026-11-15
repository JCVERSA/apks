.class public final Lfh8;
.super Lts0;
.source "SourceFile"

# interfaces
.implements Lgh8;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/d;Lps0;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lts0;-><init>(Lkotlin/coroutines/d;Lps0;ZZ)V

    return-void
.end method


# virtual methods
.method public X(Lzfb;)V
    .locals 1

    invoke-virtual {p0}, Lts0;->W()Lps0;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p1}, Lbc9$a;->a(Lbc9;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic b()Lbc9;
    .locals 0

    invoke-virtual {p0}, Lts0;->V()Lps0;

    move-result-object p0

    return-object p0
.end method

.method public isActive()Z
    .locals 0

    invoke-super {p0}, Lkotlinx/coroutines/a;->isActive()Z

    move-result p0

    return p0
.end method

.method public onCancelled(Ljava/lang/Throwable;Z)V
    .locals 1

    invoke-virtual {p0}, Lts0;->W()Lps0;

    move-result-object v0

    invoke-interface {v0, p1}, Lbc9;->m(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/a;->getContext()Lkotlin/coroutines/d;

    move-result-object p0

    invoke-static {p0, p1}, Lkk1;->a(Lkotlin/coroutines/d;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lzfb;

    invoke-virtual {p0, p1}, Lfh8;->X(Lzfb;)V

    return-void
.end method
