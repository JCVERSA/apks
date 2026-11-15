.class public final synthetic Lbub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;

.field public final synthetic c:Lcom/transsion/dbdata/database/VideoPlayList;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;Lcom/transsion/dbdata/database/VideoPlayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbub;->b:Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;

    iput-object p2, p0, Lbub;->c:Lcom/transsion/dbdata/database/VideoPlayList;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbub;->b:Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;

    iget-object p0, p0, Lbub;->c:Lcom/transsion/dbdata/database/VideoPlayList;

    check-cast p1, [Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {v0, p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->e(Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;Lcom/transsion/dbdata/database/VideoPlayList;[Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
