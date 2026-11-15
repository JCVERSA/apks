.class public final synthetic Lfyb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

.field public final synthetic c:Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

.field public final synthetic d:I

.field public final synthetic e:F


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;IF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfyb;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iput-object p2, p0, Lfyb;->c:Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    iput p3, p0, Lfyb;->d:I

    iput p4, p0, Lfyb;->e:F

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lfyb;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-object v1, p0, Lfyb;->c:Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    iget v2, p0, Lfyb;->d:I

    iget p0, p0, Lfyb;->e:F

    check-cast p1, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->J(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;IFLcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
