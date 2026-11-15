.class public final Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOfor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOnew;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "z1OoOfor"
.end annotation


# instance fields
.field public final z1OoOdo:Landroid/os/Handler;

.field public z1OoOif:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOfor;->z1OoOdo:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOfor;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOfor;->z1OoOif(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic z1OoOif(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOfor;->z1OoOif:J

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public final z1OoOdo(Ljava/lang/Runnable;)V
    .locals 4
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOfor;->z1OoOif:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xa

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOfor;->z1OoOdo:Landroid/os/Handler;

    new-instance v3, Lsyd;

    invoke-direct {v3, p0, p1}, Lsyd;-><init>(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOfor;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final z1OoOdo()Z
    .locals 1

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOdo$z1OoOfor;->z1OoOdo:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
