.class public Lo9d$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo9d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo9d;


# direct methods
.method public constructor <init>(Lo9d;)V
    .locals 0

    iput-object p1, p0, Lo9d$a;->a:Lo9d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReplyMessenger msg.what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lp6d;->i(Ljava/lang/Object;)V

    iget-object v0, p0, Lo9d$a;->a:Lo9d;

    invoke-static {v0}, Lo9d;->a(Lo9d;)Landroid/os/Handler$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo9d$a;->a:Lo9d;

    invoke-static {v0}, Lo9d;->a(Lo9d;)Landroid/os/Handler$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    :cond_0
    iget-object p0, p0, Lo9d$a;->a:Lo9d;

    invoke-static {p0}, Lo9d;->c(Lo9d;)V

    return-void
.end method
