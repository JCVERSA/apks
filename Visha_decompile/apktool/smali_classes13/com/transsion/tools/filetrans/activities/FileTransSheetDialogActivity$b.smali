.class public final Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$b;
.super Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity;->A1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$b;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$b;->b:Landroid/widget/TextView;

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method
