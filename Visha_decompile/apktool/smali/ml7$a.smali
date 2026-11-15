.class public Lml7$a;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lml7;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lml7;


# direct methods
.method public constructor <init>(Lml7;JJ)V
    .locals 0

    iput-object p1, p0, Lml7$a;->a:Lml7;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lml7$a;->a:Lml7;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lml7;->b(Lml7;Z)Z

    iget-object p0, p0, Lml7$a;->a:Lml7;

    iget-object p0, p0, Lml7;->d:Lml7$b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lml7$b;->a()V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    iget-object p0, p0, Lml7$a;->a:Lml7;

    iget-object p0, p0, Lml7;->d:Lml7$b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lml7$b;->C(J)V

    :cond_0
    return-void
.end method
