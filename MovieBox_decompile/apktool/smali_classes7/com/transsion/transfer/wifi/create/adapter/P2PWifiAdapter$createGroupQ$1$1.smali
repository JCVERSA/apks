.class public final Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$createGroupQ$1$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->t(Landroid/net/wifi/p2p/WifiP2pConfig$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$createGroupQ$1$1;->a:Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$createGroupQ$1$1;->a:Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lcom/transsion/transfer/wifi/util/i;->a:Lcom/transsion/transfer/wifi/util/i;

    .line 10
    .line 11
    invoke-virtual {v2, p1}, Lcom/transsion/transfer/wifi/util/i;->b(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " --> createWifiP2pGroup() --> createGroup() --> \u521b\u5efa\u7fa4\u7ec4\u5931\u8d25 -- reason = "

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p1, " --> \u5931\u8d25\u91cd\u8bd5"

    .line 32
    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/4 v1, 0x2

    .line 41
    const/4 v2, 0x0

    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-static {v0, p1, v3, v1, v2}, Lcom/transsion/transfer/wifi/util/g;->d(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$createGroupQ$1$1;->a:Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->p(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public onSuccess()V
    .locals 11

    .line 1
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$createGroupQ$1$1;->a:Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " --> createWifiP2pGroup() --> createGroup() --> onSuccess() --> \u521b\u5efa\u7fa4\u7ec4\u6210\u529f"

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x2

    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$createGroupQ$1$1;->a:Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/transsion/transfer/wifi/create/adapter/b;->c()Lkotlinx/coroutines/n0;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    if-eqz v5, :cond_0

    .line 39
    .line 40
    new-instance v8, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$createGroupQ$1$1$onSuccess$1;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$createGroupQ$1$1;->a:Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;

    .line 43
    .line 44
    invoke-direct {v8, v0, v4}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$createGroupQ$1$1$onSuccess$1;-><init>(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;Lkotlin/coroutines/Continuation;)V

    .line 45
    .line 46
    .line 47
    const/4 v9, 0x3

    .line 48
    const/4 v10, 0x0

    .line 49
    const/4 v6, 0x0

    .line 50
    const/4 v7, 0x0

    .line 51
    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method
