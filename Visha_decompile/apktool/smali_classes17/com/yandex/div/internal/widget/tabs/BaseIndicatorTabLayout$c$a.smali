.class public Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->D(IJIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Z

.field public final synthetic c:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;


# direct methods
.method public constructor <init>(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c$a;->c:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c$a;->b:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c$a;->b:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c$a;->b:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c$a;->c:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    invoke-static {p1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->d(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;)I

    move-result v0

    iput v0, p1, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->e:I

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c$a;->c:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    const/4 p1, 0x0

    iput p1, p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->f:F

    :cond_0
    return-void
.end method
