.class public final Lcom/tn/tranpay/network/RetrofitClient;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/tn/tranpay/network/RetrofitClient;

.field private static b:Ljava/lang/String;

.field private static final c:Lkotlin/Lazy;

.field private static final d:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tn/tranpay/network/RetrofitClient;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tn/tranpay/network/RetrofitClient;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tn/tranpay/network/RetrofitClient;->a:Lcom/tn/tranpay/network/RetrofitClient;

    .line 7
    .line 8
    sget-object v0, Lcom/tn/tranpay/TranPayConfiguration;->a:Lcom/tn/tranpay/TranPayConfiguration;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/tn/tranpay/TranPayConfiguration;->u()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string v0, "https://api.paynicorn.com"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v0, "https://test.paynicorn.com/"

    .line 20
    .line 21
    :goto_0
    sput-object v0, Lcom/tn/tranpay/network/RetrofitClient;->b:Ljava/lang/String;

    .line 22
    .line 23
    sget-object v0, Lcom/tn/tranpay/network/RetrofitClient$okHttpClient$2;->INSTANCE:Lcom/tn/tranpay/network/RetrofitClient$okHttpClient$2;

    .line 24
    .line 25
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/tn/tranpay/network/RetrofitClient;->c:Lkotlin/Lazy;

    .line 30
    .line 31
    sget-object v0, Lcom/tn/tranpay/network/RetrofitClient$retrofit$2;->INSTANCE:Lcom/tn/tranpay/network/RetrofitClient$retrofit$2;

    .line 32
    .line 33
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/tn/tranpay/network/RetrofitClient;->d:Lkotlin/Lazy;

    .line 38
    .line 39
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

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tn/tranpay/network/RetrofitClient;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b(Lcom/tn/tranpay/network/RetrofitClient;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tn/tranpay/network/RetrofitClient;->c()Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final c()Lokhttp3/OkHttpClient;
    .locals 1

    .line 1
    sget-object v0, Lcom/tn/tranpay/network/RetrofitClient;->c:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lokhttp3/OkHttpClient;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final d()Lretrofit2/k0;
    .locals 2

    .line 1
    sget-object v0, Lcom/tn/tranpay/network/RetrofitClient;->d:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<get-retrofit>(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Lretrofit2/k0;

    .line 13
    .line 14
    return-object v0
.end method
