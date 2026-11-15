.class public final synthetic Lz80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltn$b;


# instance fields
.field public final synthetic a:Landroid/widget/RemoteViews;

.field public final synthetic b:Landroid/appwidget/AppWidgetManager;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroid/widget/RemoteViews;Landroid/appwidget/AppWidgetManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz80;->a:Landroid/widget/RemoteViews;

    iput-object p2, p0, Lz80;->b:Landroid/appwidget/AppWidgetManager;

    iput p3, p0, Lz80;->c:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lz80;->a:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lz80;->b:Landroid/appwidget/AppWidgetManager;

    iget p0, p0, Lz80;->c:I

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->b(Landroid/widget/RemoteViews;Landroid/appwidget/AppWidgetManager;ILandroid/graphics/Bitmap;)V

    return-void
.end method
