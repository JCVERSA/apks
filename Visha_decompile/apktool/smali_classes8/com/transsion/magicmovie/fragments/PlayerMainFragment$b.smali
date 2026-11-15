.class public Lcom/transsion/magicmovie/fragments/PlayerMainFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/widgets/SearchFileView$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->p1(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$b;->a:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$b;->a:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-static {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->g0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Lcom/transsion/playercommon/videomodel/MainViewModel;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/MainViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public c(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 1

    sget-object v0, Lo06;->f:Ljava/lang/String;

    invoke-static {v0}, Lo06;->e(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$b;->a:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->v0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;Lcom/transsion/dbdata/beans/media/MediaItem;I)V

    return-void
.end method

.method public d(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$b;->a:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->u0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method
