.class public final Lufb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/d$b;
.implements Lkotlin/coroutines/d$c;


# static fields
.field public static final b:Lufb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lufb;

    invoke-direct {v0}, Lufb;-><init>()V

    sput-object v0, Lufb;->b:Lufb;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Ls74;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lkotlin/coroutines/d$b$a;->a(Lkotlin/coroutines/d$b;Ljava/lang/Object;Ls74;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Lkotlin/coroutines/d$c;)Lkotlin/coroutines/d$b;
    .locals 0

    invoke-static {p0, p1}, Lkotlin/coroutines/d$b$a;->b(Lkotlin/coroutines/d$b;Lkotlin/coroutines/d$c;)Lkotlin/coroutines/d$b;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Lkotlin/coroutines/d$c;
    .locals 0

    return-object p0
.end method

.method public minusKey(Lkotlin/coroutines/d$c;)Lkotlin/coroutines/d;
    .locals 0

    invoke-static {p0, p1}, Lkotlin/coroutines/d$b$a;->c(Lkotlin/coroutines/d$b;Lkotlin/coroutines/d$c;)Lkotlin/coroutines/d;

    move-result-object p0

    return-object p0
.end method

.method public plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 0

    invoke-static {p0, p1}, Lkotlin/coroutines/d$b$a;->d(Lkotlin/coroutines/d$b;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    return-object p0
.end method
