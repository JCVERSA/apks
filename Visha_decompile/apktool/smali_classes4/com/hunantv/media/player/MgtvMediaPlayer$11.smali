.class Lcom/hunantv/media/player/MgtvMediaPlayer$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoStringListener;


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

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$11;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(ILjava/lang/String;)Z
    .locals 18

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, ":"

    const/16 v4, 0x8

    const-string v5, "-"

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v2, v4, :cond_d

    const/16 v4, 0xb2c

    if-eq v2, v4, :cond_9

    const/16 v4, 0xb36

    const/4 v9, 0x3

    if-eq v2, v4, :cond_8

    const/16 v4, 0xb4b

    if-eq v2, v4, :cond_7

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    iget-object v0, v1, Lcom/hunantv/media/player/MgtvMediaPlayer$11;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iput-object v3, v0, Lcom/hunantv/media/player/MgtvMediaPlayer;->vsri:Ljava/lang/String;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MEDIA_INFO_VSR_RUN_INFO value:"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_1
    iget-object v0, v1, Lcom/hunantv/media/player/MgtvMediaPlayer$11;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iput-object v3, v0, Lcom/hunantv/media/player/MgtvMediaPlayer;->waev:Ljava/lang/String;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MEDIA_INFO_WANOS_EFFECT_INFO value:"

    goto :goto_0

    :pswitch_2
    iget-object v4, v1, Lcom/hunantv/media/player/MgtvMediaPlayer$11;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MEDIA_INFO_FILE_ENCODE_INFO value:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_b

    :try_start_0
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    array-length v5, v4

    const/4 v10, 0x6

    if-lt v5, v10, :cond_b

    aget-object v5, v4, v8

    invoke-static {v5, v0}, Lcom/hunantv/media/player/utils/StringUtil;->parseValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v10, -0x1

    invoke-static {v5, v10}, Lcom/hunantv/media/utils/NumericUtil;->parseInt(Ljava/lang/String;I)I

    move-result v5

    aget-object v7, v4, v7

    invoke-static {v7, v0}, Lcom/hunantv/media/player/utils/StringUtil;->parseValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Lcom/hunantv/media/utils/NumericUtil;->parseInt(Ljava/lang/String;I)I

    move-result v11

    aget-object v6, v4, v6

    invoke-static {v6, v0}, Lcom/hunantv/media/player/utils/StringUtil;->parseValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aget-object v6, v4, v9

    invoke-static {v6, v0}, Lcom/hunantv/media/player/utils/StringUtil;->parseValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Lcom/hunantv/media/utils/NumericUtil;->parseInt(Ljava/lang/String;I)I

    move-result v12

    const/4 v6, 0x4

    aget-object v6, v4, v6

    invoke-static {v6, v0}, Lcom/hunantv/media/player/utils/StringUtil;->parseValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Lcom/hunantv/media/utils/NumericUtil;->parseInt(Ljava/lang/String;I)I

    move-result v13

    const/4 v6, 0x5

    aget-object v4, v4, v6

    invoke-static {v4, v0}, Lcom/hunantv/media/player/utils/StringUtil;->parseValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/media/utils/NumericUtil;->parseInt(Ljava/lang/String;)I

    move-result v15

    iget-object v0, v1, Lcom/hunantv/media/player/MgtvMediaPlayer$11;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$11300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/hunantv/media/player/MgtvMediaPlayer$11;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$8200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/flow/FlowReportProcessor;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v4, v1, Lcom/hunantv/media/player/MgtvMediaPlayer$11;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getReportParams()Lcom/hunantv/media/report/ReportParams;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5, v14}, Lcom/hunantv/media/report/ReportParams;->setEncinfo(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    :cond_1
    iget-object v5, v1, Lcom/hunantv/media/player/MgtvMediaPlayer$11;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v5}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$11300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getFlowReportProcessor()Lcom/hunantv/media/player/flow/FlowReportProcessor;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {v4}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->genFlowReporter()V

    :cond_2
    invoke-virtual {v4}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getFlowReportProcessor()Lcom/hunantv/media/player/flow/FlowReportProcessor;

    move-result-object v0

    :cond_3
    :goto_2
    move-object v10, v0

    goto :goto_3

    :cond_4
    iget-object v4, v1, Lcom/hunantv/media/player/MgtvMediaPlayer$11;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, v1, Lcom/hunantv/media/player/MgtvMediaPlayer$11;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/hunantv/media/report/ReportParams;->setEncinfo(Ljava/lang/String;)Lcom/hunantv/media/report/ReportParams;

    goto :goto_2

    :goto_3
    iget-object v0, v1, Lcom/hunantv/media/player/MgtvMediaPlayer$11;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$11300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v10, :cond_b

    iget-object v0, v1, Lcom/hunantv/media/player/MgtvMediaPlayer$11;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/a;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "00"

    if-eqz v0, :cond_5

    :try_start_1
    iget-object v0, v1, Lcom/hunantv/media/player/MgtvMediaPlayer$11;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/report/a;->g()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_4

    :cond_5
    move-object/from16 v16, v4

    :goto_4
    iget-object v0, v1, Lcom/hunantv/media/player/MgtvMediaPlayer$11;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/hunantv/media/player/MgtvMediaPlayer$11;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/report/ReportParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getVideoSession()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_5

    :cond_6
    move-object/from16 v17, v4

    :goto_5
    invoke-virtual/range {v10 .. v17}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->start(IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_7

    :pswitch_3
    iget-object v0, v1, Lcom/hunantv/media/player/MgtvMediaPlayer$11;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$11202(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_7

    :cond_7
    iget-object v0, v1, Lcom/hunantv/media/player/MgtvMediaPlayer$11;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MEDIA_INFO_FILE_START_TIME value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/hunantv/media/player/MgtvMediaPlayer$11;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0, v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$11102(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_7

    :cond_8
    iget-object v0, v1, Lcom/hunantv/media/player/MgtvMediaPlayer$11;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MEDIA_INFO_VIDEO_STREAM_CODEC_NAME:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    :try_start_2
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    array-length v4, v0

    if-lt v4, v9, :cond_b

    iget-object v4, v1, Lcom/hunantv/media/player/MgtvMediaPlayer$11;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    aget-object v5, v0, v7

    invoke-static {v4, v5}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$11002(Lcom/hunantv/media/player/MgtvMediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, v1, Lcom/hunantv/media/player/MgtvMediaPlayer$11;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    aget-object v0, v0, v6

    iput-object v0, v4, Lcom/hunantv/media/player/MgtvMediaPlayer;->hdrInfo:Ljava/lang/String;

    invoke-static {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MEDIA_INFO_VIDEO_STREAM_CODEC_NAME mCodecName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/hunantv/media/player/MgtvMediaPlayer$11;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v5}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$11000(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",hdrInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/hunantv/media/player/MgtvMediaPlayer$11;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v5, v5, Lcom/hunantv/media/player/MgtvMediaPlayer;->hdrInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    :cond_9
    invoke-static/range {p2 .. p2}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    array-length v4, v0

    if-lt v4, v6, :cond_a

    iget-object v4, v1, Lcom/hunantv/media/player/MgtvMediaPlayer$11;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    aget-object v5, v0, v8

    const-wide/16 v9, -0x1

    invoke-static {v5, v9, v10}, Lcom/hunantv/media/utils/NumericUtil;->parseLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmt:J

    iget-object v4, v1, Lcom/hunantv/media/player/MgtvMediaPlayer$11;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    aget-object v0, v0, v7

    invoke-static {v0, v9, v10}, Lcom/hunantv/media/utils/NumericUtil;->parseLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDlt:J

    goto :goto_7

    :cond_a
    iget-object v0, v1, Lcom/hunantv/media/player/MgtvMediaPlayer$11;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const-wide/16 v4, -0x2

    iput-wide v4, v0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mSmt:J

    iput-wide v4, v0, Lcom/hunantv/media/player/MgtvMediaPlayer;->mDlt:J

    :catch_1
    :cond_b
    :goto_7
    iget-object v0, v1, Lcom/hunantv/media/player/MgtvMediaPlayer$11;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$11700(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoStringListener;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/hunantv/media/player/MgtvMediaPlayer$11;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$11700(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoStringListener;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Lcom/hunantv/media/player/MgtvPlayerListener$OnInfoStringListener;->onInfo(ILjava/lang/String;)Z

    move-result v0

    return v0

    :cond_c
    return v8

    :cond_d
    invoke-static/range {p2 .. p2}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    :try_start_3
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    array-length v2, v0

    if-ne v2, v6, :cond_e

    aget-object v2, v0, v8

    invoke-static {v2}, Lcom/hunantv/media/utils/NumericUtil;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    aget-object v0, v0, v7

    invoke-static {v0}, Lcom/hunantv/media/utils/NumericUtil;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_8

    :catch_2
    move v2, v8

    :catch_3
    move v0, v8

    goto :goto_8

    :cond_e
    move v0, v8

    move v2, v0

    :goto_8
    iget-object v3, v1, Lcom/hunantv/media/player/MgtvMediaPlayer$11;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$11400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    move-result-object v3

    if-eqz v3, :cond_f

    iget-object v3, v1, Lcom/hunantv/media/player/MgtvMediaPlayer$11;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$11400(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    move-result-object v3

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->addBytes(J)V

    :cond_f
    iget-object v3, v1, Lcom/hunantv/media/player/MgtvMediaPlayer$11;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$11500(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    move-result-object v3

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->addBytes(J)V

    iget-object v2, v1, Lcom/hunantv/media/player/MgtvMediaPlayer$11;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$8200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/flow/FlowReportProcessor;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-object v2, v1, Lcom/hunantv/media/player/MgtvMediaPlayer$11;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$8200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/flow/FlowReportProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->getFlowStatistic()Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->addBytes(J)V

    :cond_10
    div-int/lit16 v0, v0, 0x3e8

    iget-object v2, v1, Lcom/hunantv/media/player/MgtvMediaPlayer$11;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$11600(Lcom/hunantv/media/player/MgtvMediaPlayer;)I

    move-result v2

    if-le v0, v2, :cond_11

    iget-object v0, v1, Lcom/hunantv/media/player/MgtvMediaPlayer$11;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1800(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/utils/SyncStateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/player/utils/SyncStateMachine;->getState()I

    move-result v0

    if-ne v0, v7, :cond_11

    iget-object v0, v1, Lcom/hunantv/media/player/MgtvMediaPlayer$11;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$1800(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/utils/SyncStateMachine;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Lcom/hunantv/media/player/utils/SyncStateMachine;->changeState(II)V

    :cond_11
    return v8

    :pswitch_data_0
    .packed-switch 0xb54
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
