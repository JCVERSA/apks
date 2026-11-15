.class public Lcom/transsion/magicmovie/fragments/PlayerMainFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicmovie/fragments/PlayerMainFragment;
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

    iput-object p1, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$a;->a:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$a;->a:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-static {v0, p1}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->m0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;Z)V

    iget-object p0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$a;->a:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-static {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->s0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)V

    return-void
.end method

.method public b(Ljava/util/ArrayList;ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$a;->a:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-static {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->y0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/playercommon/activities/BaseActivity;->selectItems(Ljava/util/ArrayList;ZZ)V

    return-void
.end method

.method public c(ZI)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$a;->a:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-static {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->x0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/activities/BaseActivity;->enterCloudUploadEditMode(ZI)V

    return-void
.end method

.method public d(ZIZ)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$a;->a:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-static {v0, p1}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->m0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;Z)V

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$a;->a:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-static {v0, p2}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->o0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;I)V

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$a;->a:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-static {v0, p3}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->n0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;Z)V

    iget-object v0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$a;->a:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-static {v0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->w0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/playercommon/activities/BaseActivity;->enterEditMode(ZIZ)V

    iget-object p0, p0, Lcom/transsion/magicmovie/fragments/PlayerMainFragment$a;->a:Lcom/transsion/magicmovie/fragments/PlayerMainFragment;

    invoke-static {p0}, Lcom/transsion/magicmovie/fragments/PlayerMainFragment;->s0(Lcom/transsion/magicmovie/fragments/PlayerMainFragment;)V

    return-void
.end method
