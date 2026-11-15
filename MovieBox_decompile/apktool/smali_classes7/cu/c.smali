.class public final Lcu/c;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcu/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcu/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcu/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcu/c;->a:Lcu/c;

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

.method private final a()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcu/c;

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

.method private final b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->getAction()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p1}, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->getAction()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    sget-object p1, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/transsion/transfer/wifi/util/WifiUtils;->q()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v1, "is_p2p_supported"

    .line 30
    .line 31
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 35
    .line 36
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v1, "sdk_int"

    .line 41
    .line 42
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    return-object v0
.end method

.method private final c(Ljava/util/Map;)V
    .locals 3

    .line 1
    sget-object v0, Lqi/h;->a:Lqi/h;

    .line 2
    .line 3
    const-string v1, "wifi_p2p"

    .line 4
    .line 5
    const-string v2, "transfer"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2, p1}, Lqi/h;->q(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 6

    .line 1
    sget-object v0, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION_CONNECT_CANCEL:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcu/c;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 8
    .line 9
    invoke-direct {p0}, Lcu/c;->a()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, " --> reportConnectWifiCancel() --> map = "

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    invoke-static {v1, v2, v5, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->f(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v0}, Lcu/c;->c(Ljava/util/Map;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final e(I)V
    .locals 5

    .line 1
    sget-object v0, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION_CONNECT_FAIL:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcu/c;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "code"

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 17
    .line 18
    invoke-direct {p0}, Lcu/c;->a()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, " --> reportConnectWifiFail() --> map = "

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/4 v2, 0x2

    .line 43
    const/4 v3, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-static {p1, v1, v4, v2, v3}, Lcom/transsion/transfer/wifi/util/g;->f(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, v0}, Lcu/c;->c(Ljava/util/Map;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final f(J)V
    .locals 4

    .line 1
    sget-object v0, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION_CONNECT_SUCCESS:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcu/c;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "duration"

    .line 8
    .line 9
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 17
    .line 18
    invoke-direct {p0}, Lcu/c;->a()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p2, " --> reportConnectWifiSuccess() --> map = "

    .line 31
    .line 32
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    const/4 v1, 0x2

    .line 43
    const/4 v2, 0x0

    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-static {p1, p2, v3, v1, v2}, Lcom/transsion/transfer/wifi/util/g;->f(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, v0}, Lcu/c;->c(Ljava/util/Map;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final g()V
    .locals 6

    .line 1
    sget-object v0, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION_CONNECT_TRIGGER:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcu/c;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 8
    .line 9
    invoke-direct {p0}, Lcu/c;->a()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, " --> reportConnectWifiTrigger() --> map = "

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    invoke-static {v1, v2, v5, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->f(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v0}, Lcu/c;->c(Ljava/util/Map;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final h()V
    .locals 6

    .line 1
    sget-object v0, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION_CREATE_CANCEL:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcu/c;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 8
    .line 9
    invoke-direct {p0}, Lcu/c;->a()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, " --> reportCreateWifiP2PCancel() --> map = "

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    invoke-static {v1, v2, v5, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->f(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v0}, Lcu/c;->c(Ljava/util/Map;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final i(I)V
    .locals 5

    .line 1
    sget-object v0, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION_CREATE_FAIL:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcu/c;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "code"

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 17
    .line 18
    invoke-direct {p0}, Lcu/c;->a()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, " --> reportCreateWifiP2PFail() --> map = "

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/4 v2, 0x2

    .line 43
    const/4 v3, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-static {p1, v1, v4, v2, v3}, Lcom/transsion/transfer/wifi/util/g;->f(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, v0}, Lcu/c;->c(Ljava/util/Map;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final j(JJ)V
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION_CREATE_SUCCESS:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcu/c;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "duration"

    .line 8
    .line 9
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    const-string p1, "qr_duration"

    .line 17
    .line 18
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 26
    .line 27
    invoke-direct {p0}, Lcu/c;->a()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    new-instance p3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p2, " --> reportCreateWifiP2PSuccess() --> map = "

    .line 40
    .line 41
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    const/4 p3, 0x2

    .line 52
    const/4 p4, 0x0

    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-static {p1, p2, v1, p3, p4}, Lcom/transsion/transfer/wifi/util/g;->f(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, v0}, Lcu/c;->c(Ljava/util/Map;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final k()V
    .locals 6

    .line 1
    sget-object v0, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION_CREATE_TRIGGER:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcu/c;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 8
    .line 9
    invoke-direct {p0}, Lcu/c;->a()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, " --> reportCreateWifiP2PTrigger() --> map = "

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    invoke-static {v1, v2, v5, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->f(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v0}, Lcu/c;->c(Ljava/util/Map;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/wifi/bean/PermissionState;)V
    .locals 3

    .line 1
    const-string v0, "permissions"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "permissionsState"

    .line 7
    .line 8
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION_PERMISSION_REQUEST:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    .line 12
    .line 13
    invoke-direct {p0, v1}, Lcu/c;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "com.transsion.transfer.wifi.util.send"

    .line 18
    .line 19
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const-string p1, "sender"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string p1, "receiver"

    .line 29
    .line 30
    :goto_0
    const-string v2, "user_role"

    .line 31
    .line 32
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    const-string p1, "state"

    .line 39
    .line 40
    invoke-virtual {p3}, Lcom/transsion/transfer/wifi/bean/PermissionState;->getState()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION_PERMISSION_PAGE_PV:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcu/c;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "com.transsion.transfer.wifi.util.send"

    .line 8
    .line 9
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    sget-object p1, Lcom/transsion/transfer/wifi/permission/d;->a:Lcom/transsion/transfer/wifi/permission/d;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/transsion/transfer/wifi/permission/d;->e()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Ljava/lang/Iterable;

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/transsion/transfer/wifi/permission/PermissionsBean;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->getPermission()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1}, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->getState()Lcom/transsion/transfer/wifi/bean/PermissionState;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/transsion/transfer/wifi/bean/PermissionState;->getState()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const-string p1, "sender"

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_1
    sget-object p1, Lcom/transsion/transfer/wifi/permission/d;->a:Lcom/transsion/transfer/wifi/permission/d;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/transsion/transfer/wifi/permission/d;->c()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Ljava/lang/Iterable;

    .line 65
    .line 66
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_2

    .line 75
    .line 76
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Lcom/transsion/transfer/wifi/permission/PermissionsBean;

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->getPermission()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v1}, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->getState()Lcom/transsion/transfer/wifi/bean/PermissionState;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1}, Lcom/transsion/transfer/wifi/bean/PermissionState;->getState()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    const-string p1, "receiver"

    .line 99
    .line 100
    :goto_2
    const-string v1, "user_role"

    .line 101
    .line 102
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 106
    .line 107
    invoke-direct {p0}, Lcu/c;->a()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v1, " --> reportPermission() --> map = "

    .line 120
    .line 121
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    const/4 v2, 0x2

    .line 132
    const/4 v3, 0x0

    .line 133
    const/4 v4, 0x0

    .line 134
    invoke-static {p1, v1, v4, v2, v3}, Lcom/transsion/transfer/wifi/util/g;->f(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    invoke-direct {p0, v0}, Lcu/c;->c(Ljava/util/Map;)V

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method public final n()V
    .locals 6

    .line 1
    sget-object v0, Lcom/transsion/transfer/wifi/bean/ReportTransferAction;->REPORT_TRANSFER_ACTION_SHARE_APK_DIALOG:Lcom/transsion/transfer/wifi/bean/ReportTransferAction;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcu/c;->b(Lcom/transsion/transfer/wifi/bean/ReportTransferAction;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 8
    .line 9
    invoke-direct {p0}, Lcu/c;->a()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, " --> reportShareApkDialogShow() --> map = "

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    invoke-static {v1, v2, v5, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->f(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v0}, Lcu/c;->c(Ljava/util/Map;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
