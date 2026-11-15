.class public Lcom/transsion/playercommon/gallery/ImageFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/gallery/ImageFragment;->T()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/gallery/ImageFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/gallery/ImageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/gallery/ImageFragment$b;->b:Lcom/transsion/playercommon/gallery/ImageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/playercommon/gallery/ImageFragment$b;->b:Lcom/transsion/playercommon/gallery/ImageFragment;

    invoke-static {p1}, Lcom/transsion/playercommon/gallery/ImageFragment;->Q(Lcom/transsion/playercommon/gallery/ImageFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;

    new-instance p2, Lmfb;

    iget-object p3, p0, Lcom/transsion/playercommon/gallery/ImageFragment$b;->b:Lcom/transsion/playercommon/gallery/ImageFragment;

    invoke-static {p3}, Lcom/transsion/playercommon/gallery/ImageFragment;->S(Lcom/transsion/playercommon/gallery/ImageFragment;)Landroid/content/Context;

    move-result-object p3

    iget-object p0, p0, Lcom/transsion/playercommon/gallery/ImageFragment$b;->b:Lcom/transsion/playercommon/gallery/ImageFragment;

    invoke-static {p0}, Lcom/transsion/playercommon/gallery/ImageFragment;->P(Lcom/transsion/playercommon/gallery/ImageFragment;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p2, p3, v0}, Lmfb;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p1}, Lcom/yalantis/gallery/dbhelper/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p2, p0}, Lmfb;->p(Landroid/net/Uri;)V

    return-void
.end method
