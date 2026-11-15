.class public final Lcom/cloud/h5update/download/DownloadTask$a;
.super Landroid/os/Handler;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/h5update/download/DownloadTask;-><init>(Lcom/cloud/h5update/bean/DownloadEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/h5update/download/DownloadTask;


# direct methods
.method constructor <init>(Lcom/cloud/h5update/download/DownloadTask;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/h5update/download/DownloadTask$a;->a:Lcom/cloud/h5update/download/DownloadTask;

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
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget p1, p1, Landroid/os/Message;->what:I

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :pswitch_0
    iget-object p1, p0, Lcom/cloud/h5update/download/DownloadTask$a;->a:Lcom/cloud/h5update/download/DownloadTask;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/cloud/h5update/download/DownloadTask;->access$getMListener$p(Lcom/cloud/h5update/download/DownloadTask;)Lcom/cloud/h5update/download/a;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/cloud/h5update/download/DownloadTask$a;->a:Lcom/cloud/h5update/download/DownloadTask;

    .line 21
    .line 22
    invoke-interface {p1, v0}, Lcom/cloud/h5update/download/a;->e(Lcom/cloud/h5update/download/DownloadTask;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :pswitch_1
    iget-object p1, p0, Lcom/cloud/h5update/download/DownloadTask$a;->a:Lcom/cloud/h5update/download/DownloadTask;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/cloud/h5update/download/DownloadTask;->access$getMListener$p(Lcom/cloud/h5update/download/DownloadTask;)Lcom/cloud/h5update/download/a;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/cloud/h5update/download/DownloadTask$a;->a:Lcom/cloud/h5update/download/DownloadTask;

    .line 35
    .line 36
    const/4 v1, 0x5

    .line 37
    invoke-interface {p1, v0, v1}, Lcom/cloud/h5update/download/a;->d(Lcom/cloud/h5update/download/DownloadTask;I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :pswitch_2
    iget-object p1, p0, Lcom/cloud/h5update/download/DownloadTask$a;->a:Lcom/cloud/h5update/download/DownloadTask;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/cloud/h5update/download/DownloadTask;->access$getMListener$p(Lcom/cloud/h5update/download/DownloadTask;)Lcom/cloud/h5update/download/a;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    iget-object v0, p0, Lcom/cloud/h5update/download/DownloadTask$a;->a:Lcom/cloud/h5update/download/DownloadTask;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    invoke-interface {p1, v0, v1}, Lcom/cloud/h5update/download/a;->d(Lcom/cloud/h5update/download/DownloadTask;I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :pswitch_3
    iget-object p1, p0, Lcom/cloud/h5update/download/DownloadTask$a;->a:Lcom/cloud/h5update/download/DownloadTask;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/cloud/h5update/download/DownloadTask;->access$getMListener$p(Lcom/cloud/h5update/download/DownloadTask;)Lcom/cloud/h5update/download/a;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_0

    .line 63
    .line 64
    iget-object v0, p0, Lcom/cloud/h5update/download/DownloadTask$a;->a:Lcom/cloud/h5update/download/DownloadTask;

    .line 65
    .line 66
    invoke-interface {p1, v0}, Lcom/cloud/h5update/download/a;->a(Lcom/cloud/h5update/download/DownloadTask;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :pswitch_4
    iget-object p1, p0, Lcom/cloud/h5update/download/DownloadTask$a;->a:Lcom/cloud/h5update/download/DownloadTask;

    .line 71
    .line 72
    invoke-static {p1}, Lcom/cloud/h5update/download/DownloadTask;->access$getMListener$p(Lcom/cloud/h5update/download/DownloadTask;)Lcom/cloud/h5update/download/a;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_0

    .line 77
    .line 78
    iget-object v0, p0, Lcom/cloud/h5update/download/DownloadTask$a;->a:Lcom/cloud/h5update/download/DownloadTask;

    .line 79
    .line 80
    invoke-interface {p1, v0}, Lcom/cloud/h5update/download/a;->b(Lcom/cloud/h5update/download/DownloadTask;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :pswitch_5
    iget-object p1, p0, Lcom/cloud/h5update/download/DownloadTask$a;->a:Lcom/cloud/h5update/download/DownloadTask;

    .line 85
    .line 86
    invoke-static {p1}, Lcom/cloud/h5update/download/DownloadTask;->access$getMListener$p(Lcom/cloud/h5update/download/DownloadTask;)Lcom/cloud/h5update/download/a;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-eqz p1, :cond_0

    .line 91
    .line 92
    iget-object v0, p0, Lcom/cloud/h5update/download/DownloadTask$a;->a:Lcom/cloud/h5update/download/DownloadTask;

    .line 93
    .line 94
    invoke-interface {p1, v0}, Lcom/cloud/h5update/download/a;->c(Lcom/cloud/h5update/download/DownloadTask;)V

    .line 95
    .line 96
    .line 97
    :cond_0
    :goto_0
    return-void

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
