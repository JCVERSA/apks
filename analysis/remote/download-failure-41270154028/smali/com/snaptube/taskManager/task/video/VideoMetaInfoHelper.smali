.class public final Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper;
.super Lcom/snaptube/taskManager/task/video/MetaInfoHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper$Companion;,
        Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper$MvConfigure;
    }
.end annotation


# static fields
.field public static final i:Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper$Companion;

.field public static volatile j:Z


# instance fields
.field public final f:Lcom/snaptube/extractor/pluginlib/models/Format;

.field public final g:Lo/t14;

.field public final h:Lo/t14;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper$Companion;-><init>(Lo/pg1;)V

    sput-object v0, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper;->i:Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Lcom/snaptube/extractor/pluginlib/models/Format;)V
    .locals 1

    const-string v0, "taskInfo"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoInfo"

    invoke-static {p2, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;-><init>(Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;)V

    iput-object p3, p0, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper;->f:Lcom/snaptube/extractor/pluginlib/models/Format;

    sget-object p1, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper$onlineConfig$2;->INSTANCE:Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper$onlineConfig$2;

    invoke-static {p1}, Lkotlin/b;->b(Lo/bx2;)Lo/t14;

    move-result-object p1

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper;->g:Lo/t14;

    new-instance p1, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper$mvConfigure$2;

    invoke-direct {p1, p0}, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper$mvConfigure$2;-><init>(Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper;)V

    invoke-static {p1}, Lkotlin/b;->b(Lo/bx2;)Lo/t14;

    move-result-object p1

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper;->h:Lo/t14;

    return-void
.end method

.method public static final synthetic j0()Z
    .locals 1

    sget-boolean v0, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper;->j:Z

    return v0
.end method

.method public static final synthetic k0(Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper;)Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper$MvConfigure;
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper;->m0()Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper$MvConfigure;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic l0(Z)V
    .locals 0

    sput-boolean p0, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper;->j:Z

    return-void
.end method


# virtual methods
.method public H()Z
    .locals 1

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->C4()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper;->p0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper;->f:Lcom/snaptube/extractor/pluginlib/models/Format;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/Format;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/ig4;->l(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->S()Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/mf9;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->S()Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/zz4;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->S()Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/zz4;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->S()Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/zz4;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public U(Landroid/support/v4/media/MediaMetadataCompat;Ljava/lang/String;)V
    .locals 1

    const-string v0, "metadata"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filePath"

    invoke-static {p2, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper;->i:Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper$Companion;->m(Landroid/support/v4/media/MediaMetadataCompat;Ljava/lang/String;)V

    return-void
.end method

.method public final m0()Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper$MvConfigure;
    .locals 3

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper;->o0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key.video_meta_info_mv_config"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper$MvConfigure;->Companion:Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper$MvConfigure$a;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper$MvConfigure$a;->a()Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper$MvConfigure;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Lo/j23;->g()Lo/h23;

    move-result-object v1

    const-class v2, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper$MvConfigure;

    invoke-virtual {v1, v0, v2}, Lo/h23;->k(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "fromJson(...)"

    invoke-static {v0, v1}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper$MvConfigure;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "VideoMetaInfoHelper"

    invoke-static {v1, v0}, Lcom/snaptube/util/ProductionEnv;->errorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper$MvConfigure;->Companion:Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper$MvConfigure$a;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper$MvConfigure$a;->a()Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper$MvConfigure;

    move-result-object v0

    return-object v0
.end method

.method public final n0()Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper$MvConfigure;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper;->h:Lo/t14;

    invoke-interface {v0}, Lo/t14;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper$MvConfigure;

    return-object v0
.end method

.method public final o0()Landroid/content/SharedPreferences;
    .locals 2

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper;->g:Lo/t14;

    invoke-interface {v0}, Lo/t14;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final p0()Z
    .locals 1

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper;->f:Lcom/snaptube/extractor/pluginlib/models/Format;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lo/fs2;->v(Lcom/snaptube/extractor/pluginlib/models/Format;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final q0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->P()Lcom/snaptube/premium/api_service/response/MatchResponse;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper;->s0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final r0()Z
    .locals 5

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->S()Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->isYoutube()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->S()Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getDurationInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->S()Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getDurationInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x258

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final s0()Z
    .locals 6

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->S()Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getDurationInSecond()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper;->n0()Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper$MvConfigure;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper$MvConfigure;->getMinDurationSecond()I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-ltz v5, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->S()Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getDurationInSecond()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper;->n0()Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper$MvConfigure;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper$MvConfigure;->getMaxDurationSecond()I

    move-result v2

    int-to-long v2, v2

    cmp-long v5, v0, v2

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper;->n0()Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper$MvConfigure;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper$MvConfigure;->getMatchRegex()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->S()Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper;->n0()Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper$MvConfigure;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper$MvConfigure;->getMatchRegex()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/or3;->c(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->S()Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/or3;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    return v4
.end method

.method public v()Lcom/snaptube/taskManager/task/video/MetaInfoHelper$MetaExtraInfo;
    .locals 2

    new-instance v0, Lcom/snaptube/taskManager/task/video/MetaInfoHelper$MetaExtraInfo;

    const-string v1, "mv"

    invoke-direct {v0, v1}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper$MetaExtraInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public w()Z
    .locals 1

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper;->r0()Z

    move-result v0

    return v0
.end method

.method public x()Z
    .locals 1

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper;->q0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper;->p0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
