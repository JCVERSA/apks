.class public Lcom/transsion/playercommon/widgets/CustomOsSeekbar$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->z(FF)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$a;->b:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$a;->b:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->m(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;F)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar$a;->b:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
