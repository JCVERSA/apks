.class public Lcom/hunantv/media/report/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/report/a$b;,
        Lcom/hunantv/media/report/a$a;,
        Lcom/hunantv/media/report/a$c;
    }
.end annotation


# static fields
.field public static final b:Ljava/text/DecimalFormat;


# instance fields
.field a:Lcom/hunantv/media/player/smooth/SmoothMediaSource;

.field private c:Landroid/content/Context;

.field private d:Lcom/hunantv/media/player/MgtvMediaPlayer;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:J

.field private i:J

.field private j:J

.field private k:Lcom/hunantv/media/report/ReportParams;

.field private l:Z

.field private m:Lcom/hunantv/media/report/a$c;

.field private n:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/hunantv/media/report/a;->b:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/hunantv/media/player/MgtvMediaPlayer;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/hunantv/media/report/a;-><init>(Landroid/content/Context;Lcom/hunantv/media/player/MgtvMediaPlayer;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/hunantv/media/player/MgtvMediaPlayer;Z)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/hunantv/media/report/a;->h:J

    iput-wide v0, p0, Lcom/hunantv/media/report/a;->i:J

    iput-wide v0, p0, Lcom/hunantv/media/report/a;->j:J

    sget-object v0, Lcom/hunantv/media/report/a$c;->a:Lcom/hunantv/media/report/a$c;

    iput-object v0, p0, Lcom/hunantv/media/report/a;->m:Lcom/hunantv/media/report/a$c;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/report/a;->n:Ljava/lang/Object;

    iput-object p1, p0, Lcom/hunantv/media/report/a;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iput-boolean p3, p0, Lcom/hunantv/media/report/a;->l:Z

    return-void
.end method

.method public constructor <init>(Lcom/hunantv/media/player/MgtvMediaPlayer;Z)V
    .locals 1

    .line 3
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, p1, p2}, Lcom/hunantv/media/report/a;-><init>(Landroid/content/Context;Lcom/hunantv/media/player/MgtvMediaPlayer;Z)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/hunantv/media/report/a$a;Ljava/lang/String;)Lcom/hunantv/media/report/entity/CommonEntity;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    new-instance v2, Lcom/hunantv/media/report/entity/CommonEntity;

    invoke-direct {v2}, Lcom/hunantv/media/report/entity/CommonEntity;-><init>()V

    iget-object v3, v2, Lcom/hunantv/media/report/entity/CommonEntity;->service:Lcom/hunantv/media/report/entity/ServiceEntity;

    iget-object v4, v0, Lcom/hunantv/media/report/a;->e:Ljava/lang/String;

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/hunantv/media/report/a;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/hunantv/media/report/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/hunantv/media/report/a;->e:Ljava/lang/String;

    :cond_0
    iget-object v4, v0, Lcom/hunantv/media/report/a;->e:Ljava/lang/String;

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->psuuid:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/media/report/ReportParams$GlobalSet;->getsAppVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/hunantv/media/report/c/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->aver:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->time:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/media/report/c/h;->e()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->mod:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/media/report/c/h;->a()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->mf:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/hunantv/media/report/c/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->net:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/media/report/c/h;->f()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->sver:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/media/report/c/h;->g()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->psdkv:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/media/player/pragma/PlayerConfig;->getLibFullVersion()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->logver:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->getPrst()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->prst:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/hunantv/media/report/c/h;->e(Landroid/content/Context;)Z

    move-result v4

    const-string v5, "0"

    const-string v6, "1"

    if-eqz v4, :cond_2

    move-object v4, v6

    goto :goto_3

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/hunantv/media/report/c/h;->f(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v6

    goto :goto_0

    :cond_3
    move-object v7, v5

    :goto_0
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/hunantv/media/report/c/h;->g(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v6

    goto :goto_1

    :cond_4
    move-object v7, v5

    :goto_1
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/hunantv/media/report/c/h;->h(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, v6

    goto :goto_2

    :cond_5
    move-object v7, v5

    :goto_2
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->pshdrt:Ljava/lang/String;

    iget-object v4, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const/4 v7, 0x2

    const-string v8, "n"

    const-string v9, "_"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v12, ""

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPlayingUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/hunantv/media/report/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->prottp:Ljava/lang/String;

    iget-object v4, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/hunantv/media/report/a;->a(Lcom/hunantv/media/report/ReportParams$VideoType;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->vtp:Ljava/lang/String;

    iget-object v4, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getDataSourceTypeOrdinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->sctp:Ljava/lang/String;

    iget-object v4, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPlayerType()I

    move-result v4

    if-nez v4, :cond_6

    move-object v4, v6

    goto :goto_4

    :cond_6
    move-object v4, v5

    :goto_4
    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->ptp:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v2, Lcom/hunantv/media/report/entity/CommonEntity;->logver:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v13}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getRetryLastErrorCode()I

    move-result v13

    if-eqz v13, :cond_7

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v14}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getRetryLastErrorCode()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_5

    :cond_7
    move-object v13, v8

    :goto_5
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->logver:Ljava/lang/String;

    iget-object v4, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v2, Lcom/hunantv/media/report/entity/CommonEntity;->logver:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v13}, Lcom/hunantv/media/report/ReportParams;->getAddrInfoInt()I

    move-result v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->logver:Ljava/lang/String;

    goto :goto_7

    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v2, Lcom/hunantv/media/report/entity/CommonEntity;->logver:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "_n"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :goto_7
    iget-object v4, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v4

    sget-object v13, Lcom/hunantv/media/report/ReportParams$VideoType;->LOCAL:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-ne v4, v13, :cond_9

    iget-object v4, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v4}, Lcom/hunantv/media/report/ReportParams;->getDownloadSDKVersion()Ljava/lang/String;

    move-result-object v4

    :goto_8
    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->dnst:Ljava/lang/String;

    goto :goto_9

    :cond_9
    iget-object v4, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v13}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getMaxDnsType()J

    move-result-wide v13

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_a
    :goto_9
    iget-object v4, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v4

    sget-object v13, Lcom/hunantv/media/report/ReportParams$VideoType;->HOME_PREVIEW:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-eq v4, v13, :cond_b

    iget-object v4, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v4

    sget-object v13, Lcom/hunantv/media/report/ReportParams$VideoType;->INTERACTIVE:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-ne v4, v13, :cond_c

    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v13}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPlayerMode()I

    move-result v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->s3:Ljava/lang/String;

    :cond_c
    iget-object v4, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getCurrentPosition()I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/hunantv/media/report/entity/ServiceEntity;->ct:Ljava/lang/String;

    iget-object v4, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getCurrentPosition()I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/hunantv/media/report/entity/ServiceEntity;->et:Ljava/lang/String;

    iget-object v4, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getDuration()I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/hunantv/media/report/entity/ServiceEntity;->vts:Ljava/lang/String;

    iput-object v8, v2, Lcom/hunantv/media/report/entity/CommonEntity;->fstime:Ljava/lang/String;

    iget-object v4, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getFstime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_d

    const-string v13, "/"

    invoke-virtual {v4, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    array-length v13, v4

    if-lt v13, v7, :cond_d

    const-string v13, "21"

    aget-object v14, v4, v11

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_d

    aget-object v4, v4, v10

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->fstime:Ljava/lang/String;

    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v13}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getImp4dh()I

    move-result v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->imp4d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v13}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getMpx()I

    move-result v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->mpx:Ljava/lang/String;

    iget-object v4, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getDrmSession()Lcom/hunantv/media/drm/IDrmSession;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-interface {v4}, Lcom/hunantv/media/drm/IDrmSession;->getDrmt()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Lcom/hunantv/media/report/entity/CommonEntity;->drmt:Ljava/lang/String;

    invoke-interface {v4}, Lcom/hunantv/media/drm/IDrmSession;->getDrmdi()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->drmdi:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->getInstance()Lcom/hunantv/media/player/loader/ImgoLibLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hunantv/media/player/loader/ImgoLibLoader;->getDrmLibLoadErrorMsg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_e

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v2, Lcom/hunantv/media/report/entity/CommonEntity;->drmdi:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "__de_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->drmdi:Ljava/lang/String;

    :cond_e
    iget-object v4, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getCurrentDrmMetodName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_f

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v2, Lcom/hunantv/media/report/entity/CommonEntity;->drmdi:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "__km_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->drmdi:Ljava/lang/String;

    :cond_f
    iget-object v4, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPlayingOriginUrl()Ljava/lang/String;

    move-result-object v4

    const-string v13, "pcdnFlag"

    invoke-static {v4, v13}, Lcom/hunantv/media/player/utils/UrlUtil;->getUrlParamsValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->pcdnf:Ljava/lang/String;

    iget-object v4, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPlayingOriginUrl()Ljava/lang/String;

    move-result-object v4

    const-string v13, "scid"

    invoke-static {v4, v13}, Lcom/hunantv/media/player/utils/UrlUtil;->getUrlParamsValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->scid:Ljava/lang/String;

    iget-object v4, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPlayingOriginUrl()Ljava/lang/String;

    move-result-object v4

    const-string v13, "pbox"

    invoke-static {v4, v13}, Lcom/hunantv/media/player/utils/UrlUtil;->getUrlParamsValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->pbox:Ljava/lang/String;

    iget-object v4, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getVideoFormat()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->vfmt:Ljava/lang/String;

    iget-object v4, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getAudioFormat()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->afmt:Ljava/lang/String;

    iget-object v4, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getVideoFormat()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->vfmt:Ljava/lang/String;

    iget-object v4, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v4, v4, Lcom/hunantv/media/player/MgtvMediaPlayer;->waev:Ljava/lang/String;

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->waev:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget v13, v13, Lcom/hunantv/media/player/MgtvMediaPlayer;->wadls:I

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->wadls:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/media/player/h;->ac()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->tldls:Ljava/lang/String;

    iget-object v4, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPlayingOriginUrl()Ljava/lang/String;

    move-result-object v4

    const-string v13, "dcp"

    invoke-static {v4, v13}, Lcom/hunantv/media/player/utils/UrlUtil;->getUrlParamsValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->dcpf:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/media/report/c/h;->h()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->devci:Ljava/lang/String;

    iget-object v4, v0, Lcom/hunantv/media/report/a;->a:Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getVsri()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->vsri:Ljava/lang/String;

    iget-object v4, v0, Lcom/hunantv/media/report/a;->a:Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    invoke-virtual {v4}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getVfps()Ljava/lang/String;

    move-result-object v4

    :goto_a
    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->vfps:Ljava/lang/String;

    goto :goto_b

    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v13, v13, Lcom/hunantv/media/player/MgtvMediaPlayer;->vsri:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->vsri:Ljava/lang/String;

    iget-object v4, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Lcom/hunantv/media/report/ReportParams;->getVfps()Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    :cond_11
    :goto_b
    invoke-static/range {p1 .. p1}, Lcom/hunantv/media/report/c/h;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->appgn:Ljava/lang/String;

    iget-boolean v4, v0, Lcom/hunantv/media/report/a;->l:Z

    if-eqz v4, :cond_12

    const-string v4, "4"

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->reschg:Ljava/lang/String;

    :cond_12
    iget-object v4, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    if-eqz v4, :cond_3a

    invoke-virtual {v4}, Lcom/hunantv/media/report/ReportParams;->getDef()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->def:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v13}, Lcom/hunantv/media/report/ReportParams;->getIsndn()I

    move-result v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->isndn:Ljava/lang/String;

    iget-object v4, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v4}, Lcom/hunantv/media/report/ReportParams;->getRenvtp()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->renvtp:Ljava/lang/String;

    iget-object v4, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v4}, Lcom/hunantv/media/report/ReportParams;->getVideoSession()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->suuid:Ljava/lang/String;

    iget-object v4, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v4}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/hunantv/media/report/a;->a(Lcom/hunantv/media/report/ReportParams$VideoType;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->vtp:Ljava/lang/String;

    iget-object v4, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v4}, Lcom/hunantv/media/report/ReportParams;->getRetryIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->retry:Ljava/lang/String;

    iget-boolean v4, v0, Lcom/hunantv/media/report/a;->l:Z

    if-nez v4, :cond_13

    iget-object v4, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v4}, Lcom/hunantv/media/report/ReportParams;->getCaseType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->reschg:Ljava/lang/String;

    :cond_13
    iget-object v4, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v4}, Lcom/hunantv/media/report/ReportParams;->getProxyType()Lcom/hunantv/media/report/ReportParams$ProxyType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->proxy:Ljava/lang/String;

    iget-object v4, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v4}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v4

    sget-object v13, Lcom/hunantv/media/report/ReportParams$VideoType;->LOCAL:Lcom/hunantv/media/report/ReportParams$VideoType;

    const-string v14, "3"

    const-string v15, "2"

    if-ne v4, v13, :cond_1b

    iget-object v4, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v4}, Lcom/hunantv/media/report/ReportParams;->getLocalMd5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a

    iget-object v4, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v4}, Lcom/hunantv/media/report/ReportParams;->getLocalMd5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    goto/16 :goto_11

    :cond_14
    iget-object v4, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v4}, Lcom/hunantv/media/report/ReportParams;->getRemoteMd5()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_19

    iget-object v4, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v4}, Lcom/hunantv/media/report/ReportParams;->getRemoteMd5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    goto :goto_10

    :cond_15
    iget-object v4, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v4}, Lcom/hunantv/media/report/ReportParams;->getLocalMd5()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_18

    iget-object v4, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v4}, Lcom/hunantv/media/report/ReportParams;->getLocalMd5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    goto :goto_f

    :cond_16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v2, Lcom/hunantv/media/report/entity/CommonEntity;->snum1:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v13}, Lcom/hunantv/media/report/ReportParams;->getRemoteMd5()Ljava/lang/String;

    move-result-object v13

    iget-object v7, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v7}, Lcom/hunantv/media/report/ReportParams;->getLocalMd5()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Lcom/hunantv/media/report/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17

    move-object v7, v6

    goto :goto_c

    :cond_17
    move-object v7, v5

    :goto_c
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_e
    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->snum1:Ljava/lang/String;

    goto :goto_12

    :cond_18
    :goto_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v2, Lcom/hunantv/media/report/entity/CommonEntity;->snum1:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_19
    :goto_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v2, Lcom/hunantv/media/report/entity/CommonEntity;->snum1:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_1a
    :goto_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v2, Lcom/hunantv/media/report/entity/CommonEntity;->snum1:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v7}, Lcom/hunantv/media/report/ReportParams;->getLocalMd5()Ljava/lang/String;

    move-result-object v7

    goto :goto_c

    :cond_1b
    iget-object v4, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v4}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v4

    sget-object v7, Lcom/hunantv/media/report/ReportParams$VideoType;->VOD:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-ne v4, v7, :cond_1c

    iget-object v4, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v4, :cond_1c

    invoke-virtual {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getMaxDnsMs()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    :cond_1c
    :goto_12
    iget-object v4, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v4}, Lcom/hunantv/media/report/ReportParams;->getAbt()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->abt:Ljava/lang/String;

    iget-object v4, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v4}, Lcom/hunantv/media/report/ReportParams;->getExCommonFields()Ljava/util/Map;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->exCommonFields:Ljava/util/Map;

    iget-object v4, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v4}, Lcom/hunantv/media/report/ReportParams;->getVid()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->vid:Ljava/lang/String;

    iget-object v4, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v4}, Lcom/hunantv/media/report/ReportParams;->getCdnip()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->url:Ljava/lang/String;

    invoke-static {v4}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1d

    iget-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->url:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    :cond_1d
    iget-object v4, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v4, :cond_1e

    invoke-virtual {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPlayingOriginUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hunantv/media/player/utils/UrlUtil;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1e

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->url:Ljava/lang/String;

    :cond_1e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v7}, Lcom/hunantv/media/report/ReportParams;->getRenderType()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v7}, Lcom/hunantv/media/report/ReportParams;->getEnhanceQualityType()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->chash:Ljava/lang/String;

    iget-object v4, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v4, :cond_1f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v2, Lcom/hunantv/media/report/entity/CommonEntity;->chash:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v7}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isMediaCodecSWRender()Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->chash:Ljava/lang/String;

    :cond_1f
    iget-object v4, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v4, :cond_20

    iget-object v4, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v4}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v4

    sget-object v7, Lcom/hunantv/media/report/ReportParams$VideoType;->IMMERSIVE:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-ne v4, v7, :cond_20

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sc_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v7}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getMediaCodecColorFormat()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->chash:Ljava/lang/String;

    :cond_20
    iget-boolean v4, v0, Lcom/hunantv/media/report/a;->l:Z

    if-eqz v4, :cond_22

    iget-object v4, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v4, :cond_21

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v7}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getSwitchP2ps()I

    move-result v7

    goto :goto_14

    :cond_21
    const-string v4, "00"

    :goto_13
    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->p2ps:Ljava/lang/String;

    goto :goto_15

    :cond_22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v7}, Lcom/hunantv/media/report/ReportParams;->getP2ps()I

    move-result v7

    :goto_14
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_13

    :goto_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v7}, Lcom/hunantv/media/report/ReportParams;->getRenderType()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->rdtp:Ljava/lang/String;

    iget-object v4, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v4}, Lcom/hunantv/media/report/ReportParams;->getCdnip()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_23

    iput-object v5, v2, Lcom/hunantv/media/report/entity/CommonEntity;->s2:Ljava/lang/String;

    goto :goto_16

    :cond_23
    invoke-static {v4}, Lcom/hunantv/media/player/a/e;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    iput-object v6, v2, Lcom/hunantv/media/report/entity/CommonEntity;->s2:Ljava/lang/String;

    goto :goto_16

    :cond_24
    iput-object v15, v2, Lcom/hunantv/media/report/entity/CommonEntity;->s2:Ljava/lang/String;

    :goto_16
    iget-object v4, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v4}, Lcom/hunantv/media/report/ReportParams;->getDef()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->s3:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v7}, Lcom/hunantv/media/report/ReportParams;->getHasAd()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/hunantv/media/report/entity/CommonEntity;->has_ad:Ljava/lang/String;

    iget-object v4, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    const-string v7, "pes"

    const-string v13, "de"

    const-string v10, "v"

    if-eqz v4, :cond_29

    invoke-virtual {v4}, Lcom/hunantv/media/report/ReportParams;->getDrm()Lcom/hunantv/media/report/ReportParams$DRM;

    move-result-object v4

    if-eqz v4, :cond_29

    iget-object v4, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v4}, Lcom/hunantv/media/report/ReportParams;->getProxyType()Lcom/hunantv/media/report/ReportParams$ProxyType;

    move-result-object v4

    sget-object v11, Lcom/hunantv/media/report/ReportParams$ProxyType;->NOPROXY_DRM:Lcom/hunantv/media/report/ReportParams$ProxyType;

    if-eq v4, v11, :cond_25

    iget-object v4, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v4}, Lcom/hunantv/media/report/ReportParams;->getProxyType()Lcom/hunantv/media/report/ReportParams$ProxyType;

    move-result-object v4

    sget-object v11, Lcom/hunantv/media/report/ReportParams$ProxyType;->P2P_DRM:Lcom/hunantv/media/report/ReportParams$ProxyType;

    if-eq v4, v11, :cond_25

    iget-object v4, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v4}, Lcom/hunantv/media/report/ReportParams;->getProxyType()Lcom/hunantv/media/report/ReportParams$ProxyType;

    move-result-object v4

    sget-object v11, Lcom/hunantv/media/report/ReportParams$ProxyType;->UNICOM_DRM:Lcom/hunantv/media/report/ReportParams$ProxyType;

    if-ne v4, v11, :cond_29

    :cond_25
    new-instance v4, Lcom/hunantv/media/report/a/b;

    invoke-direct {v4}, Lcom/hunantv/media/report/a/b;-><init>()V

    invoke-interface {v4, v10, v6}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v10}, Lcom/hunantv/media/report/ReportParams;->getDrm()Lcom/hunantv/media/report/ReportParams$DRM;

    move-result-object v10

    iget-object v10, v10, Lcom/hunantv/media/report/ReportParams$DRM;->lic:Ljava/lang/String;

    const-string v11, "lic"

    invoke-interface {v4, v11, v10}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v10}, Lcom/hunantv/media/report/ReportParams;->getDrm()Lcom/hunantv/media/report/ReportParams$DRM;

    move-result-object v10

    iget-object v10, v10, Lcom/hunantv/media/report/ReportParams$DRM;->firm:Ljava/lang/String;

    const-string v11, "firm"

    invoke-interface {v4, v11, v10}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v10}, Lcom/hunantv/media/report/ReportParams;->getDrm()Lcom/hunantv/media/report/ReportParams$DRM;

    move-result-object v10

    iget-object v10, v10, Lcom/hunantv/media/report/ReportParams$DRM;->ec:Ljava/lang/String;

    const-string v11, "ec"

    invoke-interface {v4, v11, v10}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v10, :cond_27

    invoke-virtual {v10}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getDuration()I

    move-result v10

    if-lez v10, :cond_26

    move-object v10, v5

    goto :goto_17

    :cond_26
    move-object v10, v6

    :goto_17
    invoke-interface {v4, v13, v10}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    invoke-interface {v4, v7, v1}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/hunantv/media/report/entity/CommonEntity;->dsc:Ljava/lang/String;

    :cond_28
    const/4 v11, 0x0

    goto/16 :goto_1d

    :cond_29
    iget-object v4, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    if-eqz v4, :cond_28

    new-instance v4, Lcom/hunantv/media/report/a/b;

    invoke-direct {v4}, Lcom/hunantv/media/report/a/b;-><init>()V

    invoke-interface {v4, v10, v14}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v11}, Lcom/hunantv/media/report/ReportParams;->getKeyInfo()Lcom/hunantv/media/report/ReportParams$KeyInfo;

    move-result-object v11

    iget v11, v11, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyInfoRet:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "kerr"

    invoke-interface {v4, v11, v10}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v10}, Lcom/hunantv/media/report/ReportParams;->getKeyInfo()Lcom/hunantv/media/report/ReportParams$KeyInfo;

    move-result-object v10

    iget-object v10, v10, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyinfoVid:Ljava/lang/String;

    const-string v11, "vid"

    invoke-interface {v4, v11, v10}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v10}, Lcom/hunantv/media/report/ReportParams;->getKeyInfo()Lcom/hunantv/media/report/ReportParams$KeyInfo;

    move-result-object v10

    iget-object v10, v10, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyinfoDef:Ljava/lang/String;

    const-string v11, "def"

    invoke-interface {v4, v11, v10}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v10}, Lcom/hunantv/media/report/ReportParams;->getKeyInfo()Lcom/hunantv/media/report/ReportParams$KeyInfo;

    move-result-object v10

    iget-object v10, v10, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyinfoUrl:Ljava/lang/String;

    invoke-static {v10}, Lcom/hunantv/media/player/utils/UrlUtil;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "url"

    invoke-interface {v4, v11, v10}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v10}, Lcom/hunantv/media/report/ReportParams;->getKeyInfo()Lcom/hunantv/media/report/ReportParams$KeyInfo;

    move-result-object v10

    iget-object v10, v10, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyinfoUrl:Ljava/lang/String;

    invoke-static {v10}, Lcom/hunantv/media/player/utils/UrlUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "fn"

    invoke-interface {v4, v11, v10}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v10}, Lcom/hunantv/media/report/ReportParams;->getKeyInfo()Lcom/hunantv/media/report/ReportParams$KeyInfo;

    move-result-object v10

    iget-object v10, v10, Lcom/hunantv/media/report/ReportParams$KeyInfo;->reqHttpCode:Ljava/lang/String;

    invoke-static {v10}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2a

    iget-object v10, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v10}, Lcom/hunantv/media/report/ReportParams;->getKeyInfo()Lcom/hunantv/media/report/ReportParams$KeyInfo;

    move-result-object v10

    iget-object v10, v10, Lcom/hunantv/media/report/ReportParams$KeyInfo;->reqHttpCode:Ljava/lang/String;

    const-string v11, "hc"

    invoke-interface {v4, v11, v10}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    iget-object v10, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v10}, Lcom/hunantv/media/report/ReportParams;->getKeyInfo()Lcom/hunantv/media/report/ReportParams$KeyInfo;

    move-result-object v10

    iget-object v10, v10, Lcom/hunantv/media/report/ReportParams$KeyInfo;->reqErrMsg:Ljava/lang/String;

    invoke-static {v10}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2c

    iget-object v10, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v10}, Lcom/hunantv/media/report/ReportParams;->getKeyInfo()Lcom/hunantv/media/report/ReportParams$KeyInfo;

    move-result-object v10

    iget-object v10, v10, Lcom/hunantv/media/report/ReportParams$KeyInfo;->reqErrMsg:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v14, 0x8

    if-le v11, v14, :cond_2b

    :goto_18
    const/4 v11, 0x0

    goto :goto_19

    :cond_2b
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    goto :goto_18

    :goto_19
    invoke-virtual {v10, v11, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v14, "em"

    invoke-interface {v4, v14, v10}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    :cond_2c
    const/4 v11, 0x0

    :goto_1a
    iget-object v10, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v10}, Lcom/hunantv/media/report/ReportParams;->getIstry()Ljava/lang/String;

    move-result-object v10

    const-string v14, "try"

    invoke-interface {v4, v14, v10}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v10, :cond_2e

    invoke-virtual {v10}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLastIP()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/hunantv/media/player/a/e;->c(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2d

    goto :goto_1b

    :cond_2d
    iget-object v10, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v10}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLastIP()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/hunantv/media/player/a/e;->b(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2e

    move-object v15, v6

    goto :goto_1b

    :cond_2e
    move-object v15, v5

    :goto_1b
    const-string v10, "ip"

    invoke-interface {v4, v10, v15}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v10, :cond_30

    invoke-virtual {v10}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getDuration()I

    move-result v10

    if-lez v10, :cond_2f

    move-object v10, v5

    goto :goto_1c

    :cond_2f
    move-object v10, v6

    :goto_1c
    invoke-interface {v4, v13, v10}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    invoke-interface {v4, v7, v1}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/hunantv/media/report/entity/CommonEntity;->dsc:Ljava/lang/String;

    :goto_1d
    iget-object v1, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getKeyInfo()Lcom/hunantv/media/report/ReportParams$KeyInfo;

    move-result-object v1

    iget v1, v1, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyInfoRet:I

    if-eqz v1, :cond_31

    move-object v1, v5

    goto :goto_1e

    :cond_31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v4}, Lcom/hunantv/media/report/ReportParams;->getKeyInfo()Lcom/hunantv/media/report/ReportParams$KeyInfo;

    move-result-object v4

    iget v4, v4, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyInfoSetLayer:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v7}, Lcom/hunantv/media/report/ReportParams;->getKeyInfo()Lcom/hunantv/media/report/ReportParams$KeyInfo;

    move-result-object v7

    iget-boolean v7, v7, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyInfoExist:Z

    if-eqz v7, :cond_32

    move-object v7, v6

    goto :goto_1f

    :cond_32
    move-object v7, v5

    :goto_1f
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v7}, Lcom/hunantv/media/report/ReportParams;->getKeyInfo()Lcom/hunantv/media/report/ReportParams$KeyInfo;

    move-result-object v7

    iget-boolean v7, v7, Lcom/hunantv/media/report/ReportParams$KeyInfo;->keyInfoSet:Z

    if-eqz v7, :cond_33

    move-object v5, v6

    :cond_33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/hunantv/media/report/entity/CommonEntity;->iskid:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v4}, Lcom/hunantv/media/report/ReportParams;->getSvtp()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/hunantv/media/report/entity/CommonEntity;->svtp:Ljava/lang/String;

    iget-object v1, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getSvds()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_34

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FFF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    iput-object v1, v2, Lcom/hunantv/media/report/entity/CommonEntity;->svds:Ljava/lang/String;

    :cond_34
    iget-object v1, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getEncinfo()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/hunantv/media/report/entity/CommonEntity;->encinfo:Ljava/lang/String;

    iget-object v1, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->isP2p()Z

    move-result v1

    const/4 v4, 0x1

    if-ne v4, v1, :cond_35

    invoke-static {}, Lcom/hunantv/media/p2p/P2pMgr;->isMgP2p()Z

    move-result v5

    if-eqz v5, :cond_35

    const/4 v1, 0x2

    :cond_35
    iget-object v5, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v5, :cond_38

    invoke-virtual {v5}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getReadDataSourceType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_38

    iget-object v5, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v5}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPlayingUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/hunantv/media/p2p/P2pMgr;->isYfProxyP2p(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_36

    move v7, v4

    goto :goto_20

    :cond_36
    iget-object v5, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v5}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPlayingUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/hunantv/media/p2p/P2pMgr;->isMgProxyP2p(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_37

    move v7, v6

    goto :goto_20

    :cond_37
    move v7, v11

    :goto_20
    if-eq v1, v7, :cond_38

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_21

    :cond_38
    move-object v5, v12

    :goto_21
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/hunantv/media/report/entity/CommonEntity;->p2pt:Ljava/lang/String;

    iget-object v1, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getFlowt()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/hunantv/media/report/entity/CommonEntity;->flowt:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v5}, Lcom/hunantv/media/report/ReportParams;->getSptp()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/hunantv/media/report/entity/CommonEntity;->sptp:Ljava/lang/String;

    iget-object v1, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getVideoFileHash()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/hunantv/media/report/entity/CommonEntity;->fhash:Ljava/lang/String;

    iget-object v1, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getPlayPreviewType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/hunantv/media/report/entity/CommonEntity;->pptp:Ljava/lang/String;

    iput-object v8, v2, Lcom/hunantv/media/report/entity/CommonEntity;->addrty:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->getsGlobalNetPlayConfig()Lcom/hunantv/media/config/NetPlayConfig;

    move-result-object v1

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Lcom/hunantv/media/config/NetPlayConfig;->getAddrinfo_type()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/hunantv/media/report/entity/CommonEntity;->addrty:Ljava/lang/String;

    :cond_39
    iget-object v1, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getBsid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/hunantv/media/report/entity/ServiceEntity;->bsid:Ljava/lang/String;

    iget-object v1, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getPay()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/hunantv/media/report/entity/ServiceEntity;->pay:Ljava/lang/String;

    iget-object v1, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getFpid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/hunantv/media/report/entity/ServiceEntity;->fpid:Ljava/lang/String;

    iget-object v1, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getAp()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/hunantv/media/report/entity/ServiceEntity;->ap:Ljava/lang/String;

    iget-object v1, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getDef()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/hunantv/media/report/entity/ServiceEntity;->def:Ljava/lang/String;

    iget-object v1, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getFpn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/hunantv/media/report/entity/ServiceEntity;->fpn:Ljava/lang/String;

    iget-object v1, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/hunantv/media/report/entity/ServiceEntity;->url:Ljava/lang/String;

    iget-object v1, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getVid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/hunantv/media/report/entity/ServiceEntity;->vid:Ljava/lang/String;

    iget-object v1, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getCdnip()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/hunantv/media/report/entity/ServiceEntity;->cdnip:Ljava/lang/String;

    iget-object v1, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getPlid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/hunantv/media/report/entity/ServiceEntity;->plid:Ljava/lang/String;

    iget-object v1, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getFpa()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/hunantv/media/report/entity/ServiceEntity;->fpa:Ljava/lang/String;

    iget-object v1, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getCid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/hunantv/media/report/entity/ServiceEntity;->cid:Ljava/lang/String;

    iget-object v1, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getIstry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/hunantv/media/report/entity/ServiceEntity;->istry:Ljava/lang/String;

    iget-object v1, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getIsad()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/hunantv/media/report/entity/ServiceEntity;->isad:Ljava/lang/String;

    iget-object v1, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hunantv/media/report/a;->a(Lcom/hunantv/media/report/ReportParams$VideoType;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/hunantv/media/report/entity/ServiceEntity;->pt:Ljava/lang/String;

    iget-object v1, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getCf()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/hunantv/media/report/entity/ServiceEntity;->cf:Ljava/lang/String;

    iget-object v1, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getSwitcher()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/hunantv/media/report/entity/ServiceEntity;->switcher:Ljava/lang/String;

    iget-object v1, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getSubmit()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/hunantv/media/report/entity/ServiceEntity;->submit:Ljava/lang/String;

    iget-object v1, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getBdid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/hunantv/media/report/entity/ServiceEntity;->bdid:Ljava/lang/String;

    iget-object v1, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getCpn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/hunantv/media/report/entity/ServiceEntity;->cpn:Ljava/lang/String;

    iget-object v1, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getDatano()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/hunantv/media/report/entity/ServiceEntity;->datano:Ljava/lang/String;

    iget-object v1, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getRefmdid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/hunantv/media/report/entity/ServiceEntity;->refmdid:Ljava/lang/String;

    iget-object v1, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getAcp()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/hunantv/media/report/entity/ServiceEntity;->acp:Ljava/lang/String;

    iget-object v0, v0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getExServiceFields()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v3, Lcom/hunantv/media/report/entity/ServiceEntity;->exServiceFields:Ljava/util/Map;

    goto :goto_22

    :cond_3a
    move v4, v10

    :goto_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v2, Lcom/hunantv/media/report/entity/CommonEntity;->rdtp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_ref_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hunantv/media/global/PlayerReferenceObserver;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/hunantv/media/report/entity/CommonEntity;->rdtp:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getDecoderPerformanceList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    move-object v3, v1

    move v5, v11

    move v6, v5

    :goto_23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v11, v7, :cond_43

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;

    iget-object v7, v7, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;

    iget-object v9, v9, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->performance:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;

    iget-object v10, v10, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->hdr:Ljava/lang/String;

    sget-object v13, Lcom/hunantv/media/player/helper/MediaCodecHelp;->AMIME_VIDEO_AVC:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3e

    sget-object v13, Lcom/hunantv/media/player/helper/MediaCodecHelp;->UHD:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3b

    sget-object v13, Lcom/hunantv/media/player/helper/MediaCodecHelp;->SHD:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3c

    :cond_3b
    move v5, v4

    :cond_3c
    invoke-static {v1}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "H264_"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_24

    :cond_3d
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "__H264_"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_24
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;

    iget-object v13, v13, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->max_fps_1080p:Ljava/lang/String;

    iput-object v13, v2, Lcom/hunantv/media/report/entity/CommonEntity;->sfhdamf:Ljava/lang/String;

    :cond_3e
    sget-object v13, Lcom/hunantv/media/player/helper/MediaCodecHelp;->AMIME_VIDEO_HEVC:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    sget-object v7, Lcom/hunantv/media/player/helper/MediaCodecHelp;->UHD:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3f

    sget-object v7, Lcom/hunantv/media/player/helper/MediaCodecHelp;->SHD:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_40

    :cond_3f
    move v6, v4

    :cond_40
    invoke-static {v3}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_41

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "H265_"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_25

    :cond_41
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "__H265_"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_25
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;

    iget-object v7, v7, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->max_fps_4k:Ljava/lang/String;

    iput-object v7, v2, Lcom/hunantv/media/report/entity/CommonEntity;->s4kmf:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;

    iget-object v7, v7, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->max_fps_1080p:Ljava/lang/String;

    iput-object v7, v2, Lcom/hunantv/media/report/entity/CommonEntity;->sfhdhmf:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;

    iget-object v7, v7, Lcom/hunantv/media/player/helper/MediaCodecHelp$CodecPerformance;->shdrt:Ljava/lang/String;

    iput-object v7, v2, Lcom/hunantv/media/report/entity/CommonEntity;->shdrt:Ljava/lang/String;

    :cond_42
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_23

    :cond_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/hunantv/media/report/entity/CommonEntity;->s4k:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getScreenPerformance(Landroid/content/Context;)Lcom/hunantv/media/player/helper/MediaCodecHelp$ScreenPerformance;

    move-result-object v0

    iget-object v0, v0, Lcom/hunantv/media/player/helper/MediaCodecHelp$ScreenPerformance;->sshdr:Ljava/lang/String;

    iput-object v0, v2, Lcom/hunantv/media/report/entity/CommonEntity;->sshdr:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getScreenPerformance(Landroid/content/Context;)Lcom/hunantv/media/player/helper/MediaCodecHelp$ScreenPerformance;

    move-result-object v0

    iget-object v0, v0, Lcom/hunantv/media/player/helper/MediaCodecHelp$ScreenPerformance;->srpf:Ljava/lang/String;

    iput-object v0, v2, Lcom/hunantv/media/report/entity/CommonEntity;->srpf:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getScreenPerformance(Landroid/content/Context;)Lcom/hunantv/media/player/helper/MediaCodecHelp$ScreenPerformance;

    move-result-object v0

    iget-object v0, v0, Lcom/hunantv/media/player/helper/MediaCodecHelp$ScreenPerformance;->srpll:Ljava/lang/String;

    iput-object v0, v2, Lcom/hunantv/media/report/entity/CommonEntity;->srpll:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getScreenPerformance(Landroid/content/Context;)Lcom/hunantv/media/player/helper/MediaCodecHelp$ScreenPerformance;

    move-result-object v0

    iget-object v0, v0, Lcom/hunantv/media/player/helper/MediaCodecHelp$ScreenPerformance;->srplh:Ljava/lang/String;

    iput-object v0, v2, Lcom/hunantv/media/report/entity/CommonEntity;->srplh:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/hunantv/media/report/entity/CommonEntity;->cdpf:Ljava/lang/String;

    iput-object v8, v2, Lcom/hunantv/media/report/entity/CommonEntity;->drmveri:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/media/report/ReportParams$GlobalSet;->getsValidPackageNames()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/hunantv/media/report/entity/CommonEntity;->tappgn:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/media/report/ReportParams$GlobalSet;->getsChannelId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/hunantv/media/report/entity/CommonEntity;->emdid:Ljava/lang/String;

    return-object v2
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Lcom/hunantv/media/report/entity/CommonEntity;
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/hunantv/media/report/a;->a(Landroid/content/Context;Lcom/hunantv/media/report/a$a;Ljava/lang/String;)Lcom/hunantv/media/report/entity/CommonEntity;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 3
    new-instance p0, Ljava/util/Random;

    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hunantv/media/report/c/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hunantv/media/report/c/h;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/hunantv/media/player/utils/StringUtil;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/media/report/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private a(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;
    .locals 2

    .line 4
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    sget-object v0, Lcom/hunantv/media/report/a$1;->c:[I

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getHw2SwType()Lcom/hunantv/media/player/MgtvMediaPlayer$Hw2SwType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p0, 0x2

    if-eq v0, p0, :cond_0

    const/4 p0, 0x3

    if-eq v0, p0, :cond_0

    const/4 p0, 0x4

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isHardware()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private a(Lcom/hunantv/media/player/MgtvMediaPlayer;II)Ljava/lang/String;
    .locals 0

    .line 5
    invoke-static {p2, p3}, Lcom/hunantv/media/report/a;->c(II)Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isRendered()Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x493e3

    if-ne p2, p0, :cond_0

    const-string p0, "203"

    goto :goto_0

    :cond_0
    const-string p0, "202"

    goto :goto_0

    :cond_1
    const-string p0, "201"

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isRendered()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "102"

    goto :goto_0

    :cond_3
    const-string p0, "101"

    :goto_0
    return-object p0
.end method

.method private a(Lcom/hunantv/media/report/ReportParams$VideoType;)Ljava/lang/String;
    .locals 1

    .line 6
    invoke-static {p1}, Lcom/hunantv/media/report/ReportParams;->getVideoTypeStr(Lcom/hunantv/media/report/ReportParams$VideoType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPlayingUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/hunantv/media/player/utils/UrlUtil;->isLocal(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p1, "3"

    :cond_1
    :goto_0
    return-object p1
.end method

.method private a(Lcom/hunantv/media/report/a$c;)Ljava/lang/String;
    .locals 2

    .line 7
    if-nez p1, :cond_0

    const-string p0, "n"

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/report/a;->m:Lcom/hunantv/media/report/a$c;

    if-ne p1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentStatus already equals targetStatus,targetStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReportManager"

    invoke-static {v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hunantv/media/report/a;->m:Lcom/hunantv/media/report/a$c;

    if-ne p1, v1, :cond_2

    const-string p1, "1"

    goto :goto_0

    :cond_2
    const-string p1, "0"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/media/report/a;->m:Lcom/hunantv/media/report/a$c;

    invoke-virtual {p0}, Lcom/hunantv/media/report/a$c;->a()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/Object;)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8
    invoke-static {p1}, Lcom/hunantv/media/report/c/g;->a(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;II)V
    .locals 15

    .line 16
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    sget-object v4, Lcom/hunantv/media/report/a$c;->e:Lcom/hunantv/media/report/a$c;

    invoke-direct {p0, v4}, Lcom/hunantv/media/report/a;->a(Lcom/hunantv/media/report/a$c;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/hunantv/media/report/a;->n()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, v0, Lcom/hunantv/media/report/a;->m:Lcom/hunantv/media/report/a$c;

    sget-object v7, Lcom/hunantv/media/report/a$c;->a:Lcom/hunantv/media/report/a$c;

    if-ne v6, v7, :cond_0

    goto/16 :goto_7

    :cond_0
    const-wide/16 v6, -0x1

    iput-wide v6, v0, Lcom/hunantv/media/report/a;->i:J

    iput-wide v6, v0, Lcom/hunantv/media/report/a;->j:J

    iput-object v4, v0, Lcom/hunantv/media/report/a;->m:Lcom/hunantv/media/report/a$c;

    new-instance v4, Lcom/hunantv/media/report/entity/EndEntity;

    invoke-direct {v4}, Lcom/hunantv/media/report/entity/EndEntity;-><init>()V

    iget-object v6, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isRendered()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "20_"

    goto :goto_0

    :cond_1
    const-string v6, "10_"

    :goto_0
    iget-object v7, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const-string v8, "_"

    const-string v9, ""

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getDrmSession()Lcom/hunantv/media/drm/IDrmSession;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v7}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getImgoMediaPlayer()Lcom/hunantv/media/player/h;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v7}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getImgoMediaPlayer()Lcom/hunantv/media/player/h;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hunantv/media/player/h;->T()Lcom/hunantv/media/player/d;

    move-result-object v7

    instance-of v10, v7, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;

    if-eqz v10, :cond_2

    check-cast v7, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->getDrmPreparedStatus()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x4fba

    const-wide/16 v13, 0x0

    invoke-virtual {v7, v12, v13, v14}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->getPImgoVsrExeInfo(IJ)J

    move-result-wide v2

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/hunantv/media/report/entity/EndEntity;->vsrcount:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x4fbb

    invoke-virtual {v7, v3, v13, v14}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->getPImgoVsrExeInfo(IJ)J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/hunantv/media/report/entity/EndEntity;->vsravgt:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x4fbc

    invoke-virtual {v7, v3, v13, v14}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->getPImgoVsrExeInfo(IJ)J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/hunantv/media/report/entity/EndEntity;->vsrmint:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x4fbd

    invoke-virtual {v7, v3, v13, v14}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->getPImgoVsrExeInfo(IJ)J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/hunantv/media/report/entity/EndEntity;->vsrmaxt:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v10, "_n"

    goto :goto_1

    :cond_3
    move-object v10, v9

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/hunantv/media/report/entity/EndEntity;->endtp:Ljava/lang/String;

    iget-object v2, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLastTsSkipErrExtra()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLastTsSkipErrFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/hunantv/media/report/entity/EndEntity;->cdtp:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getRecordMaxPlaySpeed()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/hunantv/media/report/entity/EndEntity;->umaxs:Ljava/lang/String;

    iget-object v2, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getImgoMediaPlayer()Lcom/hunantv/media/player/h;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/hunantv/media/player/h;->ao()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lcom/hunantv/media/report/entity/EndEntity;->cdtp:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_sie_1_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/hunantv/media/player/h;->ap()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    iput-object v2, v4, Lcom/hunantv/media/report/entity/EndEntity;->cdtp:Ljava/lang/String;

    goto :goto_3

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v4, Lcom/hunantv/media/report/entity/EndEntity;->cdtp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_sie_0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :goto_3
    iget-object v2, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getCurrentVideoDecoderName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/hunantv/media/report/entity/EndEntity;->dectp:Ljava/lang/String;

    iget-object v2, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-direct {p0, v2}, Lcom/hunantv/media/report/a;->a(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/hunantv/media/report/entity/EndEntity;->hddc:Ljava/lang/String;

    iget-object v2, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isRendered()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPlayTicker()Lcom/hunantv/media/player/utils/ExTicker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hunantv/media/player/utils/ExTicker;->getTickCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    iput-object v2, v4, Lcom/hunantv/media/report/entity/EndEntity;->ptst:Ljava/lang/String;

    goto :goto_5

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v6, v0, Lcom/hunantv/media/report/a;->h:J

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :goto_5
    iget-object v2, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLastIP()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/hunantv/media/report/entity/EndEntity;->cip:Ljava/lang/String;

    :cond_6
    const-string v2, "9"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v4, Lcom/hunantv/media/report/entity/EndEntity;->endtp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/hunantv/media/report/entity/EndEntity;->endtp:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/hunantv/media/report/a;->e(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    iput-object v1, v4, Lcom/hunantv/media/report/entity/EndEntity;->ptst:Ljava/lang/String;

    :cond_7
    iget-object v1, v0, Lcom/hunantv/media/report/a;->c:Landroid/content/Context;

    invoke-direct {p0, v1, v5}, Lcom/hunantv/media/report/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/hunantv/media/report/entity/CommonEntity;

    move-result-object v1

    iput-object v1, v4, Lcom/hunantv/media/report/entity/EndEntity;->common:Lcom/hunantv/media/report/entity/CommonEntity;

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v4, Lcom/hunantv/media/report/entity/EndEntity;->common:Lcom/hunantv/media/report/entity/CommonEntity;

    iget-object v3, v2, Lcom/hunantv/media/report/entity/CommonEntity;->rdtp:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_fps_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getFpsMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/hunantv/media/report/entity/CommonEntity;->rdtp:Ljava/lang/String;

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v4, Lcom/hunantv/media/report/entity/EndEntity;->common:Lcom/hunantv/media/report/entity/CommonEntity;

    iget-object v3, v2, Lcom/hunantv/media/report/entity/CommonEntity;->rdtp:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_ats_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/hunantv/media/report/a;->b:Ljava/text/DecimalFormat;

    iget-object v5, v0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const/16 v6, 0x2717

    const/high16 v7, -0x40000000    # -2.0f

    invoke-virtual {v5, v6, v7}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPropertyFloat(IF)F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v3, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/hunantv/media/report/entity/CommonEntity;->rdtp:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v4, Lcom/hunantv/media/report/entity/EndEntity;->common:Lcom/hunantv/media/report/entity/CommonEntity;

    iget-object v3, v2, Lcom/hunantv/media/report/entity/CommonEntity;->rdtp:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_ats_e"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/hunantv/media/report/entity/CommonEntity;->rdtp:Ljava/lang/String;

    :cond_8
    :goto_6
    invoke-direct {p0, v4}, Lcom/hunantv/media/report/a;->a(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/hunantv/media/report/a;->a(Ljava/util/HashMap;)V

    invoke-direct {p0}, Lcom/hunantv/media/report/a;->m()V

    :cond_9
    :goto_7
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 17
    invoke-direct {p0}, Lcom/hunantv/media/report/a;->n()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/hunantv/media/report/entity/BufferEntity;

    invoke-direct {v0}, Lcom/hunantv/media/report/entity/BufferEntity;-><init>()V

    iput-object p1, v0, Lcom/hunantv/media/report/entity/BufferEntity;->buffer_type:Ljava/lang/String;

    iput-object p2, v0, Lcom/hunantv/media/report/entity/BufferEntity;->buffer_kind:Ljava/lang/String;

    iget-object p2, p0, Lcom/hunantv/media/report/a;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/hunantv/media/report/a;->a(Lcom/hunantv/media/report/a$c;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/hunantv/media/report/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/hunantv/media/report/entity/CommonEntity;

    move-result-object p2

    iput-object p2, v0, Lcom/hunantv/media/report/entity/BufferEntity;->common:Lcom/hunantv/media/report/entity/CommonEntity;

    const-string p2, "0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/hunantv/media/report/a;->i:J

    goto :goto_0

    :cond_1
    iget-wide p1, p0, Lcom/hunantv/media/report/a;->i:J

    const-wide/16 v1, -0x1

    cmp-long p1, p1, v1

    if-lez p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v1, p0, Lcom/hunantv/media/report/a;->i:J

    sub-long/2addr p1, v1

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/report/a;->a(J)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/hunantv/media/report/entity/BufferEntity;->common:Lcom/hunantv/media/report/entity/CommonEntity;

    iget-object v1, v1, Lcom/hunantv/media/report/entity/CommonEntity;->service:Lcom/hunantv/media/report/entity/ServiceEntity;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/hunantv/media/report/entity/ServiceEntity;->td:Ljava/lang/String;

    :cond_2
    :goto_0
    iget-object p1, v0, Lcom/hunantv/media/report/entity/BufferEntity;->common:Lcom/hunantv/media/report/entity/CommonEntity;

    iget-object p1, p1, Lcom/hunantv/media/report/entity/CommonEntity;->service:Lcom/hunantv/media/report/entity/ServiceEntity;

    iget p2, p0, Lcom/hunantv/media/report/a;->f:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/hunantv/media/report/entity/ServiceEntity;->idx:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/hunantv/media/report/a;->a(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hunantv/media/report/a;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method private a(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v0

    sget-object v1, Lcom/hunantv/media/report/ReportParams$VideoType;->AD_PRE:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v0

    sget-object v1, Lcom/hunantv/media/report/ReportParams$VideoType;->AD_MID:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v0

    sget-object v1, Lcom/hunantv/media/report/ReportParams$VideoType;->HOME:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/hunantv/media/report/a$1;->d:[I

    sget-object v1, Lcom/hunantv/media/global/Constants;->REPORT_WAY:Lcom/hunantv/media/global/Constants$ReportWay;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/hunantv/media/report/a;->a(Ljava/util/HashMap;Z)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method private declared-synchronized a(Ljava/util/HashMap;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 19
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hunantv/media/report/a;->c:Landroid/content/Context;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "mgtv.player.action.PLAYER_REPORT_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EXTRA_REPORT_PARAMS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/hunantv/media/report/a;->c:Landroid/content/Context;

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/hunantv/media/report/a;->c:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private a(J)Z
    .locals 2

    .line 20
    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-ltz p0, :cond_1

    const-wide/32 v0, 0x1b7740

    cmp-long p0, p1, v0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(II)Z
    .locals 1

    .line 3
    invoke-static {p0, p1}, Lcom/hunantv/media/report/a;->d(II)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->isP2pDirectTimeoutError(II)Z

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

.method private d(Ljava/lang/String;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Lcom/hunantv/media/report/a;->n()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/hunantv/media/report/entity/SeekEntity;

    invoke-direct {v0}, Lcom/hunantv/media/report/entity/SeekEntity;-><init>()V

    iput-object p1, v0, Lcom/hunantv/media/report/entity/SeekEntity;->seek_type:Ljava/lang/String;

    iget-object v1, p0, Lcom/hunantv/media/report/a;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/hunantv/media/report/a;->a(Lcom/hunantv/media/report/a$c;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/hunantv/media/report/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/hunantv/media/report/entity/CommonEntity;

    move-result-object v1

    iput-object v1, v0, Lcom/hunantv/media/report/entity/SeekEntity;->common:Lcom/hunantv/media/report/entity/CommonEntity;

    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/hunantv/media/report/a;->j:J

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lcom/hunantv/media/report/a;->j:J

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-lez p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/hunantv/media/report/a;->j:J

    sub-long/2addr v1, v3

    invoke-direct {p0, v1, v2}, Lcom/hunantv/media/report/a;->a(J)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v0, Lcom/hunantv/media/report/entity/SeekEntity;->common:Lcom/hunantv/media/report/entity/CommonEntity;

    iget-object p1, p1, Lcom/hunantv/media/report/entity/CommonEntity;->service:Lcom/hunantv/media/report/entity/ServiceEntity;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/hunantv/media/report/entity/ServiceEntity;->td:Ljava/lang/String;

    :cond_2
    :goto_0
    iget-object p1, v0, Lcom/hunantv/media/report/entity/SeekEntity;->common:Lcom/hunantv/media/report/entity/CommonEntity;

    iget-object p1, p1, Lcom/hunantv/media/report/entity/CommonEntity;->service:Lcom/hunantv/media/report/entity/ServiceEntity;

    iget v1, p0, Lcom/hunantv/media/report/a;->g:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/hunantv/media/report/entity/ServiceEntity;->idx:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/hunantv/media/report/a;->a(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hunantv/media/report/a;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method public static d(II)Z
    .locals 1

    .line 3
    const v0, 0x493e1

    if-eq p0, v0, :cond_1

    const v0, 0x493e2

    if-eq p0, v0, :cond_1

    const v0, 0x493e3

    if-eq p0, v0, :cond_1

    const v0, 0x493e4

    if-eq p0, v0, :cond_1

    const p0, 0x18a2f

    if-eq p1, p0, :cond_1

    const p0, 0x18a2e

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private e(II)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/hunantv/media/report/ReportParams;->getLeaveTimeS()J

    move-result-wide v0

    invoke-static {p1, p2}, Lcom/hunantv/media/player/utils/CodeUtil;->isHttp4XX(II)Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/16 p0, 0x21c

    cmp-long p0, v0, p0

    if-lez p0, :cond_1

    const/16 p0, 0x1c20

    int-to-long p0, p0

    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    move-wide v0, p0

    :cond_0
    const/4 p0, 0x1

    int-to-long p0, p0

    const-wide/16 v2, 0x708

    div-long/2addr v0, v2

    add-long/2addr p0, v0

    long-to-int p0, p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "err_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-static {p1}, Lcom/hunantv/media/player/utils/UrlUtil;->getProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getFileFormat()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getFileFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getFileFormat()Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/hunantv/media/report/a;->l()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private f(II)V
    .locals 4

    .line 2
    sget-object v0, Lcom/hunantv/media/report/a$c;->e:Lcom/hunantv/media/report/a$c;

    invoke-direct {p0, v0}, Lcom/hunantv/media/report/a;->a(Lcom/hunantv/media/report/a$c;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/hunantv/media/report/a;->i:J

    iput-wide v2, p0, Lcom/hunantv/media/report/a;->j:J

    iput-object v0, p0, Lcom/hunantv/media/report/a;->m:Lcom/hunantv/media/report/a$c;

    new-instance v0, Lcom/hunantv/media/report/entity/EndEntity;

    invoke-direct {v0}, Lcom/hunantv/media/report/entity/EndEntity;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "10_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "10"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hunantv/media/report/entity/EndEntity;->endtp:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/report/a;->e(II)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, v0, Lcom/hunantv/media/report/entity/EndEntity;->ptst:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/hunantv/media/report/a;->c:Landroid/content/Context;

    invoke-direct {p0, p1, v1}, Lcom/hunantv/media/report/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/hunantv/media/report/entity/CommonEntity;

    move-result-object p1

    iput-object p1, v0, Lcom/hunantv/media/report/entity/EndEntity;->common:Lcom/hunantv/media/report/entity/CommonEntity;

    invoke-direct {p0, v0}, Lcom/hunantv/media/report/a;->a(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hunantv/media/report/a;->a(Ljava/util/HashMap;)V

    invoke-direct {p0}, Lcom/hunantv/media/report/a;->m()V

    return-void
.end method

.method private h()V
    .locals 4

    invoke-direct {p0}, Lcom/hunantv/media/report/a;->m()V

    sget-object v0, Lcom/hunantv/media/report/a$c;->b:Lcom/hunantv/media/report/a$c;

    invoke-direct {p0, v0}, Lcom/hunantv/media/report/a;->a(Lcom/hunantv/media/report/a$c;)Ljava/lang/String;

    move-result-object v1

    iput-object v0, p0, Lcom/hunantv/media/report/a;->m:Lcom/hunantv/media/report/a$c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/hunantv/media/report/a;->h:J

    iget-object v0, p0, Lcom/hunantv/media/report/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/hunantv/media/report/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/report/a;->e:Ljava/lang/String;

    new-instance v0, Lcom/hunantv/media/report/entity/PVEntity;

    invoke-direct {v0}, Lcom/hunantv/media/report/entity/PVEntity;-><init>()V

    iget-object v2, p0, Lcom/hunantv/media/report/a;->c:Landroid/content/Context;

    invoke-direct {p0, v2, v1}, Lcom/hunantv/media/report/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/hunantv/media/report/entity/CommonEntity;

    move-result-object v1

    iput-object v1, v0, Lcom/hunantv/media/report/entity/PVEntity;->common:Lcom/hunantv/media/report/entity/CommonEntity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getCacheTsPaths()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getCacheTsPaths()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    :cond_0
    iget-object v1, v0, Lcom/hunantv/media/report/entity/PVEntity;->common:Lcom/hunantv/media/report/entity/CommonEntity;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/hunantv/media/report/a/b;

    const-string v2, "__"

    invoke-direct {v1, v2}, Lcom/hunantv/media/report/a/b;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hunantv/media/player/utils/SystemUtil;->isRoot1()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "root"

    invoke-interface {v1, v3, v2}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "wv"

    invoke-static {}, Lcom/hunantv/media/drm/MgtvDrmHelper;->getWidevineSupportMsg()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "HUAWEI"

    invoke-static {}, Lcom/hunantv/media/report/c/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "wp"

    invoke-static {}, Lcom/hunantv/media/drm/MgtvDrmHelper;->getWisePlaySupportMsg()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, v0, Lcom/hunantv/media/report/entity/PVEntity;->common:Lcom/hunantv/media/report/entity/CommonEntity;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/hunantv/media/report/entity/CommonEntity;->drmdi:Ljava/lang/String;

    :cond_2
    invoke-direct {p0, v0}, Lcom/hunantv/media/report/a;->a(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hunantv/media/report/a;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method private i()Ljava/lang/String;
    .locals 1

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->getALLAV1Decoder(Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getH265Decoder(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private j()V
    .locals 14

    sget-object v0, Lcom/hunantv/media/report/a$c;->c:Lcom/hunantv/media/report/a$c;

    invoke-direct {p0, v0}, Lcom/hunantv/media/report/a;->a(Lcom/hunantv/media/report/a$c;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hunantv/media/report/a;->m:Lcom/hunantv/media/report/a$c;

    sget-object v3, Lcom/hunantv/media/report/a$c;->b:Lcom/hunantv/media/report/a$c;

    if-eq v2, v3, :cond_0

    return-void

    :cond_0
    iput-object v0, p0, Lcom/hunantv/media/report/a;->m:Lcom/hunantv/media/report/a$c;

    new-instance v0, Lcom/hunantv/media/report/entity/VVEntity;

    invoke-direct {v0}, Lcom/hunantv/media/report/entity/VVEntity;-><init>()V

    invoke-static {}, Lcom/hunantv/media/report/ReportParams$GlobalSet;->getImgovsrDeviceInfo()Lcom/hunantv/media/player/libnative/ImgovsrDeviceInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hunantv/media/report/entity/VVEntity;->setImgovsrDeviceInfo(Lcom/hunantv/media/player/libnative/ImgovsrDeviceInfo;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/hunantv/media/report/a;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_cbl_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sCreateCodecBlackList:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_fbl_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/hunantv/media/player/helper/MediaCodecHelp;->sFlushCodecBlackList:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hunantv/media/report/entity/VVEntity;->cdtp:Ljava/lang/String;

    iget-wide v2, p0, Lcom/hunantv/media/report/a;->h:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const-string v3, "0"

    if-lez v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/hunantv/media/report/a;->h:J

    sub-long/2addr v6, v8

    invoke-direct {p0, v6, v7}, Lcom/hunantv/media/report/a;->a(J)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hunantv/media/report/entity/VVEntity;->ltst:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object v3, v0, Lcom/hunantv/media/report/entity/VVEntity;->ltst:Ljava/lang/String;

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reportVV render_start cost:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "ReportManager"

    invoke-static {v6, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getCurrentVideoDecoderName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hunantv/media/report/entity/VVEntity;->dectp:Ljava/lang/String;

    iget-object v2, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-direct {p0, v2}, Lcom/hunantv/media/report/a;->a(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hunantv/media/report/entity/VVEntity;->hddc:Ljava/lang/String;

    iget-object v2, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getCurrentPosition()I

    move-result v2

    const/16 v6, 0x2710

    if-le v2, v6, :cond_3

    const-string v2, "1"

    iput-object v2, v0, Lcom/hunantv/media/report/entity/VVEntity;->mp:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iput-object v3, v0, Lcom/hunantv/media/report/entity/VVEntity;->mp:Ljava/lang/String;

    :goto_1
    iget-object v2, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLastIP()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hunantv/media/report/entity/VVEntity;->cip:Ljava/lang/String;

    iget-object v2, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getImgoMediaPlayer()Lcom/hunantv/media/player/h;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getImgoMediaPlayer()Lcom/hunantv/media/player/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hunantv/media/player/h;->T()Lcom/hunantv/media/player/d;

    move-result-object v2

    instance-of v6, v2, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;

    if-eqz v6, :cond_7

    check-cast v2, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;

    invoke-virtual {v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->getVVTimeStatisticVVT()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->getVVTimeStatisticVVBT()J

    move-result-wide v8

    iget-boolean v10, p0, Lcom/hunantv/media/report/a;->l:Z

    const-string v11, ""

    if-eqz v10, :cond_4

    iput-object v3, v0, Lcom/hunantv/media/report/entity/VVEntity;->t2:Ljava/lang/String;

    iput-object v3, v0, Lcom/hunantv/media/report/entity/VVEntity;->t3:Ljava/lang/String;

    iput-object v3, v0, Lcom/hunantv/media/report/entity/VVEntity;->t5:Ljava/lang/String;

    iget-object v3, p0, Lcom/hunantv/media/report/a;->a:Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/hunantv/media/report/a;->a:Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    invoke-virtual {v10}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getVVTimeT1()J

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/hunantv/media/report/entity/VVEntity;->t1:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/hunantv/media/report/a;->a:Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    invoke-virtual {v10}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getVVTimeT4()J

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/hunantv/media/report/entity/VVEntity;->t4:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/hunantv/media/report/a;->a:Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    invoke-virtual {v10}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getVVTimeT6()J

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/hunantv/media/report/entity/VVEntity;->t6:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/hunantv/media/report/a;->a:Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    invoke-virtual {v10}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getVVTimeVVT()J

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/hunantv/media/report/entity/VVEntity;->vvt:Ljava/lang/String;

    goto/16 :goto_3

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->getVVTimeStatisticT1()J

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/hunantv/media/report/entity/VVEntity;->t1:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->getVVTimeStatisticT2()J

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/hunantv/media/report/entity/VVEntity;->t2:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->getVVTimeStatisticT3()J

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/hunantv/media/report/entity/VVEntity;->t3:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->getVVTimeStatisticT4()J

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/hunantv/media/report/entity/VVEntity;->t4:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->getVVTimeStatisticT5()J

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/hunantv/media/report/entity/VVEntity;->t5:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->getVVTimeStatisticT6()J

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/hunantv/media/report/entity/VVEntity;->t6:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_5
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/hunantv/media/report/entity/VVEntity;->vvbt:Ljava/lang/String;

    iget-object v3, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getInnerFlowDataStatistic()Lcom/hunantv/media/player/statistic/FlowDataStatistic;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hunantv/media/player/statistic/FlowDataStatistic;->getTotalBytes()J

    move-result-wide v8

    cmp-long v3, v6, v4

    if-lez v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v8

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/hunantv/media/report/entity/VVEntity;->vvs:Ljava/lang/String;

    goto :goto_5

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_4

    :goto_5
    new-instance v3, Lcom/hunantv/media/report/a/b;

    invoke-direct {v3}, Lcom/hunantv/media/report/a/b;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v5}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getNetdSVCTimeMs()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "svc"

    invoke-interface {v3, v5, v4}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "vvb"

    invoke-interface {v3, v5, v4}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getVVbuft()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "buft"

    invoke-interface {v3, v5, v4}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/hunantv/media/report/entity/VVEntity;->netd:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/hunantv/media/player/libnative/ImgoMediaPlayerLib;->getVVTimeStatisticDLPT()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hunantv/media/report/entity/VVEntity;->dlpt:Ljava/lang/String;

    :cond_7
    iget-object v2, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    iget-object v3, v2, Lcom/hunantv/media/player/MgtvMediaPlayer;->hdrInfo:Ljava/lang/String;

    iput-object v3, v0, Lcom/hunantv/media/report/entity/VVEntity;->vsinfo:Ljava/lang/String;

    iget-object v3, v2, Lcom/hunantv/media/player/MgtvMediaPlayer;->vsrver:Ljava/lang/String;

    iput-object v3, v0, Lcom/hunantv/media/report/entity/VVEntity;->vsrver:Ljava/lang/String;

    iget-object v2, v2, Lcom/hunantv/media/player/MgtvMediaPlayer;->vsrvkver:Ljava/lang/String;

    iput-object v2, v0, Lcom/hunantv/media/report/entity/VVEntity;->vsrvkver:Ljava/lang/String;

    :cond_8
    iget-object v2, p0, Lcom/hunantv/media/report/a;->c:Landroid/content/Context;

    invoke-direct {p0, v2, v1}, Lcom/hunantv/media/report/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/hunantv/media/report/entity/CommonEntity;

    move-result-object v1

    iput-object v1, v0, Lcom/hunantv/media/report/entity/VVEntity;->common:Lcom/hunantv/media/report/entity/CommonEntity;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v1

    sget-object v2, Lcom/hunantv/media/report/ReportParams$VideoType;->VOD:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getDataSourceInfo()Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->getVideoWidth()I

    move-result v2

    iget-object v3, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getVideoWidth()I

    move-result v3

    if-ne v2, v3, :cond_9

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->getVideoHeight()I

    move-result v2

    iget-object v3, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v3}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getVideoHeight()I

    move-result v3

    if-ne v2, v3, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/hunantv/media/report/entity/VVEntity;->common:Lcom/hunantv/media/report/entity/CommonEntity;

    iget-object v3, v2, Lcom/hunantv/media/report/entity/CommonEntity;->s3:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_s"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/hunantv/media/report/entity/CommonEntity;->s3:Ljava/lang/String;

    goto :goto_6

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/hunantv/media/report/entity/VVEntity;->common:Lcom/hunantv/media/report/entity/CommonEntity;

    iget-object v4, v3, Lcom/hunantv/media/report/entity/CommonEntity;->s3:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_n_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->getVideoWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->getVideoHeight()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/hunantv/media/report/entity/CommonEntity;->s3:Ljava/lang/String;

    :cond_a
    :goto_6
    invoke-direct {p0, v0}, Lcom/hunantv/media/report/a;->a(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hunantv/media/report/a;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method private k()Z
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object v0

    sget-object v2, Lcom/hunantv/media/report/ReportParams$VideoType;->VOD:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-eq v0, v2, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {p0}, Lcom/hunantv/media/report/ReportParams;->getVideoType()Lcom/hunantv/media/report/ReportParams$VideoType;

    move-result-object p0

    sget-object v0, Lcom/hunantv/media/report/ReportParams$VideoType;->LOCAL:Lcom/hunantv/media/report/ReportParams$VideoType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private l()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPlayingUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".m3u8"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/utils/UrlUtil;->isSuffixUrl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPlayingUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".m3u"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/utils/UrlUtil;->isSuffixUrl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPlayingUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/utils/UrlUtil;->isSuffixUrl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "2"

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPlayingUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".ts"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/utils/UrlUtil;->isSuffixUrl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "4"

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPlayingUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/utils/UrlUtil;->isSuffixUrl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "5"

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPlayingUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".m4a"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/utils/UrlUtil;->isSuffixUrl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPlayingUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mgm4a"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/utils/UrlUtil;->isSuffixUrl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPlayingUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".flac"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/utils/UrlUtil;->isSuffixUrl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object p0, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPlayingUrl()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".mgflac"

    invoke-static {p0, v0}, Lcom/hunantv/media/player/utils/UrlUtil;->isSuffixUrl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    const-string p0, "0"

    goto :goto_3

    :cond_6
    :goto_0
    const-string p0, "11"

    goto :goto_3

    :cond_7
    :goto_1
    const-string p0, "10"

    goto :goto_3

    :cond_8
    :goto_2
    const-string p0, "1"

    goto :goto_3

    :cond_9
    const-string p0, "-1"

    :goto_3
    return-object p0
.end method

.method private m()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/hunantv/media/report/a;->f:I

    iput v0, p0, Lcom/hunantv/media/report/a;->g:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/hunantv/media/report/a;->h:J

    iget-object v1, p0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getEnd()Lcom/hunantv/media/report/ReportParams$End;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams$End;->isInnerRetry()Z

    move-result v1

    iget-object p0, p0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {p0}, Lcom/hunantv/media/report/ReportParams;->getEnd()Lcom/hunantv/media/report/ReportParams$End;

    move-result-object p0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/hunantv/media/report/ReportParams$End;->setInnerRetry(Z)Lcom/hunantv/media/report/ReportParams$End;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/hunantv/media/report/ReportParams$End$Target;->CHANGE_SOURCE:Lcom/hunantv/media/report/ReportParams$End$Target;

    invoke-virtual {p0, v0}, Lcom/hunantv/media/report/ReportParams$End;->setTarget(Lcom/hunantv/media/report/ReportParams$End$Target;)Lcom/hunantv/media/report/ReportParams$End;

    :cond_1
    :goto_0
    return-void
.end method

.method private n()Z
    .locals 1

    iget-object p0, p0, Lcom/hunantv/media/report/a;->m:Lcom/hunantv/media/report/a$c;

    sget-object v0, Lcom/hunantv/media/report/a$c;->d:Lcom/hunantv/media/report/a$c;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/hunantv/media/report/a$c;->e:Lcom/hunantv/media/report/a$c;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 9
    const-string v0, "ReportManager"

    const-string v1, "reportPV in"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/report/a;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/hunantv/media/report/a;->h()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "ReportManager"

    const-string v0, "reportPV out"

    invoke-static {p0, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public a(I)V
    .locals 4

    .line 10
    iget-object v0, p0, Lcom/hunantv/media/report/a;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/hunantv/media/report/a;->n()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/hunantv/media/report/a;->k()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/hunantv/media/report/entity/HeartBeatEntity;

    invoke-direct {v1}, Lcom/hunantv/media/report/entity/HeartBeatEntity;-><init>()V

    iget-object v2, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hunantv/media/report/entity/HeartBeatEntity;->current_position:Ljava/lang/String;

    iget-object v2, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getDuration()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hunantv/media/report/entity/HeartBeatEntity;->duration:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/hunantv/media/report/a;->c:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/hunantv/media/report/a;->a(Lcom/hunantv/media/report/a$c;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/hunantv/media/report/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/hunantv/media/report/entity/CommonEntity;

    move-result-object v2

    iput-object v2, v1, Lcom/hunantv/media/report/entity/HeartBeatEntity;->common:Lcom/hunantv/media/report/entity/CommonEntity;

    iget-object v2, v2, Lcom/hunantv/media/report/entity/CommonEntity;->service:Lcom/hunantv/media/report/entity/ServiceEntity;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/hunantv/media/report/entity/ServiceEntity;->idx:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/hunantv/media/report/a;->a(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hunantv/media/report/a;->a(Ljava/util/HashMap;)V

    monitor-exit v0

    return-void

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(II)V
    .locals 3

    .line 11
    const-string v0, "ReportManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportComplete in. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/report/a;->n:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    const-string v1, "0"

    :goto_0
    invoke-direct {p0, v1, p1, p2}, Lcom/hunantv/media/report/a;->a(Ljava/lang/String;II)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const v1, 0x61da2

    if-ne p1, v1, :cond_1

    const-string v1, "101"

    goto :goto_0

    :cond_1
    const-string v1, "9"

    goto :goto_0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "ReportManager"

    const-string p1, "reportComplete out."

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public a(IILjava/lang/String;)V
    .locals 3

    .line 12
    const-string v0, "ReportManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportErr in."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/report/a;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/hunantv/media/report/a;->b(IILjava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "ReportManager"

    const-string p1, "reportErr out"

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public a(Lcom/hunantv/media/player/smooth/SmoothMediaSource;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/hunantv/media/report/a;->a:Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    return-void
.end method

.method public a(Lcom/hunantv/media/report/ReportParams;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/hunantv/media/report/a;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/hunantv/media/report/a;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/hunantv/media/report/a;->f:I

    const-string v1, "0"

    invoke-direct {p0, v1, p1}, Lcom/hunantv/media/report/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public b()V
    .locals 2

    .line 1
    const-string v0, "ReportManager"

    const-string v1, "reportVV in"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/report/a;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/hunantv/media/report/a;->j()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "ReportManager"

    const-string v0, "reportVV out"

    invoke-static {p0, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public b(II)V
    .locals 3

    .line 2
    const-string v0, "ReportManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportEndWithErrorMp in. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/report/a;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/report/a;->f(II)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "ReportManager"

    const-string p1, "reportEndWithErrorMp out."

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public b(IILjava/lang/String;)V
    .locals 8

    .line 3
    sget-object p3, Lcom/hunantv/media/report/a$c;->d:Lcom/hunantv/media/report/a$c;

    invoke-direct {p0, p3}, Lcom/hunantv/media/report/a;->a(Lcom/hunantv/media/report/a$c;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/hunantv/media/report/a;->n()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iput-object p3, p0, Lcom/hunantv/media/report/a;->m:Lcom/hunantv/media/report/a$c;

    new-instance p3, Lcom/hunantv/media/report/entity/ErrorEntity;

    invoke-direct {p3}, Lcom/hunantv/media/report/entity/ErrorEntity;-><init>()V

    iget-object v1, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-direct {p0, v1, p1, p2}, Lcom/hunantv/media/report/a;->a(Lcom/hunantv/media/player/MgtvMediaPlayer;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lcom/hunantv/media/report/entity/ErrorEntity;->et:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lcom/hunantv/media/report/entity/ErrorEntity;->sc:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lcom/hunantv/media/report/entity/ErrorEntity;->exr:Ljava/lang/String;

    new-instance v1, Lcom/hunantv/media/report/a/b;

    invoke-direct {v1}, Lcom/hunantv/media/report/a/b;-><init>()V

    iget-object v2, p0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    const-string v3, ""

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v4}, Lcom/hunantv/media/report/ReportParams;->getLastErrorCodeExtra()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "lc"

    invoke-interface {v1, v4, v2}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v2, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getSourceRetryCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "sr"

    invoke-interface {v1, v4, v2}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getSourceRetryCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "sc"

    invoke-interface {v1, v4, v2}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getCurrentDnsDsc()Ljava/lang/String;

    move-result-object v2

    const-string v4, "dns"

    invoke-interface {v1, v4, v2}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v4}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isLive()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "live"

    invoke-interface {v1, v4, v2}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getCurrentDrmMetodName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v4, "km"

    invoke-interface {v1, v4, v2}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isInitMp4Error()Z

    move-result v2

    const-string v4, "0"

    const-string v5, "1"

    if-eqz v2, :cond_3

    move-object v2, v5

    goto :goto_0

    :cond_3
    move-object v2, v4

    :goto_0
    const-string v6, "imp4e"

    invoke-interface {v1, v6, v2}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v6}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLastIPCount()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "ipn"

    invoke-interface {v1, v6, v2}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v6}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLastIpIndex()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "ipi"

    invoke-interface {v1, v6, v2}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v6}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLastDnsType()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ipt"

    invoke-interface {v1, v3, v2}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLastRequestUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hunantv/media/player/utils/UrlUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ln"

    invoke-interface {v1, v3, v2}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v2, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getImgoMediaPlayer()Lcom/hunantv/media/player/h;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getImgoMediaPlayer()Lcom/hunantv/media/player/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hunantv/media/player/h;->A()Lcom/hunantv/media/player/libnative/IMGTVMediaDataSource;

    move-result-object v2

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    instance-of v3, v2, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;

    if-eqz v3, :cond_6

    check-cast v2, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;

    invoke-virtual {v2}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->getLastM3u8Entity()Lcom/hunantv/media/player/datasource/p2p/CdnM3u8Entity;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-boolean v3, v2, Lcom/hunantv/media/player/datasource/p2p/CdnM3u8Entity;->isSizeError:Z

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v2, Lcom/hunantv/media/player/datasource/p2p/CdnM3u8Entity;->contentLength:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/hunantv/media/player/datasource/p2p/CdnM3u8Entity;->httpBodySize:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "m3u"

    invoke-interface {v1, v3, v2}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v2, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getCodecName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "vcn"

    invoke-interface {v1, v3, v2}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isNetworkChangeWhilePlaying()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v2, v5

    goto :goto_2

    :cond_7
    move-object v2, v4

    :goto_2
    const-string v3, "netc"

    invoke-interface {v1, v3, v2}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLastDlSize()I

    move-result v2

    if-lez v2, :cond_8

    move-object v2, v5

    goto :goto_3

    :cond_8
    move-object v2, v4

    :goto_3
    const-string v3, "lds"

    invoke-interface {v1, v3, v2}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLastIP()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hunantv/media/player/a/e;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v2, v5

    goto :goto_4

    :cond_9
    iget-object v2, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLastIP()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hunantv/media/player/a/e;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "2"

    goto :goto_4

    :cond_a
    move-object v2, v4

    :goto_4
    const-string v3, "ipf"

    invoke-interface {v1, v3, v2}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPlayingOriginUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v2, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPlayingUrl()Ljava/lang/String;

    move-result-object v2

    :cond_b
    move-object v3, v2

    iget-object v2, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getImgoMediaPlayer()Lcom/hunantv/media/player/h;

    move-result-object v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getImgoMediaPlayer()Lcom/hunantv/media/player/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hunantv/media/player/h;->S()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object v4, v5

    :cond_c
    const-string v2, "gif"

    invoke-interface {v1, v2, v4}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-object v2, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPlayingOriginUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hunantv/media/player/utils/UrlUtil;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lcom/hunantv/media/report/entity/ErrorEntity;->surl:Ljava/lang/String;

    iget-object v2, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getDataSourceInfo()Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getDataSourceInfo()Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->getAudioChildInfo()Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo$AudioChildInfo;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getDataSourceInfo()Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo;->getAudioChildInfo()Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo$AudioChildInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceInfo$AudioChildInfo;->getLicenseUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lcom/hunantv/media/report/entity/ErrorEntity;->licurl:Ljava/lang/String;

    :cond_e
    const-string v2, "on"

    invoke-static {v3}, Lcom/hunantv/media/player/utils/UrlUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/hunantv/media/report/a;->i()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lcom/hunantv/media/report/entity/ErrorEntity;->cdtp:Ljava/lang/String;

    iget-object v2, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getImgoMediaPlayer()Lcom/hunantv/media/player/h;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/hunantv/media/player/h;->ao()Z

    move-result v3

    if-eqz v3, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p3, Lcom/hunantv/media/report/entity/ErrorEntity;->cdtp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_sie_1_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/hunantv/media/player/h;->ap()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5
    iput-object v2, p3, Lcom/hunantv/media/report/entity/ErrorEntity;->cdtp:Ljava/lang/String;

    goto :goto_6

    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p3, Lcom/hunantv/media/report/entity/ErrorEntity;->cdtp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_sie_0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :goto_6
    iget-object v2, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getCurrentVideoDecoderName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lcom/hunantv/media/report/entity/ErrorEntity;->dectp:Ljava/lang/String;

    iget-object v2, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-direct {p0, v2}, Lcom/hunantv/media/report/a;->a(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lcom/hunantv/media/report/entity/ErrorEntity;->hddc:Ljava/lang/String;

    iget-object v2, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->isRendered()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getPlayTicker()Lcom/hunantv/media/player/utils/ExTicker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hunantv/media/player/utils/ExTicker;->getTickCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_7
    iput-object v2, p3, Lcom/hunantv/media/report/entity/ErrorEntity;->ptst:Ljava/lang/String;

    goto :goto_8

    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/hunantv/media/report/a;->h:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :goto_8
    iget-object v2, p0, Lcom/hunantv/media/report/a;->d:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-virtual {v2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->getLastIP()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lcom/hunantv/media/report/entity/ErrorEntity;->cip:Ljava/lang/String;

    :cond_11
    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/report/a;->e(II)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    iput-object v2, p3, Lcom/hunantv/media/report/entity/ErrorEntity;->ptst:Ljava/lang/String;

    :cond_12
    iget-object v2, p0, Lcom/hunantv/media/report/a;->c:Landroid/content/Context;

    new-instance v3, Lcom/hunantv/media/report/a$b;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/hunantv/media/report/a$b;-><init>(Lcom/hunantv/media/report/a;IILcom/hunantv/media/report/entity/ErrorEntity;)V

    invoke-direct {p0, v2, v3, v0}, Lcom/hunantv/media/report/a;->a(Landroid/content/Context;Lcom/hunantv/media/report/a$a;Ljava/lang/String;)Lcom/hunantv/media/report/entity/CommonEntity;

    move-result-object p1

    iput-object p1, p3, Lcom/hunantv/media/report/entity/ErrorEntity;->common:Lcom/hunantv/media/report/entity/CommonEntity;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "reportErr statics_num1:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lcom/hunantv/media/report/entity/ErrorEntity;->common:Lcom/hunantv/media/report/entity/CommonEntity;

    iget-object p2, p2, Lcom/hunantv/media/report/entity/CommonEntity;->snum1:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",video_type"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lcom/hunantv/media/report/entity/ErrorEntity;->common:Lcom/hunantv/media/report/entity/CommonEntity;

    iget-object p2, p2, Lcom/hunantv/media/report/entity/CommonEntity;->vtp:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ReportManager"

    invoke-static {p2, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p3, Lcom/hunantv/media/report/entity/ErrorEntity;->common:Lcom/hunantv/media/report/entity/CommonEntity;

    if-eqz p1, :cond_13

    const-string p1, "pes"

    invoke-interface {v1, p1, v0}, Lcom/hunantv/media/report/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p3, Lcom/hunantv/media/report/entity/ErrorEntity;->common:Lcom/hunantv/media/report/entity/CommonEntity;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/hunantv/media/report/entity/CommonEntity;->dsc:Ljava/lang/String;

    :cond_13
    invoke-direct {p0, p3}, Lcom/hunantv/media/report/a;->a(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hunantv/media/report/a;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/hunantv/media/report/a;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "1"

    invoke-direct {p0, v1, p1}, Lcom/hunantv/media/report/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public c()V
    .locals 4

    .line 1
    const-string v0, "ReportManager"

    const-string v1, "reportStop in."

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/report/a;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "1"

    iget-object v2, p0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/hunantv/media/report/ReportParams;->getEnd()Lcom/hunantv/media/report/ReportParams$End;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hunantv/media/report/ReportParams$End;->isInnerRetry()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "3"

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/hunantv/media/report/a$1;->b:[I

    iget-object v3, p0, Lcom/hunantv/media/report/a;->k:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v3}, Lcom/hunantv/media/report/ReportParams;->getEnd()Lcom/hunantv/media/report/ReportParams$End;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hunantv/media/report/ReportParams$End;->getTarget()Lcom/hunantv/media/report/ReportParams$End$Target;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "2"

    goto :goto_0

    :cond_2
    const-string v1, "1"

    :cond_3
    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v2}, Lcom/hunantv/media/report/a;->a(Ljava/lang/String;II)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "ReportManager"

    const-string v0, "reportStop out."

    invoke-static {p0, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/hunantv/media/report/a;->e:Ljava/lang/String;

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hunantv/media/report/a;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/hunantv/media/report/a;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/hunantv/media/report/a;->g:I

    const-string v1, "0"

    invoke-direct {p0, v1}, Lcom/hunantv/media/report/a;->d(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public e()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/hunantv/media/report/a;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "1"

    invoke-direct {p0, v1}, Lcom/hunantv/media/report/a;->d(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public f()V
    .locals 0

    .line 1
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/report/a;->e:Ljava/lang/String;

    return-object p0
.end method
