.class public Lml7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lml7$b;
    }
.end annotation


# instance fields
.field public a:Landroid/os/CountDownTimer;

.field public b:J

.field public c:Z

.field public d:Lml7$b;


# direct methods
.method public constructor <init>(Lml7$b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lml7;->b:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lml7;->c:Z

    iput-object p1, p0, Lml7;->d:Lml7$b;

    return-void
.end method

.method public static synthetic b(Lml7;Z)Z
    .locals 0

    iput-boolean p1, p0, Lml7;->c:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lml7;->a:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lml7;->a:Landroid/os/CountDownTimer;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lml7;->c:Z

    return-void
.end method

.method public c()V
    .locals 7

    iget-object v0, p0, Lml7;->a:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    new-instance v0, Lml7$a;

    iget-wide v3, p0, Lml7;->b:J

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lml7$a;-><init>(Lml7;JJ)V

    iput-object v0, p0, Lml7;->a:Landroid/os/CountDownTimer;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lml7;->c:Z

    iget-object p0, p0, Lml7;->a:Landroid/os/CountDownTimer;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method
