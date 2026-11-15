.class public Lcom/transsion/widgetslib/view/damping/HeaderHelper$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/damping/HeaderHelper;->t(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/view/damping/HeaderHelper;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/damping/HeaderHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper$a;->b:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper$a;->b:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    float-to-int v1, p1

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->i(Lcom/transsion/widgetslib/view/damping/HeaderHelper;I)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper$a;->b:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->h(Lcom/transsion/widgetslib/view/damping/HeaderHelper;F)V

    :cond_0
    return-void
.end method
