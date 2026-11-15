.class Lcom/transsion/transfer/androidasync/AsyncServer$6;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/AsyncServer;->p(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/future/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/transfer/androidasync/AsyncServer;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$ret:Lcom/transsion/transfer/androidasync/future/w;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/lang/String;Lcom/transsion/transfer/androidasync/future/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$6;->this$0:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/AsyncServer$6;->val$host:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/transfer/androidasync/AsyncServer$6;->val$ret:Lcom/transsion/transfer/androidasync/future/w;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer$6;->val$host:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/transsion/transfer/androidasync/AsyncServer;->g()Ljava/util/Comparator;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 12
    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    array-length v1, v0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$6;->this$0:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 20
    .line 21
    new-instance v2, Lcom/transsion/transfer/androidasync/AsyncServer$6$1;

    .line 22
    .line 23
    invoke-direct {v2, p0, v0}, Lcom/transsion/transfer/androidasync/AsyncServer$6$1;-><init>(Lcom/transsion/transfer/androidasync/AsyncServer$6;[Ljava/net/InetAddress;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/transsion/transfer/androidasync/AsyncServer;->D(Ljava/lang/Runnable;)Lcom/transsion/transfer/androidasync/future/a;

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catch_0
    move-exception v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Lcom/transsion/transfer/androidasync/HostnameResolutionException;

    .line 33
    .line 34
    const-string v1, "no addresses for host"

    .line 35
    .line 36
    invoke-direct {v0, v1}, Lcom/transsion/transfer/androidasync/HostnameResolutionException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$6;->this$0:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 41
    .line 42
    new-instance v2, Lcom/transsion/transfer/androidasync/AsyncServer$6$2;

    .line 43
    .line 44
    invoke-direct {v2, p0, v0}, Lcom/transsion/transfer/androidasync/AsyncServer$6$2;-><init>(Lcom/transsion/transfer/androidasync/AsyncServer$6;Ljava/lang/Exception;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Lcom/transsion/transfer/androidasync/AsyncServer;->D(Ljava/lang/Runnable;)Lcom/transsion/transfer/androidasync/future/a;

    .line 48
    .line 49
    .line 50
    :goto_1
    return-void
.end method
