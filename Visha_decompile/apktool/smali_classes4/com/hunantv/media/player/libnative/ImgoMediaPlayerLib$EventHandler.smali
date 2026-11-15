.class Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$EventHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventHandler"
.end annotation


# instance fields
.field private final mWeakPlayer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$EventHandler;->mWeakPlayer:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    iget-object p0, p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib$EventHandler;->mWeakPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;

    if-eqz p0, :cond_21

    invoke-static {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$000(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_20

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v0, v4, :cond_1e

    const/4 v6, 0x3

    const/16 v7, 0x64

    if-eq v0, v6, :cond_17

    const/4 v2, 0x4

    if-eq v0, v2, :cond_16

    const/4 v3, 0x5

    if-eq v0, v3, :cond_15

    const/16 v8, 0x63

    if-eq v0, v8, :cond_20

    const-string v8, "Error ("

    const-string v9, ")"

    const-string v10, ","

    if-eq v0, v7, :cond_13

    const/16 v7, 0xc8

    const/16 v11, 0x2bd

    const/16 v12, 0x2bc

    const/16 v13, 0x1f5

    if-eq v0, v7, :cond_a

    const/16 v2, 0xc9

    if-eq v0, v2, :cond_9

    const/16 v2, 0xd2

    if-eq v0, v2, :cond_6

    const/16 v1, 0x12c

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1f4

    if-eq v0, v1, :cond_4

    if-eq v0, v13, :cond_3

    if-eq v0, v12, :cond_2

    if-eq v0, v11, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    invoke-virtual {p0}, Lcom/hunantv/media/player/a;->getLogTag()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$2102(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;I)I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$2202(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;I)I

    goto/16 :goto_5

    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$1902(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;I)I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$2002(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;I)I

    goto/16 :goto_5

    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$1202(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;I)I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$1302(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;I)I

    invoke-static {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$1000(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;)I

    move-result p1

    invoke-static {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$1100(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;)I

    move-result v0

    invoke-static {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$1200(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;)I

    move-result v1

    invoke-static {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$1300(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;)I

    move-result v2

    invoke-static {p0, p1, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$1800(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;IIII)V

    goto/16 :goto_5

    :pswitch_3
    invoke-virtual {p0}, Lcom/hunantv/media/player/a;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smooth switch video source failed ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, v0, v1, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$3400(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;IILjava/lang/String;)V

    return-void

    :pswitch_4
    invoke-virtual {p0}, Lcom/hunantv/media/player/a;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smooth switch video source complete ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, v0, v1, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$3300(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;IILjava/lang/String;)V

    return-void

    :pswitch_5
    invoke-virtual {p0}, Lcom/hunantv/media/player/a;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smooth switch video source info ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, v0, v1, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$3200(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;IILjava/lang/String;)V

    return-void

    :pswitch_6
    invoke-virtual {p0}, Lcom/hunantv/media/player/a;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loop switch video source fail ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, v1, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$3100(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;Ljava/lang/String;II)V

    return-void

    :pswitch_7
    invoke-virtual {p0}, Lcom/hunantv/media/player/a;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loop switch video source complete ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, v1, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$3000(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;Ljava/lang/String;II)V

    return-void

    :pswitch_8
    invoke-virtual {p0}, Lcom/hunantv/media/player/a;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loop switch video source info ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, v1, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$2900(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;Ljava/lang/String;II)V

    return-void

    :pswitch_9
    invoke-virtual {p0}, Lcom/hunantv/media/player/a;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switch video source failed ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, v1, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$2600(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;Ljava/lang/String;II)V

    return-void

    :pswitch_a
    invoke-virtual {p0}, Lcom/hunantv/media/player/a;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switch video source complete ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, v1, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$2500(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;Ljava/lang/String;II)V

    return-void

    :pswitch_b
    invoke-virtual {p0}, Lcom/hunantv/media/player/a;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switch video source info ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, v1, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$2400(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;Ljava/lang/String;II)V

    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, v0, v1, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$3900(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;IILjava/lang/String;)V

    return-void

    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$3800(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;II)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/hunantv/media/player/a;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "record video error ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$2800(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;II)V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/hunantv/media/player/a;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "record video info ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$2700(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;II)V

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/hunantv/media/player/a;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$2300(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;II)Z

    invoke-static {p0, v5}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$400(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;Z)V

    return-void

    :cond_6
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_8

    if-eq v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/hunantv/media/player/a;->getLogTag()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MEDIA_INFO_DRM in not support yet. arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {p0, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$3700(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;[B)V

    return-void

    :cond_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    invoke-virtual {p0}, Lcom/hunantv/media/player/a;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MEDIA_INFO_DRM in"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/hunantv/media/drm/utils/MgtvDrmUtils;->parsePSSH([B)Ljava/util/Map;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$3600(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;Ljava/util/Map;)V

    return-void

    :cond_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$3500(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;ILjava/lang/String;)Z

    return-void

    :cond_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v12, :cond_b

    const/4 v7, 0x7

    if-eq v0, v7, :cond_b

    const/16 v7, 0x8

    if-eq v0, v7, :cond_b

    invoke-virtual {p0}, Lcom/hunantv/media/player/a;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Info ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/hunantv/media/player/pragma/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_11

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v1, :cond_c

    iput v13, p1, Landroid/os/Message;->arg2:I

    goto :goto_1

    :cond_c
    if-ne v0, v4, :cond_d

    const/16 v0, 0x1f6

    :goto_0
    iput v0, p1, Landroid/os/Message;->arg2:I

    goto :goto_1

    :cond_d
    if-ne v0, v6, :cond_e

    const/16 v0, 0x1f8

    goto :goto_0

    :cond_e
    if-ne v0, v2, :cond_f

    const/16 v0, 0x1f9

    goto :goto_0

    :cond_f
    if-ne v0, v3, :cond_10

    const/16 v0, 0x1fa

    goto :goto_0

    :cond_10
    :goto_1
    invoke-virtual {p0}, Lcom/hunantv/media/player/a;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Info MEDIA_INFO_DECODER_TYPE_CHANGED("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v11, :cond_12

    invoke-static {p0, v5}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$502(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;I)I

    :cond_12
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$1700(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;II)Z

    return-void

    :cond_13
    invoke-virtual {p0}, Lcom/hunantv/media/player/a;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, v1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$1500(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;II)Z

    move-result v0

    if-nez v0, :cond_14

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$1600(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;II)V

    :cond_14
    invoke-static {p0, v5}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$400(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;Z)V

    return-void

    :cond_15
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$1002(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;I)I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$1102(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;I)I

    invoke-static {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$1000(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;)I

    move-result p1

    invoke-static {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$1100(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;)I

    move-result v0

    invoke-static {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$1200(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;)I

    move-result v1

    invoke-static {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$1300(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;)I

    move-result v2

    invoke-static {p0, p1, v0, v1, v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$1400(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;IIII)V

    return-void

    :cond_16
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$900(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;II)V

    return-void

    :cond_17
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-gez v0, :cond_18

    goto :goto_2

    :cond_18
    move v5, v0

    :goto_2
    if-lt v5, v7, :cond_19

    goto :goto_3

    :cond_19
    move v7, v5

    :goto_3
    invoke-static {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$500(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;)I

    move-result v0

    if-eq v0, v7, :cond_1a

    invoke-static {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$500(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;)I

    move-result v0

    if-ge v0, v7, :cond_1a

    invoke-static {p0, v7}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$502(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;I)I

    :cond_1a
    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-long v0, p1

    cmp-long p1, v0, v2

    if-gez p1, :cond_1b

    move-wide v0, v2

    :cond_1b
    invoke-virtual {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->getDuration()J

    move-result-wide v4

    cmp-long p1, v4, v2

    const-wide/16 v6, 0x64

    if-lez p1, :cond_1c

    mul-long v2, v0, v6

    div-long/2addr v2, v4

    :cond_1c
    cmp-long p1, v2, v6

    if-ltz p1, :cond_1d

    goto :goto_4

    :cond_1d
    move-wide v6, v2

    :goto_4
    long-to-int p1, v6

    invoke-static {p0, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$600(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;I)V

    invoke-static {p0, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$702(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;I)I

    invoke-static {p0, v0, v1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$802(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;J)J

    return-void

    :cond_1e
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$300(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;II)V

    invoke-static {p0, v5}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$400(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;Z)V

    return-void

    :cond_1f
    invoke-static {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$200(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;)V

    invoke-virtual {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->maybeUpdateAudioTimestamp()V

    :cond_20
    :goto_5
    return-void

    :cond_21
    :goto_6
    if-eqz p0, :cond_22

    invoke-static {}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImgoMediaPlayerLib went away with unhandled events. mNativeMediaPlayer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$000(Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_22
    invoke-static {}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImgoMediaPlayerLib went away with unhandled events. player is null"

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x258
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2711
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
