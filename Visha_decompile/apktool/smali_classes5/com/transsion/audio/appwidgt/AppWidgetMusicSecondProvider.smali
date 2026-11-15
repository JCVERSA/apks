.class public Lcom/transsion/audio/appwidgt/AppWidgetMusicSecondProvider;
.super Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public C(Landroid/widget/RemoteViews;ILandroid/appwidget/AppWidgetManager;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->C(Landroid/widget/RemoteViews;ILandroid/appwidget/AppWidgetManager;)V

    sget p2, Lcom/transsion/audio/R$id;->artist:I

    iget-object p3, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->c:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->f:Lcom/transsion/audio/service/MusicService;

    if-eqz p2, :cond_0

    sget p0, Lcom/transsion/audio/R$id;->root:I

    invoke-virtual {p2}, Lcom/transsion/audio/service/MusicService;->s()Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_0
    sget p2, Lcom/transsion/audio/R$id;->root:I

    iget-object p0, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->g:Landroid/content/Context;

    invoke-static {p0}, Lvf;->d(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :goto_0
    return-void
.end method

.method public h()Ljava/lang/Class;
    .locals 0

    const-class p0, Lcom/transsion/audio/appwidgt/AppWidgetMusicSecondProvider;

    return-object p0
.end method

.method public i()I
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->p()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->q()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x80

    goto :goto_0

    :cond_0
    const/16 p0, 0x94

    :goto_0
    return p0

    :cond_1
    const/16 p0, 0xa0

    return p0
.end method

.method public j()I
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->p()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->q()Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/transsion/audio/R$layout;->layout_app_widgt_two_flat_land:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/audio/R$layout;->layout_app_widgt_two_flat:I

    :goto_0
    return p0

    :cond_1
    sget p0, Lcom/transsion/audio/R$layout;->layout_app_widgt_two:I

    return p0
.end method

.method public k()I
    .locals 0

    const/16 p0, 0x14

    return p0
.end method

.method public l()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public m()I
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->p()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->q()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x80

    goto :goto_0

    :cond_0
    const/16 p0, 0x86

    :goto_0
    return p0

    :cond_1
    const/16 p0, 0x94

    return p0
.end method
