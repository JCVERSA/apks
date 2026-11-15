.class public final Lcom/transsion/player/mediasession/h$a;
.super Lcom/bumptech/glide/request/target/CustomTarget;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/player/mediasession/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    .line 2
    .line 3
    sget-object v0, Lcom/transsion/player/mediasession/h;->a:Lcom/transsion/player/mediasession/h;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/transsion/player/mediasession/h;->a(Lcom/transsion/player/mediasession/h;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, " --> loadAlbum --> onLoadCleared() ---> \u52a0\u8f7d\u5931\u8d25"

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Lcom/transsion/player/mediasession/i;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/target/CustomTarget;->onLoadFailed(Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    .line 5
    .line 6
    sget-object v0, Lcom/transsion/player/mediasession/h;->a:Lcom/transsion/player/mediasession/h;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/transsion/player/mediasession/h;->a(Lcom/transsion/player/mediasession/h;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, " --> loadAlbum --> onLoadFailed() ---> \u52a0\u8f7d\u5931\u8d25"

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p1, v1}, Lcom/transsion/player/mediasession/i;->a(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    sget v1, Lcom/transsion/player/R$mipmap;->player_ic_notification_icon:I

    .line 41
    .line 42
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1}, Lcom/transsion/player/mediasession/h;->g(Landroid/graphics/Bitmap;)V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lcom/transsion/player/mediasession/h;->f()Lcom/transsion/player/mediasession/MediaService;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {}, Lcom/transsion/player/mediasession/h;->c()Lcom/transsion/player/mediasession/MediaItem;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {}, Lcom/transsion/player/mediasession/h;->e()Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {}, Lcom/transsion/player/mediasession/h;->d()Landroid/support/v4/media/session/MediaSessionCompat;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/transsion/player/mediasession/h;->o(Lcom/transsion/player/mediasession/MediaService;Lcom/transsion/player/mediasession/MediaItem;Ljava/lang/Integer;Landroid/support/v4/media/session/MediaSessionCompat;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 3

    const-string p2, "resource"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/transsion/player/mediasession/h;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/transsion/player/mediasession/h;->c()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/player/mediasession/MediaItem;->getCoverUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    invoke-static {p1}, Lcom/transsion/player/mediasession/h;->g(Landroid/graphics/Bitmap;)V

    .line 4
    sget-object p1, Lcom/transsion/player/mediasession/h;->a:Lcom/transsion/player/mediasession/h;

    invoke-static {}, Lcom/transsion/player/mediasession/h;->f()Lcom/transsion/player/mediasession/MediaService;

    move-result-object p2

    invoke-static {}, Lcom/transsion/player/mediasession/h;->c()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object v0

    invoke-static {}, Lcom/transsion/player/mediasession/h;->e()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/transsion/player/mediasession/h;->d()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/transsion/player/mediasession/h;->o(Lcom/transsion/player/mediasession/MediaService;Lcom/transsion/player/mediasession/MediaItem;Ljava/lang/Integer;Landroid/support/v4/media/session/MediaSessionCompat;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/mediasession/h$a;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
