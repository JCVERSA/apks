.class public Lcom/transsion/audio/fragments/AudiosFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragments/AudiosFragment;->h3(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/dbdata/beans/media/AudioItem;

.field public final synthetic b:I

.field public final synthetic c:Lcom/transsion/audio/fragments/AudiosFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/AudiosFragment;Lcom/transsion/dbdata/beans/media/AudioItem;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudiosFragment$d;->c:Lcom/transsion/audio/fragments/AudiosFragment;

    iput-object p2, p0, Lcom/transsion/audio/fragments/AudiosFragment$d;->a:Lcom/transsion/dbdata/beans/media/AudioItem;

    iput p3, p0, Lcom/transsion/audio/fragments/AudiosFragment$d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic j(Lcom/transsion/audio/fragments/AudiosFragment$d;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudiosFragment$d;->k(I)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    iget v0, p0, Lcom/transsion/audio/fragments/AudiosFragment$d;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudiosFragment$d;->c:Lcom/transsion/audio/fragments/AudiosFragment;

    iget-object v1, v1, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/transsion/audio/fragments/AudiosFragment$d;->b:I

    new-instance v2, Lm20;

    invoke-direct {v2, p0, v1}, Lm20;-><init>(Lcom/transsion/audio/fragments/AudiosFragment$d;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment$d;->c:Lcom/transsion/audio/fragments/AudiosFragment;

    invoke-virtual {v0}, Lcom/transsion/audio/fragments/AudiosFragment;->A1()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment$d;->c:Lcom/transsion/audio/fragments/AudiosFragment;

    invoke-static {v0}, Lcom/transsion/audio/fragments/AudiosFragment;->B2(Lcom/transsion/audio/fragments/AudiosFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudiosFragment$d;->c:Lcom/transsion/audio/fragments/AudiosFragment;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/audio/fragments/AudiosFragment;->editMode(Z)V

    :cond_1
    const-string p0, "AudiosFragment"

    const-string v0, "deleteSuccess"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudiosFragment$d;->c:Lcom/transsion/audio/fragments/AudiosFragment;

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudiosFragment$d;->a:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v0, v1, p1, p2}, Lcom/transsion/audio/fragments/AudiosFragment;->F0(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudiosFragment$d;->c:Lcom/transsion/audio/fragments/AudiosFragment;

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudiosFragment$d;->a:Lcom/transsion/dbdata/beans/media/AudioItem;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, p2, v0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->t1(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;Z)V

    return-void
.end method

.method public final synthetic k(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudiosFragment$d;->c:Lcom/transsion/audio/fragments/AudiosFragment;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->v1(I)V

    return-void
.end method
