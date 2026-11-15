.class public final Lkotlinx/coroutines/selects/SelectImplementation$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/selects/SelectImplementation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lu74;

.field public final c:Lu74;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Lu74;

.field public g:Ljava/lang/Object;

.field public h:I

.field public final synthetic i:Lkotlinx/coroutines/selects/SelectImplementation;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/selects/SelectImplementation;Ljava/lang/Object;Lu74;Lu74;Ljava/lang/Object;Ljava/lang/Object;Lu74;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation$a;->i:Lkotlinx/coroutines/selects/SelectImplementation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/selects/SelectImplementation$a;->a:Ljava/lang/Object;

    iput-object p3, p0, Lkotlinx/coroutines/selects/SelectImplementation$a;->b:Lu74;

    iput-object p4, p0, Lkotlinx/coroutines/selects/SelectImplementation$a;->c:Lu74;

    iput-object p5, p0, Lkotlinx/coroutines/selects/SelectImplementation$a;->d:Ljava/lang/Object;

    iput-object p6, p0, Lkotlinx/coroutines/selects/SelectImplementation$a;->e:Ljava/lang/Object;

    iput-object p7, p0, Lkotlinx/coroutines/selects/SelectImplementation$a;->f:Lu74;

    const/4 p1, -0x1

    iput p1, p0, Lkotlinx/coroutines/selects/SelectImplementation$a;->h:I

    return-void
.end method


# virtual methods
.method public final a(Lxa9;Ljava/lang/Object;)Lu74;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation$a;->f:Lu74;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lkotlinx/coroutines/selects/SelectImplementation$a;->d:Ljava/lang/Object;

    invoke-interface {v0, p1, p0, p2}, Lu74;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu74;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation$a;->g:Ljava/lang/Object;

    iget-object v1, p0, Lkotlinx/coroutines/selects/SelectImplementation$a;->i:Lkotlinx/coroutines/selects/SelectImplementation;

    instance-of v2, v0, Loa9;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v0, Loa9;

    iget p0, p0, Lkotlinx/coroutines/selects/SelectImplementation$a;->h:I

    invoke-virtual {v1}, Lkotlinx/coroutines/selects/SelectImplementation;->getContext()Lkotlin/coroutines/d;

    move-result-object v1

    invoke-virtual {v0, p0, v3, v1}, Loa9;->s(ILjava/lang/Throwable;Lkotlin/coroutines/d;)V

    goto :goto_0

    :cond_0
    instance-of p0, v0, Luc2;

    if-eqz p0, :cond_1

    move-object v3, v0

    check-cast v3, Luc2;

    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Luc2;->dispose()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final c(Ljava/lang/Object;Lwh1;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation$a;->e:Ljava/lang/Object;

    iget-object p0, p0, Lkotlinx/coroutines/selects/SelectImplementation$a;->d:Ljava/lang/Object;

    invoke-static {}, Lya9;->i()Ly7a;

    move-result-object v1

    if-ne p0, v1, :cond_0

    const-string p0, "null cannot be cast to non-null type kotlin.coroutines.SuspendFunction0<R of kotlinx.coroutines.selects.SelectImplementation>"

    invoke-static {v0, p0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Le74;

    invoke-interface {v0, p2}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "null cannot be cast to non-null type kotlin.coroutines.SuspendFunction1<kotlin.Any?, R of kotlinx.coroutines.selects.SelectImplementation>"

    invoke-static {v0, p0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ls74;

    invoke-interface {v0, p1, p2}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation$a;->c:Lu74;

    iget-object v1, p0, Lkotlinx/coroutines/selects/SelectImplementation$a;->a:Ljava/lang/Object;

    iget-object p0, p0, Lkotlinx/coroutines/selects/SelectImplementation$a;->d:Ljava/lang/Object;

    invoke-interface {v0, v1, p0, p1}, Lu74;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final e(Lkotlinx/coroutines/selects/SelectImplementation;)Z
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation$a;->b:Lu74;

    iget-object v1, p0, Lkotlinx/coroutines/selects/SelectImplementation$a;->a:Ljava/lang/Object;

    iget-object p0, p0, Lkotlinx/coroutines/selects/SelectImplementation$a;->d:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p0}, Lu74;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lkotlinx/coroutines/selects/SelectImplementation;->f(Lkotlinx/coroutines/selects/SelectImplementation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lya9;->d()Ly7a;

    move-result-object p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
