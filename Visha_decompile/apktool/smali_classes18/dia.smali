.class public abstract Ldia;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ly7a;

.field public static final b:Ls74;

.field public static final c:Ls74;

.field public static final d:Ls74;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly7a;

    const-string v1, "NO_THREAD_ELEMENTS"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Ldia;->a:Ly7a;

    new-instance v0, Laia;

    invoke-direct {v0}, Laia;-><init>()V

    sput-object v0, Ldia;->b:Ls74;

    new-instance v0, Lbia;

    invoke-direct {v0}, Lbia;-><init>()V

    sput-object v0, Ldia;->c:Ls74;

    new-instance v0, Lcia;

    invoke-direct {v0}, Lcia;-><init>()V

    sput-object v0, Ldia;->d:Ls74;

    return-void
.end method

.method public static synthetic a(Lyha;Lkotlin/coroutines/d$b;)Lyha;
    .locals 0

    invoke-static {p0, p1}, Ldia;->e(Lyha;Lkotlin/coroutines/d$b;)Lyha;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Object;Lkotlin/coroutines/d$b;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Ldia;->d(Ljava/lang/Object;Lkotlin/coroutines/d$b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Llia;Lkotlin/coroutines/d$b;)Llia;
    .locals 0

    invoke-static {p0, p1}, Ldia;->h(Llia;Lkotlin/coroutines/d$b;)Llia;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Ljava/lang/Object;Lkotlin/coroutines/d$b;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, Lyha;

    if-eqz v0, :cond_3

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_1
    move p0, v0

    :goto_1
    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_2
    return-object p1

    :cond_3
    return-object p0
.end method

.method public static final e(Lyha;Lkotlin/coroutines/d$b;)Lyha;
    .locals 0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    instance-of p0, p1, Lyha;

    if-eqz p0, :cond_1

    check-cast p1, Lyha;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static final f(Lkotlin/coroutines/d;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Ldia;->a:Ly7a;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Llia;

    if-eqz v0, :cond_1

    check-cast p1, Llia;

    invoke-virtual {p1, p0}, Llia;->b(Lkotlin/coroutines/d;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    sget-object v1, Ldia;->c:Ls74;

    invoke-interface {p0, v0, v1}, Lkotlin/coroutines/d;->fold(Ljava/lang/Object;Ls74;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lyha;

    invoke-interface {v0, p0, p1}, Lyha;->e(Lkotlin/coroutines/d;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final g(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ldia;->b:Ls74;

    invoke-interface {p0, v0, v1}, Lkotlin/coroutines/d;->fold(Ljava/lang/Object;Ls74;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final h(Llia;Lkotlin/coroutines/d$b;)Llia;
    .locals 1

    instance-of v0, p1, Lyha;

    if-eqz v0, :cond_0

    check-cast p1, Lyha;

    iget-object v0, p0, Llia;->a:Lkotlin/coroutines/d;

    invoke-interface {p1, v0}, Lyha;->D(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Llia;->a(Lyha;Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public static final i(Lkotlin/coroutines/d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    invoke-static {p0}, Ldia;->g(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    sget-object p0, Ldia;->a:Ly7a;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    new-instance v0, Llia;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Llia;-><init>(Lkotlin/coroutines/d;I)V

    sget-object p1, Ldia;->d:Ls74;

    invoke-interface {p0, v0, p1}, Lkotlin/coroutines/d;->fold(Ljava/lang/Object;Ls74;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {p1, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lyha;

    invoke-interface {p1, p0}, Lyha;->D(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method
