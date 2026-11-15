.class public Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$a;,
        Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$b;,
        Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$Status;
    }
.end annotation


# instance fields
.field private a:Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$b;

.field private b:I

.field private c:I

.field private d:Landroid/os/Handler;

.field private e:Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$Status;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->b:I

    new-instance v1, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$a;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$a;-><init>(Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;)V

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->d:Landroid/os/Handler;

    sget-object v1, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$Status;->STATE_STOP:Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$Status;

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->e:Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$Status;

    iput p1, p0, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->b:I

    if-ge p1, v0, :cond_0

    iput v0, p0, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->b:I

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;)Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->a:Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$b;

    return-object p0
.end method

.method public static synthetic b(Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->c:I

    return v0
.end method

.method public static synthetic c(Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->c:I

    return p0
.end method

.method public static synthetic d(Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->b:I

    return p0
.end method

.method public static synthetic e(Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->d:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->d()V

    .line 3
    const-string v0, "ExTicker"

    const-string v1, "ExTicker start"

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$Status;->STATE_START:Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$Status;

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->e:Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$Status;

    .line 5
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->d:Landroid/os/Handler;

    const/high16 v0, 0x10000

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public a(Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$b;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->a:Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$b;

    return-void
.end method

.method public b()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->e:Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$Status;

    sget-object v1, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$Status;->STATE_START:Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$Status;

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    const-string v0, "ExTicker"

    const-string v1, "ExTicker pause"

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$Status;->STATE_PAUSE:Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$Status;

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->e:Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$Status;

    .line 5
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->d:Landroid/os/Handler;

    const/high16 v0, 0x10000

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->e:Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$Status;

    sget-object v1, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$Status;->STATE_PAUSE:Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$Status;

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    const-string v0, "ExTicker"

    const-string v1, "ExTicker resume"

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$Status;->STATE_START:Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$Status;

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->e:Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$Status;

    .line 5
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->d:Landroid/os/Handler;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->d:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public d()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->e:Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$Status;

    sget-object v1, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$Status;->STATE_STOP:Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$Status;

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    const-string v0, "ExTicker"

    const-string v2, "ExTicker stop"

    invoke-static {v0, v2}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->c:I

    .line 5
    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->e:Lcom/mgtv/thirdsdk/playcore/utils/ExTicker$Status;

    .line 6
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->d:Landroid/os/Handler;

    const/high16 v0, 0x10000

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public e()I
    .locals 0

    .line 2
    iget p0, p0, Lcom/mgtv/thirdsdk/playcore/utils/ExTicker;->b:I

    return p0
.end method
