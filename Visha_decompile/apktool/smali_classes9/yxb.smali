.class public final synthetic Lyxb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

.field public final synthetic c:Lcom/transsion/dbdata/beans/media/PlayVideoData;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyxb;->b:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    iput-object p2, p0, Lyxb;->c:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lyxb;->b:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    iget-object p0, p0, Lyxb;->c:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    check-cast p1, Landroid/content/Intent;

    invoke-static {v0, p0, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->O0(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Lcom/transsion/dbdata/beans/media/PlayVideoData;Landroid/content/Intent;)Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p0

    return-object p0
.end method
