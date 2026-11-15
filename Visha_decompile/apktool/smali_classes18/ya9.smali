.class public abstract Lya9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lu74;

.field public static final b:Ly7a;

.field public static final c:Ly7a;

.field public static final d:Ly7a;

.field public static final e:Ly7a;

.field public static final f:Ly7a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lya9$a;->b:Lya9$a;

    sput-object v0, Lya9;->a:Lu74;

    new-instance v0, Ly7a;

    const-string v1, "STATE_REG"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lya9;->b:Ly7a;

    new-instance v0, Ly7a;

    const-string v1, "STATE_COMPLETED"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lya9;->c:Ly7a;

    new-instance v0, Ly7a;

    const-string v1, "STATE_CANCELLED"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lya9;->d:Ly7a;

    new-instance v0, Ly7a;

    const-string v1, "NO_RESULT"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lya9;->e:Ly7a;

    new-instance v0, Ly7a;

    const-string v1, "PARAM_CLAUSE_0"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lya9;->f:Ly7a;

    return-void
.end method

.method public static final a(I)Lkotlinx/coroutines/selects/TrySelectDetailedResult;
    .locals 3

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    sget-object p0, Lkotlinx/coroutines/selects/TrySelectDetailedResult;->ALREADY_SELECTED:Lkotlinx/coroutines/selects/TrySelectDetailedResult;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected internal result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lkotlinx/coroutines/selects/TrySelectDetailedResult;->CANCELLED:Lkotlinx/coroutines/selects/TrySelectDetailedResult;

    goto :goto_0

    :cond_2
    sget-object p0, Lkotlinx/coroutines/selects/TrySelectDetailedResult;->REREGISTER:Lkotlinx/coroutines/selects/TrySelectDetailedResult;

    goto :goto_0

    :cond_3
    sget-object p0, Lkotlinx/coroutines/selects/TrySelectDetailedResult;->SUCCESSFUL:Lkotlinx/coroutines/selects/TrySelectDetailedResult;

    :goto_0
    return-object p0
.end method

.method public static final synthetic b(I)Lkotlinx/coroutines/selects/TrySelectDetailedResult;
    .locals 0

    invoke-static {p0}, Lya9;->a(I)Lkotlinx/coroutines/selects/TrySelectDetailedResult;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c()Lu74;
    .locals 1

    sget-object v0, Lya9;->a:Lu74;

    return-object v0
.end method

.method public static final synthetic d()Ly7a;
    .locals 1

    sget-object v0, Lya9;->e:Ly7a;

    return-object v0
.end method

.method public static final synthetic e()Ly7a;
    .locals 1

    sget-object v0, Lya9;->d:Ly7a;

    return-object v0
.end method

.method public static final synthetic f()Ly7a;
    .locals 1

    sget-object v0, Lya9;->c:Ly7a;

    return-object v0
.end method

.method public static final synthetic g()Ly7a;
    .locals 1

    sget-object v0, Lya9;->b:Ly7a;

    return-object v0
.end method

.method public static final synthetic h(Lcr0;Lu74;)Z
    .locals 0

    invoke-static {p0, p1}, Lya9;->j(Lcr0;Lu74;)Z

    move-result p0

    return p0
.end method

.method public static final i()Ly7a;
    .locals 1

    sget-object v0, Lya9;->f:Ly7a;

    return-object v0
.end method

.method public static final j(Lcr0;Lu74;)Z
    .locals 2

    sget-object v0, Lzfb;->a:Lzfb;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, p1}, Lcr0;->tryResume(Ljava/lang/Object;Ljava/lang/Object;Lu74;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0, p1}, Lcr0;->completeResume(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method
