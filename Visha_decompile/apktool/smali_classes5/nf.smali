.class public final synthetic Lnf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltn$b;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/appwidgt/AppWidgetMusicThirdProvider;

.field public final synthetic b:Landroid/widget/RemoteViews;

.field public final synthetic c:Landroid/appwidget/AppWidgetManager;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/appwidgt/AppWidgetMusicThirdProvider;Landroid/widget/RemoteViews;Landroid/appwidget/AppWidgetManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnf;->a:Lcom/transsion/audio/appwidgt/AppWidgetMusicThirdProvider;

    iput-object p2, p0, Lnf;->b:Landroid/widget/RemoteViews;

    iput-object p3, p0, Lnf;->c:Landroid/appwidget/AppWidgetManager;

    iput p4, p0, Lnf;->d:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lnf;->a:Lcom/transsion/audio/appwidgt/AppWidgetMusicThirdProvider;

    iget-object v1, p0, Lnf;->b:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lnf;->c:Landroid/appwidget/AppWidgetManager;

    iget p0, p0, Lnf;->d:I

    invoke-static {v0, v1, v2, p0, p1}, Lcom/transsion/audio/appwidgt/AppWidgetMusicThirdProvider;->F(Lcom/transsion/audio/appwidgt/AppWidgetMusicThirdProvider;Landroid/widget/RemoteViews;Landroid/appwidget/AppWidgetManager;ILandroid/graphics/Bitmap;)V

    return-void
.end method
