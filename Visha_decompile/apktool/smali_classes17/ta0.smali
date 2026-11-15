.class public final synthetic Lta0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lta0;->b:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lta0;->b:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-static {p0, p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->b(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;Landroid/animation/ValueAnimator;)V

    return-void
.end method
