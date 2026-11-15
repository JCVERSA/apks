.class public final synthetic Lvxb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

.field public final synthetic c:Landroid/content/Intent;

.field public final synthetic d:Lcom/transsion/dbdata/beans/media/PlayVideoData;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Landroid/content/Intent;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvxb;->b:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    iput-object p2, p0, Lvxb;->c:Landroid/content/Intent;

    iput-object p3, p0, Lvxb;->d:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lvxb;->b:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    iget-object v1, p0, Lvxb;->c:Landroid/content/Intent;

    iget-object p0, p0, Lvxb;->d:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->P0(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Landroid/content/Intent;Lcom/transsion/dbdata/beans/media/PlayVideoData;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method
