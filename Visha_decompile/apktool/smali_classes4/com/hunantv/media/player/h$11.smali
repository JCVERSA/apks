.class Lcom/hunantv/media/player/h$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/d$p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hunantv/media/player/h;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/h;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hunantv/media/player/d;ILandroid/os/Bundle;)Z
    .locals 5

    iget-object p1, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->aa(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/MgtvPlayerListener$OnSourceNetHandledListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p0}, Lcom/hunantv/media/player/h;->aa(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/MgtvPlayerListener$OnSourceNetHandledListener;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Lcom/hunantv/media/player/MgtvPlayerListener$OnSourceNetHandledListener;->onSourceNetCtrl(ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_0
    iget-object p1, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "OnSourceNetHandledListener.onSourceNetCtrl 0x%5x"

    invoke-static {p1, v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->dfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "ip"

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object p0, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p0}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "OnSourceNetHandledListener did tcp close"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/hunantv/media/player/pragma/DebugLog;->dfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_1
    const-string p1, "error_code"

    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_b

    iget-object p2, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    const-string v1, "url"

    invoke-virtual {p3, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/hunantv/media/player/h;->h(Lcom/hunantv/media/player/h;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/hunantv/media/player/h;->g(Lcom/hunantv/media/player/h;Ljava/lang/String;)Ljava/lang/String;

    iget-object p2, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p2, p1}, Lcom/hunantv/media/player/h;->f(Lcom/hunantv/media/player/h;I)I

    iget-object p2, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    const-string v1, "retry_counter"

    invoke-virtual {p3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {p2, v1, v2}, Lcom/hunantv/media/player/h;->e(Lcom/hunantv/media/player/h;J)J

    iget-object p2, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    const-string v1, "io_type"

    invoke-virtual {p3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p2, p3}, Lcom/hunantv/media/player/h;->g(Lcom/hunantv/media/player/h;I)I

    const p2, 0x493e5

    const/4 p3, 0x1

    if-eq p1, p2, :cond_a

    iget-object p2, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p2}, Lcom/hunantv/media/player/h;->ab(Lcom/hunantv/media/player/h;)Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x49638

    if-ne p1, p2, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object p2, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p2}, Lcom/hunantv/media/player/h;->m(Lcom/hunantv/media/player/h;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p2}, Lcom/hunantv/media/player/h;->ad(Lcom/hunantv/media/player/h;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p2}, Lcom/hunantv/media/player/h;->ab(Lcom/hunantv/media/player/h;)Z

    move-result p2

    if-nez p2, :cond_6

    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p2}, Lcom/hunantv/media/player/h;->ae(Lcom/hunantv/media/player/h;)J

    move-result-wide v1

    invoke-static {p2, v1, v2}, Lcom/hunantv/media/player/h;->e(Lcom/hunantv/media/player/h;J)J

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p2}, Lcom/hunantv/media/player/h;->ad(Lcom/hunantv/media/player/h;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-virtual {p2}, Lcom/hunantv/media/player/h;->J()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p2}, Lcom/hunantv/media/player/h;->af(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/hunantv/media/player/utils/UrlUtil;->isSegment(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    :cond_4
    iget-object p2, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p2}, Lcom/hunantv/media/player/h;->ab(Lcom/hunantv/media/player/h;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p2}, Lcom/hunantv/media/player/h;->af(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/hunantv/media/player/utils/UrlUtil;->isM3u8(Ljava/lang/String;)Z

    :cond_6
    :goto_1
    iget-object p2, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p2}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {v1}, Lcom/hunantv/media/player/h;->af(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {v2}, Lcom/hunantv/media/player/h;->ag(Lcom/hunantv/media/player/h;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {v3}, Lcom/hunantv/media/player/h;->ac(Lcom/hunantv/media/player/h;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "OnSourceNetHandledListener (CTRL_WILL_HTTP_OPEN)  url:%s,iotype:%d, RetryCount:%d,error_code:%d"

    invoke-static {p2, v2, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p2}, Lcom/hunantv/media/player/h;->ae(Lcom/hunantv/media/player/h;)J

    move-result-wide v1

    iget-object p2, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p2}, Lcom/hunantv/media/player/h;->ac(Lcom/hunantv/media/player/h;)J

    move-result-wide v3

    cmp-long p2, v1, v3

    if-lez p2, :cond_9

    const p2, 0x49570

    if-lt p1, p2, :cond_7

    const p2, 0x495d3

    if-le p1, p2, :cond_9

    :cond_7
    const p2, 0x495d4

    if-lt p1, p2, :cond_8

    const p2, 0x49637

    if-gt p1, p2, :cond_8

    goto :goto_2

    :cond_8
    return p3

    :cond_9
    :goto_2
    iget-object p2, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p2}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p0}, Lcom/hunantv/media/player/h;->ac(Lcom/hunantv/media/player/h;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "OnSourceNetHandledListener (CTRL_WILL_HTTP_OPEN) skip,RetryCount:%d,error_code:%d"

    invoke-static {p2, p1, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->efmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_a
    :goto_3
    iget-object p2, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p2}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p0}, Lcom/hunantv/media/player/h;->ac(Lcom/hunantv/media/player/h;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "OnSourceNetHandledListener (CTRL_WILL_HTTP_OPEN) network broken,RetryCount:%d,error_code:%d"

    invoke-static {p2, p1, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->efmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p3

    :pswitch_2
    const-string p2, "error"

    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "family"

    invoke-virtual {p3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p0}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p3, v1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "OnSourceNetHandledListener did tcp connect: ip:%s, port:%d, family:%d, error_code:%d"

    invoke-static {p0, p2, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->dfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :pswitch_3
    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p0}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "OnSourceNetHandledListener will tcp connect ip:%s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->dfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    :goto_4
    return v0

    :pswitch_data_0
    .packed-switch 0x20001
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lcom/hunantv/media/player/d;ILandroid/os/Bundle;)V
    .locals 12

    iget-object p1, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "OnSourceNetHandledListener.onSourceNetEvent 0x%5x"

    invoke-static {p1, v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->dfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, 0x16

    const-string v0, "time_consume"

    if-eq p2, p1, :cond_1

    const-string p1, "switch_key"

    const-string v1, "http_code"

    const-string v2, "http_url"

    const-string v3, "http_error"

    const-string v4, "http_offset"

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    const-string p1, "host_port"

    const-string v0, "host_ip"

    const-string v1, "host_hostname"

    const-string v2, "host_family"

    const-string v3, "host_error"

    packed-switch p2, :pswitch_data_2

    iget-object p1, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onSourceNetEvent %5x"

    invoke-static {p1, v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->dfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p3, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "host_dns_type"

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "host_dns_time"

    invoke-virtual {p3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v5, v1

    iget-object v8, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {v8}, Lcom/hunantv/media/player/h;->ah(Lcom/hunantv/media/player/h;)J

    move-result-wide v8

    cmp-long v8, v5, v8

    if-lez v8, :cond_0

    iget-object v8, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {v8, v5, v6}, Lcom/hunantv/media/player/h;->f(Lcom/hunantv/media/player/h;J)J

    iget-object v5, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {v5, v0}, Lcom/hunantv/media/player/h;->h(Lcom/hunantv/media/player/h;I)I

    :cond_0
    iget-object v5, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {v5}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loading video data(dns) "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " ms"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {v5}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v4 .. v10}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "onSourceNetEvent tcp did host address name: hostname:%s, family:%d, error:%d, ip:%s, port:%d, dns_type:%d, dns_time:%d ms"

    invoke-static {v11, v0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->dfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p3, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object v4, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {v4}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v1, v2, v3, v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "onSourceNetEvent tcp will host address name: hostname:%s, family:%d, error:%d, ip:%s, port:%d"

    invoke-static {v4, v0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->dfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1, v0, v1}, Lcom/hunantv/media/player/h;->j(Lcom/hunantv/media/player/h;J)J

    iget-object p1, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1}, Lcom/hunantv/media/utils/TimeUtil;->us2ms(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onSourceNetEvent loading video data(fist buffer):%d ms"

    invoke-static {p1, v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1, v0, v1}, Lcom/hunantv/media/player/h;->i(Lcom/hunantv/media/player/h;J)J

    iget-object p1, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1}, Lcom/hunantv/media/utils/TimeUtil;->us2ms(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onSourceNetEvent loading video data(find stream info):%d ms"

    invoke-static {p1, v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1, v0, v1}, Lcom/hunantv/media/player/h;->h(Lcom/hunantv/media/player/h;J)J

    iget-object p1, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1}, Lcom/hunantv/media/utils/TimeUtil;->us2ms(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onSourceNetEvent loading video data(http response):%d ms"

    invoke-static {p1, v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1, v0, v1}, Lcom/hunantv/media/player/h;->g(Lcom/hunantv/media/player/h;J)J

    iget-object p1, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1}, Lcom/hunantv/media/utils/TimeUtil;->us2ms(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onSourceNetEvent loading video data(tcp connect):%d ms"

    invoke-static {p1, v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p3, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {v2}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v1, v3, p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "onSourceNetEvent http did close: url:%s, offset:%d, error:%d, http_code:%d"

    invoke-static {v2, v0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->dfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p3, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {v3}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v2, v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "onSourceNetEvent http will close: url:%s, offset:%d, error:%d"

    invoke-static {v3, v0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->dfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p3, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {v2}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v1, v3, p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "onSourceNetEvent http did seek: url:%s, offset:%d, error:%d, http_code:%d"

    invoke-static {v2, v0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->dfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p3, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {v3}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v2, v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "onSourceNetEvent http will seek: url:%s, offset:%d, error:%d"

    invoke-static {v3, v0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->dfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p3, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "http_filesize"

    invoke-virtual {p3, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    iget-object p1, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object v7, v4

    move-object v8, v0

    filled-new-array/range {v6 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onSourceNetEvent http did open: url:%s, offset:%d, error:%d, http_code:%d, http_filesize:%d, switch_key:%d"

    invoke-static {p1, v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->dfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p3, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "player_hash"

    invoke-virtual {p3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v4, "user_msg"

    invoke-virtual {p3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v4, "retry_counter"

    invoke-virtual {p3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object p1, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1, v2}, Lcom/hunantv/media/player/h;->i(Lcom/hunantv/media/player/h;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v2, v0, v1, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onSourceNetEvent http will open: url:%s, offset:%d, error:%d, switch_key:%d"

    invoke-static {p1, v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->dfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->b(Lcom/hunantv/media/player/h;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "chodison paused status is_paused:%d "

    invoke-static {p1, v3, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/MgtvMediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->a(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/MgtvMediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getOnAVPlayListener()Lcom/hunantv/media/player/MgtvPlayerListener$OnAVPlayListener;

    move-result-object p1

    if-eqz p1, :cond_3

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Lcom/hunantv/media/player/MgtvPlayerListener$OnAVPlayListener;->onAVPauseOrPlay(Z)V

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p1}, Lcom/hunantv/media/player/h;->aa(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/MgtvPlayerListener$OnSourceNetHandledListener;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/hunantv/media/player/h$11;->a:Lcom/hunantv/media/player/h;

    invoke-static {p0}, Lcom/hunantv/media/player/h;->aa(Lcom/hunantv/media/player/h;)Lcom/hunantv/media/player/MgtvPlayerListener$OnSourceNetHandledListener;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Lcom/hunantv/media/player/MgtvPlayerListener$OnSourceNetHandledListener;->onSourceNetEvent(ILandroid/os/Bundle;)V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x13201
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
