.class public final synthetic Ls9c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

.field public final synthetic c:Lcom/transsion/dbdata/beans/media/MediaItem;

.field public final synthetic d:Lcom/transsion/dbdata/beans/media/MediaItem;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls9c;->b:Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    iput-object p2, p0, Ls9c;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    iput-object p3, p0, Ls9c;->d:Lcom/transsion/dbdata/beans/media/MediaItem;

    iput-object p4, p0, Ls9c;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Ls9c;->b:Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    iget-object v1, p0, Ls9c;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v2, p0, Ls9c;->d:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object p0, p0, Ls9c;->e:Ljava/lang/String;

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->n0(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/MediaItem;Ljava/lang/String;Landroid/util/Pair;)V

    return-void
.end method
