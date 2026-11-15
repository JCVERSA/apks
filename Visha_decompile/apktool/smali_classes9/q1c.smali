.class public final synthetic Lq1c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

.field public final synthetic c:Lcom/transsion/dbdata/beans/media/MediaItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq1c;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iput-object p2, p0, Lq1c;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lq1c;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-object p0, p0, Lq1c;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    check-cast p1, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0, p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->D0(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
