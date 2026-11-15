.class Lcom/mbridge/msdk/foundation/same/report/e$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/same/report/e;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mbridge/msdk/foundation/same/report/e;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/same/report/e;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/e$c;->b:Lcom/mbridge/msdk/foundation/same/report/e;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/mbridge/msdk/foundation/same/report/e$c;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/e$c;->b:Lcom/mbridge/msdk/foundation/same/report/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/e;->b(Lcom/mbridge/msdk/foundation/same/report/e;)Lcom/mbridge/msdk/foundation/db/BatchReportDao;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/e;->a()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "\u63a5\u6536\u5230\u4e0a\u62a5\u6570\u636e\uff1a "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/mbridge/msdk/foundation/same/report/e$c;->a:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/e$c;->b:Lcom/mbridge/msdk/foundation/same/report/e;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/e;->e(Lcom/mbridge/msdk/foundation/same/report/e;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v1, 0x1

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/e$c;->b:Lcom/mbridge/msdk/foundation/same/report/e;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/mbridge/msdk/foundation/same/report/e$c;->a:Ljava/lang/String;

    .line 48
    .line 49
    const-wide/16 v3, 0x0

    .line 50
    .line 51
    invoke-static {v0, v2, v3, v4}, Lcom/mbridge/msdk/foundation/same/report/e;->a(Lcom/mbridge/msdk/foundation/same/report/e;Ljava/lang/String;J)V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const/4 v2, 0x0

    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const-string v3, "roas_use_event"

    .line 68
    .line 69
    invoke-static {v0, v3, v2}, Lcom/mbridge/msdk/foundation/tools/w0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Ljava/lang/Integer;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_2

    .line 80
    .line 81
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-static {v0, v3, v1}, Lcom/mbridge/msdk/foundation/tools/w0;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/e$c;->b:Lcom/mbridge/msdk/foundation/same/report/e;

    .line 97
    .line 98
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/e;->a(Lcom/mbridge/msdk/foundation/same/report/e;)Landroid/os/Handler;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    const/4 v1, 0x4

    .line 103
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/e$c;->b:Lcom/mbridge/msdk/foundation/same/report/e;

    .line 108
    .line 109
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/e;->c(Lcom/mbridge/msdk/foundation/same/report/e;)I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eq v0, v1, :cond_2

    .line 114
    .line 115
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/e$c;->b:Lcom/mbridge/msdk/foundation/same/report/e;

    .line 116
    .line 117
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/report/e$c;->a:Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/same/report/e;->a(Lcom/mbridge/msdk/foundation/same/report/e;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :cond_2
    :goto_0
    return-void
.end method
