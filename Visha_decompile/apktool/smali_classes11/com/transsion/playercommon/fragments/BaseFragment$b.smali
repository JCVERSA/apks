.class public Lcom/transsion/playercommon/fragments/BaseFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/fragments/BaseFragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/fragments/BaseFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/fragments/BaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment$b;->a:Lcom/transsion/playercommon/fragments/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment$b;->a:Lcom/transsion/playercommon/fragments/BaseFragment;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onFragmentAnimationEnd(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment$b;->a:Lcom/transsion/playercommon/fragments/BaseFragment;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onFragmentAnimationStart(Landroid/view/animation/Animation;)V

    return-void
.end method
