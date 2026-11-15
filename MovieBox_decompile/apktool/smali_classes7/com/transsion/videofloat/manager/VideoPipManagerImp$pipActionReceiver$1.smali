.class public final Lcom/transsion/videofloat/manager/VideoPipManagerImp$pipActionReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/videofloat/manager/VideoPipManagerImp;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/transsion/videofloat/manager/VideoPipManagerImp$pipActionReceiver$1",
        "Landroid/content/BroadcastReceiver;",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "VideoFloat_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/videofloat/manager/VideoPipManagerImp;


# direct methods
.method constructor <init>(Lcom/transsion/videofloat/manager/VideoPipManagerImp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/videofloat/manager/VideoPipManagerImp$pipActionReceiver$1;->a:Lcom/transsion/videofloat/manager/VideoPipManagerImp;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/videofloat/manager/VideoPipManagerImp$pipActionReceiver$1;->a:Lcom/transsion/videofloat/manager/VideoPipManagerImp;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/transsion/videofloat/manager/VideoPipManagerImp;->t(Lcom/transsion/videofloat/manager/VideoPipManagerImp;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, " --pipActionReceiver action:"

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const/4 v4, 0x4

    .line 38
    const/4 v5, 0x0

    .line 39
    const-string v1, "VideoFloat-pip"

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    move-object v0, p1

    .line 43
    invoke-static/range {v0 .. v5}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    if-eqz p2, :cond_5

    .line 47
    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v1, "pip_action_control"

    .line 53
    .line 54
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    const-string v0, "control_type"

    .line 62
    .line 63
    const/4 v6, 0x0

    .line 64
    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    iget-object v0, p0, Lcom/transsion/videofloat/manager/VideoPipManagerImp$pipActionReceiver$1;->a:Lcom/transsion/videofloat/manager/VideoPipManagerImp;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/transsion/videofloat/manager/VideoPipManagerImp;->t(Lcom/transsion/videofloat/manager/VideoPipManagerImp;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v0, " --pipActionReceiver controlType:"

    .line 83
    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    filled-new-array {v0}, [Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    const/4 v4, 0x4

    .line 99
    const/4 v5, 0x0

    .line 100
    const-string v1, "VideoFloat-pip"

    .line 101
    .line 102
    const/4 v3, 0x0

    .line 103
    move-object v0, p1

    .line 104
    invoke-static/range {v0 .. v5}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    const/4 p1, 0x1

    .line 108
    if-eq p2, p1, :cond_4

    .line 109
    .line 110
    const/4 v0, 0x2

    .line 111
    if-eq p2, v0, :cond_3

    .line 112
    .line 113
    const/4 p1, 0x3

    .line 114
    if-eq p2, p1, :cond_2

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_2
    iget-object p1, p0, Lcom/transsion/videofloat/manager/VideoPipManagerImp$pipActionReceiver$1;->a:Lcom/transsion/videofloat/manager/VideoPipManagerImp;

    .line 118
    .line 119
    invoke-static {p1, v6}, Lcom/transsion/videofloat/manager/VideoPipManagerImp;->r(Lcom/transsion/videofloat/manager/VideoPipManagerImp;Z)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_3
    iget-object p2, p0, Lcom/transsion/videofloat/manager/VideoPipManagerImp$pipActionReceiver$1;->a:Lcom/transsion/videofloat/manager/VideoPipManagerImp;

    .line 124
    .line 125
    invoke-static {p2, p1}, Lcom/transsion/videofloat/manager/VideoPipManagerImp;->r(Lcom/transsion/videofloat/manager/VideoPipManagerImp;Z)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_4
    iget-object p1, p0, Lcom/transsion/videofloat/manager/VideoPipManagerImp$pipActionReceiver$1;->a:Lcom/transsion/videofloat/manager/VideoPipManagerImp;

    .line 130
    .line 131
    invoke-static {p1}, Lcom/transsion/videofloat/manager/VideoPipManagerImp;->v(Lcom/transsion/videofloat/manager/VideoPipManagerImp;)V

    .line 132
    .line 133
    .line 134
    :cond_5
    :goto_1
    return-void
.end method
