.class public abstract Lo/k08;
.super Lo/xu;

# interfaces
.implements Lo/ka3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/k08$c;
    }
.end annotation


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Landroid/os/Handler;

.field public d:Lcom/snaptube/taskManager/datasets/TaskInfo;

.field public e:Lo/k08$c;

.field public f:Z

.field public g:J

.field public h:J

.field public i:J

.field public final j:Lo/is1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/snaptube/taskManager/datasets/TaskInfo;)V
    .locals 3

    invoke-direct {p0}, Lo/xu;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lo/c18;->d()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/k08;->c:Landroid/os/Handler;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lo/k08;->g:J

    iput-wide v1, p0, Lo/k08;->h:J

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lo/k08;->i:J

    new-instance v1, Lo/k08$a;

    invoke-direct {v1, p0}, Lo/k08$a;-><init>(Lo/k08;)V

    iput-object v1, p0, Lo/k08;->j:Lo/is1;

    iput-object p1, p0, Lo/k08;->b:Landroid/content/Context;

    iput-object p2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    new-instance p1, Lo/k08$c;

    invoke-direct {p1, p0, v0}, Lo/k08$c;-><init>(Lo/k08;Landroid/os/Handler;)V

    iput-object p1, p0, Lo/k08;->e:Lo/k08$c;

    return-void
.end method

.method public static C(Lo/ah3;Lcom/snaptube/taskManager/datasets/TaskInfo;)V
    .locals 5

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->m()Lkotlin/text/Regex;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "is_private_content"

    invoke-interface {p0, v1, v0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    iget-boolean v1, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->G:Z

    if-eqz v1, :cond_0

    const-string v1, "vault"

    goto :goto_0

    :cond_0
    const-string v1, "normal"

    :goto_0
    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "category"

    invoke-interface {v0, v2, v1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    const-string v1, "content_id"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    const-string v4, "snap_list_id"

    invoke-interface {v0, v4, v3}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    const-string v2, "editor"

    invoke-interface {v0, v2, v3}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    const-string v2, "position_source"

    iget-object v3, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->V:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    iget-boolean v2, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->r0:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "is_duplicate"

    invoke-interface {v0, v3, v2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    const-string v2, "title"

    iget-object v3, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->k:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    const-string v2, "scenes"

    invoke-virtual {p1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->s()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    const-string v2, "content_url"

    invoke-virtual {p1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->p()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    const-string v2, "file_type"

    invoke-static {p1}, Lo/k08;->D(Lcom/snaptube/taskManager/datasets/TaskInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    invoke-static {p1}, Lo/k08;->E(Lcom/snaptube/taskManager/datasets/TaskInfo;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "elapsed"

    invoke-interface {v0, v3, v2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/yj2;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "file_extension"

    invoke-interface {v0, v3, v2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    iget-wide v2, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->s:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "video_duration"

    invoke-interface {v0, v3, v2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    iget-object v2, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    invoke-static {v2}, Lo/jy2;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "quality"

    invoke-interface {v0, v3, v2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    iget-object v2, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    invoke-static {v2}, Lo/jy2;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "format_tag"

    invoke-interface {v0, v3, v2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    iget-wide v2, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->d:J

    invoke-static {v2, v3}, Lo/jy2;->k(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "file_size"

    invoke-interface {v0, v3, v2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    iget-wide v2, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->N:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "extract_duration"

    invoke-interface {v0, v3, v2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    iget v2, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->Q:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "extract_count"

    invoke-interface {v0, v3, v2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    const-string v2, "extract_from"

    iget-object v3, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->R:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    const-string v2, "from"

    iget-object v3, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->V:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    iget-wide v2, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->P:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "process_duration"

    invoke-interface {v0, v3, v2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    iget-wide v2, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->O:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "download_duration"

    invoke-interface {v0, v3, v2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    invoke-static {p1}, Lo/k08;->u(Lcom/snaptube/taskManager/datasets/TaskInfo;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "speed"

    invoke-interface {v0, v3, v2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    iget v2, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->C:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "fail_times"

    invoke-interface {v0, v3, v2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    iget v2, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->g0:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "count"

    invoke-interface {v0, v3, v2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->F()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "is_snaptube_internal"

    invoke-interface {v0, v3, v2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    const-string v2, "arg3"

    iget-object v3, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->Y:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    const-string v2, "file_plan_project"

    invoke-static {p1}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->E(Lcom/snaptube/taskManager/datasets/TaskInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    iget-boolean v2, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->e0:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "is_fast_download"

    invoke-interface {v0, v3, v2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    iget-boolean v2, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->f0:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "is_batch_download"

    invoke-interface {v0, v3, v2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    iget-boolean v2, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->c0:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "is_playlist_list_batch_download"

    invoke-interface {v0, v3, v2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    const-string v2, "extra_info"

    invoke-virtual {p1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->r()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    iget-object v2, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->o:Ljava/lang/String;

    invoke-static {v2}, Lo/jy2;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "external_download_type"

    invoke-interface {v0, v3, v2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/kf9;->j(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "shorts_video"

    goto :goto_1

    :cond_1
    const-string v2, "non_shorts_video"

    :goto_1
    const-string v3, "ytb_content_type"

    invoke-interface {v0, v3, v2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    iget-object v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->B:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    sget-object v2, Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;->SUBTITLE:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/yj8;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "host"

    invoke-interface {p0, v2, v0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    :cond_2
    iget-object v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->l0:Ljava/lang/String;

    invoke-static {v0}, Lcom/snaptube/dataadapter/utils/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->l0:Ljava/lang/String;

    invoke-interface {p0, v0}, Lo/ah3;->addAllProperties(Ljava/lang/String;)Lo/ah3;

    :cond_3
    iget-object v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->b0:Ljava/lang/String;

    invoke-static {v0}, Lcom/snaptube/dataadapter/utils/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "playlist_id"

    invoke-virtual {p1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->o()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    const-string v2, "list_url"

    iget-object v3, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->b0:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    const-string v2, "list_title"

    iget-object v3, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->a0:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    :cond_4
    invoke-virtual {p1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/kf9;->q(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/kf9;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    :cond_5
    invoke-virtual {p1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->q()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    goto :goto_2

    :cond_6
    return-void
.end method

.method public static D(Lcom/snaptube/taskManager/datasets/TaskInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->B:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    if-nez p0, :cond_0

    sget-object p0, Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;->UNKNOWN:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static E(Lcom/snaptube/taskManager/datasets/TaskInfo;)J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->m:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static synthetic r(Lo/k08;)V
    .locals 0

    invoke-virtual {p0}, Lo/k08;->L()V

    return-void
.end method

.method public static synthetic s(Lo/k08;)V
    .locals 0

    invoke-virtual {p0}, Lo/k08;->K()V

    return-void
.end method

.method public static bridge synthetic t(Lo/k08;Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;)V
    .locals 0

    invoke-virtual {p0, p1}, Lo/k08;->a0(Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;)V

    return-void
.end method

.method public static u(Lcom/snaptube/taskManager/datasets/TaskInfo;)J
    .locals 8

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    iget-wide v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->O:J

    iget-wide v4, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->P:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->N:J

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    iget-wide v4, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->d:J

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    div-long/2addr v4, v2

    goto :goto_0

    :cond_1
    move-wide v4, v0

    :goto_0
    cmp-long p0, v4, v0

    if-lez p0, :cond_2

    move-wide v0, v4

    :cond_2
    invoke-static {v0, v1}, Lo/jy2;->j(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static w(Lcom/snaptube/taskManager/datasets/TaskInfo;)V
    .locals 3

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/Throwable;

    const-string v0, "cancel taskinfo is null"

    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    new-instance v0, Lcom/snaptube/premium/log/ReportPropertyBuilder;

    invoke-direct {v0}, Lcom/snaptube/premium/log/ReportPropertyBuilder;-><init>()V

    invoke-static {v0, p0}, Lo/k08;->C(Lo/ah3;Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    const-string v1, "Task"

    invoke-interface {v0, v1}, Lo/ah3;->setEventName(Ljava/lang/String;)Lo/ah3;

    move-result-object v1

    const-string v2, "cancel"

    invoke-interface {v1, v2}, Lo/ah3;->setAction(Ljava/lang/String;)Lo/ah3;

    instance-of v1, p0, Lcom/snaptube/taskManager/datasets/a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->y:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/ah3;->addAllProperties(Ljava/lang/String;)Lo/ah3;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v1

    check-cast p0, Lcom/snaptube/taskManager/datasets/a;

    invoke-virtual {p0}, Lcom/snaptube/taskManager/datasets/a;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lo/ap3;->j(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "guide_app_installed"

    invoke-interface {v0, v1, p0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    :cond_1
    invoke-static {}, Lo/vq6;->K()Lo/kh3;

    move-result-object p0

    invoke-interface {p0, v0}, Lo/kh3;->g(Lo/ah3;)V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 5

    invoke-virtual {p0}, Lo/k08;->k0()V

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-static {v0}, Lcom/snaptube/premium/history/DownloadHistoryHelper;->o(Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-boolean v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->x:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->T:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->x:Z

    iget-wide v2, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    invoke-static {v2, v3, v1}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->x(JZ)V

    :cond_0
    invoke-virtual {p0}, Lo/k08;->U()V

    sget-object v0, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;->FINISH:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    invoke-virtual {p0, v0}, Lo/k08;->o0(Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;)I

    invoke-virtual {p0}, Lo/k08;->q0()V

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->b:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;

    sget-object v2, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;->TASK_BT:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;

    if-ne v1, v2, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lo/xe3;->e(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/snaptube/premium/vault/LockManager;->a:Lcom/snaptube/premium/vault/LockManager;

    invoke-virtual {v3}, Lcom/snaptube/premium/vault/LockManager;->G()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lo/k08;->b:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/wandoujia/base/utils/MediaScanUtil;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->G:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lo/k08;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/wandoujia/base/utils/MediaScanUtil;->e(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lo/k08;->T()V

    invoke-virtual {p0}, Lo/k08;->R()V

    new-instance v0, Lcom/snaptube/premium/log/ReportPropertyBuilder;

    invoke-direct {v0}, Lcom/snaptube/premium/log/ReportPropertyBuilder;-><init>()V

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-static {v0, v1}, Lo/k08;->C(Lo/ah3;Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    const-string v1, "Task"

    invoke-interface {v0, v1}, Lo/ah3;->setEventName(Ljava/lang/String;)Lo/ah3;

    move-result-object v1

    const-string v2, "ok"

    invoke-interface {v1, v2}, Lo/ah3;->setAction(Ljava/lang/String;)Lo/ah3;

    invoke-virtual {p0, v0}, Lo/k08;->O(Lo/ah3;)V

    invoke-virtual {p0}, Lo/k08;->N()V

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v1, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->m0:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "background_duration"

    invoke-interface {v0, v2, v1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    invoke-static {}, Lo/jd6;->g()Lo/jd6;

    move-result-object v1

    iget-object v2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v2}, Lcom/snaptube/taskManager/datasets/TaskInfo;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/jd6;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/ah3;->b(Ljava/util/Map;)Lo/ah3;

    invoke-static {}, Lo/vq6;->K()Lo/kh3;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/kh3;->g(Lo/ah3;)V

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->M2()J

    return-void
.end method

.method public final B()V
    .locals 1

    sget-object v0, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;->WARNING:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    invoke-virtual {p0, v0}, Lo/k08;->o0(Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;)I

    invoke-virtual {p0}, Lo/k08;->T()V

    return-void
.end method

.method public F()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->w:Ljava/lang/String;

    return-object v0
.end method

.method public G()Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;
    .locals 1

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->i:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    return-object v0
.end method

.method public H()J
    .locals 2

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    return-wide v0
.end method

.method public I()Lcom/snaptube/taskManager/datasets/TaskInfo;
    .locals 1

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    return-object v0
.end method

.method public J()V
    .locals 0

    invoke-virtual {p0}, Lo/k08;->X()V

    return-void
.end method

.method public final synthetic K()V
    .locals 0

    invoke-static {p0}, Lo/bu5;->a(Lo/ka3;)V

    return-void
.end method

.method public final synthetic L()V
    .locals 1

    invoke-static {p0}, Lo/bu5;->f(Lo/ka3;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo/bu5;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/k08;->p0()V

    :cond_0
    return-void
.end method

.method public M()V
    .locals 1

    new-instance v0, Lo/j08;

    invoke-direct {v0, p0}, Lo/j08;-><init>(Lo/k08;)V

    invoke-static {v0}, Lo/y48;->n(Ljava/lang/Runnable;)V

    return-void
.end method

.method public N()V
    .locals 1

    new-instance v0, Lo/i08;

    invoke-direct {v0, p0}, Lo/i08;-><init>(Lo/k08;)V

    invoke-static {v0}, Lo/y48;->n(Ljava/lang/Runnable;)V

    return-void
.end method

.method public O(Lo/ah3;)V
    .locals 0

    return-void
.end method

.method public P()V
    .locals 0

    invoke-virtual {p0}, Lo/k08;->T()V

    return-void
.end method

.method public Q()V
    .locals 1

    invoke-virtual {p0}, Lo/k08;->R()V

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/yj2;->s(Ljava/lang/String;)V

    return-void
.end method

.method public R()V
    .locals 0

    return-void
.end method

.method public S()V
    .locals 2

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->K()Lcom/snaptube/taskManager/TaskMessageCenter;

    move-result-object v0

    iget-object v1, p0, Lo/k08;->e:Lo/k08$c;

    invoke-virtual {v0, v1}, Lcom/snaptube/taskManager/TaskMessageCenter;->x(Lcom/snaptube/taskManager/TaskMessageCenter$d;)V

    invoke-static {}, Lo/qs1;->A()Lo/qs1;

    move-result-object v0

    iget-object v1, p0, Lo/k08;->j:Lo/is1;

    invoke-virtual {v0, v1}, Lo/qs1;->m(Lo/is1;)V

    invoke-virtual {p0}, Lo/k08;->M()V

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-static {v0}, Lcom/snaptube/premium/history/DownloadHistoryHelper;->j(Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    return-void
.end method

.method public T()V
    .locals 2

    invoke-virtual {p0}, Lo/k08;->N()V

    invoke-virtual {p0}, Lo/k08;->d0()V

    invoke-static {}, Lo/qs1;->A()Lo/qs1;

    move-result-object v0

    iget-object v1, p0, Lo/k08;->j:Lo/is1;

    invoke-virtual {v0, v1}, Lo/qs1;->N(Lo/is1;)V

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->K()Lcom/snaptube/taskManager/TaskMessageCenter;

    move-result-object v0

    iget-object v1, p0, Lo/k08;->e:Lo/k08$c;

    invoke-virtual {v0, v1}, Lcom/snaptube/taskManager/TaskMessageCenter;->y(Lcom/snaptube/taskManager/TaskMessageCenter$d;)V

    invoke-virtual {p0}, Lo/xu;->o()V

    iget-object v0, p0, Lo/k08;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public U()V
    .locals 0

    return-void
.end method

.method public V(Lcom/phoenix/download/DownloadInfo;)V
    .locals 0

    return-void
.end method

.method public abstract W(Lcom/phoenix/download/DownloadInfo;)V
.end method

.method public X()V
    .locals 0

    invoke-virtual {p0}, Lo/k08;->T()V

    return-void
.end method

.method public Y()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Z()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/k08;->g:J

    return-void
.end method

.method public final a0(Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;)V
    .locals 3

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->i:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    sget-object v2, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;->RUNNING:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;->PENDING:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    if-eq v1, v2, :cond_1

    return-void

    :cond_1
    iput-object p1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->i:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    sget-object v0, Lo/k08$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lo/k08;->P()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lo/k08;->X()V

    :goto_0
    return-void
.end method

.method public b0()V
    .locals 3

    new-instance v0, Lcom/snaptube/premium/log/ReportPropertyBuilder;

    invoke-direct {v0}, Lcom/snaptube/premium/log/ReportPropertyBuilder;-><init>()V

    const-string v1, "Task"

    invoke-interface {v0, v1}, Lo/ah3;->setEventName(Ljava/lang/String;)Lo/ah3;

    move-result-object v1

    const-string v2, "file_start"

    invoke-interface {v1, v2}, Lo/ah3;->setAction(Ljava/lang/String;)Lo/ah3;

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-static {v0, v1}, Lo/k08;->C(Lo/ah3;Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    invoke-virtual {p0, v0}, Lo/k08;->O(Lo/ah3;)V

    invoke-static {}, Lo/vq6;->K()Lo/kh3;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/kh3;->g(Lo/ah3;)V

    return-void
.end method

.method public c0()V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-object v2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v2, v2, Lcom/snaptube/taskManager/datasets/TaskInfo;->m:J

    sub-long/2addr v0, v2

    new-instance v2, Lcom/snaptube/premium/log/ReportPropertyBuilder;

    invoke-direct {v2}, Lcom/snaptube/premium/log/ReportPropertyBuilder;-><init>()V

    const-string v3, "Task"

    invoke-interface {v2, v3}, Lo/ah3;->setEventName(Ljava/lang/String;)Lo/ah3;

    move-result-object v3

    const-string v4, "file_ok"

    invoke-interface {v3, v4}, Lo/ah3;->setAction(Ljava/lang/String;)Lo/ah3;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "download_duration"

    invoke-interface {v3, v5, v4}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v3

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    iget-object v4, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v4, v4, Lcom/snaptube/taskManager/datasets/TaskInfo;->d:J

    div-long/2addr v4, v0

    :cond_0
    invoke-static {v4, v5}, Lo/jy2;->j(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "speed"

    invoke-interface {v3, v1, v0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-static {v2, v0}, Lo/k08;->C(Lo/ah3;Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    invoke-virtual {p0, v2}, Lo/k08;->O(Lo/ah3;)V

    invoke-static {}, Lo/vq6;->K()Lo/kh3;

    move-result-object v0

    invoke-interface {v0, v2}, Lo/kh3;->g(Lo/ah3;)V

    return-void
.end method

.method public final d0()V
    .locals 7

    iget-wide v0, p0, Lo/k08;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-boolean v0, p0, Lo/k08;->f:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/k08;->f:Z

    iget-wide v0, p0, Lo/k08;->h:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->P:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lo/k08;->h:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->P:J

    :cond_0
    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->O:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lo/k08;->g:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->O:J

    invoke-virtual {p0}, Lo/k08;->r0()V

    :cond_1
    return-void
.end method

.method public declared-synchronized e0(J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lo/k08;->i:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    iput-wide p1, p0, Lo/k08;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public abstract f0(Lcom/phoenix/download/DownloadInfo;)Z
.end method

.method public g0()V
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    :try_start_0
    const-string v1, "extra"

    iget-object v2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v2}, Lcom/snaptube/taskManager/datasets/TaskInfo;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v1, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->e1(JLandroid/content/ContentValues;Z)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public h0(I)I
    .locals 3

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iput p1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->C:I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "task_fail_times"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v1, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    const/4 p1, 0x1

    invoke-static {v1, v2, v0, p1}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->e1(JLandroid/content/ContentValues;Z)I

    move-result p1

    return p1
.end method

.method public i()V
    .locals 0

    invoke-virtual {p0}, Lo/k08;->p0()V

    return-void
.end method

.method public i0(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v0, p1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->R(Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "filePath"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v1, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    const/4 p1, 0x1

    invoke-static {v1, v2, v0, p1}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->e1(JLandroid/content/ContentValues;Z)I

    move-result p1

    return p1
.end method

.method public j0(Ljava/lang/String;Z)I
    .locals 2

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v0, p1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->R(Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "filePath"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "has_auto_retry"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide p1, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, v1}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->e1(JLandroid/content/ContentValues;Z)I

    move-result p1

    return p1
.end method

.method public final k0()V
    .locals 4

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->m:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    const-wide/16 v2, 0xa

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iput-wide v0, v2, Lcom/snaptube/taskManager/datasets/TaskInfo;->h0:J

    iget-wide v2, v2, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    invoke-static {v2, v3, v0, v1}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->f1(JJ)V

    return-void
.end method

.method public l0(JJJZ)I
    .locals 12

    move-object v0, p0

    move-wide v6, p3

    move-wide/from16 v1, p5

    iget-object v3, v0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v3, v3, Lcom/snaptube/taskManager/datasets/TaskInfo;->i:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    sget-object v4, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;->RUNNING:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    const-wide/16 v8, 0x0

    if-ne v3, v4, :cond_0

    cmp-long v3, v6, v8

    if-gtz v3, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    cmp-long v3, v6, v1

    if-lez v3, :cond_1

    const-string v3, "Download->"

    const-string v4, "TaskProgressController - fillProgress \u8d85\u8fc7 100% ~"

    invoke-static {v3, v4}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    cmp-long v3, v1, v8

    if-lez v3, :cond_2

    iget-object v3, v0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    const-wide/16 v4, 0x64

    mul-long v4, v4, v6

    div-long/2addr v4, v1

    long-to-int v5, v4

    iput v5, v3, Lcom/snaptube/taskManager/datasets/TaskInfo;->c:I

    iput-wide v1, v3, Lcom/snaptube/taskManager/datasets/TaskInfo;->d:J

    :cond_2
    iget-object v1, v0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    move-wide v4, p1

    iput-wide v4, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->f:J

    iput-wide v6, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->e:J

    iget-wide v2, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    iget v8, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->c:I

    iget-wide v9, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->d:J

    iget-object v11, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->j:Ljava/lang/String;

    move-wide v1, v2

    move v3, v8

    move-wide v6, p3

    move-wide v8, v9

    move-object v10, v11

    move/from16 v11, p7

    invoke-static/range {v1 .. v11}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->h1(JIJJJLjava/lang/String;Z)I

    move-result v1

    return v1
.end method

.method public m0(Ljava/lang/String;Z)I
    .locals 12

    if-eqz p1, :cond_1

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iput-object p1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->j:Ljava/lang/String;

    iget-wide v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    iget v3, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->c:I

    iget-wide v4, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->f:J

    iget-wide v6, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->e:J

    iget-wide v8, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->d:J

    move-object v10, p1

    move v11, p2

    invoke-static/range {v1 .. v11}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->h1(JIJJJLjava/lang/String;Z)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public n()V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should never reach here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n0(ILjava/lang/String;Z)I
    .locals 12

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iput-object p2, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->j:Ljava/lang/String;

    iput p1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->c:I

    iget-wide v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    iget-wide v4, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->f:J

    iget-wide v6, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->e:J

    iget-wide v8, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->d:J

    move v3, p1

    move-object v10, p2

    move v11, p3

    invoke-static/range {v1 .. v11}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->h1(JIJJJLjava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public o0(Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;)I
    .locals 2

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iput-object p1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->i:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    iget-wide v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    invoke-static {v0, v1, p1}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->l1(JLcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;)I

    move-result p1

    return p1
.end method

.method public final p0()V
    .locals 12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v3, v2, Lcom/snaptube/taskManager/datasets/TaskInfo;->m0:J

    sget-object v5, Lo/bu5;->a:Lo/bu5;

    invoke-virtual {v5}, Lo/bu5;->c()J

    move-result-wide v5

    iget-wide v7, p0, Lo/k08;->g:J

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-nez v11, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    sub-long/2addr v0, v7

    :goto_0
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    add-long/2addr v3, v0

    iput-wide v3, v2, Lcom/snaptube/taskManager/datasets/TaskInfo;->m0:J

    return-void
.end method

.method public q()V
    .locals 0

    invoke-virtual {p0}, Lo/k08;->S()V

    invoke-virtual {p0}, Lo/k08;->Z()V

    return-void
.end method

.method public final q0()V
    .locals 10

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ig4;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v3, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move-wide v5, v7

    invoke-virtual/range {v2 .. v9}, Lo/k08;->l0(JJJZ)I

    :cond_0
    return-void
.end method

.method public r0()V
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    :try_start_0
    const-string v1, "extra"

    iget-object v2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v2}, Lcom/snaptube/taskManager/datasets/TaskInfo;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v1, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->t(JLandroid/content/ContentValues;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public v()V
    .locals 0

    invoke-virtual {p0}, Lo/k08;->Q()V

    return-void
.end method

.method public final x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lo/k08;->z(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final y(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lo/k08;->z(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final z(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->O()Lo/dv8;

    move-result-object v0

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/extractor/BaseVideoUrlExtractor;->y(Ljava/lang/String;)V

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->C:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->C:I

    invoke-virtual {p0, v1}, Lo/k08;->h0(I)I

    sget-object v0, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;->ERROR:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    invoke-virtual {p0, v0}, Lo/k08;->o0(Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;)I

    invoke-virtual {p0}, Lo/k08;->T()V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/yj2;->v(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v2}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wandoujia/download/utils/StorageUtil;->o(Ljava/lang/String;)Z

    move-result v2

    new-instance v3, Lcom/snaptube/premium/log/ReportPropertyBuilder;

    invoke-direct {v3}, Lcom/snaptube/premium/log/ReportPropertyBuilder;-><init>()V

    iget-object v4, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-static {v3, v4}, Lo/k08;->C(Lo/ah3;Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    const-string v4, "Task"

    invoke-interface {v3, v4}, Lo/ah3;->setEventName(Ljava/lang/String;)Lo/ah3;

    move-result-object v4

    const-string v5, "fail"

    invoke-interface {v4, v5}, Lo/ah3;->setAction(Ljava/lang/String;)Lo/ah3;

    move-result-object v4

    invoke-virtual {p1, p2}, Lcom/snaptube/taskManager/task/TaskError;->appendDetails(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "error"

    invoke-interface {v4, v6, v5}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v4

    invoke-virtual {p1}, Lcom/snaptube/taskManager/task/TaskError;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "error_no"

    invoke-interface {v4, v6, v5}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v4

    const-string v5, "dir_exists"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v4

    const-string v5, "removable_disk"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v4, "arg2"

    invoke-interface {v2, v4, p4}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    const-string p4, "arg3"

    invoke-interface {v3, p4, p3}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lo/yj2;->y(Ljava/lang/String;)J

    move-result-wide p3

    invoke-static {p3, p4}, Lcom/wandoujia/download/utils/StorageUtil;->r(J)J

    move-result-wide v0

    iget-object v2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v4, v2, Lcom/snaptube/taskManager/datasets/TaskInfo;->d:J

    sub-long/2addr v4, p3

    invoke-static {v4, v5}, Lcom/wandoujia/download/utils/StorageUtil;->r(J)J

    move-result-wide p3

    const-string v2, "free_size"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    const-string v1, "shortage_size"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, v1, p3}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    :cond_2
    invoke-virtual {p0, v3}, Lo/k08;->O(Lo/ah3;)V

    invoke-static {}, Lo/vq6;->K()Lo/kh3;

    move-result-object p3

    invoke-interface {p3, v3}, Lo/kh3;->g(Lo/ah3;)V

    iget-object p3, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    instance-of p4, p3, Lo/cm3;

    if-eqz p4, :cond_3

    check-cast p3, Lo/cm3;

    invoke-virtual {p1, p2}, Lcom/snaptube/taskManager/task/TaskError;->appendDetails(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->l(Lo/cm3;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
