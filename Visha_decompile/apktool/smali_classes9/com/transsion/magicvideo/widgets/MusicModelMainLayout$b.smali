.class public Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->q(Lcom/transsion/dbdata/beans/media/MediaItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;J)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$b;->c:Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;

    iput-wide p2, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$b;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$b;JLandroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$b;->b(JLandroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public final synthetic b(JLandroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$b;->c:Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->f(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;)J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$b;->c:Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;

    invoke-static {p0, p3, p1, p2}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->j(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;Landroid/graphics/Bitmap;J)V

    return-void
.end method

.method public c(Landroid/graphics/Bitmap;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    iget-wide p2, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$b;->b:J

    iget-object p4, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$b;->c:Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;

    invoke-static {p4}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->f(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;)J

    move-result-wide p4

    cmp-long p2, p2, p4

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$b;->c:Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;

    invoke-static {p2}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->g(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;)Landroid/os/Handler;

    move-result-object p2

    iget-wide p3, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$b;->b:J

    new-instance p5, Lvu6;

    invoke-direct {p5, p0, p3, p4, p1}, Lvu6;-><init>(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$b;JLandroid/graphics/Bitmap;)V

    invoke-virtual {p2, p5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$b;->c(Landroid/graphics/Bitmap;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p0

    return p0
.end method
