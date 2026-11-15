.class public final Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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
    invoke-direct {p0}, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lretrofit2/HttpException;)Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;
    .locals 7

    .line 1
    const-string v0, "httpException"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p1}, Lretrofit2/HttpException;->response()Lretrofit2/j0;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Lretrofit2/j0;->d()Lokhttp3/ResponseBody;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v1, v0

    .line 19
    :goto_0
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->charStream()Ljava/io/Reader;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-static {v1}, Lkotlin/io/TextStreamsKt;->e(Ljava/io/Reader;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-lez v2, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move-object v1, v0

    .line 41
    :goto_1
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-static {}, Lcom/blankj/utilcode/util/o;->f()Lcom/google/gson/Gson;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const-class v3, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;

    .line 48
    .line 49
    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    move-object v0, v1

    .line 56
    :catch_0
    :cond_2
    if-eqz v0, :cond_3

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;->getCode()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-lez v1, :cond_3

    .line 67
    .line 68
    return-object v0

    .line 69
    :cond_3
    invoke-virtual {p1}, Lretrofit2/HttpException;->code()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {p1}, Lretrofit2/HttpException;->message()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-nez p1, :cond_4

    .line 82
    .line 83
    const-string p1, "default_msg"

    .line 84
    .line 85
    :cond_4
    move-object v2, p1

    .line 86
    new-instance p1, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;

    .line 87
    .line 88
    const/4 v5, 0x4

    .line 89
    const/4 v6, 0x0

    .line 90
    const/4 v4, 0x0

    .line 91
    move-object v1, p1

    .line 92
    invoke-direct/range {v1 .. v6}, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 93
    .line 94
    .line 95
    return-object p1
.end method
