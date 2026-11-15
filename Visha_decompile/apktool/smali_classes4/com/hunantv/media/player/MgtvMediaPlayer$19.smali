.class Lcom/hunantv/media/player/MgtvMediaPlayer$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/MgtvPlayerListener$OnSourceFlowHandledListener;


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

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$19;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSourceFlowInfoEvent(ILandroid/os/Bundle;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const v2, 0x13301

    move/from16 v3, p1

    if-ne v3, v2, :cond_1

    if-eqz v1, :cond_1

    const-string v2, "flow_switch_url"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "flow_switch_key"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    const-string v3, "flow_seg_index"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string v3, "flow_seg_nums"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "flow_seg_starttime"

    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v7, "flow_seg_dur"

    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    const-string v7, "flow_cur_dl_size"

    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v7, "flow_file_size"

    move-wide/from16 v16, v8

    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    const-string v9, "flow_stream_type"

    invoke-virtual {v1, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v9

    move-object/from16 p1, v2

    const-string v2, "flow_error_type"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    move-wide/from16 v18, v7

    const-string v7, "flow_error_code"

    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v7, v0, Lcom/hunantv/media/player/MgtvMediaPlayer$19;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v7}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object v3, v7

    move-object v4, v9

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-wide/from16 v20, v14

    move-wide/from16 v14, v18

    move-object/from16 v7, v22

    move/from16 p2, v1

    move-object v9, v8

    move-wide/from16 v0, v16

    move-object/from16 v8, v23

    move/from16 v16, v2

    move-object v2, v9

    move-object/from16 v9, v24

    move-wide/from16 v28, v10

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    move-wide/from16 v30, v12

    move-object/from16 v12, v27

    move-object/from16 v13, p1

    filled-new-array/range {v3 .. v13}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "onSourceFlowInfoEvent: flow_stream_type:%d, flow_error_type:%d, flow_error_code:%d, flow_switch_key:%d, flow_seg_index:%d, flow_seg_nums:%d, flow_seg_starttime:%d, flow_seg_dur:%d, flow_cur_dl_size:%d, flow_file_size:%d, flow_swithc_url:%s "

    invoke-static {v2, v4, v3}, Lcom/hunantv/media/player/pragma/DebugLog;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lcom/hunantv/media/player/flow/entity/FlowReportEntity;

    invoke-direct {v2}, Lcom/hunantv/media/player/flow/entity/FlowReportEntity;-><init>()V

    move-object/from16 v3, p1

    iput-object v3, v2, Lcom/hunantv/media/player/flow/entity/FlowReportEntity;->url:Ljava/lang/String;

    iput-wide v14, v2, Lcom/hunantv/media/player/flow/entity/FlowReportEntity;->file_size:J

    iput-wide v0, v2, Lcom/hunantv/media/player/flow/entity/FlowReportEntity;->down_size:J

    move/from16 v0, v16

    iput v0, v2, Lcom/hunantv/media/player/flow/entity/FlowReportEntity;->error_type:I

    move/from16 v0, p2

    iput v0, v2, Lcom/hunantv/media/player/flow/entity/FlowReportEntity;->error_code:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v3, "0.000000"

    invoke-direct {v1, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move-wide/from16 v3, v28

    long-to-float v3, v3

    const v4, 0x49742400    # 1000000.0f

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-virtual {v1, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/hunantv/media/player/flow/entity/FlowReportEntity;->file_dur:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v3, v30

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/hunantv/media/player/flow/entity/FlowReportEntity;->file_seq:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hunantv/media/player/MgtvMediaPlayer$19;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$11300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/hunantv/media/player/MgtvMediaPlayer$19;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$8200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/flow/FlowReportProcessor;

    move-result-object v1

    iget-object v0, v0, Lcom/hunantv/media/player/MgtvMediaPlayer$19;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/util/Map;

    move-result-object v0

    move-wide/from16 v3, v20

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getFlowReportProcessor()Lcom/hunantv/media/player/flow/FlowReportProcessor;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->pushPlayerFlowInfo(Lcom/hunantv/media/player/flow/entity/FlowReportEntity;)V

    :cond_1
    return-void
.end method
