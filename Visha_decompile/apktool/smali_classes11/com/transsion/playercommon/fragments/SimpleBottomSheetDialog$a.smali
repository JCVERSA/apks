.class public Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;->M(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog$a;->c:Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog;

    iput-object p2, p0, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog$a;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/SimpleBottomSheetDialog$a;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
