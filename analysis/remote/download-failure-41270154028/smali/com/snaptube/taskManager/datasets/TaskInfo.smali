.class public Lcom/snaptube/taskManager/datasets/TaskInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;,
        Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;,
        Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;,
        Lcom/snaptube/taskManager/datasets/TaskInfo$MetaSource;,
        Lcom/snaptube/taskManager/datasets/TaskInfo$c;,
        Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;,
        Lcom/snaptube/taskManager/datasets/TaskInfo$b;
    }
.end annotation


# instance fields
.field public A:Ljava/lang/String;

.field public B:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

.field public C:I

.field public D:Ljava/lang/String;

.field public E:I

.field public F:Ljava/lang/String;

.field public G:Z

.field public H:J

.field public I:Ljava/lang/String;

.field public J:Ljava/lang/String;

.field public K:Lcom/snaptube/taskManager/datasets/TaskInfo$MetaSource;

.field public L:Ljava/lang/String;

.field public M:Ljava/lang/String;

.field public N:J

.field public O:J

.field public P:J

.field public Q:I

.field public R:Ljava/lang/String;

.field public S:Z

.field public T:Z

.field public U:Z

.field public V:Ljava/lang/String;

.field public W:Z

.field public X:Ljava/lang/String;

.field public Y:Ljava/lang/String;

.field public Z:Z

.field public final a:J

.field public a0:Ljava/lang/String;

.field public final b:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;

.field public b0:Ljava/lang/String;

.field public c:I

.field public c0:Z

.field public d:J

.field public d0:Ljava/lang/String;

.field public e:J

.field public e0:Z

.field public f:J

.field public f0:Z

.field public g:Ljava/lang/String;

.field public g0:I

.field public h:Ljava/lang/String;

.field public h0:J

.field public i:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

.field public i0:Z

.field public j:Ljava/lang/String;

.field public j0:Z

.field public k:Ljava/lang/String;

.field public k0:Ljava/util/Map;

.field public l:Ljava/lang/String;

.field public l0:Ljava/lang/String;

.field public m:J

.field public m0:J

.field public n:Ljava/lang/String;

.field public n0:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public o0:Z

.field public p:Ljava/lang/String;

.field public p0:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

.field public q:Ljava/lang/String;

.field public q0:Ljava/lang/String;

.field public r:Lcom/phoenix/download/DownloadInfo$ContentType;

.field public r0:Z

.field public s:J

.field public s0:Z

.field public t:Z

.field public u:J

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Z

.field public y:Ljava/lang/String;

.field public z:Z


# direct methods
.method public constructor <init>(Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/snaptube/taskManager/datasets/TaskInfo;-><init>(Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;J)V

    return-void
.end method

.method public constructor <init>(Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;J)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->c:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->d:J

    iput-wide v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->e:J

    iput-wide v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->f:J

    const-string v3, ""

    iput-object v3, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->g:Ljava/lang/String;

    iput-object v3, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->h:Ljava/lang/String;

    sget-object v4, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;->PENDING:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    iput-object v4, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->i:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    iput-object v3, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->j:Ljava/lang/String;

    iput-object v3, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->k:Ljava/lang/String;

    iput-object v3, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->l:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iput-wide v4, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->m:J

    iput-object v3, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->n:Ljava/lang/String;

    iput-object v3, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->o:Ljava/lang/String;

    iput-object v3, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    iput-object v3, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    sget-object v4, Lcom/phoenix/download/DownloadInfo$ContentType;->UNKNOWN:Lcom/phoenix/download/DownloadInfo$ContentType;

    iput-object v4, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->r:Lcom/phoenix/download/DownloadInfo$ContentType;

    iput-wide v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->s:J

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->t:Z

    const-wide/16 v5, -0x1

    iput-wide v5, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->u:J

    iput-object v3, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->v:Ljava/lang/String;

    iput-object v3, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->w:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->x:Z

    iput-object v3, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->y:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->z:Z

    iput-object v3, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->A:Ljava/lang/String;

    sget-object v4, Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;->UNKNOWN:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    iput-object v4, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->B:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    iput v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->C:I

    iput-object v3, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->D:Ljava/lang/String;

    iput v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->E:I

    iput-boolean v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->G:Z

    iput-wide v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->H:J

    sget-object v4, Lcom/snaptube/taskManager/datasets/TaskInfo$MetaSource;->OTHER:Lcom/snaptube/taskManager/datasets/TaskInfo$MetaSource;

    iput-object v4, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->K:Lcom/snaptube/taskManager/datasets/TaskInfo$MetaSource;

    iput-object v3, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->M:Ljava/lang/String;

    iput-wide v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->N:J

    iput-wide v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->O:J

    iput-wide v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->P:J

    iput v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->Q:I

    iput-boolean v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->S:Z

    iput-boolean v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->T:Z

    iput-boolean v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->U:Z

    iput-boolean v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->W:Z

    iput-object v3, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->X:Ljava/lang/String;

    const-string v3, "non_browser_inside"

    iput-object v3, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->d0:Ljava/lang/String;

    iput v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->g0:I

    iput-wide v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->h0:J

    iput-boolean v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->i0:Z

    iput-boolean v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->j0:Z

    iput-object p1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->b:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;

    iput-wide p2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/az7;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->A:Ljava/lang/String;

    return-void
.end method

.method public static L(Ljava/lang/String;)Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;->UNKNOWN:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/snaptube/extractor/pluginlib/utils/MediaUtil;->r(Ljava/lang/String;)Lcom/snaptube/extractor/pluginlib/utils/MediaUtil$MediaType;

    move-result-object v0

    sget-object v1, Lcom/snaptube/extractor/pluginlib/utils/MediaUtil$MediaType;->AUDIO:Lcom/snaptube/extractor/pluginlib/utils/MediaUtil$MediaType;

    if-ne v0, v1, :cond_1

    sget-object p0, Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;->AUDIO:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    return-object p0

    :cond_1
    sget-object v1, Lcom/snaptube/extractor/pluginlib/utils/MediaUtil$MediaType;->VIDEO:Lcom/snaptube/extractor/pluginlib/utils/MediaUtil$MediaType;

    if-ne v0, v1, :cond_2

    sget-object p0, Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;->VIDEO:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    return-object p0

    :cond_2
    sget-object v1, Lcom/snaptube/extractor/pluginlib/utils/MediaUtil$MediaType;->IMAGE:Lcom/snaptube/extractor/pluginlib/utils/MediaUtil$MediaType;

    if-ne v0, v1, :cond_3

    sget-object p0, Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;->IMAGE:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    return-object p0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;->APK:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    return-object p0

    :cond_4
    sget-object p0, Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;->UNKNOWN:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    return-object p0
.end method

.method public static M(Ljava/lang/String;)Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;->UNKNOWN:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/snaptube/extractor/pluginlib/utils/MediaUtil;->s(Ljava/lang/String;)Lcom/snaptube/extractor/pluginlib/utils/MediaUtil$MediaType;

    move-result-object p0

    sget-object v0, Lcom/snaptube/extractor/pluginlib/utils/MediaUtil$MediaType;->AUDIO:Lcom/snaptube/extractor/pluginlib/utils/MediaUtil$MediaType;

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;->AUDIO:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    return-object p0

    :cond_1
    sget-object v0, Lcom/snaptube/extractor/pluginlib/utils/MediaUtil$MediaType;->VIDEO:Lcom/snaptube/extractor/pluginlib/utils/MediaUtil$MediaType;

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;->VIDEO:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    return-object p0

    :cond_2
    sget-object v0, Lcom/snaptube/extractor/pluginlib/utils/MediaUtil$MediaType;->IMAGE:Lcom/snaptube/extractor/pluginlib/utils/MediaUtil$MediaType;

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;->IMAGE:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    return-object p0

    :cond_3
    sget-object v0, Lcom/snaptube/extractor/pluginlib/utils/MediaUtil$MediaType;->MOVIE:Lcom/snaptube/extractor/pluginlib/utils/MediaUtil$MediaType;

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;->VIDEO:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    return-object p0

    :cond_4
    sget-object p0, Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;->UNKNOWN:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    return-object p0
.end method

.method public static bridge synthetic a(Lcom/snaptube/taskManager/datasets/TaskInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->h:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic b(Lcom/snaptube/taskManager/datasets/TaskInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->n:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic c(Lcom/snaptube/taskManager/datasets/TaskInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->g:Ljava/lang/String;

    return-void
.end method

.method public static j(Lcom/snaptube/extractor/pluginlib/models/Format;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/Format;->getThumbnail()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lo/r58;->b(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static t(Lcom/snaptube/taskManager/datasets/TaskInfo;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/snaptube/taskManager/datasets/TaskInfo$a;->a:[I

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->b:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->o:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->w:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Use IncrementalTaskInfo#getTaskIdentity() for self-upgrade patch task"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    instance-of v1, p0, Lcom/snaptube/taskManager/datasets/a;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/snaptube/taskManager/datasets/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apktask_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/snaptube/taskManager/datasets/a;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/snaptube/taskManager/datasets/a;->getVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    :try_start_0
    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->o:Ljava/lang/String;

    invoke-static {v0}, Lo/wd9;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->o:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->G:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/wd9;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->G:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    iget-object p0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->o:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static u(Landroid/database/Cursor;)Lcom/snaptube/taskManager/datasets/TaskInfo;
    .locals 5

    const-string v0, "_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "type"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;->valueOf(Ljava/lang/String;)Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;

    move-result-object v0

    sget-object v1, Lcom/snaptube/taskManager/datasets/TaskInfo$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v1, v1, v4

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    return-object v4

    :pswitch_0
    new-instance v4, Lo/cm3;

    invoke-direct {v4, v2, v3}, Lo/cm3;-><init>(J)V

    goto :goto_0

    :pswitch_1
    new-instance v4, Lcom/snaptube/taskManager/datasets/a;

    invoke-direct {v4, v2, v3}, Lcom/snaptube/taskManager/datasets/a;-><init>(J)V

    goto :goto_0

    :pswitch_2
    new-instance v4, Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-direct {v4, v0, v2, v3}, Lcom/snaptube/taskManager/datasets/TaskInfo;-><init>(Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;J)V

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/snaptube/taskManager/datasets/TaskInfo;

    sget-object v0, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;->UNKNOWN:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;

    invoke-direct {v4, v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;-><init>(Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;)V

    :goto_0
    :pswitch_3
    invoke-virtual {v4, p0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->H(Landroid/database/Cursor;)V

    return-object v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public A()Z
    .locals 2

    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p0:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    sget-object v1, Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;->EXTRACT_MEDIA_UNAVAILABLE:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B()Z
    .locals 2

    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->K:Lcom/snaptube/taskManager/datasets/TaskInfo$MetaSource;

    sget-object v1, Lcom/snaptube/taskManager/datasets/TaskInfo$MetaSource;->SONG_LIBRARY:Lcom/snaptube/taskManager/datasets/TaskInfo$MetaSource;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public C()Z
    .locals 1

    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->isWebM2Mp3Tag(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->isYoutubeWebMTag(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->isMp3Tag(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->isM4aTag(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/utils/MediaUtil;->p(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-static {v0}, Lo/bf2;->j(Ljava/lang/String;)Z

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

.method public D()Z
    .locals 2

    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->b:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;

    sget-object v1, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;->TASK_EXTRACT_AUDIO:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;->TASK_WHATSAPP:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;

    if-ne v0, v1, :cond_0

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

.method public E()Z
    .locals 2

    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p0:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    sget-object v1, Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;->EXTRACT_TIMEOUT:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;->DOWNLOAD_TIMEOUT:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    if-ne v0, v1, :cond_0

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

.method public F()Z
    .locals 2

    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->Y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->Y:Ljava/lang/String;

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

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

.method public final G()Z
    .locals 2

    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->b:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;

    sget-object v1, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;->TASK_VIDEO:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;->TASK_1080P:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;->TASK_WEBM:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;->TASK_WEBM_MP3:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;->TASK_MP3:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;->TASK_M4A:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;->TASK_DIRECT_DOWNLOAD:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;->TASK_EXTRACT_AUDIO:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;->TASK_WHATSAPP:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;->TASK_BT:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;->TASK_LYRIC:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;->TASK_BLOB:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;->TASK_APK:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;->TASK_PATCH:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;

    if-ne v0, v1, :cond_0

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

.method public H(Landroid/database/Cursor;)V
    .locals 6

    const-string v0, "progress"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->c:I

    :cond_0
    const-string v0, "total_bytes"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->d:J

    :cond_1
    const-string v0, "current_bytes"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->e:J

    :cond_2
    const-string v0, "download_speed"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->f:J

    :cond_3
    const-string v0, "referer"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->g:Ljava/lang/String;

    :cond_4
    const-string v0, "status"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;->valueOf(Ljava/lang/String;)Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->i:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    :cond_5
    const-string v0, "runningDescription"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->j:Ljava/lang/String;

    :cond_6
    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->k:Ljava/lang/String;

    :cond_7
    const-string v0, "thumbnailUrl"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->l:Ljava/lang/String;

    :cond_8
    const-string v0, "createdTime"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->m:J

    :cond_9
    const-string v0, "filePath"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->n:Ljava/lang/String;

    :cond_a
    const-string v0, "requestUrl"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->o:Ljava/lang/String;

    :cond_b
    const-string v0, "formatTag"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    :cond_c
    const-string v0, "finalFormatTag"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_d

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    :cond_d
    const-string v0, "contentType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_e

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phoenix/download/DownloadInfo$ContentType;->valueOf(Ljava/lang/String;)Lcom/phoenix/download/DownloadInfo$ContentType;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->r:Lcom/phoenix/download/DownloadInfo$ContentType;

    :cond_e
    const-string v0, "media_duration"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_f

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->s:J

    :cond_f
    const-string v0, "unread"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v3, :cond_10

    const/4 v0, 0x1

    goto :goto_0

    :cond_10
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->t:Z

    :cond_11
    const-string v0, "current_download_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->u:J

    :cond_12
    const-string v0, "md5"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->v:Ljava/lang/String;

    :cond_13
    const-string v0, "identity"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->w:Ljava/lang/String;

    :cond_14
    const-string v0, "visible"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v0, v1, :cond_15

    const/4 v0, 0x1

    goto :goto_1

    :cond_15
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->x:Z

    :cond_16
    const-string v0, "meta_key"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->y:Ljava/lang/String;

    :cond_17
    const-string v0, "has_mp3_meta"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_19

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v3, :cond_18

    const/4 v0, 0x1

    goto :goto_2

    :cond_18
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->z:Z

    :cond_19
    const-string v0, "app_version"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_1a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->A:Ljava/lang/String;

    :cond_1a
    const-string v0, "ad_pos_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_1b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->D:Ljava/lang/String;

    :cond_1b
    const-string v0, "category"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_1c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->h:Ljava/lang/String;

    :cond_1c
    const-string v0, "lock"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_1e

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v3, :cond_1d

    const/4 v0, 0x1

    goto :goto_3

    :cond_1d
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->G:Z

    :cond_1e
    const-string v0, "originPath"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_1f

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->M:Ljava/lang/String;

    :cond_1f
    const-string v0, "lockTime"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_20

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->H:J

    :cond_20
    :try_start_0
    const-string v0, "content_type2"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_21

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;->valueOf(Ljava/lang/String;)Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->B:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    sget-object v0, Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;->UNKNOWN:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->B:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    :cond_21
    :goto_4
    const-string v0, "task_fail_times"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_22

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->C:I

    :cond_22
    const-string v0, "app_guide_home_install_times"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_23

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->E:I

    :cond_23
    const-string v0, "notification_send_status"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_25

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v3, :cond_24

    const/4 v0, 0x1

    goto :goto_5

    :cond_24
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->Z:Z

    :cond_25
    const-string v0, "start_times"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_26

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->g0:I

    :cond_26
    const-string v0, "finishedTime"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_27

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->h0:J

    :cond_27
    const-string v0, "has_auto_retry"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_29

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v3, :cond_28

    const/4 v0, 0x1

    goto :goto_6

    :cond_28
    const/4 v0, 0x0

    :goto_6
    iput-boolean v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->i0:Z

    :cond_29
    const-string v0, "has_manual_retry"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_2b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v3, :cond_2a

    const/4 v2, 0x1

    :cond_2a
    iput-boolean v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->j0:Z

    :cond_2b
    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->P(Landroid/database/Cursor;)V

    return-void
.end method

.method public I(Ljava/util/Map;)V
    .locals 2

    const-string v0, "extract_duration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lo/de5;->e(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->N:J

    const-string v0, "download_duration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lo/de5;->e(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->O:J

    const-string v0, "process_duration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lo/de5;->e(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->P:J

    const-string v0, "extract_count"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lo/de5;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->Q:I

    const-string v0, "extract_from"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->R:Ljava/lang/String;

    const-string v0, "extra_download_only_wifi"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->S:Z

    const-string v0, "visible_when_finish"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->T:Z

    const-string v0, "allowMobileDownload"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->U:Z

    const-string v0, "downloadFrom"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->V:Ljava/lang/String;

    const-string v0, "resetTaskInfoIfNeed"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->W:Z

    const-string v0, "extractor_type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->X:Ljava/lang/String;

    const-string v0, "pkg_referrer"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->Y:Ljava/lang/String;

    const-string v0, "playlistTitle"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->a0:Ljava/lang/String;

    const-string v0, "playlistUrl"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->b0:Ljava/lang/String;

    const-string v0, "isPlaylistBatchDown"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->c0:Z

    const-string v0, "isFastDownload"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->e0:Z

    const-string v0, "isBatchDownload"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->f0:Z

    const-string v0, "scenes"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->d0:Ljava/lang/String;

    const-string v0, "extra_data"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {v0}, Lcom/snaptube/premium/utils/GsonUtils;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->T(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    const-string v0, "reportMeta"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->l0:Ljava/lang/String;

    const-string v0, "background_duration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lo/de5;->e(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->m0:J

    const-string v0, "isLocalCovert"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->o0:Z

    const-string v0, "fail_reason"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lo/de5;->c(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;->getByCode(I)Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p0:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    const-string v0, "fail_message"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q0:Ljava/lang/String;

    const-string v0, "is_duplicate_download"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->r0:Z

    const-string v0, "is_write_lyric"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->s0:Z

    return-void
.end method

.method public J()Ljava/util/Map;
    .locals 3

    new-instance v0, Lo/zt;

    invoke-direct {v0}, Lo/zt;-><init>()V

    iget-wide v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->N:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extract_duration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->O:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "download_duration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->P:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "process_duration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->Q:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extract_count"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "extract_from"

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->R:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->S:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_download_only_wifi"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->T:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "visible_when_finish"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->U:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "allowMobileDownload"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->V:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "downloadFrom"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->W:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resetTaskInfoIfNeed"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "extractor_type"

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->X:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pkg_referrer"

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->Y:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "playlistTitle"

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->a0:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "playlistUrl"

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->b0:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->c0:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isPlaylistBatchDown"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->f0:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isBatchDownload"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->e0:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isFastDownload"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "scenes"

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->d0:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->k0:Ljava/util/Map;

    if-eqz v1, :cond_0

    const-string v2, "extra_data"

    invoke-static {v1}, Lo/j23;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "reportMeta"

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->l0:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->m0:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "background_duration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->o0:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isLocalCovert"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p0:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;->b(Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fail_reason"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v1, "fail_message"

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q0:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->r0:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "is_duplicate_download"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->s0:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "is_write_lyric"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public K(Landroid/content/ContentValues;)V
    .locals 2

    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->b:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "progress"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-wide v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "total_bytes"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "current_bytes"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->f:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "download_speed"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "referer"

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->i:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "runningDescription"

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "title"

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "thumbnailUrl"

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->m:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "createdTime"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "filePath"

    invoke-virtual {p0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "requestUrl"

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "formatTag"

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "finalFormatTag"

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->r:Lcom/phoenix/download/DownloadInfo$ContentType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contentType"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->s:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "media_duration"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-boolean v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->t:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "unread"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-wide v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->u:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "current_download_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "md5"

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->v:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "identity"

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->w:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->x:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "visible"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "meta_key"

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->y:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->z:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "has_mp3_meta"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "app_version"

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->A:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->B:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content_type2"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->C:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "task_fail_times"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "ad_pos_name"

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->D:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "category"

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->G:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "lock"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "originPath"

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->M:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->E:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "app_guide_home_install_times"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-wide v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->H:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "lockTime"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-boolean v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->Z:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "notification_send_status"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->g0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "start_times"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-wide v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->h0:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "finishedTime"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-boolean v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->i0:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "has_auto_retry"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-boolean v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->j0:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "has_manual_retry"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    const-string v0, "extra"

    invoke-virtual {p0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public N(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->Q()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public O(Ljava/util/Map;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->N(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public P(Landroid/database/Cursor;)V
    .locals 4

    const-string v0, "extra"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    new-instance v1, Lo/zt;

    invoke-direct {v1}, Lo/zt;-><init>()V

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->I(Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final declared-synchronized Q()Ljava/util/Map;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->k0:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->k0:Ljava/util/Map;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->k0:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public R(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->n:Ljava/lang/String;

    return-void
.end method

.method public S(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->g:Ljava/lang/String;

    return-void
.end method

.method public T(Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->O(Ljava/util/Map;)V

    return-void
.end method

.method public U()Lcom/snaptube/premium/model/LocalVideoAlbumInfo;
    .locals 7

    invoke-virtual {p0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->G()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/snaptube/premium/model/LocalVideoEpisodeInfo;

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->k:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->t:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/snaptube/premium/model/LocalVideoEpisodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/snaptube/premium/model/LocalVideoAlbumInfo;

    iget-wide v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    invoke-virtual {p0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->r:Lcom/phoenix/download/DownloadInfo$ContentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/snaptube/premium/model/LocalVideoAlbumInfo;-><init>(JLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->G:Z

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/model/LocalVideoAlbumInfo;->setLock(Z)V

    invoke-virtual {v0, p0}, Lcom/snaptube/premium/model/LocalVideoAlbumInfo;->setTaskInfo(Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/snaptube/premium/model/LocalVideoAlbumInfo;->setSystemFile(Z)V

    invoke-virtual {p0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->V()Lcom/snaptube/premium/model/NetVideoInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/model/LocalVideoAlbumInfo;->setNetVideoInfo(Lcom/snaptube/premium/model/NetVideoInfo;)V

    iget-wide v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->m:J

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/premium/model/LocalVideoAlbumInfo;->setCreateTime(J)V

    iget-wide v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->h0:J

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/premium/model/LocalVideoAlbumInfo;->setFinishTime(J)V

    return-object v0
.end method

.method public V()Lcom/snaptube/premium/model/NetVideoInfo;
    .locals 3

    invoke-virtual {p0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->G()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/snaptube/premium/model/NetVideoInfo;

    invoke-direct {v0}, Lcom/snaptube/premium/model/NetVideoInfo;-><init>()V

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/model/NetVideoInfo;->setTitle(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/premium/model/NetVideoInfo;->setId(J)V

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/model/NetVideoInfo;->setSource(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/model/NetVideoInfo;->setFormat(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/model/NetVideoInfo;->setDownloadIdentify(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->m()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/premium/model/NetVideoInfo;->setDuration(J)V

    iget-wide v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->m:J

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/premium/model/NetVideoInfo;->setCtime(J)V

    iget-boolean v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->z:Z

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/model/NetVideoInfo;->setHasMediaMeta(Z)V

    new-instance v1, Lcom/snaptube/premium/model/VideoCover;

    invoke-direct {v1}, Lcom/snaptube/premium/model/VideoCover;-><init>()V

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/snaptube/premium/model/VideoCover;->setS(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/snaptube/premium/model/VideoCover;->setL(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/model/NetVideoInfo;->setCover(Lcom/snaptube/premium/model/VideoCover;)V

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->b:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;

    sget-object v2, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;->TASK_BT:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/snaptube/premium/model/VideoType;->BT_MOVIE:Lcom/snaptube/premium/model/VideoType;

    invoke-virtual {v1}, Lcom/snaptube/premium/model/VideoType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/model/NetVideoInfo;->setType(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/snaptube/premium/model/VideoType;->MOVIE:Lcom/snaptube/premium/model/VideoType;

    invoke-virtual {v1}, Lcom/snaptube/premium/model/VideoType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/model/NetVideoInfo;->setType(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/model/NetVideoInfo;->setTotalEpisodesNum(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->g:Ljava/lang/String;

    invoke-static {v1}, Lo/yj8;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Lcom/snaptube/premium/model/NetVideoInfo;->setProviderNames(Ljava/util/List;)V

    return-object v0
.end method

.method public d()Lcom/snaptube/taskManager/datasets/TaskInfo$b;
    .locals 3

    new-instance v0, Lcom/snaptube/taskManager/datasets/TaskInfo$b;

    invoke-direct {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo$b;-><init>()V

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snaptube/taskManager/datasets/TaskInfo$b;->s(Ljava/lang/String;)Lcom/snaptube/taskManager/datasets/TaskInfo$b;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snaptube/taskManager/datasets/TaskInfo$b;->h(Ljava/lang/String;)Lcom/snaptube/taskManager/datasets/TaskInfo$b;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->r:Lcom/phoenix/download/DownloadInfo$ContentType;

    invoke-virtual {v0, v1}, Lcom/snaptube/taskManager/datasets/TaskInfo$b;->d(Lcom/phoenix/download/DownloadInfo$ContentType;)Lcom/snaptube/taskManager/datasets/TaskInfo$b;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/taskManager/datasets/TaskInfo$b;->j(Ljava/lang/String;Z)Lcom/snaptube/taskManager/datasets/TaskInfo$b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snaptube/taskManager/datasets/TaskInfo$b;->o(Ljava/lang/String;)Lcom/snaptube/taskManager/datasets/TaskInfo$b;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snaptube/taskManager/datasets/TaskInfo$b;->q(Ljava/lang/String;)Lcom/snaptube/taskManager/datasets/TaskInfo$b;

    move-result-object v0

    iget-wide v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->s:J

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/taskManager/datasets/TaskInfo$b;->m(J)Lcom/snaptube/taskManager/datasets/TaskInfo$b;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snaptube/taskManager/datasets/TaskInfo$b;->k(Ljava/lang/String;)Lcom/snaptube/taskManager/datasets/TaskInfo$b;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snaptube/taskManager/datasets/TaskInfo$b;->n(Ljava/lang/String;)Lcom/snaptube/taskManager/datasets/TaskInfo$b;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->B:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    invoke-virtual {v0, v1}, Lcom/snaptube/taskManager/datasets/TaskInfo$b;->e(Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;)Lcom/snaptube/taskManager/datasets/TaskInfo$b;

    move-result-object v0

    iget v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->C:I

    invoke-virtual {v0, v1}, Lcom/snaptube/taskManager/datasets/TaskInfo$b;->r(I)Lcom/snaptube/taskManager/datasets/TaskInfo$b;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snaptube/taskManager/datasets/TaskInfo$b;->t(Ljava/lang/String;)Lcom/snaptube/taskManager/datasets/TaskInfo$b;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snaptube/taskManager/datasets/TaskInfo$b;->c(Ljava/lang/String;)Lcom/snaptube/taskManager/datasets/TaskInfo$b;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->V:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snaptube/taskManager/datasets/TaskInfo$b;->f(Ljava/lang/String;)Lcom/snaptube/taskManager/datasets/TaskInfo$b;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->l0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snaptube/taskManager/datasets/TaskInfo$b;->p(Ljava/lang/String;)Lcom/snaptube/taskManager/datasets/TaskInfo$b;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public f()Landroid/content/ContentValues;
    .locals 1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0, v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->K(Landroid/content/ContentValues;)V

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->G:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->k:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/nj2;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->k:Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/nj2;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->J()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->n:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->J()Ljava/util/Map;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "is_write_lyric"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()J
    .locals 5

    iget-wide v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->s:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->n:Ljava/lang/String;

    invoke-static {v0}, Lo/aq4;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->M:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->k:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->M:Ljava/lang/String;

    invoke-static {v0}, Lo/nj2;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->b0:Ljava/lang/String;

    invoke-static {v0}, Lo/if9;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->g:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->o:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->k0:Ljava/util/Map;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->i0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->j0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->d0:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskInfo{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->b:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", currentBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", downloadSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", referrer=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", category=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->i:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", runningDescription=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", thumbnailUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", createdTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->m:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", filePath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", requestUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", formatTag=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", finalFormatTag=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", contentType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->r:Lcom/phoenix/download/DownloadInfo$ContentType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mediaDuration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->s:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", unread="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->t:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", currentDownloadId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->u:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", md5=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->v:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", identity=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", visible="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->x:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", metaKey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->y:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", hasMP3Meta="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->z:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", appVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->A:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", contentType2="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->B:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", taskFailedTimes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->C:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", adPosName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->D:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appInstallHomeGuideCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->E:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pluginName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->F:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", lock="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->G:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", lockTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->H:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", contentSource=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->I:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", videoSource=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->J:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", guideAppPackageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->L:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", originPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->M:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", extractDuration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->N:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", downloadDuration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->O:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", processDuration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->P:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", extractCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->Q:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", extractFrom=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->R:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", downloadOnlyWifi="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->S:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", visibleWhenFinish="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->T:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", allowMobileDownload="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->U:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", downloadFrom=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->V:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", resetTaskInfoIfNeed="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->W:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", extractorType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->X:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pkgReferrer=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->Y:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", hasSendFinishNotification="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->Z:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", playlistTitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->a0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", playlistUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->b0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isPlaylistBatchDown="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->c0:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", scenes=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->d0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isFastDownload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->e0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isBatchDownload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->f0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", taskStartTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->g0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", taskFinishTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->h0:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", hasAutoRetry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->i0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasManualRetry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->j0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->k:Ljava/lang/String;

    return-object v0
.end method

.method public w()Z
    .locals 5

    const-string v0, "extract_audio"

    iget-object v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->e:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->C()Z

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

.method public x()Z
    .locals 2

    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->i:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    sget-object v1, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;->RUNNING:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public y()Z
    .locals 2

    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p0:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    sget-object v1, Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;->EXTRACT_HTTP_UNAUTHORIZED:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public z()Z
    .locals 2

    iget-object v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p0:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    sget-object v1, Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;->EXTRACT_LOGIN_REQUIRED:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
