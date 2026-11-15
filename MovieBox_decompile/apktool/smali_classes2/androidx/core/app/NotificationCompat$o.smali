.class public Landroidx/core/app/NotificationCompat$o;
.super Landroidx/core/app/NotificationCompat$p;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$o$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$p;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private q(Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;
    .locals 6

    .line 1
    sget v0, Landroidx/core/R$layout;->notification_template_custom_big:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v1, v0, v2}, Landroidx/core/app/NotificationCompat$p;->c(ZIZ)Landroid/widget/RemoteViews;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget v1, Landroidx/core/R$id;->actions:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    .line 15
    .line 16
    iget-object v1, v1, Landroidx/core/app/NotificationCompat$m;->b:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-static {v1}, Landroidx/core/app/NotificationCompat$o;->s(Ljava/util/List;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    const/4 v3, 0x3

    .line 31
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-lez p2, :cond_0

    .line 36
    .line 37
    move v3, v2

    .line 38
    :goto_0
    if-ge v3, p2, :cond_1

    .line 39
    .line 40
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Landroidx/core/app/NotificationCompat$b;

    .line 45
    .line 46
    invoke-direct {p0, v4}, Landroidx/core/app/NotificationCompat$o;->r(Landroidx/core/app/NotificationCompat$b;)Landroid/widget/RemoteViews;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    sget v5, Landroidx/core/R$id;->actions:I

    .line 51
    .line 52
    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 53
    .line 54
    .line 55
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/16 v2, 0x8

    .line 59
    .line 60
    :cond_1
    sget p2, Landroidx/core/R$id;->actions:I

    .line 61
    .line 62
    invoke-virtual {v0, p2, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 63
    .line 64
    .line 65
    sget p2, Landroidx/core/R$id;->action_divider:I

    .line 66
    .line 67
    invoke-virtual {v0, p2, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0, p1}, Landroidx/core/app/NotificationCompat$p;->d(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 71
    .line 72
    .line 73
    return-object v0
.end method

.method private r(Landroidx/core/app/NotificationCompat$b;)Landroid/widget/RemoteViews;
    .locals 5

    .line 1
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$b;->k:Landroid/app/PendingIntent;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    new-instance v1, Landroid/widget/RemoteViews;

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    .line 11
    .line 12
    iget-object v2, v2, Landroidx/core/app/NotificationCompat$m;->a:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    sget v3, Landroidx/core/R$layout;->notification_action_tombstone:I

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    sget v3, Landroidx/core/R$layout;->notification_action:I

    .line 24
    .line 25
    :goto_1
    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$b;->d()Landroidx/core/graphics/drawable/IconCompat;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    sget v3, Landroidx/core/R$id;->action_image:I

    .line 35
    .line 36
    sget v4, Landroidx/core/R$color;->notification_action_color_filter:I

    .line 37
    .line 38
    invoke-virtual {p0, v2, v4}, Landroidx/core/app/NotificationCompat$p;->h(Landroidx/core/graphics/drawable/IconCompat;I)Landroid/graphics/Bitmap;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    sget v2, Landroidx/core/R$id;->action_text:I

    .line 46
    .line 47
    iget-object v3, p1, Landroidx/core/app/NotificationCompat$b;->j:Ljava/lang/CharSequence;

    .line 48
    .line 49
    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    sget v0, Landroidx/core/R$id;->action_container:I

    .line 55
    .line 56
    iget-object v2, p1, Landroidx/core/app/NotificationCompat$b;->k:Landroid/app/PendingIntent;

    .line 57
    .line 58
    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 59
    .line 60
    .line 61
    :cond_3
    sget v0, Landroidx/core/R$id;->action_container:I

    .line 62
    .line 63
    iget-object p1, p1, Landroidx/core/app/NotificationCompat$b;->j:Ljava/lang/CharSequence;

    .line 64
    .line 65
    invoke-virtual {v1, v0, p1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    return-object v1
.end method

.method private static s(Ljava/util/List;)Ljava/util/List;
    .locals 3

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
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroidx/core/app/NotificationCompat$b;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$b;->j()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    return-object v0
.end method


# virtual methods
.method public b(Landroidx/core/app/o;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Landroidx/core/app/o;->a()Landroid/app/Notification$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {}, Landroidx/core/app/NotificationCompat$o$a;->a()Landroid/app/Notification$Style;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method protected k()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle"

    .line 2
    .line 3
    return-object v0
.end method

.method public m(Landroidx/core/app/o;)Landroid/widget/RemoteViews;
    .locals 2

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v0, 0x18

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-lt p1, v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$m;->d()Landroid/widget/RemoteViews;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$m;->f()Landroid/widget/RemoteViews;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :goto_0
    if-nez p1, :cond_2

    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_2
    const/4 v0, 0x1

    .line 28
    invoke-direct {p0, p1, v0}, Landroidx/core/app/NotificationCompat$o;->q(Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method public n(Landroidx/core/app/o;)Landroid/widget/RemoteViews;
    .locals 2

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v0, 0x18

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-lt p1, v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$m;->f()Landroid/widget/RemoteViews;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_1
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$m;->f()Landroid/widget/RemoteViews;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Landroidx/core/app/NotificationCompat$o;->q(Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method

.method public o(Landroidx/core/app/o;)Landroid/widget/RemoteViews;
    .locals 2

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v0, 0x18

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-lt p1, v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$m;->h()Landroid/widget/RemoteViews;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    move-object v0, p1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$m;->f()Landroid/widget/RemoteViews;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_0
    if-nez p1, :cond_2

    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_2
    const/4 p1, 0x1

    .line 29
    invoke-direct {p0, v0, p1}, Landroidx/core/app/NotificationCompat$o;->q(Landroid/widget/RemoteViews;Z)Landroid/widget/RemoteViews;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method
