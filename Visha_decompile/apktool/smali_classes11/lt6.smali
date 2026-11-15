.class public final synthetic Llt6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/widgets/MusicAlbumView;

.field public final synthetic c:Lcom/transsion/dbdata/beans/media/MediaItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/widgets/MusicAlbumView;Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llt6;->b:Lcom/transsion/playercommon/widgets/MusicAlbumView;

    iput-object p2, p0, Llt6;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Llt6;->b:Lcom/transsion/playercommon/widgets/MusicAlbumView;

    iget-object p0, p0, Llt6;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {v0, p0}, Lcom/transsion/playercommon/widgets/MusicAlbumView;->a(Lcom/transsion/playercommon/widgets/MusicAlbumView;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    return-void
.end method
