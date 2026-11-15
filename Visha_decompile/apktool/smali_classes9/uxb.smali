.class public final synthetic Luxb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/transsion/dbdata/beans/media/PlayVideoData;

.field public final synthetic e:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;ZLcom/transsion/dbdata/beans/media/PlayVideoData;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luxb;->b:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    iput-boolean p2, p0, Luxb;->c:Z

    iput-object p3, p0, Luxb;->d:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput-object p4, p0, Luxb;->e:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Luxb;->b:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    iget-boolean v1, p0, Luxb;->c:Z

    iget-object v2, p0, Luxb;->d:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-object p0, p0, Luxb;->e:Landroid/content/Intent;

    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->I0(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;ZLcom/transsion/dbdata/beans/media/PlayVideoData;Landroid/content/Intent;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    return-void
.end method
