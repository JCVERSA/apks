.class public final Lqu1;
.super Lpu1;
.source "SourceFile"

# interfaces
.implements Lwh1;


# instance fields
.field public b:Lu74;

.field public c:Ljava/lang/Object;

.field public d:Lwh1;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lu74;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "block"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lpu1;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lqu1;->b:Lu74;

    iput-object p2, p0, Lqu1;->c:Ljava/lang/Object;

    const-string p1, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>"

    invoke-static {p0, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p0, p0, Lqu1;->d:Lwh1;

    invoke-static {}, Lkotlin/a;->a()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lqu1;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lwh1;)Ljava/lang/Object;
    .locals 1

    const-string v0, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>"

    invoke-static {p2, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lqu1;->d:Lwh1;

    iput-object p1, p0, Lqu1;->c:Ljava/lang/Object;

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    invoke-static {p2}, Lpt1;->c(Lwh1;)V

    :cond_0
    return-object p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 4

    :cond_0
    :goto_0
    iget-object v0, p0, Lqu1;->e:Ljava/lang/Object;

    iget-object v1, p0, Lqu1;->d:Lwh1;

    if-nez v1, :cond_1

    invoke-static {v0}, Lkotlin/c;->b(Ljava/lang/Object;)V

    return-object v0

    :cond_1
    invoke-static {}, Lkotlin/a;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/Result;->equals-impl0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_0
    iget-object v0, p0, Lqu1;->b:Lu74;

    iget-object v2, p0, Lqu1;->c:Ljava/lang/Object;

    instance-of v3, v0, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;

    if-nez v3, :cond_2

    invoke-static {v0, p0, v2, v1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->e(Lu74;Ljava/lang/Object;Ljava/lang/Object;Lwh1;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    const/4 v3, 0x3

    invoke-static {v0, v3}, Lccb;->f(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu74;

    invoke-interface {v0, p0, v2, v1}, Lu74;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v2

    if-eq v0, v2, :cond_0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :goto_2
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lkotlin/a;->a()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lqu1;->e:Ljava/lang/Object;

    invoke-interface {v1, v0}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getContext()Lkotlin/coroutines/d;
    .locals 0

    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    return-object p0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lqu1;->d:Lwh1;

    iput-object p1, p0, Lqu1;->e:Ljava/lang/Object;

    return-void
.end method
