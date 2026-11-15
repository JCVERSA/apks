.class Lcom/transsion/magicmovie/fragments/PlayerMainFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->p1(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$3;->this$0:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$3;->this$0:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-static {v0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->k0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Lcom/transsion/playercommon/widgets/SearchFileView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$3;->this$0:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-static {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->k0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Lcom/transsion/playercommon/widgets/SearchFileView;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/widgets/SearchFileView;->showOrHideKeyboard(Z)V

    :cond_0
    return-void
.end method
