.class public final synthetic Lg7c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgets/GestureUtil$ScorllToListener;


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/widgets/banner/VideoSlideAdapter;

.field public final synthetic b:Lcom/transsion/dbdata/beans/media/MediaItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/widgets/banner/VideoSlideAdapter;Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg7c;->a:Lcom/transsion/playercommon/widgets/banner/VideoSlideAdapter;

    iput-object p2, p0, Lg7c;->b:Lcom/transsion/dbdata/beans/media/MediaItem;

    return-void
.end method


# virtual methods
.method public final scrollTo(I)V
    .locals 1

    iget-object v0, p0, Lg7c;->a:Lcom/transsion/playercommon/widgets/banner/VideoSlideAdapter;

    iget-object p0, p0, Lg7c;->b:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {v0, p0, p1}, Lcom/transsion/playercommon/widgets/banner/VideoSlideAdapter;->A(Lcom/transsion/playercommon/widgets/banner/VideoSlideAdapter;Lcom/transsion/dbdata/beans/media/MediaItem;I)V

    return-void
.end method
