.class public final synthetic Lku6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

.field public final synthetic c:Lcom/transsion/dbdata/beans/media/MediaItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/MusicModeLayout;Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lku6;->b:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    iput-object p2, p0, Lku6;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lku6;->b:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    iget-object p0, p0, Lku6;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {v0, p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->a(Lcom/transsion/magicvideo/widgets/MusicModeLayout;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    return-void
.end method
