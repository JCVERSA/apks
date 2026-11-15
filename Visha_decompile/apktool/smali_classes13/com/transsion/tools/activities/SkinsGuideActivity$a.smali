.class public Lcom/transsion/tools/activities/SkinsGuideActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/activities/SkinsGuideActivity;->r0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/ImageView;

.field public final synthetic c:Lcom/transsion/tools/activities/SkinsGuideActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/activities/SkinsGuideActivity;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/activities/SkinsGuideActivity$a;->c:Lcom/transsion/tools/activities/SkinsGuideActivity;

    iput-object p2, p0, Lcom/transsion/tools/activities/SkinsGuideActivity$a;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsGuideActivity$a;->b:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
