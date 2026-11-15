.class Lorg/libtorrent4j/SessionManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/libtorrent4j/SessionManager;->alertsLoop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/libtorrent4j/SessionManager;


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/SessionManager;)V
    .locals 0

    iput-object p1, p0, Lorg/libtorrent4j/SessionManager$5;->this$0:Lorg/libtorrent4j/SessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    new-instance v0, Lorg/libtorrent4j/swig/alert_ptr_vector;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/alert_ptr_vector;-><init>()V

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/libtorrent4j/SessionManager$5;->this$0:Lorg/libtorrent4j/SessionManager;

    invoke-static {v1}, Lorg/libtorrent4j/SessionManager;->access$500(Lorg/libtorrent4j/SessionManager;)Lorg/libtorrent4j/swig/session;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/libtorrent4j/SessionManager$5;->this$0:Lorg/libtorrent4j/SessionManager;

    invoke-static {v1}, Lorg/libtorrent4j/SessionManager;->access$500(Lorg/libtorrent4j/SessionManager;)Lorg/libtorrent4j/swig/session;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lorg/libtorrent4j/swig/session_handle;->wait_for_alert_ms(J)Lorg/libtorrent4j/swig/alert;

    move-result-object v1

    iget-object v2, p0, Lorg/libtorrent4j/SessionManager$5;->this$0:Lorg/libtorrent4j/SessionManager;

    invoke-static {v2}, Lorg/libtorrent4j/SessionManager;->access$500(Lorg/libtorrent4j/SessionManager;)Lorg/libtorrent4j/swig/session;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/libtorrent4j/SessionManager$5;->this$0:Lorg/libtorrent4j/SessionManager;

    invoke-static {v1}, Lorg/libtorrent4j/SessionManager;->access$500(Lorg/libtorrent4j/SessionManager;)Lorg/libtorrent4j/swig/session;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/libtorrent4j/swig/session_handle;->pop_alerts(Lorg/libtorrent4j/swig/alert_ptr_vector;)V

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/alert_ptr_vector;->size()I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    int-to-long v5, v4

    cmp-long v5, v5, v1

    if-gez v5, :cond_7

    invoke-virtual {v0, v4}, Lorg/libtorrent4j/swig/alert_ptr_vector;->get(I)Lorg/libtorrent4j/swig/alert;

    move-result-object v5

    invoke-virtual {v5}, Lorg/libtorrent4j/swig/alert;->type()I

    move-result v6

    sget-object v7, Lorg/libtorrent4j/SessionManager$6;->$SwitchMap$org$libtorrent4j$alerts$AlertType:[I

    invoke-static {v6}, Lorg/libtorrent4j/alerts/AlertType;->fromSwig(I)Lorg/libtorrent4j/alerts/AlertType;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-static {v5}, Lorg/libtorrent4j/alerts/Alerts;->cast(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/alerts/Alert;

    move-result-object v7

    iget-object v8, p0, Lorg/libtorrent4j/SessionManager$5;->this$0:Lorg/libtorrent4j/SessionManager;

    move-object v9, v7

    check-cast v9, Lorg/libtorrent4j/alerts/AddTorrentAlert;

    invoke-static {v8, v9}, Lorg/libtorrent4j/SessionManager;->access$1000(Lorg/libtorrent4j/SessionManager;Lorg/libtorrent4j/alerts/AddTorrentAlert;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_4

    :pswitch_1
    invoke-static {v5}, Lorg/libtorrent4j/alerts/Alerts;->cast(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/alerts/Alert;

    move-result-object v7

    iget-object v8, p0, Lorg/libtorrent4j/SessionManager$5;->this$0:Lorg/libtorrent4j/SessionManager;

    move-object v9, v7

    check-cast v9, Lorg/libtorrent4j/alerts/ExternalIpAlert;

    invoke-static {v8, v9}, Lorg/libtorrent4j/SessionManager;->access$900(Lorg/libtorrent4j/SessionManager;Lorg/libtorrent4j/alerts/ExternalIpAlert;)V

    goto :goto_3

    :pswitch_2
    invoke-static {v5}, Lorg/libtorrent4j/alerts/Alerts;->cast(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/alerts/Alert;

    move-result-object v7

    iget-object v8, p0, Lorg/libtorrent4j/SessionManager$5;->this$0:Lorg/libtorrent4j/SessionManager;

    move-object v9, v7

    check-cast v9, Lorg/libtorrent4j/alerts/ListenSucceededAlert;

    invoke-static {v8, v9}, Lorg/libtorrent4j/SessionManager;->access$800(Lorg/libtorrent4j/SessionManager;Lorg/libtorrent4j/alerts/ListenSucceededAlert;)V

    goto :goto_3

    :pswitch_3
    iget-object v7, p0, Lorg/libtorrent4j/SessionManager$5;->this$0:Lorg/libtorrent4j/SessionManager;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lorg/libtorrent4j/SessionManager;->access$702(Lorg/libtorrent4j/SessionManager;Z)Z

    goto :goto_2

    :pswitch_4
    iget-object v7, p0, Lorg/libtorrent4j/SessionManager$5;->this$0:Lorg/libtorrent4j/SessionManager;

    invoke-static {v7, v3}, Lorg/libtorrent4j/SessionManager;->access$702(Lorg/libtorrent4j/SessionManager;Z)Z

    :goto_2
    const/4 v7, 0x0

    goto :goto_3

    :pswitch_5
    invoke-static {v5}, Lorg/libtorrent4j/alerts/Alerts;->cast(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/alerts/Alert;

    move-result-object v7

    iget-object v8, p0, Lorg/libtorrent4j/SessionManager$5;->this$0:Lorg/libtorrent4j/SessionManager;

    invoke-static {v8}, Lorg/libtorrent4j/SessionManager;->access$600(Lorg/libtorrent4j/SessionManager;)Lorg/libtorrent4j/SessionStats;

    move-result-object v8

    move-object v9, v7

    check-cast v9, Lorg/libtorrent4j/alerts/SessionStatsAlert;

    invoke-virtual {v8, v9}, Lorg/libtorrent4j/SessionStats;->update(Lorg/libtorrent4j/alerts/SessionStatsAlert;)V

    :cond_2
    :goto_3
    iget-object v8, p0, Lorg/libtorrent4j/SessionManager$5;->this$0:Lorg/libtorrent4j/SessionManager;

    invoke-static {v8}, Lorg/libtorrent4j/SessionManager;->access$1100(Lorg/libtorrent4j/SessionManager;)[Lorg/libtorrent4j/AlertListener;

    move-result-object v8

    aget-object v8, v8, v6

    if-eqz v8, :cond_4

    if-nez v7, :cond_3

    invoke-static {v5}, Lorg/libtorrent4j/alerts/Alerts;->cast(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/alerts/Alert;

    move-result-object v7

    :cond_3
    iget-object v8, p0, Lorg/libtorrent4j/SessionManager$5;->this$0:Lorg/libtorrent4j/SessionManager;

    invoke-static {v8, v7, v6}, Lorg/libtorrent4j/SessionManager;->access$1200(Lorg/libtorrent4j/SessionManager;Lorg/libtorrent4j/alerts/Alert;I)V

    :cond_4
    invoke-static {v6}, Lorg/libtorrent4j/SessionManager;->access$1300(I)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lorg/libtorrent4j/SessionManager$5;->this$0:Lorg/libtorrent4j/SessionManager;

    invoke-static {v6}, Lorg/libtorrent4j/SessionManager;->access$1100(Lorg/libtorrent4j/SessionManager;)[Lorg/libtorrent4j/AlertListener;

    move-result-object v6

    sget v8, Lorg/libtorrent4j/alerts/Alerts;->NUM_ALERT_TYPES:I

    aget-object v6, v6, v8

    if-eqz v6, :cond_6

    if-nez v7, :cond_5

    invoke-static {v5}, Lorg/libtorrent4j/alerts/Alerts;->cast(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/alerts/Alert;

    move-result-object v7

    :cond_5
    iget-object v5, p0, Lorg/libtorrent4j/SessionManager$5;->this$0:Lorg/libtorrent4j/SessionManager;

    invoke-static {v5, v7, v8}, Lorg/libtorrent4j/SessionManager;->access$1200(Lorg/libtorrent4j/SessionManager;Lorg/libtorrent4j/alerts/Alert;I)V

    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v0}, Lorg/libtorrent4j/swig/alert_ptr_vector;->clear()V

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lorg/libtorrent4j/SessionManager$5;->this$0:Lorg/libtorrent4j/SessionManager;

    invoke-static {v3}, Lorg/libtorrent4j/SessionManager;->access$1400(Lorg/libtorrent4j/SessionManager;)J

    move-result-wide v3

    sub-long v3, v1, v3

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    iget-object v3, p0, Lorg/libtorrent4j/SessionManager$5;->this$0:Lorg/libtorrent4j/SessionManager;

    invoke-static {v3, v1, v2}, Lorg/libtorrent4j/SessionManager;->access$1402(Lorg/libtorrent4j/SessionManager;J)J

    iget-object v1, p0, Lorg/libtorrent4j/SessionManager$5;->this$0:Lorg/libtorrent4j/SessionManager;

    invoke-virtual {v1}, Lorg/libtorrent4j/SessionManager;->postSessionStats()V

    iget-object v1, p0, Lorg/libtorrent4j/SessionManager$5;->this$0:Lorg/libtorrent4j/SessionManager;

    invoke-virtual {v1}, Lorg/libtorrent4j/SessionManager;->postTorrentUpdates()V

    goto/16 :goto_0

    :cond_9
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
