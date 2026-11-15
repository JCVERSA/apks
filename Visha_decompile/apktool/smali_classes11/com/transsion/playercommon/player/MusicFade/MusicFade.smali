.class public Lcom/transsion/playercommon/player/MusicFade/MusicFade;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/player/MusicFade/MusicFade$a;,
        Lcom/transsion/playercommon/player/MusicFade/MusicFade$FadeRunnable;
    }
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:J

.field public d:J

.field public e:Landroid/os/Handler;

.field public f:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MusicFade"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/playercommon/player/MusicFade/MusicFade;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/playercommon/player/MusicFade/MusicFade;->f:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/playercommon/player/MusicFade/MusicFade;->e:Landroid/os/Handler;

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/playercommon/player/MusicFade/MusicFade;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/player/MusicFade/MusicFade;->e:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public b(Lcom/transsion/playercommon/player/MusicFade/MusicFade$a;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/playercommon/player/MusicFade/MusicFade;->e:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-interface {p1, p0}, Lcom/transsion/playercommon/player/MusicFade/MusicFade$a;->a(F)V

    return-void
.end method

.method public c(FFJJIILcom/transsion/playercommon/player/MusicFade/MusicFade$a;)V
    .locals 14

    move-object v10, p0

    move-wide/from16 v11, p3

    move v1, p1

    iput v1, v10, Lcom/transsion/playercommon/player/MusicFade/MusicFade;->a:F

    move/from16 v2, p2

    iput v2, v10, Lcom/transsion/playercommon/player/MusicFade/MusicFade;->b:F

    move-wide/from16 v5, p5

    iput-wide v5, v10, Lcom/transsion/playercommon/player/MusicFade/MusicFade;->d:J

    iput-wide v11, v10, Lcom/transsion/playercommon/player/MusicFade/MusicFade;->c:J

    sub-int v13, p8, p7

    if-lez v13, :cond_0

    int-to-long v3, v13

    const-wide/16 v7, 0x5dc0

    cmp-long v0, v3, v7

    if-gez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v3, 0x1f4

    cmp-long v0, v11, v3

    if-gez v0, :cond_1

    return-void

    :cond_1
    const-wide/16 v8, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p9

    invoke-virtual/range {v0 .. v9}, Lcom/transsion/playercommon/player/MusicFade/MusicFade;->d(FFJJLcom/transsion/playercommon/player/MusicFade/MusicFade$a;J)V

    iget v1, v10, Lcom/transsion/playercommon/player/MusicFade/MusicFade;->b:F

    iget v2, v10, Lcom/transsion/playercommon/player/MusicFade/MusicFade;->a:F

    iget-wide v3, v10, Lcom/transsion/playercommon/player/MusicFade/MusicFade;->c:J

    iget-wide v5, v10, Lcom/transsion/playercommon/player/MusicFade/MusicFade;->d:J

    int-to-long v7, v13

    add-long/2addr v5, v7

    sub-long/2addr v5, v11

    sub-long v8, v7, v11

    move-object/from16 v7, p9

    invoke-virtual/range {v0 .. v9}, Lcom/transsion/playercommon/player/MusicFade/MusicFade;->d(FFJJLcom/transsion/playercommon/player/MusicFade/MusicFade$a;J)V

    return-void
.end method

.method public final d(FFJJLcom/transsion/playercommon/player/MusicFade/MusicFade$a;J)V
    .locals 11

    if-eqz p7, :cond_0

    new-instance v10, Lcom/transsion/playercommon/player/MusicFade/MusicFade$1;

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/transsion/playercommon/player/MusicFade/MusicFade$1;-><init>(Lcom/transsion/playercommon/player/MusicFade/MusicFade;FFJJLcom/transsion/playercommon/player/MusicFade/MusicFade$a;F)V

    move-object v0, p0

    iget-object v0, v0, Lcom/transsion/playercommon/player/MusicFade/MusicFade;->e:Landroid/os/Handler;

    move-wide/from16 v1, p8

    invoke-virtual {v0, v10, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
