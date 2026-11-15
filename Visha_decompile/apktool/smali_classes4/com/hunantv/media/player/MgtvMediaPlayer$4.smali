.class Lcom/hunantv/media/player/MgtvMediaPlayer$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/MgtvPlayerListener$OnSourceNetHandledListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/MgtvMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static final REPORT_HTTP_DNS_INTERRUPT:I = -0x2

.field public static final REPORT_HTTP_DNS_PV:I


# instance fields
.field private mIsPauseLoad:Z

.field final synthetic this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->mIsPauseLoad:Z

    return-void
.end method

.method private checkErrorCode(IILandroid/os/Bundle;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    :cond_0
    const-string v0, "retry_counter"

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p3

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0, p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$7002(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$7102(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-lt p3, v0, :cond_1

    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p3, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$600(Lcom/hunantv/media/player/MgtvMediaPlayer;II)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$4502(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z

    :cond_1
    return-void
.end method

.method private didHDJSwitch(Landroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3900(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3900(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "loop_url"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "loop_is_last"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const-string p1, ""

    invoke-static {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3902(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private didHostAddr(Landroid/os/Bundle;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "host_error"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "host_family"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "host_hostname"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "host_ip"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "host_port"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const-string v6, "host_dns_type"

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v5, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$4002(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I

    move-result p1

    iget-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v5}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "callback didHostAddr error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",family:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",hostname:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",ip_list:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",port:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",hostDnsType:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$4102(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2802(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I

    :try_start_0
    const-string p1, ";"

    invoke-virtual {v3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v3, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$4202(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I

    if-eqz p1, :cond_2

    array-length v3, p1

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, p1, v1

    invoke-static {v4}, Lcom/hunantv/media/player/a/e;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$4208(Lcom/hunantv/media/player/MgtvMediaPlayer;)I

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v1, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$4302(Lcom/hunantv/media/player/MgtvMediaPlayer;[Ljava/lang/String;)[Ljava/lang/String;

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2900(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    if-eqz p1, :cond_4

    array-length v0, p1

    if-lez v0, :cond_4

    new-instance v0, Lcom/hunantv/media/player/MgtvMediaPlayer$IPList;

    invoke-direct {v0, v2, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer$IPList;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callback ipcache didHostAddr put:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/hunantv/media/player/MgtvMediaPlayer$IPList;->nUseList:Ljava/util/List;

    invoke-static {v3}, Lcom/hunantv/media/player/MgtvMediaPlayer$IPList;->formatIPList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_3
    return-void
.end method

.method private didLiveOpen(Landroid/os/Bundle;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->onLiveWillOpen(Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method private didLiveReopen(Landroid/os/Bundle;)Z
    .locals 1

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3700(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result p1

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3700(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3702(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z

    :cond_0
    return p1
.end method

.method private didLoopOpen(Landroid/os/Bundle;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->onLiveWillOpen(Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method private didLoopReopen(Landroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3800(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3800(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "loop_url"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const-string p1, ""

    invoke-static {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3802(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private didTcpOpen(Landroid/os/Bundle;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "port"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "family"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "error"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "ip"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tcp_hostname"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "switch_key"

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "didTcpOpen switch_key:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hunantv/media/player/h;->I()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "didTcpOpen origin:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v6}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hunantv/media/player/h;->I()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p1, ",hostname:"

    const-string v5, ",ip:"

    const-string v6, ",family:"

    const-string v7, "chodison didTcpOpen port:"

    iget-object v8, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v8}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    if-eqz v2, :cond_2

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",error_code:"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2602(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2702(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2808(Lcom/hunantv/media/player/MgtvMediaPlayer;)I

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2900(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result p1

    if-eqz p1, :cond_3

    :try_start_0
    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hunantv/media/player/MgtvMediaPlayer$IPList;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callback ipcache didTcpOpen remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/hunantv/media/player/MgtvMediaPlayer$IPList;->nUseList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callback ipcache didTcpOpen rest ip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/hunantv/media/player/MgtvMediaPlayer$IPList;->nUseList:Ljava/util/List;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer$IPList;->formatIPList(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method private doNetHttpWillOpenFailed(IILandroid/os/Bundle;)Z
    .locals 12

    invoke-direct {p0, p1, p2, p3}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->checkErrorCode(IILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const-string v1, "url"

    invoke-virtual {p3, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hunantv/media/player/utils/UrlUtil;->getValidUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3402(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "cur_dl_dize"

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->isInitMp4(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v1, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$6802(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v1, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$6802(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z

    :goto_0
    const-string v1, "retry_counter"

    invoke-virtual {p3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hunantv/media/player/utils/UrlUtil;->isFilePrefix(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$6500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1700(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1700(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v6}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const v8, 0xc3507

    invoke-interface {v4, v8, v5, v6, v7}, Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;->onWarning(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$6500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v5}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v5}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$7408(Lcom/hunantv/media/player/MgtvMediaPlayer;)I

    iget-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v5, v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3402(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    const-string v5, "url"

    invoke-virtual {p3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v5}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doNetHttpWillOpenFailed replace local_url to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v4, "player_hash"

    invoke-virtual {p3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v4, "io_type"

    invoke-virtual {p3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v5}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "doNetHttpWillOpenFailed url:%s,iotype:%d, RetryCount:%d,error_code:%d-%d"

    iget-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v7}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v7, v8, v9, v10, v11}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/hunantv/media/report/c/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->isENETUNREACHcode(II)Z

    move-result v5

    if-nez v5, :cond_1d

    iget-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v5}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->isDnsError(II)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_9

    :cond_3
    iget-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v5}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$7500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->isPlayerReset()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v6}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$7600(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->isDnsError(II)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v6}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$5700(Lcom/hunantv/media/player/MgtvMediaPlayer;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/hunantv/media/report/c/d;->c(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v7}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "doNetHttpWillOpenFailed DnsNetStrategy mDnsNoNetWaiter wait 1000 in"

    invoke-static {v7, v8}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v7}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$7500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/Object;

    move-result-object v7

    const-wide/16 v8, 0x3e8

    invoke-virtual {v7, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :catch_0
    move-exception v7

    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    iget-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v7}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "doNetHttpWillOpenFailed DnsNetStrategy mDnsNoNetWaiter wait 1000 out"

    :goto_2
    invoke-static {v7, v8}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v3

    goto :goto_4

    :cond_4
    if-eqz v6, :cond_5

    iget-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v7}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$7700(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v7}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "doNetHttpWillOpenFailed DnsNetStrategy mDnsNoNetWaiter wait 3000 in"

    invoke-static {v7, v8}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v7}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$7500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/Object;

    move-result-object v7

    const-wide/16 v8, 0xbb8

    invoke-virtual {v7, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v7

    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    iget-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v7}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "doNetHttpWillOpenFailed DnsNetStrategy mDnsNoNetWaiter wait 3000 out"

    goto :goto_2

    :cond_5
    move v7, v2

    :goto_4
    iget-object v8, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v8, v6}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$7702(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z

    goto :goto_5

    :cond_6
    move v7, v2

    :goto_5
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v5}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doNetHttpWillOpenFailed mIsLive:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v8}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$6000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",mPlayerMode:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v8}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$5300(Lcom/hunantv/media/player/MgtvMediaPlayer;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",mPrepared:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v8}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",mIsBuffering:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v8}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$6100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",mTsNotSkip:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v8}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$7800(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",mLoadMaxRetryTime:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v8}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$7900(Lcom/hunantv/media/player/MgtvMediaPlayer;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",mPlayStatus:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v8}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvMediaPlayer$PlayStatus;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ",lip:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v8}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLastIP()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v5}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "doNetHttpWillOpenFailed %d-%d-%d-%d-%s"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v11}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v11

    filled-new-array {v8, v4, v9, v10, v11}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lcom/hunantv/media/player/pragma/DebugLog;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$6000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isVod()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    iget-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$5300(Lcom/hunantv/media/player/MgtvMediaPlayer;)I

    move-result v4

    if-ne v4, v3, :cond_d

    :cond_8
    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result p3

    if-nez p3, :cond_b

    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/hunantv/media/player/utils/UrlUtil;->isM3u8(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_a

    if-lt v1, v5, :cond_9

    return v2

    :cond_9
    return v3

    :cond_a
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$6200(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;II)V

    return v2

    :cond_b
    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$6100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result p3

    if-eqz p3, :cond_19

    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isHLSPlayingUrl()Z

    move-result p3

    if-eqz p3, :cond_19

    if-lt v1, v3, :cond_19

    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/hunantv/media/player/utils/UrlUtil;->isSegment(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_c

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$6200(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;II)V

    :cond_c
    return v2

    :cond_d
    iget-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2900(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v4

    if-eqz v4, :cond_10

    const v4, 0x18a2f

    if-eq p2, v4, :cond_e

    const v4, 0x493f5

    if-eq p2, v4, :cond_e

    invoke-static {p1, p2}, Lcom/hunantv/media/player/utils/CodeUtil;->isHttp4XX(II)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-static {p1, p2}, Lcom/hunantv/media/player/utils/CodeUtil;->isHttp5XX(II)Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_e
    const-string v4, "url"

    invoke-virtual {p3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hunantv/media/player/utils/UrlUtil;->getValidHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hunantv/media/player/utils/UrlUtil;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-static {v4}, Lcom/hunantv/media/player/a/e;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_10

    iget-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v6}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v6}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "callback ipcache will http contains host:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v6}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hunantv/media/player/MgtvMediaPlayer$IPList;

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer$IPList;->checkTTL()Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, v4, Lcom/hunantv/media/player/MgtvMediaPlayer$IPList;->nUseList:Ljava/util/List;

    if-eqz v6, :cond_10

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_10

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callback ipcache will http check ttl success."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x6

    if-lt v1, p1, :cond_f

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "callback ipcache will http return false.not retry"

    invoke-static {p1, p3}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->reportHttpErrorErr(ILjava/lang/String;)V

    return v2

    :cond_f
    const-string p1, "user_msg"

    const-string v0, "usecache"

    invoke-virtual {p3, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "callback ipcache will http return true.try to goto ip choose"

    invoke-static {p1, p3}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "ipcache"

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->reportHttpErrorPV(ILjava/lang/String;ILjava/lang/String;)V

    return v3

    :cond_10
    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p3

    const-string v4, "default"

    invoke-direct {p0, v1, p3, p2, v4}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->reportHttpErrorPV(ILjava/lang/String;ILjava/lang/String;)V

    if-eqz v7, :cond_12

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$8000(Lcom/hunantv/media/player/MgtvMediaPlayer;)I

    move-result p1

    if-lt v1, p1, :cond_11

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->reportHttpErrorErr(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "doNetHttpWillOpenFailed DnsNetStrategy skip retry cause by errorRetryCount >= mDnsNoNetMaxRetry"

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_11
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "doNetHttpWillOpenFailed DnsNetStrategy retry cause by inDnsNetStrategy"

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_12
    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result p3

    if-nez p3, :cond_18

    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/hunantv/media/player/utils/UrlUtil;->isM3u8(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_14

    if-lt v1, v5, :cond_13

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->reportHttpErrorErr(ILjava/lang/String;)V

    return v2

    :cond_13
    return v3

    :cond_14
    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p3, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3600(Lcom/hunantv/media/player/MgtvMediaPlayer;II)Z

    move-result p3

    if-nez p3, :cond_15

    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->isInitMp4(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_15

    if-lez v0, :cond_15

    const/16 p3, 0xa

    if-ge v1, p3, :cond_15

    return v3

    :cond_15
    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p3, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3600(Lcom/hunantv/media/player/MgtvMediaPlayer;II)Z

    move-result p3

    if-nez p3, :cond_17

    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$7900(Lcom/hunantv/media/player/MgtvMediaPlayer;)I

    move-result p3

    if-lt v1, p3, :cond_16

    goto :goto_6

    :cond_16
    return v3

    :cond_17
    :goto_6
    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$6200(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;II)V

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->reportHttpErrorErr(ILjava/lang/String;)V

    return v2

    :cond_18
    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$7800(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result p3

    if-eqz p3, :cond_19

    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isRendered()Z

    move-result p3

    if-eqz p3, :cond_19

    return v3

    :cond_19
    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p3, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3600(Lcom/hunantv/media/player/MgtvMediaPlayer;II)Z

    move-result p3

    if-nez p3, :cond_1b

    if-lt v1, v5, :cond_1a

    goto :goto_7

    :cond_1a
    return v3

    :cond_1b
    :goto_7
    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/hunantv/media/player/utils/UrlUtil;->isSegment(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1c

    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$6200(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;II)V

    :cond_1c
    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->reportHttpErrorErr(ILjava/lang/String;)V

    return v2

    :goto_8
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0

    :cond_1d
    :goto_9
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p0

    const-string p3, "doNetHttpWillOpenFailed network broken,RetryCount:%d,error_code:%d-%d"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p3, p1}, Lcom/hunantv/media/report/c/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method

.method private doNewHttpWillOpen(Landroid/os/Bundle;)Z
    .locals 7

    const-string v0, "error_type"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "error_code"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "retry_counter"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    const-string v2, "reset_iplist"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const-string v5, "cur_dl_dize"

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$6602(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I

    const-string v4, "user_msg"

    const-string v5, "init"

    invoke-virtual {p1, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2900(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$6700(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    :cond_0
    iget-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doNewHttpWillOpen in error_what:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",error_extra:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",reset_iplist:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mLastDlSize:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$6600(Lcom/hunantv/media/player/MgtvMediaPlayer;)I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    if-eqz v1, :cond_1

    invoke-direct {p0, v0, v1, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->doNetHttpWillOpenFailed(IILandroid/os/Bundle;)Z

    move-result p1

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doNetHttpWillOpenFailed return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$6802(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$6900(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->replaceUrlFromCache(Landroid/os/Bundle;)Z

    :cond_2
    return v3
.end method

.method private doWillGetEnv(Landroid/os/Bundle;)Z
    .locals 1

    const-string p0, "env_key"

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "env_value"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private doWillHostAddr(Landroid/os/Bundle;)Z
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "addr_handle"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "player_hash"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "retry_counter"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "user_msg"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "addr_hostname"

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "switch_key"

    invoke-virtual {p1, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    iget-object v9, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v9}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "callback doWillHostAddr is_handle:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ",hash:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",count_int:"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",user_msg:"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",hostname:"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",switch_key:"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2900(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v2

    const-string v3, "addr_error"

    const-string v7, "addr_ip"

    const/4 v8, 0x1

    if-eqz v2, :cond_2

    if-eq v1, v8, :cond_2

    const-string v2, "usecache"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v6}, Lcom/hunantv/media/player/a/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hunantv/media/player/MgtvMediaPlayer$IPList;

    if-eqz v2, :cond_2

    iget-object v4, v2, Lcom/hunantv/media/player/MgtvMediaPlayer$IPList;->nUseList:Ljava/util/List;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer$IPList;->checkTTL()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/hunantv/media/player/MgtvMediaPlayer$IPList;->nUseList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/hunantv/media/player/a/e;->e(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v9}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "callback ipcache doWillHostAddr put chooseip:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v2, Lcom/hunantv/media/player/MgtvMediaPlayer$IPList;->nUseList:Ljava/util/List;

    invoke-static {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer$IPList;->formatIPList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v9}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "callback ipcache doWillHostAddr put srcIPListStr:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1, v7, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    const-string v2, "addr_uri"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Lcom/hunantv/media/player/a/e;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/a;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hunantv/media/report/a;->g()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    const-string v4, "0"

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hostname_"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->notifyIpIsLAN(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {v6}, Lcom/hunantv/media/player/a/e;->a(Ljava/lang/String;)Z

    move-result v4

    iget-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v5}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$5700(Lcom/hunantv/media/player/MgtvMediaPlayer;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/hunantv/media/report/c/d;->c(Landroid/content/Context;)Z

    move-result v5

    iget-object v9, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v9}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doWillHostAddr hostname:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ",isIp:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v9}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doWillHostAddr is_handle="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ",mBackJavaDns="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v11}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$4400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ",isIp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ",mForceHttpDns:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v11}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$5800(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v9}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$5800(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v9

    if-eqz v9, :cond_5

    if-eqz v4, :cond_7

    :cond_5
    iget-object v9, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v9}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$5900(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v9

    if-eqz v9, :cond_6

    if-eqz v4, :cond_7

    :cond_6
    if-ne v1, v8, :cond_9

    iget-object v9, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v9}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$4400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v9

    if-eqz v9, :cond_9

    if-nez v4, :cond_9

    :cond_7
    if-eqz v5, :cond_8

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$4602(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$5800(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v0

    invoke-direct {p0, v6, p1, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->domainResolve(Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "skip domainResolve cause net not available"

    invoke-static {p1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$5200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result p0

    return p0

    :cond_9
    if-ne v1, v8, :cond_a

    if-eqz v4, :cond_a

    invoke-virtual {p1, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "addr_dns_type"

    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1, v3, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_a
    return v0
.end method

.method private doWillHttpOpen(Landroid/os/Bundle;)Z
    .locals 3

    const-string v0, "url"

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hunantv/media/player/utils/UrlUtil;->getValidUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3302(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v1

    sget-object v2, Lcom/hunantv/media/report/ReportParams$VideoType;->AD_PRE:Lcom/hunantv/media/report/ReportParams$VideoType;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v1

    sget-object v2, Lcom/hunantv/media/report/ReportParams$VideoType;->AD_MID:Lcom/hunantv/media/report/ReportParams$VideoType;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->onNormalHttpWillOpen(Landroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$5002(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    invoke-direct {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->doNewHttpWillOpen(Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method private domainResolve(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 7

    if-eqz p1, :cond_d

    if-nez p2, :cond_0

    goto/16 :goto_9

    :cond_0
    new-instance v6, Lcom/hunantv/media/player/a/a;

    invoke-direct {v6}, Lcom/hunantv/media/player/a/a;-><init>()V

    new-instance v0, Lcom/hunantv/media/player/MgtvMediaPlayer$4$1;

    invoke-direct {v0, p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$4$1;-><init>(Lcom/hunantv/media/player/MgtvMediaPlayer$4;)V

    invoke-virtual {v6, v0}, Lcom/hunantv/media/player/a/a;->a(Lcom/hunantv/media/player/a/a$a;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$5600(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v5

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->resolveStrategy(Lcom/hunantv/media/player/a/a;Ljava/lang/String;Landroid/os/Bundle;ZZ)Z

    move-result p1

    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "domainResolve use:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "domainResolve use type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/hunantv/media/player/a/a;->d()Lcom/hunantv/media/player/a/a$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/hunantv/media/player/a/a;->d()Lcom/hunantv/media/player/a/a$b;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-direct {p0, v0, v1, p3}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->notifyHttpDnsReport(Lcom/hunantv/media/player/a/a$b;II)V

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$5500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :goto_0
    :try_start_0
    invoke-virtual {v6}, Lcom/hunantv/media/player/a/a;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->isJavaDnsInterrupt()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "domainResolve wait in"

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$5500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "domainResolve wait out. resolving:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/hunantv/media/player/a/a;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isJavaDnsInterrupt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->isJavaDnsInterrupt()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/hunantv/media/player/a/a;->b()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/media/player/a/e;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Lcom/hunantv/media/player/a/a;->c()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "costMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/hunantv/media/player/a/a;->f()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ";ips:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/hunantv/media/utils/StringUtil;->formatArrayString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";net:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer$IPList;->formatIPList([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_3

    array-length v3, v0

    if-lez v3, :cond_3

    aget-object v0, v0, p3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    sget-object v3, Lcom/hunantv/media/player/MgtvMediaPlayer$28;->$SwitchMap$com$hunantv$media$player$dns$AsyncDns$DnsType:[I

    invoke-virtual {v6}, Lcom/hunantv/media/player/a/a;->d()Lcom/hunantv/media/player/a/a$b;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v3, 0x5

    goto :goto_2

    :cond_4
    const/4 v3, 0x4

    :goto_2
    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->isJavaDnsInterrupt()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {v0}, Lcom/hunantv/media/player/a/e;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz p1, :cond_6

    invoke-virtual {v6}, Lcom/hunantv/media/player/a/a;->d()Lcom/hunantv/media/player/a/a$b;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->updateCurrentDnsDsc(Lcom/hunantv/media/player/a/a$b;)V

    invoke-static {v0}, Lcom/hunantv/media/player/a/e;->d(Ljava/lang/String;)Z

    move-result p1

    const/16 v4, 0x7d1

    if-eqz p1, :cond_5

    invoke-virtual {v6}, Lcom/hunantv/media/player/a/a;->d()Lcom/hunantv/media/player/a/a$b;

    move-result-object p1

    const/16 v5, 0x64

    invoke-direct {p0, p1, v4, v5, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->notifyHttpDnsReport(Lcom/hunantv/media/player/a/a$b;IILjava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v6}, Lcom/hunantv/media/player/a/a;->d()Lcom/hunantv/media/player/a/a$b;

    move-result-object p1

    invoke-direct {p0, p1, v4, p3, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->notifyHttpDnsReport(Lcom/hunantv/media/player/a/a$b;IILjava/lang/String;)V

    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "domainResolve put iplist:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "addr_hostname"

    invoke-virtual {p2, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/hunantv/media/player/a/e;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "domainResolve put firstIP:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "addr_ip"

    invoke-virtual {p2, p0, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string p0, "addr_dns_type"

    invoke-virtual {p2, p0, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "addr_error"

    invoke-virtual {p2, p0, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_7

    :cond_8
    if-eqz p1, :cond_c

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->isJavaDnsInterrupt()Z

    move-result p1

    const/16 p3, 0x7d2

    if-eqz p1, :cond_9

    invoke-virtual {v6}, Lcom/hunantv/media/player/a/a;->e()I

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {v6}, Lcom/hunantv/media/player/a/a;->d()Lcom/hunantv/media/player/a/a$b;

    move-result-object p1

    const/4 v2, -0x2

    :goto_4
    invoke-direct {p0, p1, p3, v2, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->notifyHttpDnsReport(Lcom/hunantv/media/player/a/a$b;IILjava/lang/String;)V

    goto :goto_5

    :cond_9
    invoke-virtual {v6}, Lcom/hunantv/media/player/a/a;->d()Lcom/hunantv/media/player/a/a$b;

    move-result-object p1

    invoke-virtual {v6}, Lcom/hunantv/media/player/a/a;->e()I

    move-result v2

    goto :goto_4

    :goto_5
    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->isJavaDnsInterrupt()Z

    move-result p1

    if-nez p1, :cond_c

    const/16 p1, 0xc7

    invoke-virtual {v6, p1}, Lcom/hunantv/media/player/a/a;->a(I)I

    move-result p1

    invoke-virtual {v6}, Lcom/hunantv/media/player/a/a;->e()I

    move-result p3

    if-eqz p3, :cond_a

    invoke-virtual {v6}, Lcom/hunantv/media/player/a/a;->e()I

    move-result p1

    goto :goto_6

    :cond_a
    if-eqz v0, :cond_b

    invoke-static {v0}, Lcom/hunantv/media/player/a/e;->a(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_b

    const/16 p1, 0x6b

    invoke-virtual {v6, p1}, Lcom/hunantv/media/player/a/a;->a(I)I

    move-result p1

    :cond_b
    :goto_6
    neg-int p1, p1

    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/hunantv/media/player/a/a;->d()Lcom/hunantv/media/player/a/a$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "resolve putInt error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "addr_dns_type"

    invoke-virtual {p2, p3, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "addr_error"

    invoke-virtual {p2, p3, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_c
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const-string p1, "native"

    invoke-static {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$4802(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    :goto_7
    return-void

    :goto_8
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_d
    :goto_9
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "skip domainResolve hostname or args is null"

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private findTsCachPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 p0, 0x0

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/hunantv/media/player/utils/UrlUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    if-eqz v2, :cond_1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    return-object p0
.end method

.method private isDnsError(II)Z
    .locals 0

    const p0, 0x49638

    if-eq p2, p0, :cond_1

    const p0, 0x61cdd

    if-eq p1, p0, :cond_1

    invoke-static {p1, p2}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->isP2pDirectDnsError(II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isENETUNREACHcode(II)Z
    .locals 0

    const p0, 0x493e5

    if-eq p2, p0, :cond_1

    invoke-static {p1, p2}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->getShortErrorCode(II)I

    move-result p0

    const/16 p1, 0x65

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isInitMp4(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isHLSPlayingUrl()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ".mp4"

    invoke-static {p1, p0}, Lcom/hunantv/media/player/utils/UrlUtil;->isSuffixUrl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isJavaDnsInterrupt()Z
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->isPlayerReset()Z

    move-result p0

    return p0
.end method

.method private isPlayerReset()Z
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$5200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$5300(Lcom/hunantv/media/player/MgtvMediaPlayer;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$5400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private notifyHttpDnsReport(Lcom/hunantv/media/player/a/a$b;II)V
    .locals 1

    .line 1
    const-string v0, ""

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->notifyHttpDnsReport(Lcom/hunantv/media/player/a/a$b;IILjava/lang/String;)V

    return-void
.end method

.method private notifyHttpDnsReport(Lcom/hunantv/media/player/a/a$b;IILjava/lang/String;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/hunantv/media/player/a/a$b;->b:Lcom/hunantv/media/player/a/a$b;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1700(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2, p3, p4}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->notifyMessage(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private notifyIpIsLAN(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1700(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v0

    sget-object v1, Lcom/hunantv/media/report/ReportParams$VideoType;->VOD:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$4900(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_suffix_"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$5000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/hunantv/media/player/utils/UrlUtil;->getSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x3ea

    invoke-direct {p0, v0, p1, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->notifyMessage(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$5000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hunantv/media/player/utils/UrlUtil;->isM3u8(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$4902(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z

    :cond_1
    return-void
.end method

.method private notifyMessage(IILjava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$5100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvMediaPlayer$MainNotifyHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private notifyMessage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "bundle_str_info1"

    invoke-virtual {p1, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "bundle_str_info2"

    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$5100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvMediaPlayer$MainNotifyHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private onLiveWillOpen(Landroid/os/Bundle;)Z
    .locals 10

    const-string v0, "live_error_type"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "live_error_code"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const-string v3, "live_src_url"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hunantv/media/player/utils/UrlUtil;->getValidUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3302(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hunantv/media/player/utils/UrlUtil;->getValidUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3402(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "live_retry_counter"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "live_io_type"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v5}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v5, v6, v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "onLiveWillOpen url:%s,iotype:%d, RetryCount:%d,error_code:%d-%d"

    invoke-static {v4, v6, v5}, Lcom/hunantv/media/report/c/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->isENETUNREACHcode(II)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->isDnsError(II)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v9}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v6, p1, v7, v8, v9}, [Ljava/lang/Object;

    move-result-object p1

    const-string v6, "OnSourceNetHandledListener.CTRL_WILL_LIVE_OPEN %d-%d-%d-%d-%s"

    invoke-static {v4, v6, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0, v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3600(Lcom/hunantv/media/player/MgtvMediaPlayer;II)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x2

    if-lt v3, p0, :cond_1

    goto :goto_0

    :cond_1
    return v5

    :cond_2
    :goto_0
    return v2

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "onLiveWillOpen network broken,RetryCount:%d,error_code:%d-%d"

    invoke-static {p0, v0, p1}, Lcom/hunantv/media/report/c/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_4
    return v2
.end method

.method private onLoopWillOpen(Landroid/os/Bundle;)Z
    .locals 10

    const-string v0, "loop_error_type"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "loop_error_code"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const-string v4, "loop_src_url"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hunantv/media/player/utils/UrlUtil;->getValidUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3402(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "loop_retry_counter"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "loop_io_type"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v5}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v5, v6, v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "onLoopWillOpen url:%s,iotype:%d, RetryCount:%d,error_code:%d-%d"

    invoke-static {v4, v6, v5}, Lcom/hunantv/media/report/c/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->isENETUNREACHcode(II)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->isDnsError(II)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v9}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v6, p1, v7, v8, v9}, [Ljava/lang/Object;

    move-result-object p1

    const-string v6, "OnSourceNetHandledListener.CTRL_WILL_LOOP_OPEN %d-%d-%d-%d-%s"

    invoke-static {v4, v6, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0, v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3600(Lcom/hunantv/media/player/MgtvMediaPlayer;II)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x2

    if-lt v3, p0, :cond_1

    goto :goto_0

    :cond_1
    return v5

    :cond_2
    :goto_0
    return v2

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "onLoopWillOpen network broken,RetryCount:%d,error_code:%d-%d"

    invoke-static {p0, v0, p1}, Lcom/hunantv/media/report/c/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_4
    return v2
.end method

.method private onNormalHttpWillOpen(Landroid/os/Bundle;)Z
    .locals 12

    const-string v0, "error_type"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "error_code"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    invoke-direct {p0, v0, v1, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->checkErrorCode(IILandroid/os/Bundle;)V

    iget-object v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const-string v4, "url"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hunantv/media/player/utils/UrlUtil;->getValidUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3402(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "player_hash"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "user_msg"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "retry_counter"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "io_type"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "switch_key"

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p1

    iget-object v7, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v7}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v7, v8, v9, v10, v11}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "onSourceNetCtrl url:%s,iotype:%d, RetryCount:%d,error_code:%d-%d"

    invoke-static {p1, v8, v7}, Lcom/hunantv/media/report/c/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSourceNetCtrl switch_key:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->isENETUNREACHcode(II)Z

    move-result p1

    const/4 v5, 0x1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->isDnsError(II)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$6000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$6100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$6200(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;II)V

    return v2

    :cond_2
    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$6100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isHLSPlayingUrl()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hunantv/media/player/utils/UrlUtil;->isSegment(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_3
    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hunantv/media/player/utils/UrlUtil;->isM3u8(Ljava/lang/String;)Z

    :cond_5
    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v9}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v6, v4, v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v4

    const-string v6, "OnSourceNetHandledListener.CTRL_WILL_HTTP_OPEN %d-%d-%d-%d-%s"

    invoke-static {p1, v6, v4}, Lcom/hunantv/media/player/pragma/DebugLog;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1, v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3600(Lcom/hunantv/media/player/MgtvMediaPlayer;II)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x2

    if-lt v3, p1, :cond_6

    goto :goto_0

    :cond_6
    return v5

    :cond_7
    :goto_1
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "onSourceNetCtrl network broken,RetryCount:%d,error_code:%d-%d"

    invoke-static {p0, v0, p1}, Lcom/hunantv/media/report/c/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_8
    return v2
.end method

.method private replaceUrlFromCache(Landroid/os/Bundle;)Z
    .locals 8

    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hunantv/media/player/utils/UrlUtil;->isFilePrefix(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_5

    invoke-static {v1}, Lcom/hunantv/media/player/utils/UrlUtil;->isLocal(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {v1}, Lcom/hunantv/media/player/utils/UrlUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v3

    :cond_1
    iget-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "replaceUrlFromCache try to find replace cache:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/hunantv/media/player/utils/UrlUtil;->isM3u8(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$6300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hunantv/media/player/utils/UrlUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v6}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v5, v4

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isHLSPlayingUrl()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/hunantv/media/player/utils/UrlUtil;->isSegment(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$6400(Lcom/hunantv/media/player/MgtvMediaPlayer;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->findTsCachPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-static {v5}, Lcom/hunantv/media/player/utils/FileUtil;->exist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v5}, Lcom/hunantv/media/player/utils/UrlUtil;->addLocalPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "replaceUrlFromCache from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "replaceUrlFromCache to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/hunantv/media/player/utils/UrlUtil;->isM3u8(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "replaceUrlFromCache put SRC_URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "src_url"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$6500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_1
    return v3
.end method

.method private reportHttpErrorErr(ILjava/lang/String;)V
    .locals 4

    invoke-direct {p0, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->isInitMp4(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/hunantv/media/player/utils/UrlUtil;->isM3u8(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v0

    sget-object v1, Lcom/hunantv/media/report/ReportParams$VideoType;->VOD:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getProxyType()Lcom/hunantv/media/report/ReportParams$ProxyType;

    move-result-object v0

    sget-object v1, Lcom/hunantv/media/report/ReportParams$ProxyType;->NO_PROXY:Lcom/hunantv/media/report/ReportParams$ProxyType;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1700(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/report/a;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "00"

    :goto_0
    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1700(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$7300(Lcom/hunantv/media/player/MgtvMediaPlayer;)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "psuuid_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_render_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isRendered()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1"

    goto :goto_1

    :cond_2
    const-string v0, "0"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_url_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_type_"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$7200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    const v0, 0xc3886

    invoke-interface {v1, v0, p1, p0, p2}, Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;->onWarning(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private reportHttpErrorPV(ILjava/lang/String;ILjava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const-string v1, "default"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$7202(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$7302(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I

    :cond_0
    if-nez p1, :cond_4

    invoke-direct {p0, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->isInitMp4(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p2}, Lcom/hunantv/media/player/utils/UrlUtil;->isM3u8(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_1
    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object p1

    sget-object v0, Lcom/hunantv/media/report/ReportParams$VideoType;->VOD:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hunantv/media/report/ReportParams;->getProxyType()Lcom/hunantv/media/report/ReportParams$ProxyType;

    move-result-object p1

    sget-object v0, Lcom/hunantv/media/report/ReportParams$ProxyType;->NO_PROXY:Lcom/hunantv/media/report/ReportParams$ProxyType;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1700(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/a;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hunantv/media/report/a;->g()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "00"

    :goto_0
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0, p4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$7202(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0, p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$7302(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1700(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "psuuid_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_render_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isRendered()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "1"

    goto :goto_1

    :cond_3
    const-string p0, "0"

    :goto_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_url_"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_type_"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const p2, 0xc3885

    invoke-interface {v0, p2, p3, p0, p1}, Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;->onWarning(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private resolveStrategy(Lcom/hunantv/media/player/a/a;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 6
    .param p1    # Lcom/hunantv/media/player/a/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->resolveStrategy(Lcom/hunantv/media/player/a/a;Ljava/lang/String;Landroid/os/Bundle;ZZ)Z

    move-result p0

    return p0
.end method

.method private resolveStrategy(Lcom/hunantv/media/player/a/a;Ljava/lang/String;Landroid/os/Bundle;ZZ)Z
    .locals 1
    .param p1    # Lcom/hunantv/media/player/a/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    const/4 v0, 0x1

    if-eqz p4, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/hunantv/media/player/a/a;->b(I)V

    sget-object p0, Lcom/hunantv/media/player/a/a$b;->b:Lcom/hunantv/media/player/a/a$b;

    :goto_1
    invoke-virtual {p1, p2, p0, p5}, Lcom/hunantv/media/player/a/a;->a(Ljava/lang/String;Lcom/hunantv/media/player/a/a$b;Z)V

    return v0

    :cond_0
    if-eqz p3, :cond_1

    const-string p4, "addr_handle"

    invoke-virtual {p3, p4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p3

    if-ne p3, v0, :cond_1

    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$4400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$4500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result p3

    if-eqz p3, :cond_5

    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$4600(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$4600(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/hunantv/media/player/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    :goto_2
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    const-string p4, ""

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_4

    :cond_3
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "resolveStrategy cache valid"

    :goto_3
    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    :goto_4
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$4700(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/a/a$b;

    move-result-object p0

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "resolveStrategy cache valid and httpdns not open"

    goto :goto_3

    :goto_5
    const/4 p0, 0x0

    return p0
.end method

.method private updateCurrentDnsDsc(Lcom/hunantv/media/player/a/a$b;)V
    .locals 1

    sget-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$28;->$SwitchMap$com$hunantv$media$player$dns$AsyncDns$DnsType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const-string p1, "java_httpdns"

    :goto_0
    invoke-static {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$4802(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const-string p1, "java_normal"

    goto :goto_0

    :goto_1
    return-void
.end method

.method private updateIp(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/player/h;->l()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/player/h;->l()I

    move-result v0

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/player/h;->ai()Lcom/hunantv/media/p2p/IP2pTask;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hunantv/media/player/h;->ai()Lcom/hunantv/media/p2p/IP2pTask;

    move-result-object p1

    invoke-static {p1}, Lcom/hunantv/media/p2p/P2pMgr;->getTaskInfo(Lcom/hunantv/media/p2p/IP2pTask;)Lcom/mgtv/a/d;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object p1, p1, Lcom/mgtv/a/d;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3202(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3102(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3102(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "didTcpOpen p2p QueryTaskInfo cdnIp:"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/player/h;->l()I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/player/h;->l()I

    move-result v0

    if-ne v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/player/h;->ai()Lcom/hunantv/media/p2p/IP2pTask;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const-string v0, "0.0.0.1"

    invoke-static {p1, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3102(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$3102(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    :goto_2
    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "didTcpOpen tcp_ip:"

    goto :goto_1

    :goto_3
    return-void
.end method

.method private willTcpOpen(Landroid/os/Bundle;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "tcp_hostname"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ip"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callback willTcpOpen tcp_hostname:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",tcp_ip:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2502(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->updateIp(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-static {p1}, Lcom/hunantv/media/player/a/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getCurrentDnsDsc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_hostip_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-direct {p0, v0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->notifyIpIsLAN(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onSourceNetCtrl(ILandroid/os/Bundle;)Z
    .locals 9

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnSourceNetHandledListener.onSourceNetCtrl 0x%5x"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hunantv/media/report/c/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1900(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    if-eqz p2, :cond_b

    :try_start_0
    const-string v3, "smooth_switch_need_retry"

    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_3

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/report/a;->c()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    :goto_0
    const-string v0, "smooth_switch_retry_key"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    long-to-int v0, v3

    iget-object v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    iget-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "smooth need_retry == 1 find:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "smooth need_retry == 1 , will retry use :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/hunantv/media/player/MgtvMediaSource;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "smooth_switch_url"

    invoke-virtual {v3}, Lcom/hunantv/media/player/MgtvMediaSource;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getReporter()Lcom/hunantv/media/report/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getReporter()Lcom/hunantv/media/report/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/report/a;->a()V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object p0

    invoke-virtual {v3}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getReporter()Lcom/hunantv/media/report/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/report/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hunantv/media/report/ReportParams;->setPlaySessionId(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "smooth need_retry == 1, not found source"

    invoke-static {p0, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    const-string p0, "smooth_switch_need_retry"

    invoke-virtual {p2, p0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    monitor-exit p1

    return v2

    :cond_3
    const-string v3, "smooth_switch_key"

    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    long-to-int v3, v3

    iget-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "smooth CTRL_WILL_SMOOTH_SWITCH switch_key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v4, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2300(Lcom/hunantv/media/player/MgtvMediaPlayer;I)Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->isLastRetry()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v5}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v5}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hunantv/media/report/ReportParams;->getProxyType()Lcom/hunantv/media/report/ReportParams$ProxyType;

    move-result-object v5

    sget-object v6, Lcom/hunantv/media/report/ReportParams$ProxyType;->ONLY_P2P:Lcom/hunantv/media/report/ReportParams$ProxyType;

    if-eq v5, v6, :cond_4

    iget-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v5}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hunantv/media/report/ReportParams;->getProxyType()Lcom/hunantv/media/report/ReportParams$ProxyType;

    move-result-object v5

    sget-object v6, Lcom/hunantv/media/report/ReportParams$ProxyType;->P2P_DRM:Lcom/hunantv/media/report/ReportParams$ProxyType;

    if-ne v5, v6, :cond_5

    :cond_4
    new-instance v5, Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    iget-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v6}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPlayingOriginUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v6}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->setReportParams(Lcom/hunantv/media/report/ReportParams;)Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    iget-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v5, v6}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->bind(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    invoke-virtual {v5, v2}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->setThrowErrorIfSwitchFailed(Z)Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    iget-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v6}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5}, Lcom/hunantv/media/player/MgtvMediaSource;->getKey()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v6}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "smooth is last retry. will retry key:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/hunantv/media/player/MgtvMediaSource;->getKey()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "smooth_switch_need_retry"

    invoke-virtual {p2, v6, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "smooth_switch_retry_key"

    invoke-virtual {v5}, Lcom/hunantv/media/player/MgtvMediaSource;->getKey()I

    move-result v5

    int-to-long v7, v5

    invoke-virtual {p2, v6, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_5
    invoke-virtual {v4}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->isLastRetry()Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "smooth_switch_url"

    invoke-virtual {p2, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "smooth_switch_url"

    invoke-virtual {p2, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v6}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "smooth CTRL_WILL_SMOOTH_SWITCH switch_url:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, ",mgtvjsource:"

    const-string v7, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    :cond_6
    iget-object v5, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v5}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSmoothSourceListener;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSmoothSourceListener;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSmoothSourceListener;->onSwitchSmoothSourceWillUpdate(Lcom/hunantv/media/player/smooth/SmoothMediaSource;)Z

    move-result v1

    :cond_7
    invoke-virtual {v4}, Lcom/hunantv/media/player/MgtvMediaSource;->getReadType()I

    move-result v5

    if-ne v5, v0, :cond_8

    goto :goto_2

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v4}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->useUpdateUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->useUpdateUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "smooth CTRL_WILL_SMOOTH_SWITCH will update url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "smooth_switch_url"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_2
    iget-object p2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/util/Map;

    move-result-object p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getReporter()Lcom/hunantv/media/report/a;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p2}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getReporter()Lcom/hunantv/media/report/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/report/a;->a()V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object p0

    invoke-virtual {p2}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getReporter()Lcom/hunantv/media/report/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hunantv/media/report/a;->g()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/hunantv/media/report/ReportParams;->setPlaySessionId(Ljava/lang/String;)V

    :cond_a
    monitor-exit p1

    return v2

    :cond_b
    monitor-exit p1

    goto/16 :goto_4

    :goto_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :sswitch_1
    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1800(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/utils/SyncStateMachine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hunantv/media/player/utils/SyncStateMachine;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1800(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/utils/SyncStateMachine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hunantv/media/player/utils/SyncStateMachine;->getState()I

    move-result p1

    if-ne p1, v0, :cond_c

    iput-boolean v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->mIsPauseLoad:Z

    return v2

    :cond_c
    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isSourceSwitching()Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hunantv/media/player/h;->l()I

    move-result p1

    if-eq p1, v0, :cond_d

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hunantv/media/player/h;->l()I

    move-result p1

    if-ne p1, v2, :cond_f

    :cond_d
    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hunantv/media/player/h;->ai()Lcom/hunantv/media/p2p/IP2pTask;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-interface {p1}, Lcom/hunantv/media/p2p/IP2pTask;->getStatus()I

    move-result p1

    if-eqz p1, :cond_f

    iget-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->mIsPauseLoad:Z

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "CTRL_WILL_CHECK_PAUSE_LOAD will return true. will pause load"

    invoke-static {p1, p2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    iput-boolean v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->mIsPauseLoad:Z

    return v2

    :cond_f
    iget-boolean p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->mIsPauseLoad:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "CTRL_WILL_CHECK_PAUSE_LOAD will return false. will resume load"

    invoke-static {p1, p2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    iput-boolean v1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->mIsPauseLoad:Z

    return v1

    :sswitch_2
    invoke-direct {p0, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->doWillGetEnv(Landroid/os/Bundle;)Z

    move-result p0

    return p0

    :sswitch_3
    invoke-direct {p0, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->didHDJSwitch(Landroid/os/Bundle;)Z

    move-result p0

    return p0

    :sswitch_4
    invoke-direct {p0, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->didLoopReopen(Landroid/os/Bundle;)Z

    move-result p0

    return p0

    :sswitch_5
    invoke-direct {p0, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->didLoopOpen(Landroid/os/Bundle;)Z

    move-result p0

    return p0

    :sswitch_6
    invoke-direct {p0, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->didLiveReopen(Landroid/os/Bundle;)Z

    move-result p0

    return p0

    :sswitch_7
    invoke-direct {p0, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->doWillHostAddr(Landroid/os/Bundle;)Z

    move-result p0

    return p0

    :sswitch_8
    invoke-direct {p0, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->didLiveOpen(Landroid/os/Bundle;)Z

    move-result p0

    return p0

    :sswitch_9
    invoke-direct {p0, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->doWillHttpOpen(Landroid/os/Bundle;)Z

    move-result p0

    return p0

    :sswitch_a
    invoke-direct {p0, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->didTcpOpen(Landroid/os/Bundle;)V

    goto :goto_4

    :sswitch_b
    invoke-direct {p0, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->willTcpOpen(Landroid/os/Bundle;)V

    :goto_4
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x20001 -> :sswitch_b
        0x20002 -> :sswitch_a
        0x20003 -> :sswitch_9
        0x20005 -> :sswitch_8
        0x20006 -> :sswitch_7
        0x20009 -> :sswitch_6
        0x20010 -> :sswitch_5
        0x20011 -> :sswitch_4
        0x20012 -> :sswitch_3
        0x20020 -> :sswitch_2
        0x20030 -> :sswitch_1
        0x20070 -> :sswitch_0
    .end sparse-switch
.end method

.method public onSourceNetEvent(ILandroid/os/Bundle;)V
    .locals 1

    const v0, 0x13202

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer$4;->didHostAddr(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method
