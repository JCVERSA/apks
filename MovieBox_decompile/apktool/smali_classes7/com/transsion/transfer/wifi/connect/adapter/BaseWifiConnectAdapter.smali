.class public abstract Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Lkotlinx/coroutines/n0;

.field private b:Lcom/transsion/transfer/wifi/connect/b;

.field private c:Ldu/a;

.field private d:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;Landroidx/appcompat/app/AppCompatActivity;Ldu/a;Lkotlinx/coroutines/n0;Lcom/transsion/transfer/wifi/connect/b;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p6, :cond_1

    .line 2
    .line 3
    and-int/lit8 p5, p5, 0x1

    .line 4
    .line 5
    if-eqz p5, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->a(Landroidx/appcompat/app/AppCompatActivity;Ldu/a;Lkotlinx/coroutines/n0;Lcom/transsion/transfer/wifi/connect/b;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: connect"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method


# virtual methods
.method public final a(Landroidx/appcompat/app/AppCompatActivity;Ldu/a;Lkotlinx/coroutines/n0;Lcom/transsion/transfer/wifi/connect/b;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->d:Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->c:Ldu/a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->a:Lkotlinx/coroutines/n0;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->b:Lcom/transsion/transfer/wifi/connect/b;

    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    new-instance v3, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter$connect$1;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-direct {v3, p0, p1}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter$connect$1;-><init>(Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x3

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    move-object v0, p3

    .line 22
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "getSimpleName(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final f()Landroidx/appcompat/app/AppCompatActivity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->d:Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Lkotlinx/coroutines/n0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->a:Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Lcom/transsion/transfer/wifi/connect/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->b:Lcom/transsion/transfer/wifi/connect/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Ldu/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->c:Ldu/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, " --> "

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 v1, 0x2

    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-static {v0, p1, v3, v1, v2}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final k()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->c()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->a:Lkotlinx/coroutines/n0;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->d:Landroidx/appcompat/app/AppCompatActivity;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->b:Lcom/transsion/transfer/wifi/connect/b;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->c:Ldu/a;

    .line 12
    .line 13
    return-void
.end method
