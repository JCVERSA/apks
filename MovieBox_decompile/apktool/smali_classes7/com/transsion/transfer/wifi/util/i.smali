.class public final Lcom/transsion/transfer/wifi/util/i;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/transfer/wifi/util/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/transfer/wifi/util/i;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/transfer/wifi/util/i;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/transfer/wifi/util/i;->a:Lcom/transsion/transfer/wifi/util/i;

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

.method public static final synthetic a(Lcom/transsion/transfer/wifi/util/i;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/util/i;->c()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final c()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/transsion/transfer/wifi/util/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getSimpleName(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static synthetic e(Lcom/transsion/transfer/wifi/util/i;Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZZZZILjava/lang/Object;)V
    .locals 9

    .line 1
    and-int/lit8 v0, p7, 0x4

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move v5, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v5, p3

    .line 9
    :goto_0
    and-int/lit8 v0, p7, 0x8

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    move v6, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move v6, p4

    .line 16
    :goto_1
    and-int/lit8 v0, p7, 0x10

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    move v7, v1

    .line 21
    goto :goto_2

    .line 22
    :cond_2
    move v7, p5

    .line 23
    :goto_2
    and-int/lit8 v0, p7, 0x20

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    move v8, v1

    .line 28
    goto :goto_3

    .line 29
    :cond_3
    move v8, p6

    .line 30
    :goto_3
    move-object v2, p0

    .line 31
    move-object v3, p1

    .line 32
    move-object v4, p2

    .line 33
    invoke-virtual/range {v2 .. v8}, Lcom/transsion/transfer/wifi/util/i;->d(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZZZZ)V

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final b(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    const-string p1, "unknown"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string p1, "3 -- \u8868\u793a {@link discoveryServices} \u5931\u8d25\uff0c\u56e0\u4e3a\u6ca1\u6709\u6dfb\u52a0\u670d\u52a1\u8bf7\u6c42\u3002\u4f7f\u7528 {@link addServiceRequest} \u6dfb\u52a0\u670d\u52a1\u8bf7\u6c42\u3002"

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const-string p1, "2 -- \u8868\u793a\u64cd\u4f5c\u5931\u8d25\uff0c\u56e0\u4e3a\u6846\u67b6\u6b63\u5fd9\uff0c\u65e0\u6cd5\u5904\u7406\u8bf7\u6c42"

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    const-string p1, "1 -- \u8868\u793a\u64cd\u4f5c\u5931\u8d25\uff0c\u56e0\u4e3a\u8bbe\u5907\u4e0d\u652f\u6301 p2p\u3002"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_3
    const-string p1, "0 -- \u8868\u793a\u64cd\u4f5c\u7531\u4e8e\u5185\u90e8\u9519\u8bef\u800c\u5931\u8d25\u3002"

    .line 25
    .line 26
    :goto_0
    return-object p1
.end method

.method public final d(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZZZZ)V
    .locals 5

    .line 1
    if-eqz p2, :cond_4

    .line 2
    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v1, 0x1a

    .line 6
    .line 7
    if-le v0, v1, :cond_0

    .line 8
    .line 9
    invoke-static {p2}, Lcom/transsion/transfer/wifi/util/h;->a(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 13
    .line 14
    sget-object v1, Lcom/transsion/transfer/wifi/util/i;->a:Lcom/transsion/transfer/wifi/util/i;

    .line 15
    .line 16
    invoke-direct {v1}, Lcom/transsion/transfer/wifi/util/i;->c()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, " --> release() --> WifiP2pManager.close() --> API27\u624d\u6709\u8fd9\u4e2a\u65b9\u6cd5 --> \u6210\u529f"

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x2

    .line 38
    const/4 v3, 0x0

    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-static {v0, v1, v4, v2, v3}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    if-eqz p6, :cond_1

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    new-instance p6, Lcom/transsion/transfer/wifi/util/i$a;

    .line 48
    .line 49
    invoke-direct {p6}, Lcom/transsion/transfer/wifi/util/i$a;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2, p6}, Landroid/net/wifi/p2p/WifiP2pManager;->clearLocalServices(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    if-eqz p3, :cond_2

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    new-instance p3, Lcom/transsion/transfer/wifi/util/i$b;

    .line 60
    .line 61
    invoke-direct {p3}, Lcom/transsion/transfer/wifi/util/i$b;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2, p3}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    if-eqz p4, :cond_3

    .line 68
    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    new-instance p3, Lcom/transsion/transfer/wifi/util/i$c;

    .line 72
    .line 73
    invoke-direct {p3}, Lcom/transsion/transfer/wifi/util/i$c;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2, p3}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    if-eqz p5, :cond_4

    .line 80
    .line 81
    if-eqz p1, :cond_4

    .line 82
    .line 83
    new-instance p3, Lcom/transsion/transfer/wifi/util/i$d;

    .line 84
    .line 85
    invoke-direct {p3}, Lcom/transsion/transfer/wifi/util/i$d;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p2, p3}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 89
    .line 90
    .line 91
    :cond_4
    return-void
.end method
