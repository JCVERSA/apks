.class public final synthetic Lnyb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

.field public final synthetic c:Lcom/transsion/dbdata/beans/media/PlayVideoData;

.field public final synthetic d:Lcom/transsion/dbdata/beans/VideoCloudCache;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Lcom/transsion/dbdata/beans/media/PlayVideoData;Lcom/transsion/dbdata/beans/VideoCloudCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnyb;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iput-object p2, p0, Lnyb;->c:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput-object p3, p0, Lnyb;->d:Lcom/transsion/dbdata/beans/VideoCloudCache;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lnyb;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-object v1, p0, Lnyb;->c:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-object p0, p0, Lnyb;->d:Lcom/transsion/dbdata/beans/VideoCloudCache;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->B(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Lcom/transsion/dbdata/beans/media/PlayVideoData;Lcom/transsion/dbdata/beans/VideoCloudCache;Ljava/lang/Throwable;)V

    return-void
.end method
