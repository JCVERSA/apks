.class public final synthetic Lwxb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

.field public final synthetic c:Lcom/transsion/dbdata/beans/media/PlayVideoData;

.field public final synthetic d:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Lcom/transsion/dbdata/beans/media/PlayVideoData;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwxb;->b:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    iput-object p2, p0, Lwxb;->c:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput-object p3, p0, Lwxb;->d:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lwxb;->b:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    iget-object v1, p0, Lwxb;->c:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-object p0, p0, Lwxb;->d:Landroid/content/Intent;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->H0(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Lcom/transsion/dbdata/beans/media/PlayVideoData;Landroid/content/Intent;Ljava/lang/Throwable;)V

    return-void
.end method
