.class Lcom/transsion/athena/attribution/ReferrerTask$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Li5/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/athena/attribution/ReferrerTask;->checkGpReferrer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/athena/attribution/ReferrerTask;


# direct methods
.method constructor <init>(Lcom/transsion/athena/attribution/ReferrerTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/athena/attribution/ReferrerTask$1;->this$0:Lcom/transsion/athena/attribution/ReferrerTask;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onInstallReferrerServiceDisconnected()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/athena/attribution/ReferrerTask$1;->this$0:Lcom/transsion/athena/attribution/ReferrerTask;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/athena/attribution/ReferrerTask;->access$000(Lcom/transsion/athena/attribution/ReferrerTask;)Li5/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/athena/attribution/ReferrerTask$1;->this$0:Lcom/transsion/athena/attribution/ReferrerTask;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/transsion/athena/attribution/ReferrerTask;->access$000(Lcom/transsion/athena/attribution/ReferrerTask;)Li5/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Li5/a;->a()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onInstallReferrerSetupFinished(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    const-string p1, "InstallReferrerResponse.FEATURE_NOT_SUPPORTED"

    .line 11
    .line 12
    invoke-static {p1}, Lcom/transsion/athena/attribution/AttrLog;->d(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_4

    .line 18
    :catch_0
    move-exception p1

    .line 19
    goto :goto_2

    .line 20
    :cond_1
    const-string p1, "InstallReferrerResponse.SERVICE_UNAVAILABLE"

    .line 21
    .line 22
    invoke-static {p1}, Lcom/transsion/athena/attribution/AttrLog;->d(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const-string p1, "InstallReferrerResponse.OK"

    .line 27
    .line 28
    invoke-static {p1}, Lcom/transsion/athena/attribution/AttrLog;->d(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/transsion/athena/attribution/ReferrerTask$1;->this$0:Lcom/transsion/athena/attribution/ReferrerTask;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/transsion/athena/attribution/ReferrerTask;->access$000(Lcom/transsion/athena/attribution/ReferrerTask;)Li5/a;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Li5/a;->b()Li5/d;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/transsion/athena/attribution/ReferrerTask$1;->this$0:Lcom/transsion/athena/attribution/ReferrerTask;

    .line 42
    .line 43
    invoke-static {v0, p1}, Lcom/transsion/athena/attribution/ReferrerTask;->access$100(Lcom/transsion/athena/attribution/ReferrerTask;Li5/d;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/transsion/athena/attribution/ReferrerTask$1;->this$0:Lcom/transsion/athena/attribution/ReferrerTask;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/transsion/athena/attribution/ReferrerTask;->access$200(Lcom/transsion/athena/attribution/ReferrerTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    :goto_0
    iget-object p1, p0, Lcom/transsion/athena/attribution/ReferrerTask$1;->this$0:Lcom/transsion/athena/attribution/ReferrerTask;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/transsion/athena/attribution/ReferrerTask;->access$000(Lcom/transsion/athena/attribution/ReferrerTask;)Li5/a;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    :goto_1
    iget-object p1, p0, Lcom/transsion/athena/attribution/ReferrerTask$1;->this$0:Lcom/transsion/athena/attribution/ReferrerTask;

    .line 60
    .line 61
    invoke-static {p1}, Lcom/transsion/athena/attribution/ReferrerTask;->access$000(Lcom/transsion/athena/attribution/ReferrerTask;)Li5/a;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Li5/a;->a()V

    .line 66
    .line 67
    .line 68
    goto :goto_3

    .line 69
    :goto_2
    :try_start_1
    invoke-static {p1}, Lcom/transsion/athena/attribution/AttrLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/transsion/athena/attribution/ReferrerTask$1;->this$0:Lcom/transsion/athena/attribution/ReferrerTask;

    .line 73
    .line 74
    invoke-static {p1}, Lcom/transsion/athena/attribution/ReferrerTask;->access$000(Lcom/transsion/athena/attribution/ReferrerTask;)Li5/a;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-eqz p1, :cond_3

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    :goto_3
    return-void

    .line 82
    :goto_4
    iget-object v0, p0, Lcom/transsion/athena/attribution/ReferrerTask$1;->this$0:Lcom/transsion/athena/attribution/ReferrerTask;

    .line 83
    .line 84
    invoke-static {v0}, Lcom/transsion/athena/attribution/ReferrerTask;->access$000(Lcom/transsion/athena/attribution/ReferrerTask;)Li5/a;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-eqz v0, :cond_4

    .line 89
    .line 90
    iget-object v0, p0, Lcom/transsion/athena/attribution/ReferrerTask$1;->this$0:Lcom/transsion/athena/attribution/ReferrerTask;

    .line 91
    .line 92
    invoke-static {v0}, Lcom/transsion/athena/attribution/ReferrerTask;->access$000(Lcom/transsion/athena/attribution/ReferrerTask;)Li5/a;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Li5/a;->a()V

    .line 97
    .line 98
    .line 99
    :cond_4
    throw p1
.end method
