.class public final synthetic Lexb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/player/VideoPlayManager;

.field public final synthetic c:Lcom/transsion/dbdata/beans/media/MediaItem;

.field public final synthetic d:Z

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/player/VideoPlayManager;Lcom/transsion/dbdata/beans/media/MediaItem;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexb;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    iput-object p2, p0, Lexb;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    iput-boolean p3, p0, Lexb;->d:Z

    iput-boolean p4, p0, Lexb;->e:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lexb;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    iget-object v1, p0, Lexb;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean v2, p0, Lexb;->d:Z

    iget-boolean p0, p0, Lexb;->e:Z

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->h(Lcom/transsion/magicvideo/player/VideoPlayManager;Lcom/transsion/dbdata/beans/media/MediaItem;ZZLcom/transsion/dbdata/beans/media/MediaItem;)V

    return-void
.end method
