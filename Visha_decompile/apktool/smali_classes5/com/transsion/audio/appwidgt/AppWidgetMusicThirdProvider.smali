.class public Lcom/transsion/audio/appwidgt/AppWidgetMusicThirdProvider;
.super Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;-><init>()V

    return-void
.end method

.method public static synthetic F(Lcom/transsion/audio/appwidgt/AppWidgetMusicThirdProvider;Landroid/widget/RemoteViews;Landroid/appwidget/AppWidgetManager;ILandroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/audio/appwidgt/AppWidgetMusicThirdProvider;->H(Landroid/widget/RemoteViews;Landroid/appwidget/AppWidgetManager;ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic G(Lcom/transsion/audio/appwidgt/AppWidgetMusicThirdProvider;Landroid/widget/RemoteViews;Landroid/appwidget/AppWidgetManager;ILandroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/audio/appwidgt/AppWidgetMusicThirdProvider;->I(Landroid/widget/RemoteViews;Landroid/appwidget/AppWidgetManager;ILandroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public C(Landroid/widget/RemoteViews;ILandroid/appwidget/AppWidgetManager;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->C(Landroid/widget/RemoteViews;ILandroid/appwidget/AppWidgetManager;)V

    sget v0, Lcom/transsion/audio/R$id;->artist:I

    iget-object v1, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->e:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ltv6;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$id;->iv_far:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ltv6;->c()V

    sget v0, Lcom/transsion/audio/R$id;->iv_far:I

    sget v1, Lcom/transsion/audio/R$drawable;->ic_music_widget_farvorite_w:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_0
    iget-object v0, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->f:Lcom/transsion/audio/service/MusicService;

    if-eqz v0, :cond_1

    sget v1, Lcom/transsion/audio/R$id;->root:I

    invoke-virtual {v0}, Lcom/transsion/audio/service/MusicService;->s()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_1

    :cond_1
    sget v0, Lcom/transsion/audio/R$id;->root:I

    iget-object v1, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->g:Landroid/content/Context;

    invoke-static {v1}, Lvf;->d(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :goto_1
    sget v0, Lcom/transsion/audio/R$id;->farvorites:I

    iget-object v1, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->g:Landroid/content/Context;

    invoke-static {v1}, Lvf;->a(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    sget v0, Lcom/transsion/audio/R$id;->history:I

    iget-object v1, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->g:Landroid/content/Context;

    invoke-static {v1}, Lvf;->b(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->g:Landroid/content/Context;

    new-instance v1, Lnf;

    invoke-direct {v1, p0, p1, p3, p2}, Lnf;-><init>(Lcom/transsion/audio/appwidgt/AppWidgetMusicThirdProvider;Landroid/widget/RemoteViews;Landroid/appwidget/AppWidgetManager;I)V

    const/16 v2, 0x20

    invoke-static {v0, v1, v2}, Lcom/transsion/audio/widgets/MusicHelper;->loadPlayListBackground(Landroid/content/Context;Ltn$b;I)V

    iget-object v0, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->g:Landroid/content/Context;

    new-instance v1, Lof;

    invoke-direct {v1, p0, p1, p3, p2}, Lof;-><init>(Lcom/transsion/audio/appwidgt/AppWidgetMusicThirdProvider;Landroid/widget/RemoteViews;Landroid/appwidget/AppWidgetManager;I)V

    const/16 p0, 0x21

    invoke-static {v0, v1, p0}, Lcom/transsion/audio/widgets/MusicHelper;->loadPlayListBackground(Landroid/content/Context;Ltn$b;I)V

    return-void
.end method

.method public final synthetic H(Landroid/widget/RemoteViews;Landroid/appwidget/AppWidgetManager;ILandroid/graphics/Bitmap;)V
    .locals 3

    sget v0, Lcom/transsion/audio/R$id;->tv_his:I

    iget-object v1, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/audio/R$color;->widget_cover_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    sget v0, Lcom/transsion/audio/R$id;->iv_his_logo:I

    sget v1, Lcom/transsion/audio/R$drawable;->ic_music_widget_history_white:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    sget v0, Lcom/transsion/audio/R$id;->iv_his_bg:I

    invoke-virtual {p0}, Lcom/transsion/audio/appwidgt/AppWidgetMusicThirdProvider;->J()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    sget p0, Lcom/transsion/audio/R$id;->iv_his_cover:I

    invoke-virtual {p1, p0, p4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    invoke-virtual {p2, p3, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method public final synthetic I(Landroid/widget/RemoteViews;Landroid/appwidget/AppWidgetManager;ILandroid/graphics/Bitmap;)V
    .locals 3

    sget v0, Lcom/transsion/audio/R$id;->tv_far:I

    iget-object v1, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/audio/R$color;->widget_cover_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    sget v0, Lcom/transsion/audio/R$id;->iv_far_logo:I

    sget v1, Lcom/transsion/audio/R$drawable;->ic_music_widget_favorites_white:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    sget v0, Lcom/transsion/audio/R$id;->iv_far_bg:I

    invoke-virtual {p0}, Lcom/transsion/audio/appwidgt/AppWidgetMusicThirdProvider;->J()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    sget p0, Lcom/transsion/audio/R$id;->iv_far_cover:I

    invoke-virtual {p1, p0, p4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    invoke-virtual {p2, p3, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method public J()I
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->q()Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/transsion/audio/R$drawable;->bg_appwidget_far_flat_land:I

    return p0

    :cond_0
    sget p0, Lcom/transsion/audio/R$drawable;->bg_appwidget_far_flat:I

    return p0

    :cond_1
    sget p0, Lcom/transsion/audio/R$drawable;->bg_appwidget_far:I

    return p0
.end method

.method public h()Ljava/lang/Class;
    .locals 0

    const-class p0, Lcom/transsion/audio/appwidgt/AppWidgetMusicThirdProvider;

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

    sget p0, Lcom/transsion/audio/R$layout;->layout_app_widgt_three_flat_land:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/audio/R$layout;->layout_app_widgt_three_flat:I

    :goto_0
    return p0

    :cond_1
    sget p0, Lcom/transsion/audio/R$layout;->layout_app_widgt_three:I

    return p0
.end method

.method public k()I
    .locals 0

    const/16 p0, 0x18

    return p0
.end method

.method public l()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public m()I
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->p()Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0x122

    return p0

    :cond_0
    const/16 p0, 0x140

    return p0
.end method
