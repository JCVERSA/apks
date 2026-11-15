.class public final Landroidx/navigation/f$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/navigation/f$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/x0;)Landroidx/navigation/f;
    .locals 2

    .line 1
    const-string v0, "viewModelStore"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/lifecycle/v0;

    .line 7
    .line 8
    invoke-static {}, Landroidx/navigation/f;->b()Landroidx/lifecycle/v0$c;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/x0;Landroidx/lifecycle/v0$c;)V

    .line 13
    .line 14
    .line 15
    const-class p1, Landroidx/navigation/f;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "get(VM::class.java)"

    .line 22
    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    check-cast p1, Landroidx/navigation/f;

    .line 27
    .line 28
    return-object p1
.end method
