.class public final Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel$b;->b:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel$b;->b:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->access$setMEnterAnimator$p(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;Landroid/animation/ValueAnimator;)V

    return-void
.end method
