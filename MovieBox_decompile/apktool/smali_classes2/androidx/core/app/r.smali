.class Landroidx/core/app/r;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/core/app/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/r$e;,
        Landroidx/core/app/r$c;,
        Landroidx/core/app/r$a;,
        Landroidx/core/app/r$b;,
        Landroidx/core/app/r$d;,
        Landroidx/core/app/r$f;,
        Landroidx/core/app/r$g;,
        Landroidx/core/app/r$h;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/app/Notification$Builder;

.field private final c:Landroidx/core/app/NotificationCompat$m;

.field private d:Landroid/widget/RemoteViews;

.field private e:Landroid/widget/RemoteViews;

.field private final f:Ljava/util/List;

.field private final g:Landroid/os/Bundle;

.field private h:I

.field private i:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Landroidx/core/app/NotificationCompat$m;)V
    .locals 14

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/r;->f:Ljava/util/List;

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/core/app/r;->g:Landroid/os/Bundle;

    .line 4
    iput-object p1, p0, Landroidx/core/app/r;->c:Landroidx/core/app/NotificationCompat$m;

    .line 5
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$m;->a:Landroid/content/Context;

    iput-object v0, p0, Landroidx/core/app/r;->a:Landroid/content/Context;

    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 7
    iget-object v1, p1, Landroidx/core/app/NotificationCompat$m;->L:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/core/app/r$e;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    iput-object v1, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v3, p1, Landroidx/core/app/NotificationCompat$m;->a:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    .line 9
    :goto_0
    iget-object v1, p1, Landroidx/core/app/NotificationCompat$m;->U:Landroid/app/Notification;

    .line 10
    iget-object v3, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    iget-wide v4, v1, Landroid/app/Notification;->when:J

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v1, Landroid/app/Notification;->icon:I

    iget v5, v1, Landroid/app/Notification;->iconLevel:I

    .line 11
    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 12
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v5, p1, Landroidx/core/app/NotificationCompat$m;->i:Landroid/widget/RemoteViews;

    .line 13
    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/Notification;->vibrate:[J

    .line 14
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v1, Landroid/app/Notification;->ledARGB:I

    iget v5, v1, Landroid/app/Notification;->ledOnMS:I

    iget v6, v1, Landroid/app/Notification;->ledOffMS:I

    .line 15
    invoke-virtual {v3, v4, v5, v6}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v1, Landroid/app/Notification;->flags:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v7

    .line 16
    :goto_1
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_2

    move v4, v6

    goto :goto_2

    :cond_2
    move v4, v7

    .line 17
    :goto_2
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_3

    move v4, v6

    goto :goto_3

    :cond_3
    move v4, v7

    .line 18
    :goto_3
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v1, Landroid/app/Notification;->defaults:I

    .line 19
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p1, Landroidx/core/app/NotificationCompat$m;->e:Ljava/lang/CharSequence;

    .line 20
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p1, Landroidx/core/app/NotificationCompat$m;->f:Ljava/lang/CharSequence;

    .line 21
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p1, Landroidx/core/app/NotificationCompat$m;->k:Ljava/lang/CharSequence;

    .line 22
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p1, Landroidx/core/app/NotificationCompat$m;->g:Landroid/app/PendingIntent;

    .line 23
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 24
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p1, Landroidx/core/app/NotificationCompat$m;->h:Landroid/app/PendingIntent;

    iget v8, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_4

    move v8, v6

    goto :goto_4

    :cond_4
    move v8, v7

    .line 25
    :goto_4
    invoke-virtual {v3, v4, v8}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, p1, Landroidx/core/app/NotificationCompat$m;->l:I

    .line 26
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, p1, Landroidx/core/app/NotificationCompat$m;->u:I

    iget v8, p1, Landroidx/core/app/NotificationCompat$m;->v:I

    iget-boolean v9, p1, Landroidx/core/app/NotificationCompat$m;->w:Z

    .line 27
    invoke-virtual {v3, v4, v8, v9}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 28
    iget-object v3, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    .line 29
    iget-object v4, p1, Landroidx/core/app/NotificationCompat$m;->j:Landroidx/core/graphics/drawable/IconCompat;

    const/4 v8, 0x0

    if-nez v4, :cond_5

    move-object v0, v8

    goto :goto_5

    :cond_5
    invoke-virtual {v4, v0}, Landroidx/core/graphics/drawable/IconCompat;->x(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 30
    :goto_5
    invoke-static {v3, v0}, Landroidx/core/app/r$c;->b(Landroid/app/Notification$Builder;Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 31
    iget-object v0, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    iget-object v3, p1, Landroidx/core/app/NotificationCompat$m;->r:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 32
    iget-boolean v3, p1, Landroidx/core/app/NotificationCompat$m;->o:Z

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 33
    iget v3, p1, Landroidx/core/app/NotificationCompat$m;->m:I

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 34
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$m;->q:Landroidx/core/app/NotificationCompat$p;

    instance-of v3, v0, Landroidx/core/app/NotificationCompat$n;

    if-eqz v3, :cond_6

    .line 35
    check-cast v0, Landroidx/core/app/NotificationCompat$n;

    .line 36
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$n;->q()Ljava/util/ArrayList;

    move-result-object v0

    .line 37
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/app/NotificationCompat$b;

    .line 38
    invoke-direct {p0, v3}, Landroidx/core/app/r;->b(Landroidx/core/app/NotificationCompat$b;)V

    goto :goto_6

    .line 39
    :cond_6
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$m;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/app/NotificationCompat$b;

    .line 40
    invoke-direct {p0, v3}, Landroidx/core/app/r;->b(Landroidx/core/app/NotificationCompat$b;)V

    goto :goto_7

    .line 41
    :cond_7
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$m;->E:Landroid/os/Bundle;

    if-eqz v0, :cond_8

    .line 42
    iget-object v3, p0, Landroidx/core/app/r;->g:Landroid/os/Bundle;

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 43
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 44
    iget-object v3, p1, Landroidx/core/app/NotificationCompat$m;->I:Landroid/widget/RemoteViews;

    iput-object v3, p0, Landroidx/core/app/r;->d:Landroid/widget/RemoteViews;

    .line 45
    iget-object v3, p1, Landroidx/core/app/NotificationCompat$m;->J:Landroid/widget/RemoteViews;

    iput-object v3, p0, Landroidx/core/app/r;->e:Landroid/widget/RemoteViews;

    .line 46
    iget-object v3, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    iget-boolean v4, p1, Landroidx/core/app/NotificationCompat$m;->n:Z

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 47
    iget-object v3, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    iget-boolean v4, p1, Landroidx/core/app/NotificationCompat$m;->A:Z

    invoke-static {v3, v4}, Landroidx/core/app/r$a;->h(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    .line 48
    iget-object v3, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    iget-object v4, p1, Landroidx/core/app/NotificationCompat$m;->x:Ljava/lang/String;

    invoke-static {v3, v4}, Landroidx/core/app/r$a;->f(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 49
    iget-object v3, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    iget-object v4, p1, Landroidx/core/app/NotificationCompat$m;->z:Ljava/lang/String;

    invoke-static {v3, v4}, Landroidx/core/app/r$a;->i(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 50
    iget-object v3, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    iget-boolean v4, p1, Landroidx/core/app/NotificationCompat$m;->y:Z

    invoke-static {v3, v4}, Landroidx/core/app/r$a;->g(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    .line 51
    iget v3, p1, Landroidx/core/app/NotificationCompat$m;->Q:I

    iput v3, p0, Landroidx/core/app/r;->h:I

    .line 52
    iget-object v3, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    iget-object v4, p1, Landroidx/core/app/NotificationCompat$m;->D:Ljava/lang/String;

    invoke-static {v3, v4}, Landroidx/core/app/r$b;->b(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 53
    iget-object v3, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    iget v4, p1, Landroidx/core/app/NotificationCompat$m;->F:I

    invoke-static {v3, v4}, Landroidx/core/app/r$b;->c(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 54
    iget-object v3, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    iget v4, p1, Landroidx/core/app/NotificationCompat$m;->G:I

    invoke-static {v3, v4}, Landroidx/core/app/r$b;->f(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 55
    iget-object v3, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    iget-object v4, p1, Landroidx/core/app/NotificationCompat$m;->H:Landroid/app/Notification;

    invoke-static {v3, v4}, Landroidx/core/app/r$b;->d(Landroid/app/Notification$Builder;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 56
    iget-object v3, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    iget-object v4, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v9, v1, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v3, v4, v9}, Landroidx/core/app/r$b;->e(Landroid/app/Notification$Builder;Landroid/net/Uri;Ljava/lang/Object;)Landroid/app/Notification$Builder;

    const/16 v3, 0x1c

    if-ge v0, v3, :cond_9

    .line 57
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$m;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Landroidx/core/app/r;->g(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v4, p1, Landroidx/core/app/NotificationCompat$m;->X:Ljava/util/ArrayList;

    invoke-static {v0, v4}, Landroidx/core/app/r;->e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_8

    .line 58
    :cond_9
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$m;->X:Ljava/util/ArrayList;

    :goto_8
    if-eqz v0, :cond_a

    .line 59
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    .line 60
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 61
    iget-object v9, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    invoke-static {v9, v4}, Landroidx/core/app/r$b;->a(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_9

    .line 62
    :cond_a
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$m;->K:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroidx/core/app/r;->i:Landroid/widget/RemoteViews;

    .line 63
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$m;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 64
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$m;->g()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "android.car.EXTENSIONS"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_b

    .line 65
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    :cond_b
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 67
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    move v11, v7

    .line 68
    :goto_a
    iget-object v12, p1, Landroidx/core/app/NotificationCompat$m;->d:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_c

    .line 69
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p1, Landroidx/core/app/NotificationCompat$m;->d:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/core/app/NotificationCompat$b;

    .line 71
    invoke-static {v13}, Landroidx/core/app/s;->e(Landroidx/core/app/NotificationCompat$b;)Landroid/os/Bundle;

    move-result-object v13

    .line 72
    invoke-virtual {v10, v12, v13}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 73
    :cond_c
    const-string v11, "invisible_actions"

    invoke-virtual {v0, v11, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$m;->g()Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v10, v4, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 76
    iget-object v0, p0, Landroidx/core/app/r;->g:Landroid/os/Bundle;

    invoke-virtual {v0, v4, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 77
    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 78
    iget-object v4, p1, Landroidx/core/app/NotificationCompat$m;->W:Ljava/lang/Object;

    if-eqz v4, :cond_e

    .line 79
    iget-object v9, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    invoke-static {v9, v4}, Landroidx/core/app/r$c;->c(Landroid/app/Notification$Builder;Ljava/lang/Object;)Landroid/app/Notification$Builder;

    :cond_e
    const/16 v4, 0x18

    if-lt v0, v4, :cond_11

    .line 80
    iget-object v4, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    iget-object v9, p1, Landroidx/core/app/NotificationCompat$m;->E:Landroid/os/Bundle;

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 81
    iget-object v4, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    iget-object v9, p1, Landroidx/core/app/NotificationCompat$m;->t:[Ljava/lang/CharSequence;

    invoke-static {v4, v9}, Landroidx/core/app/r$d;->e(Landroid/app/Notification$Builder;[Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 82
    iget-object v4, p1, Landroidx/core/app/NotificationCompat$m;->I:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_f

    .line 83
    iget-object v9, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    invoke-static {v9, v4}, Landroidx/core/app/r$d;->c(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 84
    :cond_f
    iget-object v4, p1, Landroidx/core/app/NotificationCompat$m;->J:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_10

    .line 85
    iget-object v9, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    invoke-static {v9, v4}, Landroidx/core/app/r$d;->b(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 86
    :cond_10
    iget-object v4, p1, Landroidx/core/app/NotificationCompat$m;->K:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_11

    .line 87
    iget-object v9, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    invoke-static {v9, v4}, Landroidx/core/app/r$d;->d(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    :cond_11
    if-lt v0, v2, :cond_13

    .line 88
    iget-object v4, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    iget v9, p1, Landroidx/core/app/NotificationCompat$m;->M:I

    invoke-static {v4, v9}, Landroidx/core/app/r$e;->b(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 89
    iget-object v4, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    iget-object v9, p1, Landroidx/core/app/NotificationCompat$m;->s:Ljava/lang/CharSequence;

    invoke-static {v4, v9}, Landroidx/core/app/r$e;->e(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 90
    iget-object v4, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    iget-object v9, p1, Landroidx/core/app/NotificationCompat$m;->N:Ljava/lang/String;

    invoke-static {v4, v9}, Landroidx/core/app/r$e;->f(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 91
    iget-object v4, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    iget-wide v9, p1, Landroidx/core/app/NotificationCompat$m;->P:J

    invoke-static {v4, v9, v10}, Landroidx/core/app/r$e;->g(Landroid/app/Notification$Builder;J)Landroid/app/Notification$Builder;

    .line 92
    iget-object v4, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    iget v9, p1, Landroidx/core/app/NotificationCompat$m;->Q:I

    invoke-static {v4, v9}, Landroidx/core/app/r$e;->d(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 93
    iget-boolean v4, p1, Landroidx/core/app/NotificationCompat$m;->C:Z

    if-eqz v4, :cond_12

    .line 94
    iget-object v4, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    iget-boolean v9, p1, Landroidx/core/app/NotificationCompat$m;->B:Z

    invoke-static {v4, v9}, Landroidx/core/app/r$e;->c(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    .line 95
    :cond_12
    iget-object v4, p1, Landroidx/core/app/NotificationCompat$m;->L:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 96
    iget-object v4, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 97
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 98
    invoke-virtual {v4, v7, v7, v7}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 99
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    :cond_13
    if-lt v0, v3, :cond_14

    .line 100
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$m;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/app/w;

    .line 101
    iget-object v4, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroidx/core/app/w;->i()Landroid/app/Person;

    move-result-object v3

    invoke-static {v4, v3}, Landroidx/core/app/r$f;->a(Landroid/app/Notification$Builder;Landroid/app/Person;)Landroid/app/Notification$Builder;

    goto :goto_b

    .line 102
    :cond_14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_15

    .line 103
    iget-object v3, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    iget-boolean v4, p1, Landroidx/core/app/NotificationCompat$m;->S:Z

    invoke-static {v3, v4}, Landroidx/core/app/r$g;->a(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    .line 104
    iget-object v3, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    iget-object v4, p1, Landroidx/core/app/NotificationCompat$m;->T:Landroidx/core/app/NotificationCompat$l;

    .line 105
    invoke-static {v4}, Landroidx/core/app/NotificationCompat$l;->k(Landroidx/core/app/NotificationCompat$l;)Landroid/app/Notification$BubbleMetadata;

    move-result-object v4

    .line 106
    invoke-static {v3, v4}, Landroidx/core/app/r$g;->b(Landroid/app/Notification$Builder;Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;

    .line 107
    iget-object v3, p1, Landroidx/core/app/NotificationCompat$m;->O:Landroidx/core/content/c;

    if-eqz v3, :cond_15

    .line 108
    iget-object v4, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroidx/core/content/c;->b()Landroid/content/LocusId;

    move-result-object v3

    invoke-static {v4, v3}, Landroidx/core/app/r$g;->d(Landroid/app/Notification$Builder;Ljava/lang/Object;)Landroid/app/Notification$Builder;

    :cond_15
    const/16 v3, 0x1f

    if-lt v0, v3, :cond_16

    .line 109
    iget v3, p1, Landroidx/core/app/NotificationCompat$m;->R:I

    if-eqz v3, :cond_16

    .line 110
    iget-object v4, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    invoke-static {v4, v3}, Landroidx/core/app/r$h;->b(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 111
    :cond_16
    iget-boolean p1, p1, Landroidx/core/app/NotificationCompat$m;->V:Z

    if-eqz p1, :cond_19

    .line 112
    iget-object p1, p0, Landroidx/core/app/r;->c:Landroidx/core/app/NotificationCompat$m;

    iget-boolean p1, p1, Landroidx/core/app/NotificationCompat$m;->y:Z

    if-eqz p1, :cond_17

    .line 113
    iput v5, p0, Landroidx/core/app/r;->h:I

    goto :goto_c

    .line 114
    :cond_17
    iput v6, p0, Landroidx/core/app/r;->h:I

    .line 115
    :goto_c
    iget-object p1, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    invoke-virtual {p1, v8}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 116
    iget-object p1, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    invoke-virtual {p1, v8}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 117
    iget p1, v1, Landroid/app/Notification;->defaults:I

    and-int/lit8 p1, p1, -0x4

    .line 118
    iput p1, v1, Landroid/app/Notification;->defaults:I

    .line 119
    iget-object v1, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    if-lt v0, v2, :cond_19

    .line 120
    iget-object p1, p0, Landroidx/core/app/r;->c:Landroidx/core/app/NotificationCompat$m;

    iget-object p1, p1, Landroidx/core/app/NotificationCompat$m;->x:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 121
    iget-object p1, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    const-string v0, "silent"

    invoke-static {p1, v0}, Landroidx/core/app/r$a;->f(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 122
    :cond_18
    iget-object p1, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    iget v0, p0, Landroidx/core/app/r;->h:I

    invoke-static {p1, v0}, Landroidx/core/app/r$e;->d(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    :cond_19
    return-void
.end method

.method private b(Landroidx/core/app/NotificationCompat$b;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$b;->d()Landroidx/core/graphics/drawable/IconCompat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->w()Landroid/graphics/drawable/Icon;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$b;->h()Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$b;->a()Landroid/app/PendingIntent;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v0, v1, v2}, Landroidx/core/app/r$c;->a(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Action$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$b;->e()[Landroidx/core/app/y;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$b;->e()[Landroidx/core/app/y;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1}, Landroidx/core/app/y;->b([Landroidx/core/app/y;)[Landroid/app/RemoteInput;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    array-length v2, v1

    .line 40
    const/4 v3, 0x0

    .line 41
    :goto_1
    if-ge v3, v2, :cond_1

    .line 42
    .line 43
    aget-object v4, v1, v3

    .line 44
    .line 45
    invoke-static {v0, v4}, Landroidx/core/app/r$a;->c(Landroid/app/Notification$Action$Builder;Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    .line 46
    .line 47
    .line 48
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$b;->c()Landroid/os/Bundle;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    new-instance v1, Landroid/os/Bundle;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$b;->c()Landroid/os/Bundle;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    .line 68
    .line 69
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 70
    .line 71
    .line 72
    :goto_2
    const-string v2, "android.support.allowGeneratedReplies"

    .line 73
    .line 74
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$b;->b()Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 79
    .line 80
    .line 81
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 82
    .line 83
    const/16 v3, 0x18

    .line 84
    .line 85
    if-lt v2, v3, :cond_3

    .line 86
    .line 87
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$b;->b()Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    invoke-static {v0, v3}, Landroidx/core/app/r$d;->a(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    .line 92
    .line 93
    .line 94
    :cond_3
    const-string v3, "android.support.action.semanticAction"

    .line 95
    .line 96
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$b;->f()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 101
    .line 102
    .line 103
    const/16 v3, 0x1c

    .line 104
    .line 105
    if-lt v2, v3, :cond_4

    .line 106
    .line 107
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$b;->f()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    invoke-static {v0, v3}, Landroidx/core/app/r$f;->b(Landroid/app/Notification$Action$Builder;I)Landroid/app/Notification$Action$Builder;

    .line 112
    .line 113
    .line 114
    :cond_4
    const/16 v3, 0x1d

    .line 115
    .line 116
    if-lt v2, v3, :cond_5

    .line 117
    .line 118
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$b;->j()Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    invoke-static {v0, v3}, Landroidx/core/app/r$g;->c(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    .line 123
    .line 124
    .line 125
    :cond_5
    const/16 v3, 0x1f

    .line 126
    .line 127
    if-lt v2, v3, :cond_6

    .line 128
    .line 129
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$b;->i()Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    invoke-static {v0, v2}, Landroidx/core/app/r$h;->a(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    .line 134
    .line 135
    .line 136
    :cond_6
    const-string v2, "android.support.action.showsUserInterface"

    .line 137
    .line 138
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$b;->g()Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 143
    .line 144
    .line 145
    invoke-static {v0, v1}, Landroidx/core/app/r$a;->b(Landroid/app/Notification$Action$Builder;Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    .line 149
    .line 150
    invoke-static {v0}, Landroidx/core/app/r$a;->d(Landroid/app/Notification$Action$Builder;)Landroid/app/Notification$Action;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-static {p1, v0}, Landroidx/core/app/r$a;->a(Landroid/app/Notification$Builder;Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 155
    .line 156
    .line 157
    return-void
.end method

.method private static e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-object p1

    .line 4
    :cond_0
    if-nez p1, :cond_1

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_1
    new-instance v0, Landroidx/collection/b;

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    add-int/2addr v1, v2

    .line 18
    invoke-direct {v0, v1}, Landroidx/collection/b;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Landroidx/collection/b;->addAll(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroidx/collection/b;->addAll(Ljava/util/Collection;)Z

    .line 25
    .line 26
    .line 27
    new-instance p0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 30
    .line 31
    .line 32
    return-object p0
.end method

.method private static g(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroidx/core/app/w;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/core/app/w;->h()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-object v0
.end method

.method private h(Landroid/app/Notification;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 3
    .line 4
    iput-object v0, p1, Landroid/app/Notification;->vibrate:[J

    .line 5
    .line 6
    iget v0, p1, Landroid/app/Notification;->defaults:I

    .line 7
    .line 8
    and-int/lit8 v0, v0, -0x4

    .line 9
    .line 10
    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()Landroid/app/Notification$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Landroid/app/Notification;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/core/app/r;->c:Landroidx/core/app/NotificationCompat$m;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/core/app/NotificationCompat$m;->q:Landroidx/core/app/NotificationCompat$p;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$p;->b(Landroidx/core/app/o;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$p;->n(Landroidx/core/app/o;)Landroid/widget/RemoteViews;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v1, 0x0

    .line 18
    :goto_0
    invoke-virtual {p0}, Landroidx/core/app/r;->d()Landroid/app/Notification;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iput-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    iget-object v1, p0, Landroidx/core/app/r;->c:Landroidx/core/app/NotificationCompat$m;

    .line 28
    .line 29
    iget-object v1, v1, Landroidx/core/app/NotificationCompat$m;->I:Landroid/widget/RemoteViews;

    .line 30
    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    iput-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 34
    .line 35
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$p;->m(Landroidx/core/app/o;)Landroid/widget/RemoteViews;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    iput-object v1, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 44
    .line 45
    :cond_4
    if-eqz v0, :cond_5

    .line 46
    .line 47
    iget-object v1, p0, Landroidx/core/app/r;->c:Landroidx/core/app/NotificationCompat$m;

    .line 48
    .line 49
    iget-object v1, v1, Landroidx/core/app/NotificationCompat$m;->q:Landroidx/core/app/NotificationCompat$p;

    .line 50
    .line 51
    invoke-virtual {v1, p0}, Landroidx/core/app/NotificationCompat$p;->o(Landroidx/core/app/o;)Landroid/widget/RemoteViews;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-eqz v1, :cond_5

    .line 56
    .line 57
    iput-object v1, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 58
    .line 59
    :cond_5
    if-eqz v0, :cond_6

    .line 60
    .line 61
    invoke-static {v2}, Landroidx/core/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-eqz v1, :cond_6

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$p;->a(Landroid/os/Bundle;)V

    .line 68
    .line 69
    .line 70
    :cond_6
    return-object v2
.end method

.method protected d()Landroid/app/Notification;
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
    iget-object v0, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    const/16 v1, 0x18

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    const/4 v3, 0x2

    .line 18
    if-lt v0, v1, :cond_3

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget v1, p0, Landroidx/core/app/r;->h:I

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-static {v0}, Landroidx/core/app/r$a;->e(Landroid/app/Notification;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iget v1, v0, Landroid/app/Notification;->flags:I

    .line 37
    .line 38
    and-int/lit16 v1, v1, 0x200

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    iget v1, p0, Landroidx/core/app/r;->h:I

    .line 43
    .line 44
    if-ne v1, v3, :cond_1

    .line 45
    .line 46
    invoke-direct {p0, v0}, Landroidx/core/app/r;->h(Landroid/app/Notification;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-static {v0}, Landroidx/core/app/r$a;->e(Landroid/app/Notification;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    iget v1, v0, Landroid/app/Notification;->flags:I

    .line 56
    .line 57
    and-int/lit16 v1, v1, 0x200

    .line 58
    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    iget v1, p0, Landroidx/core/app/r;->h:I

    .line 62
    .line 63
    if-ne v1, v2, :cond_2

    .line 64
    .line 65
    invoke-direct {p0, v0}, Landroidx/core/app/r;->h(Landroid/app/Notification;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    return-object v0

    .line 69
    :cond_3
    iget-object v0, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    .line 70
    .line 71
    iget-object v1, p0, Landroidx/core/app/r;->g:Landroid/os/Bundle;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Landroidx/core/app/r;->b:Landroid/app/Notification$Builder;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget-object v1, p0, Landroidx/core/app/r;->d:Landroid/widget/RemoteViews;

    .line 83
    .line 84
    if-eqz v1, :cond_4

    .line 85
    .line 86
    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 87
    .line 88
    :cond_4
    iget-object v1, p0, Landroidx/core/app/r;->e:Landroid/widget/RemoteViews;

    .line 89
    .line 90
    if-eqz v1, :cond_5

    .line 91
    .line 92
    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 93
    .line 94
    :cond_5
    iget-object v1, p0, Landroidx/core/app/r;->i:Landroid/widget/RemoteViews;

    .line 95
    .line 96
    if-eqz v1, :cond_6

    .line 97
    .line 98
    iput-object v1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 99
    .line 100
    :cond_6
    iget v1, p0, Landroidx/core/app/r;->h:I

    .line 101
    .line 102
    if-eqz v1, :cond_8

    .line 103
    .line 104
    invoke-static {v0}, Landroidx/core/app/r$a;->e(Landroid/app/Notification;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    if-eqz v1, :cond_7

    .line 109
    .line 110
    iget v1, v0, Landroid/app/Notification;->flags:I

    .line 111
    .line 112
    and-int/lit16 v1, v1, 0x200

    .line 113
    .line 114
    if-eqz v1, :cond_7

    .line 115
    .line 116
    iget v1, p0, Landroidx/core/app/r;->h:I

    .line 117
    .line 118
    if-ne v1, v3, :cond_7

    .line 119
    .line 120
    invoke-direct {p0, v0}, Landroidx/core/app/r;->h(Landroid/app/Notification;)V

    .line 121
    .line 122
    .line 123
    :cond_7
    invoke-static {v0}, Landroidx/core/app/r$a;->e(Landroid/app/Notification;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    if-eqz v1, :cond_8

    .line 128
    .line 129
    iget v1, v0, Landroid/app/Notification;->flags:I

    .line 130
    .line 131
    and-int/lit16 v1, v1, 0x200

    .line 132
    .line 133
    if-nez v1, :cond_8

    .line 134
    .line 135
    iget v1, p0, Landroidx/core/app/r;->h:I

    .line 136
    .line 137
    if-ne v1, v2, :cond_8

    .line 138
    .line 139
    invoke-direct {p0, v0}, Landroidx/core/app/r;->h(Landroid/app/Notification;)V

    .line 140
    .line 141
    .line 142
    :cond_8
    return-object v0
.end method

.method f()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/r;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method
