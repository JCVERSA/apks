.class public Lcom/transsion/playercommon/gallery/ImageFolderFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/gallery/ImageFolderFragment;->initViewModel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/gallery/ImageFolderFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/gallery/ImageFolderFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/gallery/ImageFolderFragment$b;->a:Lcom/transsion/playercommon/gallery/ImageFolderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/gallery/ImageFolderFragment$b;->a:Lcom/transsion/playercommon/gallery/ImageFolderFragment;

    invoke-static {v0}, Lcom/transsion/playercommon/gallery/ImageFolderFragment;->Q(Lcom/transsion/playercommon/gallery/ImageFolderFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/playercommon/gallery/ImageFolderFragment$b;->a:Lcom/transsion/playercommon/gallery/ImageFolderFragment;

    invoke-static {v0}, Lcom/transsion/playercommon/gallery/ImageFolderFragment;->Q(Lcom/transsion/playercommon/gallery/ImageFolderFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/transsion/playercommon/gallery/ImageFolderFragment$b;->a:Lcom/transsion/playercommon/gallery/ImageFolderFragment;

    invoke-static {p1}, Lcom/transsion/playercommon/gallery/ImageFolderFragment;->R(Lcom/transsion/playercommon/gallery/ImageFolderFragment;)Lcom/transsion/playercommon/gallery/ImageFolderAdapter;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/playercommon/gallery/ImageFolderFragment$b;->a:Lcom/transsion/playercommon/gallery/ImageFolderFragment;

    invoke-static {p0}, Lcom/transsion/playercommon/gallery/ImageFolderFragment;->Q(Lcom/transsion/playercommon/gallery/ImageFolderFragment;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/gallery/ImageFolderFragment$b;->a(Ljava/util/List;)V

    return-void
.end method
