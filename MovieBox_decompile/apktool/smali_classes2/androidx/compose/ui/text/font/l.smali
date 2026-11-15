.class public final Landroidx/compose/ui/text/font/l;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/font/l$a;
    }
.end annotation


# static fields
.field public static final c:Landroidx/compose/ui/text/font/l$a;

.field public static final d:I

.field private static final e:Landroidx/compose/ui/text/font/m;

.field private static final f:Lkotlinx/coroutines/j0;


# instance fields
.field private final a:Landroidx/compose/ui/text/font/e;

.field private b:Lkotlinx/coroutines/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/text/font/l$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/text/font/l$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/text/font/l;->c:Landroidx/compose/ui/text/font/l$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Landroidx/compose/ui/text/font/l;->d:I

    .line 12
    .line 13
    new-instance v0, Landroidx/compose/ui/text/font/m;

    .line 14
    .line 15
    invoke-direct {v0}, Landroidx/compose/ui/text/font/m;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Landroidx/compose/ui/text/font/l;->e:Landroidx/compose/ui/text/font/m;

    .line 19
    .line 20
    sget-object v0, Lkotlinx/coroutines/j0;->l1:Lkotlinx/coroutines/j0$a;

    .line 21
    .line 22
    new-instance v1, Landroidx/compose/ui/text/font/l$b;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/font/l$b;-><init>(Lkotlinx/coroutines/j0$a;)V

    .line 25
    .line 26
    .line 27
    sput-object v1, Landroidx/compose/ui/text/font/l;->f:Lkotlinx/coroutines/j0;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Landroidx/compose/ui/text/font/l;-><init>(Landroidx/compose/ui/text/font/e;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/font/e;Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/compose/ui/text/font/l;->a:Landroidx/compose/ui/text/font/e;

    .line 4
    sget-object p1, Landroidx/compose/ui/text/font/l;->f:Lkotlinx/coroutines/j0;

    .line 5
    invoke-static {}, Landroidx/compose/ui/text/platform/j;->a()Lkotlinx/coroutines/i0;

    move-result-object v0

    .line 6
    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-interface {p1, p2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    .line 7
    sget-object v0, Lkotlinx/coroutines/t1;->m1:Lkotlinx/coroutines/t1$b;

    invoke-interface {p2, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/t1;

    invoke-static {p2}, Lkotlinx/coroutines/l2;->a(Lkotlinx/coroutines/t1;)Lkotlinx/coroutines/z;

    move-result-object p2

    .line 8
    invoke-interface {p1, p2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/text/font/l;->b:Lkotlinx/coroutines/n0;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/font/e;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 10
    new-instance p1, Landroidx/compose/ui/text/font/e;

    invoke-direct {p1}, Landroidx/compose/ui/text/font/e;-><init>()V

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 11
    sget-object p2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 12
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/text/font/l;-><init>(Landroidx/compose/ui/text/font/e;Lkotlin/coroutines/CoroutineContext;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/ui/text/font/d0;Landroidx/compose/ui/text/font/u;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/text/font/e0;
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/d0;->c()Landroidx/compose/ui/text/font/h;

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    return-object p1
.end method
