.class public Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;->i(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

.field public final synthetic c:Lcom/chad/library/adapter/base/BaseViewHolder;

.field public final synthetic d:Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;Lcom/chad/library/adapter/base/BaseViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter$a;->d:Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;

    iput-object p2, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter$a;->b:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    iput-object p3, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter$a;->c:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    iget-object p1, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter$a;->b:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setInvalid(Z)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter$a;->d:Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;

    iget-object p3, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter$a;->c:Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object p4, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter$a;->b:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-static {p1, p3, p4}, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;->d(Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter$a;->d:Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;

    iget-object p3, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter$a;->c:Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object p4, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter$a;->b:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-static {p1, p3, p4}, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;->c(Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter$a;->d:Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;

    invoke-static {p1}, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;->b(Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;)Ljava/util/Map;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter$a;->b:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoCover()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p2
.end method

.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 1

    iget-object p1, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter$a;->b:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoFileName()Ljava/lang/String;

    move-result-object p1

    const-string p2, ".m3u8"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter$a;->b:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoCover()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter$a;->b:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoCover()Ljava/lang/String;

    move-result-object p1

    const-string p3, ".ts"

    invoke-virtual {p1, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter$a;->d:Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;

    invoke-static {p1}, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;->b(Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;)Ljava/util/Map;

    move-result-object p1

    iget-object p3, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter$a;->b:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-virtual {p3}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoCover()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter$a;->d:Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;

    invoke-static {p1}, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;->b(Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;)Ljava/util/Map;

    move-result-object p1

    iget-object p3, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter$a;->b:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-virtual {p3}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoCover()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    const/4 p3, 0x6

    if-ge p1, p3, :cond_1

    iget-object p3, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter$a;->d:Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;

    invoke-static {p3}, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;->g(Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;)Ljava/util/List;

    move-result-object p4

    iget-object v0, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter$a;->b:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-interface {p4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p4

    iget-object v0, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter$a;->d:Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v0

    add-int/2addr p4, v0

    invoke-virtual {p3, p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    const/4 p3, 0x1

    add-int/2addr p1, p3

    iget-object p4, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter$a;->d:Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;

    invoke-static {p4}, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;->b(Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;)Ljava/util/Map;

    move-result-object p4

    iget-object v0, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter$a;->b:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->getVideoCover()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter$a;->b:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-virtual {p1, p3}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setInvalid(Z)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter$a;->b:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-virtual {p1, p2}, Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;->setInvalid(Z)V

    :goto_1
    iget-object p1, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter$a;->d:Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;

    iget-object p3, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter$a;->c:Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object p4, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter$a;->b:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-static {p1, p3, p4}, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;->d(Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter$a;->d:Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;

    iget-object p3, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter$a;->c:Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter$a;->b:Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;

    invoke-static {p1, p3, p0}, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;->c(Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/sniff/SniffVideoInfoBean;)V

    return p2
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/sniffer_load/adapter/SniffMultiVideoAdapter$a;->a(Landroid/graphics/Bitmap;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p0

    return p0
.end method
