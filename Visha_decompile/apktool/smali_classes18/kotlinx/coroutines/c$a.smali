.class public final Lkotlinx/coroutines/c$a;
.super Lkotlin/coroutines/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    sget-object v0, Lkotlin/coroutines/c;->A6:Lkotlin/coroutines/c$b;

    new-instance v1, Lgk1;

    invoke-direct {v1}, Lgk1;-><init>()V

    .line 3
    invoke-direct {p0, v0, v1}, Lkotlin/coroutines/b;-><init>(Lkotlin/coroutines/d$c;Le74;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/c$a;-><init>()V

    return-void
.end method

.method public static synthetic c(Lkotlin/coroutines/d$b;)Lkotlinx/coroutines/c;
    .locals 0

    invoke-static {p0}, Lkotlinx/coroutines/c$a;->d(Lkotlin/coroutines/d$b;)Lkotlinx/coroutines/c;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lkotlin/coroutines/d$b;)Lkotlinx/coroutines/c;
    .locals 1

    instance-of v0, p0, Lkotlinx/coroutines/c;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlinx/coroutines/c;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
