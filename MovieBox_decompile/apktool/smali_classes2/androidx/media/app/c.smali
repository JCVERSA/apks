.class public Landroidx/media/app/c;
.super Landroidx/core/app/NotificationCompat$p;
.source "source.java"


# instance fields
.field e:[I

.field f:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field g:Ljava/lang/CharSequence;

.field h:I

.field i:Landroid/app/PendingIntent;

.field j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$p;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/media/app/c;->e:[I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Landroidx/media/app/c;->j:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public b(Landroidx/core/app/o;)V
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x22

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
    invoke-static {}, Landroidx/media/app/a;->a()Landroid/app/Notification$MediaStyle;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Landroidx/media/app/c;->g:Ljava/lang/CharSequence;

    .line 16
    .line 17
    iget v2, p0, Landroidx/media/app/c;->h:I

    .line 18
    .line 19
    iget-object v3, p0, Landroidx/media/app/c;->i:Landroid/app/PendingIntent;

    .line 20
    .line 21
    iget-boolean v4, p0, Landroidx/media/app/c;->j:Z

    .line 22
    .line 23
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-static {v0, v1, v2, v3, v4}, Landroidx/media/app/b;->a(Landroid/app/Notification$MediaStyle;Ljava/lang/CharSequence;ILandroid/app/PendingIntent;Ljava/lang/Boolean;)Landroid/app/Notification$MediaStyle;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Landroidx/media/app/c;->e:[I

    .line 32
    .line 33
    iget-object v2, p0, Landroidx/media/app/c;->f:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 34
    .line 35
    invoke-static {v0, v1, v2}, Landroidx/media/app/a;->b(Landroid/app/Notification$MediaStyle;[ILandroid/support/v4/media/session/MediaSessionCompat$Token;)Landroid/app/Notification$MediaStyle;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {p1, v0}, Landroidx/media/app/a;->d(Landroid/app/Notification$Builder;Landroid/app/Notification$MediaStyle;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-interface {p1}, Landroidx/core/app/o;->a()Landroid/app/Notification$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {}, Landroidx/media/app/a;->a()Landroid/app/Notification$MediaStyle;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v1, p0, Landroidx/media/app/c;->e:[I

    .line 52
    .line 53
    iget-object v2, p0, Landroidx/media/app/c;->f:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 54
    .line 55
    invoke-static {v0, v1, v2}, Landroidx/media/app/a;->b(Landroid/app/Notification$MediaStyle;[ILandroid/support/v4/media/session/MediaSessionCompat$Token;)Landroid/app/Notification$MediaStyle;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {p1, v0}, Landroidx/media/app/a;->d(Landroid/app/Notification$Builder;Landroid/app/Notification$MediaStyle;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void
.end method

.method public m(Landroidx/core/app/o;)Landroid/widget/RemoteViews;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public n(Landroidx/core/app/o;)Landroid/widget/RemoteViews;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public q(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroidx/media/app/c;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media/app/c;->f:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 2
    .line 3
    return-object p0
.end method

.method public varargs r([I)Landroidx/media/app/c;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media/app/c;->e:[I

    .line 2
    .line 3
    return-object p0
.end method
