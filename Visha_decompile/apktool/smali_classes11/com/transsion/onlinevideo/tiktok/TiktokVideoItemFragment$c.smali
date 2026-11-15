.class public final Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->d1(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$c;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    iput-object p2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$c;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$c;->d:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$c;->b(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)V

    return-void
.end method

.method public static final b(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->Y0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$VideoCoverVisibility;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 1

    const-string p3, "resource"

    invoke-static {p1, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "model"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "dataSource"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$c;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->c0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$c;->c:Ljava/lang/String;

    invoke-static {p1, p2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$c;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->n0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)I

    move-result p1

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$c;->c:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bindVideoCover ready position="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", url="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", source="

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", first="

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TiktokVideoItemFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 2

    const-string p2, "target"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$c;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->c0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$c;->c:Ljava/lang/String;

    invoke-static {p2, p3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return p3

    :cond_0
    iget-object p2, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$c;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-static {p2}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->n0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)I

    move-result p2

    iget-object p4, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$c;->c:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/GlideException;->getRootCauses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Li81;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/GlideException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindVideoCover failed position="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", url="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", error="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TiktokVideoItemFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$c;->d:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$c;->b:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    new-instance p2, Lzla;

    invoke-direct {p2, p0}, Lzla;-><init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return p3
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$c;->c(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p0

    return p0
.end method
