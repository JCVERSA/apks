.class public Lcom/transsion/audio/fragments/PlayListFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragments/PlayListFragment;->f4(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/dbdata/beans/media/AudioItem;

.field public final synthetic b:I

.field public final synthetic c:Lcom/transsion/audio/fragments/PlayListFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/PlayListFragment;Lcom/transsion/dbdata/beans/media/AudioItem;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/PlayListFragment$c;->c:Lcom/transsion/audio/fragments/PlayListFragment;

    iput-object p2, p0, Lcom/transsion/audio/fragments/PlayListFragment$c;->a:Lcom/transsion/dbdata/beans/media/AudioItem;

    iput p3, p0, Lcom/transsion/audio/fragments/PlayListFragment$c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/transsion/audio/fragments/PlayListFragment$c;->c:Lcom/transsion/audio/fragments/PlayListFragment;

    iget v1, p0, Lcom/transsion/audio/fragments/PlayListFragment$c;->b:I

    invoke-virtual {v0, v1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->v1(I)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/PlayListFragment$c;->c:Lcom/transsion/audio/fragments/PlayListFragment;

    invoke-virtual {v0}, Lcom/transsion/audio/fragments/PlayListFragment;->A1()V

    const-string v0, "PlayListFragment"

    const-string v1, "deleteSuccess"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/PlayListFragment$c;->c:Lcom/transsion/audio/fragments/PlayListFragment;

    invoke-static {v0}, Lcom/transsion/audio/fragments/PlayListFragment;->Z2(Lcom/transsion/audio/fragments/PlayListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/fragments/PlayListFragment$c;->c:Lcom/transsion/audio/fragments/PlayListFragment;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/audio/fragments/PlayListFragment;->editMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/fragments/PlayListFragment$c;->c:Lcom/transsion/audio/fragments/PlayListFragment;

    iget-object v1, p0, Lcom/transsion/audio/fragments/PlayListFragment$c;->a:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v0, v1, p1, p2}, Lcom/transsion/audio/fragments/AudioBaseFragment;->F0(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/audio/fragments/PlayListFragment$c;->c:Lcom/transsion/audio/fragments/PlayListFragment;

    iget-object p0, p0, Lcom/transsion/audio/fragments/PlayListFragment$c;->a:Lcom/transsion/dbdata/beans/media/AudioItem;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, p2, v0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->t1(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;Z)V

    return-void
.end method
