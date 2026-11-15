.class public Lcom/transsion/onlinevideo/widgets/banner/ChannelBannerAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/widgets/banner/ChannelBannerAdapter;->y(Lcom/zhpan/bannerview/BaseViewHolder;Lcom/transsion/dbdata/beans/appconfig/BannerBean;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Lcom/transsion/onlinevideo/widgets/banner/ChannelBannerAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/widgets/banner/ChannelBannerAdapter;J)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBannerAdapter$a;->c:Lcom/transsion/onlinevideo/widgets/banner/ChannelBannerAdapter;

    iput-wide p2, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBannerAdapter$a;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    sget-object p1, Lcom/bumptech/glide/load/DataSource;->REMOTE:Lcom/bumptech/glide/load/DataSource;

    if-ne p4, p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide p3, p0, Lcom/transsion/onlinevideo/widgets/banner/ChannelBannerAdapter$a;->b:J

    sub-long/2addr p1, p3

    const-string p0, "banner"

    invoke-static {p1, p2, p0}, Lc06;->o(JLjava/lang/String;)V

    :cond_0
    sget-boolean p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->bTopBarChanged:Z

    const/4 p1, 0x0

    if-nez p0, :cond_1

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 p2, 0x466

    new-array p3, p1, [Ljava/lang/Object;

    invoke-virtual {p0, p2, p3}, Lh27;->e(I[Ljava/lang/Object;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->bTopBarChanged:Z

    :cond_1
    return p1
.end method

.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/onlinevideo/widgets/banner/ChannelBannerAdapter$a;->a(Landroid/graphics/Bitmap;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p0

    return p0
.end method
