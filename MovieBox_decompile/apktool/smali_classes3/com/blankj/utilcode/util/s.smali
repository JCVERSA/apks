.class public Lcom/blankj/utilcode/util/s;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/s$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Lcom/blankj/utilcode/util/s$a;Lcom/blankj/utilcode/util/Utils$b;)Landroid/app/Notification;
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "notification"

    .line 12
    .line 13
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroid/app/NotificationManager;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/s$a;->b()Landroid/app/NotificationChannel;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-static {v2, v3}, Lm/c;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    new-instance v2, Landroidx/core/app/NotificationCompat$m;

    .line 27
    .line 28
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-direct {v2, v3}, Landroidx/core/app/NotificationCompat$m;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    if-lt v0, v1, :cond_1

    .line 36
    .line 37
    invoke-static {p0}, Lcom/blankj/utilcode/util/s$a;->a(Lcom/blankj/utilcode/util/s$a;)Landroid/app/NotificationChannel;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0}, Lcom/blankj/utilcode/util/r;->a(Landroid/app/NotificationChannel;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {v2, p0}, Landroidx/core/app/NotificationCompat$m;->n(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$m;

    .line 46
    .line 47
    .line 48
    :cond_1
    if-eqz p1, :cond_2

    .line 49
    .line 50
    invoke-interface {p1, v2}, Lcom/blankj/utilcode/util/Utils$b;->accept(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$m;->c()Landroid/app/Notification;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method
