.class public Lcom/transsion/playercommon/gallery/ImageFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/gallery/ImageFragment;->initViewModel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/gallery/ImageFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/gallery/ImageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/gallery/ImageFragment$a;->a:Lcom/transsion/playercommon/gallery/ImageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lne6;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/gallery/ImageFragment$a;->a:Lcom/transsion/playercommon/gallery/ImageFragment;

    invoke-static {v0}, Lcom/transsion/playercommon/gallery/ImageFragment;->Q(Lcom/transsion/playercommon/gallery/ImageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/playercommon/gallery/ImageFragment$a;->a:Lcom/transsion/playercommon/gallery/ImageFragment;

    invoke-static {v0}, Lcom/transsion/playercommon/gallery/ImageFragment;->Q(Lcom/transsion/playercommon/gallery/ImageFragment;)Ljava/util/List;

    move-result-object v0

    iget-object p1, p1, Lne6;->b:Ljava/util/ArrayList;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/playercommon/gallery/ImageFragment$a;->a:Lcom/transsion/playercommon/gallery/ImageFragment;

    invoke-static {v0}, Lcom/transsion/playercommon/gallery/ImageFragment;->Q(Lcom/transsion/playercommon/gallery/ImageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x446

    invoke-virtual {p1, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/playercommon/gallery/ImageFragment$a;->a:Lcom/transsion/playercommon/gallery/ImageFragment;

    invoke-static {p1}, Lcom/transsion/playercommon/gallery/ImageFragment;->R(Lcom/transsion/playercommon/gallery/ImageFragment;)Lcom/transsion/playercommon/gallery/ImageAdapter;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/playercommon/gallery/ImageFragment$a;->a:Lcom/transsion/playercommon/gallery/ImageFragment;

    invoke-static {p0}, Lcom/transsion/playercommon/gallery/ImageFragment;->Q(Lcom/transsion/playercommon/gallery/ImageFragment;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lne6;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/gallery/ImageFragment$a;->a(Lne6;)V

    return-void
.end method
