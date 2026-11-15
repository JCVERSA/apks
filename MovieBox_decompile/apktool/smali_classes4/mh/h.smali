.class public final Lmh/h;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lmh/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lmh/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lmh/h;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lmh/h;->a:Lmh/h;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final b(Lokhttp3/Interceptor$Chain;)Lmh/i;
    .locals 2

    .line 1
    sget-object v0, Lmh/m;->a:Lmh/m;

    .line 2
    .line 3
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->call()Lokhttp3/Call;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v1, "chain.call()"

    .line 8
    .line 9
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "eventListener"

    .line 13
    .line 14
    invoke-virtual {v0, p1, v1}, Lmh/m;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    instance-of v0, p1, Lmh/i;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    check-cast p1, Lmh/i;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    return-object p1
.end method


# virtual methods
.method public final a(Lokhttp3/Interceptor$Chain;Lokhttp3/Request;I)V
    .locals 1

    .line 1
    const-string v0, "chain"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "buildRequest"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lmh/h;->b(Lokhttp3/Interceptor$Chain;)Lmh/i;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-interface {p1, p2, p3}, Lmh/i;->a(Lokhttp3/Request;I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
