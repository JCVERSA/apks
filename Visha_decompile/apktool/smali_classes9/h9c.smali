.class public final synthetic Lh9c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z

.field public final synthetic e:Lcom/transsion/dbdata/beans/media/MediaItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;Ljava/lang/String;ZLcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh9c;->b:Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    iput-object p2, p0, Lh9c;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lh9c;->d:Z

    iput-object p4, p0, Lh9c;->e:Lcom/transsion/dbdata/beans/media/MediaItem;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lh9c;->b:Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    iget-object v1, p0, Lh9c;->c:Ljava/lang/String;

    iget-boolean v2, p0, Lh9c;->d:Z

    iget-object p0, p0, Lh9c;->e:Lcom/transsion/dbdata/beans/media/MediaItem;

    check-cast p1, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->w0(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;Ljava/lang/String;ZLcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/magicvideo/fragments/VideosBaseFragment;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
