.class public final synthetic Lsa0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsa0;->b:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    iput p2, p0, Lsa0;->c:I

    iput p3, p0, Lsa0;->d:I

    iput p4, p0, Lsa0;->e:I

    iput p5, p0, Lsa0;->f:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v0, p0, Lsa0;->b:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;

    iget v1, p0, Lsa0;->c:I

    iget v2, p0, Lsa0;->d:I

    iget v3, p0, Lsa0;->e:I

    iget v4, p0, Lsa0;->f:I

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;->a(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$c;IIIILandroid/animation/ValueAnimator;)V

    return-void
.end method
