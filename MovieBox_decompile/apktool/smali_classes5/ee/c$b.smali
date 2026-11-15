.class public Lee/c$b;
.super Landroid/os/Handler;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lee/c;-><init>(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lee/i;Lee/s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lee/c;


# direct methods
.method public constructor <init>(Lee/c;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lee/c$b;->a:Lee/c;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v1, 0x3e9

    .line 4
    .line 5
    const-string v2, "CacheHandler"

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    const/16 v1, 0x3ea

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14
    .line 15
    instance-of v0, p1, Lcom/hisavana/common/interfacz/Iad;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    check-cast p1, Lcom/hisavana/common/interfacz/Iad;

    .line 20
    .line 21
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/Iad;->loadAd()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v0, "receive MSG_BIDDING_WAITING..."

    .line 30
    .line 31
    invoke-virtual {p1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lee/c$b;->a:Lee/c;

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    invoke-virtual {p1, v0}, Lee/c;->U(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v0, "receive MSG_REQUEST_NEXT_GROUP_WAITING..."

    .line 46
    .line 47
    invoke-virtual {p1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lee/c$b;->a:Lee/c;

    .line 51
    .line 52
    invoke-static {p1}, Lee/c;->s(Lee/c;)Z

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_0
    return-void
.end method
