.class public Lee/q$a;
.super Landroid/os/Handler;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lee/q;-><init>(Lee/i;Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lee/q;


# direct methods
.method public constructor <init>(Lee/q;Landroid/os/Looper;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lee/q$a;->b:Lee/q;

    .line 2
    .line 3
    iput-boolean p3, p0, Lee/q$a;->a:Z

    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v0, 0x65

    .line 4
    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "QueryPriceCenter"

    .line 13
    .line 14
    const-string v1, "receive MSG_QUERY_TIME_OUT message"

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-boolean p1, p0, Lee/q$a;->a:Z

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lee/q$a;->b:Lee/q;

    .line 25
    .line 26
    invoke-static {p1, v0}, Lee/q;->g(Lee/q;Z)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object p1, p0, Lee/q$a;->b:Lee/q;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-static {p1, v0, v1}, Lee/q;->h(Lee/q;ZLjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method
