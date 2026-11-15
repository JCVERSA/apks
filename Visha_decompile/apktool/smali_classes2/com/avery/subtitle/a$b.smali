.class public Lcom/avery/subtitle/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avery/subtitle/a;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/avery/subtitle/a;


# direct methods
.method public constructor <init>(Lcom/avery/subtitle/a;)V
    .locals 0

    iput-object p1, p0, Lcom/avery/subtitle/a$b;->b:Lcom/avery/subtitle/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget-object p1, p0, Lcom/avery/subtitle/a$b;->b:Lcom/avery/subtitle/a;

    invoke-static {p1}, Lcom/avery/subtitle/a;->e(Lcom/avery/subtitle/a;)Lcom/transsion/playercommon/player/b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/avery/subtitle/a$b;->b:Lcom/avery/subtitle/a;

    invoke-static {p1}, Lcom/avery/subtitle/a;->e(Lcom/avery/subtitle/a;)Lcom/transsion/playercommon/player/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/playercommon/player/b;->a()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/avery/subtitle/a$b;->b:Lcom/avery/subtitle/a;

    invoke-static {p1}, Lcom/avery/subtitle/a;->e(Lcom/avery/subtitle/a;)Lcom/transsion/playercommon/player/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/playercommon/player/b;->getCurrentPosition()I

    move-result p1

    int-to-long v0, p1

    iget-object p1, p0, Lcom/avery/subtitle/a$b;->b:Lcom/avery/subtitle/a;

    invoke-static {p1}, Lcom/avery/subtitle/a;->f(Lcom/avery/subtitle/a;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object p1, p0, Lcom/avery/subtitle/a$b;->b:Lcom/avery/subtitle/a;

    invoke-static {p1}, Lcom/avery/subtitle/a;->a(Lcom/avery/subtitle/a;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lv4a;->a(JLjava/util/List;)Lm2a;

    move-result-object p1

    iget-object v2, p0, Lcom/avery/subtitle/a$b;->b:Lcom/avery/subtitle/a;

    invoke-static {v2, p1}, Lcom/avery/subtitle/a;->g(Lcom/avery/subtitle/a;Lm2a;)V

    if-eqz p1, :cond_0

    iget-object p1, p1, Lm2a;->c:Lnna;

    iget p1, p1, Lnna;->a:I

    int-to-long v2, p1

    sub-long/2addr v2, v0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x64

    :goto_0
    long-to-float p1, v2

    iget-object v0, p0, Lcom/avery/subtitle/a$b;->b:Lcom/avery/subtitle/a;

    invoke-static {v0}, Lcom/avery/subtitle/a;->h(Lcom/avery/subtitle/a;)F

    move-result v0

    div-float/2addr p1, v0

    float-to-long v0, p1

    iget-object p1, p0, Lcom/avery/subtitle/a$b;->b:Lcom/avery/subtitle/a;

    invoke-static {p1}, Lcom/avery/subtitle/a;->i(Lcom/avery/subtitle/a;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/avery/subtitle/a$b;->b:Lcom/avery/subtitle/a;

    invoke-static {p0}, Lcom/avery/subtitle/a;->i(Lcom/avery/subtitle/a;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x888

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
