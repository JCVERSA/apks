.class public final synthetic Lz47;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;


# direct methods
.method public synthetic constructor <init>(FFLcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lz47;->b:F

    iput p2, p0, Lz47;->c:F

    iput-object p3, p0, Lz47;->d:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget v0, p0, Lz47;->b:F

    iget v1, p0, Lz47;->c:F

    iget-object p0, p0, Lz47;->d:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;->c(FFLcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;Landroid/animation/ValueAnimator;)V

    return-void
.end method
