.class Lcom/transsion/sdk/oneid/d$a;
.super Landroid/os/Handler;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/sdk/oneid/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/sdk/oneid/d;


# direct methods
.method constructor <init>(Lcom/transsion/sdk/oneid/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/sdk/oneid/d$a;->a:Lcom/transsion/sdk/oneid/d;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ReplyMessenger msg.what = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p1, Landroid/os/Message;->what:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/transsion/sdk/oneid/d$a;->a:Lcom/transsion/sdk/oneid/d;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/transsion/sdk/oneid/d;->a(Lcom/transsion/sdk/oneid/d;)Landroid/os/Handler$Callback;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/transsion/sdk/oneid/d$a;->a:Lcom/transsion/sdk/oneid/d;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/transsion/sdk/oneid/d;->a(Lcom/transsion/sdk/oneid/d;)Landroid/os/Handler$Callback;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object p1, p0, Lcom/transsion/sdk/oneid/d$a;->a:Lcom/transsion/sdk/oneid/d;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/transsion/sdk/oneid/d;->c(Lcom/transsion/sdk/oneid/d;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
