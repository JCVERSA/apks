.class Lcom/mbridge/msdk/interstitial/adapter/a$a;
.super Landroid/os/Handler;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/interstitial/adapter/a;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/interstitial/adapter/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/interstitial/adapter/a;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/interstitial/adapter/a$a;->a:Lcom/mbridge/msdk/interstitial/adapter/a;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/adapter/a$a;->a:Lcom/mbridge/msdk/interstitial/adapter/a;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/mbridge/msdk/interstitial/adapter/a;->a(Lcom/mbridge/msdk/interstitial/adapter/a;)Lcom/mbridge/msdk/interstitial/controller/a$b;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    instance-of v0, p1, Ljava/lang/String;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    check-cast p1, Ljava/lang/String;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/adapter/a$a;->a:Lcom/mbridge/msdk/interstitial/adapter/a;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/mbridge/msdk/interstitial/adapter/a;->a(Lcom/mbridge/msdk/interstitial/adapter/a;)Lcom/mbridge/msdk/interstitial/controller/a$b;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/adapter/a$a;->a:Lcom/mbridge/msdk/interstitial/adapter/a;

    .line 35
    .line 36
    invoke-static {v1}, Lcom/mbridge/msdk/interstitial/adapter/a;->b(Lcom/mbridge/msdk/interstitial/adapter/a;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {v0, v1, p1}, Lcom/mbridge/msdk/interstitial/controller/a$b;->a(ZLjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catch_0
    move-exception p1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/adapter/a$a;->a:Lcom/mbridge/msdk/interstitial/adapter/a;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/mbridge/msdk/interstitial/adapter/a;->a(Lcom/mbridge/msdk/interstitial/adapter/a;)Lcom/mbridge/msdk/interstitial/controller/a$b;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    instance-of v0, p1, Ljava/lang/String;

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    check-cast p1, Ljava/lang/String;

    .line 63
    .line 64
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/adapter/a$a;->a:Lcom/mbridge/msdk/interstitial/adapter/a;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/mbridge/msdk/interstitial/adapter/a;->a(Lcom/mbridge/msdk/interstitial/adapter/a;)Lcom/mbridge/msdk/interstitial/controller/a$b;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/adapter/a$a;->a:Lcom/mbridge/msdk/interstitial/adapter/a;

    .line 71
    .line 72
    invoke-static {v1}, Lcom/mbridge/msdk/interstitial/adapter/a;->b(Lcom/mbridge/msdk/interstitial/adapter/a;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    invoke-virtual {v0, v1, p1}, Lcom/mbridge/msdk/interstitial/controller/a$b;->b(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_1
    return-void
.end method
