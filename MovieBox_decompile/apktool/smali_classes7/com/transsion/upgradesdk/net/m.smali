.class public final Lcom/transsion/upgradesdk/net/m;
.super Lkotlin/jvm/internal/Lambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final a:Lcom/transsion/upgradesdk/net/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/upgradesdk/net/m;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/upgradesdk/net/m;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/upgradesdk/net/m;->a:Lcom/transsion/upgradesdk/net/m;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lretrofit2/k0$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lretrofit2/k0$b;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lru/g;->a:Lkotlin/Lazy;

    .line 7
    .line 8
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lretrofit2/k0$b;->c(Ljava/lang/String;)Lretrofit2/k0$b;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {}, Lk00/a;->f()Lk00/a;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lretrofit2/k0$b;->b(Lretrofit2/k$a;)Lretrofit2/k0$b;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v1, Lru/g;->c:Lokhttp3/OkHttpClient;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lretrofit2/k0$b;->g(Lokhttp3/OkHttpClient;)Lretrofit2/k0$b;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lretrofit2/k0$b;->e()Lretrofit2/k0;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method
