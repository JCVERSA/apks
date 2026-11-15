.class Lcom/hunantv/media/player/MgtvMediaPlayer$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/player/MgtvMediaPlayer;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(II)Z
    .locals 10

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_e

    const/4 v0, 0x4

    if-eq p1, v0, :cond_d

    const/4 v0, 0x5

    if-eq p1, v0, :cond_9

    const/16 v0, 0x2bd

    if-eq p1, v0, :cond_8

    const/16 v0, 0x2be

    if-eq p1, v0, :cond_7

    const/4 v0, 0x0

    const-string v2, ""

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vsr is open:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$9602(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$9600(Lcom/hunantv/media/player/MgtvMediaPlayer;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_f

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v2, v0, Lcom/hunantv/media/player/MgtvMediaPlayer;->vsri:Ljava/lang/String;

    if-eqz v2, :cond_f

    const-string v3, "1|"

    const-string v4, "2|"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hunantv/media/player/MgtvMediaPlayer;->vsri:Ljava/lang/String;

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vsri change to value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v3, v3, Lcom/hunantv/media/player/MgtvMediaPlayer;->vsri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_1
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wanos dlopen status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iput p2, v0, Lcom/hunantv/media/player/MgtvMediaPlayer;->wadls:I

    goto/16 :goto_6

    :pswitch_2
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wanos audio effect valid:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-ne p2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v0, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$9702(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z

    goto/16 :goto_6

    :pswitch_3
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "native load data is paused:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$9802(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I

    if-ne p2, v3, :cond_f

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$9900(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnLoadDataListener;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$9900(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnLoadDataListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/hunantv/media/player/MgtvPlayerListener$OnLoadDataListener;->onAfterLoadDataPaused()V

    goto/16 :goto_6

    :pswitch_4
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio stream is exist:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$9502(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I

    goto/16 :goto_6

    :sswitch_0
    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "native prepared change water mark ms:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    div-int/lit16 p2, p2, 0x3e8

    invoke-static {p0, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$10602(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I

    return v1

    :sswitch_1
    iget-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "speed play error,will disable video render!"

    invoke-static {v4, v5}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$9400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v4

    if-nez v4, :cond_f

    iget-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1700(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    move-result-object v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v4, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$9402(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z

    iget-object v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1700(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0xc3508

    invoke-interface {v3, v5, v4, v2, v0}, Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;->onWarning(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_6

    :sswitch_2
    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MEDIA_INFO_M3U8_EXIST_DATA:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$10702(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I

    return v1

    :sswitch_3
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$10802(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I

    return v1

    :sswitch_4
    iget-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1700(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    move-result-object v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$10000(Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v6}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isHardware()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v6}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$10100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v6}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getFpsMsg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v6}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$10200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v6}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1700(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    move-result-object v6

    const v7, 0xc36f4

    invoke-interface {v6, v7, v4, v2, v0}, Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;->onWarning(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$10302(Lcom/hunantv/media/player/MgtvMediaPlayer;J)J

    iget-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v6, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$10202(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z

    :cond_1
    iget-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v6}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$10400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v6

    if-nez v6, :cond_f

    iget-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v6}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$10508(Lcom/hunantv/media/player/MgtvMediaPlayer;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v8}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$10300(Lcom/hunantv/media/player/MgtvMediaPlayer;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x2710

    cmp-long v6, v6, v8

    if-ltz v6, :cond_f

    iget-object v6, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v6}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1700(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$10500(Lcom/hunantv/media/player/MgtvMediaPlayer;)I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0xc36f5

    invoke-interface {v6, v5, v4, v2, v0}, Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;->onWarning(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$10402(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z

    goto/16 :goto_6

    :sswitch_5
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encode type extra:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$9202(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I

    goto/16 :goto_6

    :sswitch_6
    sget-object v0, Lcom/hunantv/media/player/d$t;->e:Lcom/hunantv/media/player/d$t;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$9000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnStartListener;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callback onStart threadId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$9000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnStartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/hunantv/media/player/MgtvPlayerListener$OnStartListener;->onStart()V

    goto/16 :goto_6

    :cond_2
    sget-object v0, Lcom/hunantv/media/player/d$t;->f:Lcom/hunantv/media/player/d$t;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_f

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$9100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnPauseListener;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callback onPause threadId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$9100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnPauseListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/hunantv/media/player/MgtvPlayerListener$OnPauseListener;->onPause()V

    goto/16 :goto_6

    :sswitch_7
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stream format type extra:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0, p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$9302(Lcom/hunantv/media/player/MgtvMediaPlayer;I)I

    goto/16 :goto_6

    :sswitch_8
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eq p2, v3, :cond_3

    sget-object v2, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;->TYPE_DATASOUCE_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    :goto_1
    invoke-static {v0, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$8902(Lcom/hunantv/media/player/MgtvMediaPlayer;Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;)Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    goto/16 :goto_6

    :cond_3
    sget-object v2, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;->TYPE_DATASOUCE_IMGO:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    goto :goto_1

    :sswitch_9
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MEDIA_INFO_STREAM_INFO_HLS_SEG_SIZE_INFO:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :sswitch_a
    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-ne p2, v3, :cond_5

    invoke-static {p1, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$6002(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1700(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object p1

    sget-object v3, Lcom/hunantv/media/report/ReportParams$VideoType;->VOD:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-ne p1, v3, :cond_6

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hunantv/media/report/ReportParams;->getP2ps()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    const-string p1, "00"

    :goto_2
    iget-object v2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1700(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "psuuid_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hunantv/media/report/a;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0xc3514

    invoke-interface {v2, v4, p1, v3, v0}, Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;->onWarning(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    invoke-static {p1, v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$6002(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)Z

    :cond_6
    :goto_3
    const/16 p1, 0x321

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$8800(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    :cond_8
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$8700(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    :cond_9
    const/16 v0, 0x1f7

    if-ne p2, v0, :cond_a

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    sget-object v2, Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;->HW_2_SW_RESET:Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;

    :goto_4
    invoke-static {v0, v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$8602(Lcom/hunantv/media/player/MgtvMediaPlayer;Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;)Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;

    goto :goto_6

    :cond_a
    const/16 v0, 0x1f5

    if-eq p2, v0, :cond_c

    const/16 v0, 0x1f8

    if-eq p2, v0, :cond_c

    const/16 v0, 0x1f9

    if-eq p2, v0, :cond_c

    const/16 v0, 0x1fa

    if-ne p2, v0, :cond_b

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    sget-object v2, Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;->HW_2_SW_OTHER:Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;

    goto :goto_4

    :cond_c
    :goto_5
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    sget-object v2, Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;->HW_2_SW_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/player/h;->m()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$8500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    :cond_e
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$8500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    :cond_f
    :goto_6
    iget-object v0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$10900(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$10;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$10900(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoListener;->onInfo(II)Z

    move-result p0

    return p0

    :cond_10
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x321 -> :sswitch_a
        0x32a -> :sswitch_9
        0xaf3 -> :sswitch_8
        0xaf6 -> :sswitch_7
        0xb0e -> :sswitch_6
        0xb18 -> :sswitch_5
        0xb22 -> :sswitch_4
        0xb40 -> :sswitch_3
        0xb4a -> :sswitch_2
        0x271a -> :sswitch_1
        0x272e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2724
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
