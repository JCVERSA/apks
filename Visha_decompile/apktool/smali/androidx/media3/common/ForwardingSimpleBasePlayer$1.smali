.class Landroidx/media3/common/ForwardingSimpleBasePlayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/common/ForwardingSimpleBasePlayer;-><init>(Landroidx/media3/common/Player;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/common/ForwardingSimpleBasePlayer;

.field final synthetic val$player:Landroidx/media3/common/Player;


# direct methods
.method public constructor <init>(Landroidx/media3/common/ForwardingSimpleBasePlayer;Landroidx/media3/common/Player;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$1;->this$0:Landroidx/media3/common/ForwardingSimpleBasePlayer;

    iput-object p2, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$1;->val$player:Landroidx/media3/common/Player;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvents(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$1;->this$0:Landroidx/media3/common/ForwardingSimpleBasePlayer;

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->invalidateState()V

    return-void
.end method

.method public onMetadata(Landroidx/media3/common/Metadata;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$1;->this$0:Landroidx/media3/common/ForwardingSimpleBasePlayer;

    invoke-static {p0, p1}, Landroidx/media3/common/ForwardingSimpleBasePlayer;->access$002(Landroidx/media3/common/ForwardingSimpleBasePlayer;Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    return-void
.end method

.method public onPlayWhenReadyChanged(ZI)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$1;->this$0:Landroidx/media3/common/ForwardingSimpleBasePlayer;

    invoke-static {p0, p2}, Landroidx/media3/common/ForwardingSimpleBasePlayer;->access$102(Landroidx/media3/common/ForwardingSimpleBasePlayer;I)I

    return-void
.end method

.method public onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$1;->this$0:Landroidx/media3/common/ForwardingSimpleBasePlayer;

    invoke-static {v0, p3}, Landroidx/media3/common/ForwardingSimpleBasePlayer;->access$202(Landroidx/media3/common/ForwardingSimpleBasePlayer;I)I

    iget-object p3, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$1;->this$0:Landroidx/media3/common/ForwardingSimpleBasePlayer;

    iget-wide v0, p2, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    invoke-static {p3, v0, v1}, Landroidx/media3/common/ForwardingSimpleBasePlayer;->access$302(Landroidx/media3/common/ForwardingSimpleBasePlayer;J)J

    iget-object p2, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$1;->this$0:Landroidx/media3/common/ForwardingSimpleBasePlayer;

    invoke-static {p2}, Landroidx/media3/common/ForwardingSimpleBasePlayer;->access$400(Landroidx/media3/common/ForwardingSimpleBasePlayer;)Landroidx/media3/common/ForwardingSimpleBasePlayer$LivePositionSuppliers;

    move-result-object p2

    iget-wide v0, p1, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    iget-wide v2, p1, Landroidx/media3/common/Player$PositionInfo;->contentPositionMs:J

    invoke-virtual {p2, v0, v1, v2, v3}, Landroidx/media3/common/ForwardingSimpleBasePlayer$LivePositionSuppliers;->disconnect(JJ)V

    iget-object p1, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$1;->this$0:Landroidx/media3/common/ForwardingSimpleBasePlayer;

    new-instance p2, Landroidx/media3/common/ForwardingSimpleBasePlayer$LivePositionSuppliers;

    iget-object p0, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$1;->val$player:Landroidx/media3/common/Player;

    invoke-direct {p2, p0}, Landroidx/media3/common/ForwardingSimpleBasePlayer$LivePositionSuppliers;-><init>(Landroidx/media3/common/Player;)V

    invoke-static {p1, p2}, Landroidx/media3/common/ForwardingSimpleBasePlayer;->access$402(Landroidx/media3/common/ForwardingSimpleBasePlayer;Landroidx/media3/common/ForwardingSimpleBasePlayer$LivePositionSuppliers;)Landroidx/media3/common/ForwardingSimpleBasePlayer$LivePositionSuppliers;

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 1

    iget-object p0, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$1;->this$0:Landroidx/media3/common/ForwardingSimpleBasePlayer;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroidx/media3/common/ForwardingSimpleBasePlayer;->access$502(Landroidx/media3/common/ForwardingSimpleBasePlayer;Z)Z

    return-void
.end method
