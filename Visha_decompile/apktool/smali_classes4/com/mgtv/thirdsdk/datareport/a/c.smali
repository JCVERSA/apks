.class public Lcom/mgtv/thirdsdk/datareport/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final p:Ljava/lang/String; = "com.mgtv.thirdsdk.datareport.a.c"

.field private static q:I


# instance fields
.field protected a:Z

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:I

.field protected e:Ljava/lang/String;

.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;

.field protected j:Z

.field protected k:Z

.field protected l:Z

.field protected m:Z

.field protected n:Ljava/lang/String;

.field public o:Z

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Lcom/mgtv/thirdsdk/datareport/a/d;

.field private v:Lcom/mgtv/thirdsdk/datareport/a/b;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->a:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->c:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->d:I

    iput v2, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->f:I

    iput v0, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->g:I

    iput v2, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->h:I

    iput-boolean v2, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->j:Z

    iput-boolean v2, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->k:Z

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->l:Z

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->m:Z

    const-string v0, "vod"

    iput-object v0, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->n:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->o:Z

    iput-object v1, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->w:Ljava/lang/String;

    iput-object v1, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->x:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/thirdsdk/datareport/a/d;->a(Landroid/content/Context;)Lcom/mgtv/thirdsdk/datareport/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->u:Lcom/mgtv/thirdsdk/datareport/a/d;

    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->i:Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;

    iput-boolean v2, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->o:Z

    return-void
.end method

.method private a(ILjava/lang/String;I)V
    .locals 14

    move-object v0, p0

    .line 36
    iget-object v10, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->t:Ljava/lang/String;

    .line 37
    iget-object v1, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->i:Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;->isBeforeFirstFrame()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    iget-object v1, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->i:Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;

    invoke-interface {v1}, Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;->getTimeCostInfo()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$TimeCostInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$TimeCostInfo;->error_cost_ms:J

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 39
    :goto_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 40
    const-string v4, "tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "&sid=5&uuid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "&hc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "&du="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 41
    iget-object v1, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->w:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 42
    iget-object v1, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->w:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    :cond_1
    iget-object v1, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->i:Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;->getReportParams()Lcom/hunantv/media/report/ReportParams;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 44
    iget-object v1, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->i:Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;

    invoke-interface {v1}, Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;->getReportParams()Lcom/hunantv/media/report/ReportParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getProxyType()Lcom/hunantv/media/report/ReportParams$ProxyType;

    move-result-object v1

    sget-object v4, Lcom/hunantv/media/report/ReportParams$ProxyType;->ONLY_P2P:Lcom/hunantv/media/report/ReportParams$ProxyType;

    if-ne v1, v4, :cond_2

    const/4 v2, 0x1

    .line 45
    :cond_2
    iget-object v1, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->u:Lcom/mgtv/thirdsdk/datareport/a/d;

    invoke-virtual {v1, v2}, Lcom/mgtv/thirdsdk/datareport/a/d;->a(Z)V

    .line 46
    iget-object v1, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->u:Lcom/mgtv/thirdsdk/datareport/a/d;

    iget v4, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->h:I

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iget v7, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->f:I

    iget v8, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->g:I

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/a/c;->a()I

    move-result v12

    const/4 v13, 0x2

    const/4 v2, 0x3

    const-string v9, ""

    const/4 v11, 0x0

    move-object v0, v1

    move v1, v2

    move v2, p1

    move v3, v4

    move-object/from16 v4, p2

    move/from16 v6, p3

    invoke-virtual/range {v0 .. v13}, Lcom/mgtv/thirdsdk/datareport/a/d;->a(IIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZII)V

    return-void
.end method

.method private a(ILjava/lang/String;IIJ)V
    .locals 8

    .line 60
    const-string v3, ""

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(ILjava/lang/String;Ljava/lang/String;IIJ)V

    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;IIJ)V
    .locals 17

    move-object/from16 v0, p0

    .line 61
    iget-boolean v1, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->a:Z

    if-nez v1, :cond_2

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 63
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 64
    const-string v2, "tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&sid=4&uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&hc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move/from16 v2, p5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "&du="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-wide/from16 v2, p6

    .line 65
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 66
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 67
    const-string v2, "&errorMsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    :cond_0
    iget-object v2, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->w:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 69
    iget-object v2, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    :cond_1
    iget-object v2, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->u:Lcom/mgtv/thirdsdk/datareport/a/d;

    sget-boolean v3, Lcom/hunantv/imgo/util/d;->a:Z

    invoke-virtual {v2, v3}, Lcom/mgtv/thirdsdk/datareport/a/d;->a(Z)V

    .line 71
    iget-object v3, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->u:Lcom/mgtv/thirdsdk/datareport/a/d;

    iget v6, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->h:I

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    iget v10, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->f:I

    iget v11, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->g:I

    iget-object v12, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->s:Ljava/lang/String;

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/mgtv/thirdsdk/datareport/a/c;->a()I

    move-result v15

    const/16 v16, 0x1

    const/4 v4, 0x2

    const/4 v14, 0x0

    move/from16 v5, p1

    move-object/from16 v7, p2

    move/from16 v9, p4

    .line 73
    invoke-virtual/range {v3 .. v16}, Lcom/mgtv/thirdsdk/datareport/a/d;->a(IIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZII)V

    :cond_2
    const/4 v1, 0x1

    .line 74
    iput-boolean v1, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->a:Z

    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/Throwable;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p6

    .line 28
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 29
    const-string v3, "&hc="

    const-string v4, "&sid=2&uuid="

    if-nez p8, :cond_0

    .line 30
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "&errormsg="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    :goto_0
    iget-object v1, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->u:Lcom/mgtv/thirdsdk/datareport/a/d;

    sget-boolean v3, Lcom/hunantv/imgo/util/d;->a:Z

    invoke-virtual {v1, v3}, Lcom/mgtv/thirdsdk/datareport/a/d;->a(Z)V

    .line 35
    iget-object v4, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->u:Lcom/mgtv/thirdsdk/datareport/a/d;

    iget v7, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->h:I

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    sget v11, Lcom/mgtv/thirdsdk/datareport/a/c;->q:I

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/4 v5, 0x1

    const/4 v15, 0x0

    move/from16 v6, p1

    move-object/from16 v8, p2

    move/from16 v10, p5

    move/from16 v12, p7

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-virtual/range {v4 .. v17}, Lcom/mgtv/thirdsdk/datareport/a/d;->a(IIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZII)V

    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJ)V
    .locals 18

    move-object/from16 v0, p0

    .line 21
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 22
    const-string v2, "tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&sid=2&uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&hc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move/from16 v2, p6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "&du="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-wide/from16 v2, p7

    .line 23
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 24
    iget-object v2, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->w:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 25
    iget-object v2, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    :cond_0
    iget-object v2, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->u:Lcom/mgtv/thirdsdk/datareport/a/d;

    sget-boolean v3, Lcom/hunantv/imgo/util/d;->a:Z

    invoke-virtual {v2, v3}, Lcom/mgtv/thirdsdk/datareport/a/d;->a(Z)V

    .line 27
    iget-object v4, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->u:Lcom/mgtv/thirdsdk/datareport/a/d;

    iget v7, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->h:I

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    iget v11, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->f:I

    iget v12, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->g:I

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/4 v5, 0x1

    const/4 v15, 0x0

    move/from16 v6, p1

    move-object/from16 v8, p2

    move/from16 v10, p5

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-virtual/range {v4 .. v17}, Lcom/mgtv/thirdsdk/datareport/a/d;->a(IIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZII)V

    return-void
.end method

.method private a(Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;ILjava/lang/String;ILjava/lang/String;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz p4, :cond_0

    move-object/from16 v13, p4

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    .line 47
    iget-object v2, v2, Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;->info:Ljava/lang/String;

    :goto_0
    move-object v13, v2

    goto :goto_1

    .line 48
    :cond_1
    const-string v2, ""

    goto :goto_0

    :goto_1
    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 49
    iget v1, v1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    move v11, v1

    goto :goto_2

    :cond_2
    move v11, v2

    .line 50
    :goto_2
    iget-object v1, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->i:Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;->isBeforeFirstFrame()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 51
    iget-object v1, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->i:Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;

    invoke-interface {v1}, Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;->getTimeCostInfo()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$TimeCostInfo;

    move-result-object v1

    iget-wide v3, v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$TimeCostInfo;->error_cost_ms:J

    goto :goto_3

    :cond_3
    const-wide/16 v3, 0x0

    .line 52
    :goto_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 53
    const-string v5, "tid="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "&sid=5&uuid="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "&hc="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "&du="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 54
    iget-object v3, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->w:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 55
    iget-object v3, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->w:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    :cond_4
    iget-object v3, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->i:Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    invoke-interface {v3}, Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;->getReportParams()Lcom/hunantv/media/report/ReportParams;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 57
    iget-object v3, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->i:Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;

    invoke-interface {v3}, Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;->getReportParams()Lcom/hunantv/media/report/ReportParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hunantv/media/report/ReportParams;->getProxyType()Lcom/hunantv/media/report/ReportParams$ProxyType;

    move-result-object v3

    sget-object v5, Lcom/hunantv/media/report/ReportParams$ProxyType;->ONLY_P2P:Lcom/hunantv/media/report/ReportParams$ProxyType;

    if-ne v3, v5, :cond_5

    goto :goto_4

    :cond_5
    move v2, v4

    :goto_4
    move v4, v2

    .line 58
    :cond_6
    iget-object v2, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->u:Lcom/mgtv/thirdsdk/datareport/a/d;

    invoke-virtual {v2, v4}, Lcom/mgtv/thirdsdk/datareport/a/d;->a(Z)V

    .line 59
    iget-object v3, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->u:Lcom/mgtv/thirdsdk/datareport/a/d;

    iget v6, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->h:I

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/mgtv/thirdsdk/datareport/a/c;->a()I

    move-result v15

    const/16 v16, 0x2

    const/4 v4, 0x3

    const-string v12, ""

    const/4 v14, 0x0

    move/from16 v5, p5

    move-object/from16 v7, p6

    move/from16 v9, p7

    move/from16 v10, p3

    invoke-virtual/range {v3 .. v16}, Lcom/mgtv/thirdsdk/datareport/a/d;->a(IIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZII)V

    return-void
.end method

.method private a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;II)V
    .locals 18

    move-object/from16 v0, p0

    .line 117
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 118
    const-string v2, "&sid=4&uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&hc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move/from16 v2, p7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 119
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    const-string v2, "&errorMsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v2, p5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    :cond_0
    iget-object v2, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->u:Lcom/mgtv/thirdsdk/datareport/a/d;

    sget-boolean v3, Lcom/hunantv/imgo/util/d;->a:Z

    invoke-virtual {v2, v3}, Lcom/mgtv/thirdsdk/datareport/a/d;->a(Z)V

    .line 122
    iget-object v4, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->u:Lcom/mgtv/thirdsdk/datareport/a/d;

    iget v7, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->h:I

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    sget v11, Lcom/mgtv/thirdsdk/datareport/a/c;->q:I

    const/16 v16, 0x6

    const/16 v17, 0x1

    const/4 v5, 0x2

    const-string v13, ""

    const/4 v15, 0x0

    move/from16 v6, p3

    move-object/from16 v8, p4

    move/from16 v10, p6

    move/from16 v12, p2

    move-object/from16 v14, p1

    invoke-virtual/range {v4 .. v17}, Lcom/mgtv/thirdsdk/datareport/a/d;->a(IIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZII)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;IILjava/lang/String;Ljava/lang/String;IIJ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-eqz v1, :cond_0

    .line 75
    iget v1, v1, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    :goto_0
    move v10, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 76
    :goto_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 77
    const-string v2, "tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&sid=4&uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&hc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move/from16 v2, p8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "&du="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-wide/from16 v2, p9

    .line 78
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 79
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 80
    const-string v2, "&errorMsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v2, p6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    :cond_1
    iget-object v2, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->w:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 82
    iget-object v2, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    :cond_2
    iget-object v2, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->u:Lcom/mgtv/thirdsdk/datareport/a/d;

    sget-boolean v3, Lcom/hunantv/imgo/util/d;->a:Z

    invoke-virtual {v2, v3}, Lcom/mgtv/thirdsdk/datareport/a/d;->a(Z)V

    .line 84
    iget-object v2, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->u:Lcom/mgtv/thirdsdk/datareport/a/d;

    iget v5, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->h:I

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v11, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->s:Ljava/lang/String;

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/mgtv/thirdsdk/datareport/a/c;->a()I

    move-result v14

    const/4 v15, 0x1

    const/4 v3, 0x2

    const/4 v13, 0x0

    move/from16 v4, p4

    move-object/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p3

    move-object/from16 v12, p1

    .line 86
    invoke-virtual/range {v2 .. v15}, Lcom/mgtv/thirdsdk/datareport/a/d;->a(IIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZII)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;ZILcom/hunantv/imgo/net/entity/b;)V
    .locals 10

    if-nez p5, :cond_0

    return-void

    .line 16
    :cond_0
    const-string v1, "02.100001"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17
    const-string v4, "22.2000"

    iget-wide v8, p5, Lcom/hunantv/imgo/net/entity/b;->a:J

    const/4 v3, -0x1

    move-object v2, p0

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v9}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(ILjava/lang/String;Ljava/lang/String;IIJ)V

    goto :goto_0

    .line 18
    :cond_1
    const-string v1, "02.100003"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 19
    const-string v4, "204000"

    iget-wide v7, p5, Lcom/hunantv/imgo/net/entity/b;->a:J

    const/4 v3, -0x1

    move-object v2, p0

    move v5, p3

    move v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(ILjava/lang/String;IIJ)V

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    .line 20
    iget-wide v5, p5, Lcom/hunantv/imgo/net/entity/b;->a:J

    move-object v0, p0

    move-object v2, p1

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(ILjava/lang/String;IIJ)V

    :goto_0
    return-void
.end method

.method private c(II)V
    .locals 16

    move-object/from16 v0, p0

    .line 6
    iget-object v11, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->t:Ljava/lang/String;

    .line 7
    iget-object v1, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->i:Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;

    if-eqz v1, :cond_0

    .line 8
    invoke-interface {v1}, Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;->getTimeCostInfo()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$TimeCostInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView$TimeCostInfo;->first_frame_cost_ms:J

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 9
    :goto_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 10
    const-string v4, "tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "&sid=5&uuid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "&hc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "&du="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 11
    iget-object v1, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->w:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 12
    iget-object v1, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->w:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    :cond_1
    iget-object v1, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->i:Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;->getReportParams()Lcom/hunantv/media/report/ReportParams;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 14
    iget-object v1, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->i:Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;

    invoke-interface {v1}, Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;->getReportParams()Lcom/hunantv/media/report/ReportParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hunantv/media/report/ReportParams;->getProxyType()Lcom/hunantv/media/report/ReportParams$ProxyType;

    move-result-object v1

    sget-object v5, Lcom/hunantv/media/report/ReportParams$ProxyType;->ONLY_P2P:Lcom/hunantv/media/report/ReportParams$ProxyType;

    if-ne v1, v5, :cond_2

    move v4, v2

    :cond_2
    move v1, v4

    .line 15
    sget-object v4, Lcom/mgtv/thirdsdk/datareport/a/c;->p:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendCdn3:l=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/hunantv/imgo/log/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 16
    iget-object v2, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->u:Lcom/mgtv/thirdsdk/datareport/a/d;

    iget v4, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->h:I

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iget v8, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->f:I

    iget v9, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->g:I

    iget-object v10, v0, Lcom/mgtv/thirdsdk/datareport/a/c;->s:Ljava/lang/String;

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/mgtv/thirdsdk/datareport/a/c;->a()I

    move-result v13

    const/4 v15, 0x2

    const/4 v3, 0x3

    const/4 v5, 0x0

    .line 18
    const-string v7, ""

    const/4 v12, 0x0

    move-object v0, v2

    move v2, v3

    move v3, v5

    move-object v5, v7

    move/from16 v7, p1

    move/from16 v14, p2

    invoke-virtual/range {v0 .. v15}, Lcom/mgtv/thirdsdk/datareport/a/d;->a(ZIIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZIII)V

    return-void
.end method

.method private h()V
    .locals 11

    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->l:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/a/c;->g()V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->i:Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;->getReportParams()Lcom/hunantv/media/report/ReportParams;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->i:Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;->getReportParams()Lcom/hunantv/media/report/ReportParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getProxyType()Lcom/hunantv/media/report/ReportParams$ProxyType;

    move-result-object v0

    sget-object v2, Lcom/hunantv/media/report/ReportParams$ProxyType;->ONLY_P2P:Lcom/hunantv/media/report/ReportParams$ProxyType;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    new-instance v0, Lcom/mgtv/thirdsdk/datareport/a/b;

    iget-object v4, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->t:Ljava/lang/String;

    iget v6, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->h:I

    iget v7, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->g:I

    iget-object v8, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->i:Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/a/c;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/mgtv/thirdsdk/datareport/a/b;-><init>(ZLjava/lang/String;ZIILcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->v:Lcom/mgtv/thirdsdk/datareport/a/b;

    iget-boolean v2, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->o:Z

    iput-boolean v2, v0, Lcom/mgtv/thirdsdk/datareport/a/b;->b:Z

    iget-object v2, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->x:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mgtv/thirdsdk/datareport/a/b;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->v:Lcom/mgtv/thirdsdk/datareport/a/b;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/datareport/a/b;->d()V

    iput-boolean v1, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->l:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->i:Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;->isImgoSourceModuleOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->i:Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;->isAccurateSeekEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x20

    return p0

    :cond_0
    const/16 p0, 0x1e

    return p0

    .line 8
    :cond_1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->i:Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;->isAccurateSeekEnable()Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x1f

    return p0

    :cond_2
    return v1
.end method

.method public a(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->h:I

    return-void
.end method

.method public a(II)V
    .locals 2

    .line 9
    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->k:Z

    if-eqz v0, :cond_0

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(ILjava/lang/String;I)V

    .line 11
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->k:Z

    :cond_0
    return-void
.end method

.method public a(IILjava/lang/String;)V
    .locals 4

    .line 12
    iget-object p3, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->v:Lcom/mgtv/thirdsdk/datareport/a/b;

    const/4 v0, 0x1

    const-string v1, "."

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->i:Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;->isBeforeFirstFrame()Z

    move-result p3

    if-nez p3, :cond_0

    .line 13
    iget-object p3, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->v:Lcom/mgtv/thirdsdk/datareport/a/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "9."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/mgtv/thirdsdk/datareport/a/b;->a(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/a/c;->g()V

    .line 15
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->l:Z

    .line 16
    :cond_0
    iget-boolean p3, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->k:Z

    if-eqz p3, :cond_1

    .line 17
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3."

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    invoke-direct {p0, p2, p1, v0}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(ILjava/lang/String;I)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->k:Z

    :cond_1
    return-void
.end method

.method public a(ILcom/hunantv/imgo/net/entity/b;)V
    .locals 7

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/16 v4, 0xc8

    .line 92
    iget-wide v5, p2, Lcom/hunantv/imgo/net/entity/b;->a:J

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(ILjava/lang/String;IIJ)V

    const/4 p1, 0x1

    .line 93
    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->k:Z

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/Throwable;ZLcom/hunantv/imgo/net/entity/b;)V
    .locals 8

    if-nez p5, :cond_0

    return-void

    .line 123
    :cond_0
    const-string p2, "201"

    if-eqz p3, :cond_3

    .line 124
    instance-of v0, p3, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_1

    if-nez p4, :cond_4

    const/4 v4, 0x1

    .line 125
    iget-wide v6, p5, Lcom/hunantv/imgo/net/entity/b;->a:J

    const/4 v2, -0x1

    const-string v3, "203000"

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v1 .. v7}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(ILjava/lang/String;IIJ)V

    goto :goto_0

    .line 126
    :cond_1
    instance-of p3, p3, Lcom/mgtv/task/http/HttpFormatException;

    if-eqz p3, :cond_2

    const/4 v3, 0x1

    .line 127
    iget-wide v5, p5, Lcom/hunantv/imgo/net/entity/b;->a:J

    const/4 v1, -0x1

    const-string v2, "202000"

    move-object v0, p0

    move v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(ILjava/lang/String;IIJ)V

    goto :goto_0

    :cond_2
    if-nez p4, :cond_4

    .line 128
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    iget-wide v5, p5, Lcom/hunantv/imgo/net/entity/b;->a:J

    const/4 v1, -0x1

    move-object v0, p0

    move v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(ILjava/lang/String;IIJ)V

    goto :goto_0

    :cond_3
    if-nez p4, :cond_4

    .line 129
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    iget-wide v5, p5, Lcom/hunantv/imgo/net/entity/b;->a:J

    const/4 v1, -0x1

    move-object v0, p0

    move v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(ILjava/lang/String;IIJ)V

    :cond_4
    :goto_0
    return-void
.end method

.method public a(ILjava/lang/String;ZLjava/lang/Throwable;I)V
    .locals 9

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "101"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p4, :cond_1

    .line 96
    instance-of v2, p4, Ljava/net/SocketTimeoutException;

    const-string v3, "103000"

    if-eqz v2, :cond_0

    :goto_0
    move-object v2, v3

    goto :goto_4

    .line 97
    :cond_0
    instance-of v2, p4, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_2

    .line 98
    const-string v0, "103001"

    :cond_1
    :goto_1
    move-object v2, v0

    goto :goto_4

    .line 99
    :cond_2
    instance-of v2, p4, Ljava/net/ConnectException;

    if-eqz v2, :cond_3

    goto :goto_0

    .line 100
    :cond_3
    instance-of v2, p4, Lorg/json/JSONException;

    if-nez v2, :cond_9

    instance-of v2, p4, Lcom/mgtv/task/http/HttpFormatException;

    if-eqz v2, :cond_4

    goto :goto_3

    .line 101
    :cond_4
    instance-of v2, p4, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_5

    .line 102
    const-string v0, "104000.1"

    goto :goto_1

    .line 103
    :cond_5
    instance-of v2, p4, Ljavax/net/ssl/SSLException;

    if-eqz v2, :cond_6

    .line 104
    const-string v0, "104000.2"

    goto :goto_1

    .line 105
    :cond_6
    instance-of v2, p4, Ljava/io/InterruptedIOException;

    if-nez v2, :cond_8

    instance-of v2, p4, Ljava/lang/InterruptedException;

    if-eqz v2, :cond_7

    goto :goto_2

    .line 106
    :cond_7
    instance-of v2, p4, Ljava/io/IOException;

    if-eqz v2, :cond_1

    .line 107
    const-string v0, "104000"

    goto :goto_1

    :cond_8
    :goto_2
    const/4 v1, 0x0

    goto :goto_1

    .line 108
    :cond_9
    :goto_3
    const-string v0, "102000"

    goto :goto_1

    :goto_4
    if-eqz v1, :cond_a

    const/4 v1, -0x1

    .line 109
    const-string v3, ""

    move-object v0, p0

    move-object v4, p2

    move v5, p3

    move v6, p1

    move v7, p5

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/Throwable;)V

    :cond_a
    return-void
.end method

.method public a(Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;ILjava/lang/String;IIZ)V
    .locals 9

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p5

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p6

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v6, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;ILjava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public a(Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;->info:Ljava/lang/String;

    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->t:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->t:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 9

    const/16 v6, 0xc8

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 90
    const-string v2, ""

    const-string v3, ""

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p1

    move v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 2

    .line 19
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->v:Lcom/mgtv/thirdsdk/datareport/a/b;

    if-eqz p0, :cond_0

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "9."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/thirdsdk/datareport/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 10

    .line 110
    const-string v0, "201"

    if-eqz p5, :cond_2

    .line 111
    instance-of v1, p5, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_0

    .line 112
    const-string v6, "203000"

    const/4 v8, 0x1

    const/4 v5, -0x1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v7, p4

    move v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 113
    :cond_0
    instance-of p5, p5, Lcom/mgtv/task/http/HttpFormatException;

    if-eqz p5, :cond_1

    .line 114
    const-string v5, "202000"

    const/4 v7, 0x1

    const/4 v4, -0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v6, p4

    move v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 115
    :cond_1
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    const/4 v4, -0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v6, p4

    move v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 116
    :cond_2
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    const/4 v4, -0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v6, p4

    move v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;II)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;IILjava/lang/Throwable;)V
    .locals 9

    .line 94
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    const/16 v6, 0xc8

    const/4 v1, 0x0

    const-string v3, ""

    move-object v0, p0

    move-object v4, p1

    move v7, p2

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;IILcom/hunantv/imgo/net/entity/b;)V
    .locals 11

    move-object/from16 v0, p5

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v8, 0xc8

    .line 138
    iget-wide v9, v0, Lcom/hunantv/imgo/net/entity/b;->a:J

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v10}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(Ljava/lang/String;Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;IILjava/lang/String;Ljava/lang/String;IIJ)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;ILjava/lang/String;Ljava/lang/String;ZILcom/hunantv/imgo/net/entity/b;)V
    .locals 13

    move-object/from16 v5, p4

    move-object/from16 v0, p8

    if-nez v0, :cond_0

    return-void

    .line 133
    :cond_0
    const-string v1, "02.100001"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    const-string v7, "22.2000"

    iget-wide v11, v0, Lcom/hunantv/imgo/net/entity/b;->a:J

    const/4 v6, -0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v2 .. v12}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(Ljava/lang/String;Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;IILjava/lang/String;Ljava/lang/String;IIJ)V

    goto :goto_0

    .line 135
    :cond_1
    const-string v1, "02.100003"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 136
    const-string v8, ""

    iget-wide v11, v0, Lcom/hunantv/imgo/net/entity/b;->a:J

    const/4 v6, -0x1

    const-string v7, "204000"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v2 .. v12}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(Ljava/lang/String;Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;IILjava/lang/String;Ljava/lang/String;IIJ)V

    goto :goto_0

    .line 137
    :cond_2
    const-string v6, ""

    iget-wide v9, v0, Lcom/hunantv/imgo/net/entity/b;->a:J

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move-object/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v10}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(Ljava/lang/String;Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;IILjava/lang/String;Ljava/lang/String;IIJ)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/hunantv/imgo/net/entity/b;)V
    .locals 7

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/16 v4, 0xc8

    .line 130
    iget-wide v5, p2, Lcom/hunantv/imgo/net/entity/b;->a:J

    const/4 v1, -0x1

    const-string v2, "204000"

    const/4 v3, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(ILjava/lang/String;IIJ)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILcom/hunantv/imgo/net/entity/b;)V
    .locals 7

    .line 131
    iget v0, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->d:I

    if-nez p4, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move-object v6, p4

    .line 132
    invoke-direct/range {v1 .. v6}, Lcom/mgtv/thirdsdk/datareport/a/c;->b(Ljava/lang/String;Ljava/lang/String;ZILcom/hunantv/imgo/net/entity/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/hunantv/imgo/net/entity/b;)V
    .locals 9

    if-nez p3, :cond_0

    return-void

    .line 89
    :cond_0
    iget-object v3, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->s:Ljava/lang/String;

    iget-object v4, p3, Lcom/hunantv/imgo/net/entity/b;->b:Ljava/lang/String;

    const/16 v6, 0xc8

    iget-wide v7, p3, Lcom/hunantv/imgo/net/entity/b;->a:J

    const/4 v1, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJ)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZILcom/hunantv/imgo/net/entity/b;)V
    .locals 9

    if-nez p5, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object v4, p5, Lcom/hunantv/imgo/net/entity/b;->b:Ljava/lang/String;

    iget-wide v7, p5, Lcom/hunantv/imgo/net/entity/b;->a:J

    const/4 v1, -0x1

    const-string v3, ""

    move-object v0, p0

    move-object v2, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJ)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->j:Z

    return-void
.end method

.method public a(ZLcom/hunantv/imgo/net/entity/b;)V
    .locals 10

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 87
    iget-object v3, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->s:Ljava/lang/String;

    iget-object v4, p2, Lcom/hunantv/imgo/net/entity/b;->b:Ljava/lang/String;

    const/16 v6, 0xc8

    iget-wide v7, p2, Lcom/hunantv/imgo/net/entity/b;->a:J

    const/4 v2, 0x0

    const-string v5, "105000"

    const/4 v9, 0x1

    move-object v0, p0

    move v1, v2

    move-object v2, v5

    move v5, v9

    invoke-direct/range {v0 .. v8}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJ)V

    goto :goto_0

    .line 88
    :cond_1
    iget-object v4, p2, Lcom/hunantv/imgo/net/entity/b;->b:Ljava/lang/String;

    const/16 v6, 0xc8

    iget-wide v7, p2, Lcom/hunantv/imgo/net/entity/b;->a:J

    const/4 v2, 0x0

    const-string v3, "102000"

    const-string v5, ""

    const/4 v9, 0x1

    move-object v0, p0

    move v1, v2

    move-object v2, v3

    move-object v3, v5

    move v5, v9

    invoke-direct/range {v0 .. v8}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJ)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 0

    .line 4
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/a/c;->f()V

    .line 5
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/a/c;->g()V

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->g:I

    return-void
.end method

.method public b(II)V
    .locals 1

    .line 6
    sget-object p1, Lcom/mgtv/thirdsdk/datareport/a/c;->p:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isDispatcherOk:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->k:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/hunantv/imgo/log/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 7
    iget-boolean p1, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->k:Z

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->i:Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;

    if-eqz p1, :cond_0

    .line 9
    invoke-interface {p1}, Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;->isHardware()Z

    move-result p1

    xor-int/2addr p1, v0

    goto :goto_0

    :cond_0
    move p1, v0

    .line 10
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/mgtv/thirdsdk/datareport/a/c;->c(II)V

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->k:Z

    .line 12
    :cond_1
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/datareport/a/c;->h()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->e:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 8

    const/4 v6, 0x1

    const/16 v7, 0xc8

    const/4 v3, 0x0

    .line 13
    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;II)V

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->k:Z

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;ILcom/hunantv/imgo/net/entity/b;)V
    .locals 6

    if-nez p4, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/mgtv/thirdsdk/datareport/a/c;->b(Ljava/lang/String;Ljava/lang/String;ZILcom/hunantv/imgo/net/entity/b;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->k:Z

    return-void
.end method

.method public c()V
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/a/c;->f()V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(Z)V

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->f:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->r:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->a:Z

    return-void
.end method

.method public d()V
    .locals 11

    .line 8
    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->j:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->l:Z

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->v:Lcom/mgtv/thirdsdk/datareport/a/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/a/c;->g()V

    .line 11
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->i:Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;->getReportParams()Lcom/hunantv/media/report/ReportParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->i:Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;->getReportParams()Lcom/hunantv/media/report/ReportParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/media/report/ReportParams;->getProxyType()Lcom/hunantv/media/report/ReportParams$ProxyType;

    move-result-object v0

    sget-object v2, Lcom/hunantv/media/report/ReportParams$ProxyType;->ONLY_P2P:Lcom/hunantv/media/report/ReportParams$ProxyType;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    .line 13
    :goto_1
    new-instance v0, Lcom/mgtv/thirdsdk/datareport/a/b;

    iget-object v4, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->t:Ljava/lang/String;

    iget v6, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->h:I

    iget v7, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->g:I

    iget-object v8, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->i:Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;

    .line 14
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/a/c;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/mgtv/thirdsdk/datareport/a/b;-><init>(ZLjava/lang/String;ZIILcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->v:Lcom/mgtv/thirdsdk/datareport/a/b;

    .line 15
    iget-boolean v2, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->o:Z

    iput-boolean v2, v0, Lcom/mgtv/thirdsdk/datareport/a/b;->b:Z

    .line 16
    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/datareport/a/b;->d()V

    .line 17
    iput-boolean v1, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->l:Z

    .line 18
    :cond_2
    invoke-virtual {p0, v1}, Lcom/mgtv/thirdsdk/datareport/a/c;->a(Z)V

    :cond_3
    return-void
.end method

.method public d(I)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->v:Lcom/mgtv/thirdsdk/datareport/a/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->i:Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;->isBeforeFirstFrame()Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->v:Lcom/mgtv/thirdsdk/datareport/a/b;

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/a/b;->e()V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->s:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 2
    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->o:Z

    .line 3
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->v:Lcom/mgtv/thirdsdk/datareport/a/b;

    if-eqz v0, :cond_0

    .line 4
    iput-boolean p1, v0, Lcom/mgtv/thirdsdk/datareport/a/b;->b:Z

    .line 5
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->x:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/mgtv/thirdsdk/datareport/a/b;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->v:Lcom/mgtv/thirdsdk/datareport/a/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/datareport/a/a;->a()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->v:Lcom/mgtv/thirdsdk/datareport/a/b;

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->c:Ljava/lang/String;

    return-void
.end method

.method public f()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->v:Lcom/mgtv/thirdsdk/datareport/a/b;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/datareport/a/b;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->l:Z

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->b:Ljava/lang/String;

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->v:Lcom/mgtv/thirdsdk/datareport/a/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/datareport/a/a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgtv/thirdsdk/datareport/a/c;->v:Lcom/mgtv/thirdsdk/datareport/a/b;

    :cond_0
    return-void
.end method
