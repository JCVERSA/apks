.class public final Lkotlinx/coroutines/h$a;
.super Lkotlin/coroutines/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    sget-object v0, Lkotlinx/coroutines/c;->Key:Lkotlinx/coroutines/c$a;

    new-instance v1, Lbf3;

    invoke-direct {v1}, Lbf3;-><init>()V

    .line 3
    invoke-direct {p0, v0, v1}, Lkotlin/coroutines/b;-><init>(Lkotlin/coroutines/d$c;Le74;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/h$a;-><init>()V

    return-void
.end method

.method public static synthetic c(Lkotlin/coroutines/d$b;)Lkotlinx/coroutines/h;
    .locals 0

    invoke-static {p0}, Lkotlinx/coroutines/h$a;->d(Lkotlin/coroutines/d$b;)Lkotlinx/coroutines/h;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lkotlin/coroutines/d$b;)Lkotlinx/coroutines/h;
    .locals 1

    instance-of v0, p0, Lkotlinx/coroutines/h;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlinx/coroutines/h;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
