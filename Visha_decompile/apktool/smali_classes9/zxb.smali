.class public final synthetic Lzxb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzxb;->b:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lzxb;->b:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    check-cast p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->M0(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Lcom/transsion/dbdata/beans/media/PlayVideoData;)V

    return-void
.end method
