.class public Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;->o0(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog$a;->b:Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog$a;->b:Lcom/transsion/magicvideo/activities/MultiVideoResolutionSheetDialog;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->finish()V

    return-void
.end method
