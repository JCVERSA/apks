.class public Lcom/transsion/playercommon/adapter/AudioListCoverAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;->v(Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/ImageView;

.field public final synthetic c:Lcom/transsion/dbdata/beans/media/AudioItem;

.field public final synthetic d:Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;Landroid/widget/ImageView;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter$a;->d:Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;

    iput-object p2, p0, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter$a;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter$a;->c:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 0

    iget-object p1, p0, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter$a;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter$a;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter$a;->c:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter$a;->d:Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;

    iget-object p2, p0, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter$a;->c:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object p0, p0, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter$a;->b:Landroid/widget/ImageView;

    invoke-static {p1, p2, p0}, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;->k(Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/widget/ImageView;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter$a;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p0

    return p0
.end method
