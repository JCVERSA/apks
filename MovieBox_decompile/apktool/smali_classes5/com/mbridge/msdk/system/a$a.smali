.class Lcom/mbridge/msdk/system/a$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/system/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/system/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/system/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/system/a$a;->a:Lcom/mbridge/msdk/system/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/mbridge/msdk/system/a$a;->a:Lcom/mbridge/msdk/system/a;

    .line 2
    .line 3
    iget-boolean p1, p1, Lcom/mbridge/msdk/system/a;->isMIMinited:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/MIMManager;->b()Lcom/mbridge/msdk/foundation/tools/MIMManager;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/tools/MIMManager;->f()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/mbridge/msdk/system/a$a;->a:Lcom/mbridge/msdk/system/a;

    .line 2
    .line 3
    iget-boolean p1, p1, Lcom/mbridge/msdk/system/a;->isMIMinited:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/MIMManager;->b()Lcom/mbridge/msdk/foundation/tools/MIMManager;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/tools/MIMManager;->g()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/a;->g()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "onActivityPaused currentActivityNum:"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "com.mbridge.msdk"

    .line 27
    .line 28
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->g()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "onActivityStarted currentActivityNum:"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "com.mbridge.msdk"

    .line 27
    .line 28
    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v3, "onActivityStarted isCoolStart:"

    .line 37
    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v3, p0, Lcom/mbridge/msdk/system/a$a;->a:Lcom/mbridge/msdk/system/a;

    .line 42
    .line 43
    iget-boolean v3, v3, Lcom/mbridge/msdk/system/a;->isCoolStart:Z

    .line 44
    .line 45
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/mbridge/msdk/system/a$a;->a:Lcom/mbridge/msdk/system/a;

    .line 56
    .line 57
    iget-boolean v1, v1, Lcom/mbridge/msdk/system/a;->isCoolStart:Z

    .line 58
    .line 59
    if-nez v1, :cond_0

    .line 60
    .line 61
    if-nez v0, :cond_0

    .line 62
    .line 63
    const-string v1, "1"

    .line 64
    .line 65
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/same/report/j;->a(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/system/a$a;->a:Lcom/mbridge/msdk/system/a;

    .line 69
    .line 70
    invoke-static {v1}, Lcom/mbridge/msdk/system/a;->access$000(Lcom/mbridge/msdk/system/a;)Lcom/mbridge/msdk/system/b;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    if-eqz v1, :cond_1

    .line 75
    .line 76
    iget-object v1, p0, Lcom/mbridge/msdk/system/a$a;->a:Lcom/mbridge/msdk/system/a;

    .line 77
    .line 78
    invoke-static {v1}, Lcom/mbridge/msdk/system/a;->access$000(Lcom/mbridge/msdk/system/a;)Lcom/mbridge/msdk/system/b;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iget-object v2, p0, Lcom/mbridge/msdk/system/a$a;->a:Lcom/mbridge/msdk/system/a;

    .line 83
    .line 84
    iget-boolean v3, v2, Lcom/mbridge/msdk/system/a;->isCoolStart:Z

    .line 85
    .line 86
    iget-object v2, v2, Lcom/mbridge/msdk/system/a;->mContext:Landroid/content/Context;

    .line 87
    .line 88
    invoke-virtual {v1, p1, v0, v3, v2}, Lcom/mbridge/msdk/system/b;->a(Landroid/app/Activity;IZLandroid/content/Context;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/system/a$a;->a:Lcom/mbridge/msdk/system/a;

    .line 92
    .line 93
    const/4 v1, 0x0

    .line 94
    iput-boolean v1, p1, Lcom/mbridge/msdk/system/a;->isCoolStart:Z

    .line 95
    .line 96
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    add-int/lit8 v0, v0, 0x1

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/controller/a;->a(I)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/a;->g()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "onActivityStopped currentActivityNum:"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "com.mbridge.msdk"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    if-eq p1, v0, :cond_0

    .line 33
    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    :cond_0
    const-string v0, "2"

    .line 37
    .line 38
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/j;->a(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    add-int/lit8 p1, p1, -0x1

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/controller/a;->a(I)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
