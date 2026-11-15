.class public final synthetic Lpa0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpa0;->b:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lpa0;->b:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;

    invoke-static {p0, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->a(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;Landroid/animation/ValueAnimator;)V

    return-void
.end method
