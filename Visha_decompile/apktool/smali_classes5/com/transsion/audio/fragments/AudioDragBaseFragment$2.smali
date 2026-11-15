.class public Lcom/transsion/audio/fragments/AudioDragBaseFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragments/AudioDragBaseFragment;->N1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/audio/fragments/AudioDragBaseFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/AudioDragBaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$2;->a:Lcom/transsion/audio/fragments/AudioDragBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$2;->a:Lcom/transsion/audio/fragments/AudioDragBaseFragment;

    iget-object v0, v0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$2;->a:Lcom/transsion/audio/fragments/AudioDragBaseFragment;

    iget-object v0, v0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    iput-object p1, v0, Lcom/transsion/playercommon/adapter/AudioListCoverAdapter;->q:Ljava/util/List;

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$2;->a:Lcom/transsion/audio/fragments/AudioDragBaseFragment;

    iget-object p1, p1, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    new-instance v0, Lcom/transsion/audio/fragments/AudioDragBaseFragment$2$1;

    invoke-direct {v0, p0}, Lcom/transsion/audio/fragments/AudioDragBaseFragment$2$1;-><init>(Lcom/transsion/audio/fragments/AudioDragBaseFragment$2;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioDragBaseFragment$2;->a(Ljava/util/List;)V

    return-void
.end method
