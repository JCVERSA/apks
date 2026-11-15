.class public final Lcom/transsion/transfer/impl/client/TransferClient$g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/transfer/impl/PingPongHelper$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/impl/client/TransferClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/impl/client/TransferClient;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/impl/client/TransferClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient$g;->a:Lcom/transsion/transfer/impl/client/TransferClient;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic b(Lcom/transsion/transfer/impl/client/TransferClient;ZLjava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/transfer/impl/client/TransferClient$g;->c(Lcom/transsion/transfer/impl/client/TransferClient;ZLjava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final c(Lcom/transsion/transfer/impl/client/TransferClient;ZLjava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "error"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    sget-object p1, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/client/TransferClient$a;->j()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-static {p0, p1}, Lcom/transsion/transfer/impl/client/TransferClient;->Q(Lcom/transsion/transfer/impl/client/TransferClient;Lcom/transsion/transfer/androidasync/http/b0;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->D(Lcom/transsion/transfer/impl/client/TransferClient;)Lcom/transsion/transfer/impl/client/TransferClient$h;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p2}, Lcom/transsion/transfer/impl/client/TransferClient$h;->N()V

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->z(Lcom/transsion/transfer/impl/client/TransferClient;)Lcom/transsion/transfer/impl/client/o;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p2}, Lcom/transsion/transfer/impl/client/o;->q()V

    .line 29
    .line 30
    .line 31
    invoke-static {p0, p1}, Lcom/transsion/transfer/impl/client/TransferClient;->O(Lcom/transsion/transfer/impl/client/TransferClient;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    sget-object p0, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/transsion/transfer/impl/client/TransferClient$a;->j()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/b0;)V
    .locals 4

    .line 1
    const-string v0, "remoteIp"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "socket"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/client/TransferClient$a;->j()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient$g;->a:Lcom/transsion/transfer/impl/client/TransferClient;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/transsion/transfer/impl/client/TransferClient;->y(Lcom/transsion/transfer/impl/client/TransferClient;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient$g;->a:Lcom/transsion/transfer/impl/client/TransferClient;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/transsion/transfer/impl/client/TransferClient;->F(Lcom/transsion/transfer/impl/client/TransferClient;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/transsion/transfer/impl/client/TransferClient$g;->a:Lcom/transsion/transfer/impl/client/TransferClient;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/transsion/transfer/impl/client/TransferClient;->x(Lcom/transsion/transfer/impl/client/TransferClient;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v3, "client detach socket has closed, disconnectByUser:"

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p1, ", serverIp: "

    .line 48
    .line 49
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p1, ", clientIp: "

    .line 56
    .line 57
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p1, ", start auto connect"

    .line 64
    .line 65
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-interface {p2}, Lcom/transsion/transfer/androidasync/p;->close()V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient$g;->a:Lcom/transsion/transfer/impl/client/TransferClient;

    .line 72
    .line 73
    invoke-static {p1}, Lcom/transsion/transfer/impl/client/TransferClient;->C(Lcom/transsion/transfer/impl/client/TransferClient;)Lcom/transsion/transfer/impl/PingPongHelper;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-eqz p1, :cond_0

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/transsion/transfer/impl/PingPongHelper;->o()V

    .line 80
    .line 81
    .line 82
    :cond_0
    iget-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient$g;->a:Lcom/transsion/transfer/impl/client/TransferClient;

    .line 83
    .line 84
    const/4 p2, 0x0

    .line 85
    invoke-static {p1, p2}, Lcom/transsion/transfer/impl/client/TransferClient;->N(Lcom/transsion/transfer/impl/client/TransferClient;Lcom/transsion/transfer/impl/PingPongHelper;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient$g;->a:Lcom/transsion/transfer/impl/client/TransferClient;

    .line 89
    .line 90
    invoke-static {p1}, Lcom/transsion/transfer/impl/client/TransferClient;->y(Lcom/transsion/transfer/impl/client/TransferClient;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_1

    .line 95
    .line 96
    iget-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient$g;->a:Lcom/transsion/transfer/impl/client/TransferClient;

    .line 97
    .line 98
    new-instance p2, Lcom/transsion/transfer/impl/client/m;

    .line 99
    .line 100
    invoke-direct {p2, p1}, Lcom/transsion/transfer/impl/client/m;-><init>(Lcom/transsion/transfer/impl/client/TransferClient;)V

    .line 101
    .line 102
    .line 103
    invoke-static {p1, p2}, Lcom/transsion/transfer/impl/client/TransferClient;->v(Lcom/transsion/transfer/impl/client/TransferClient;Lkotlin/jvm/functions/Function2;)V

    .line 104
    .line 105
    .line 106
    :cond_1
    return-void
.end method
