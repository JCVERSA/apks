.class public final Lcom/yandex/div/core/tooltip/DivTooltipController$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/tooltip/DivTooltipController;->p(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivTooltip;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/yandex/div/core/tooltip/DivTooltipController;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Lcom/yandex/div2/DivTooltip;

.field public final synthetic e:Lcom/yandex/div/core/view2/a;

.field public final synthetic f:Z


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/tooltip/DivTooltipController;Landroid/view/View;Lcom/yandex/div2/DivTooltip;Lcom/yandex/div/core/view2/a;Z)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$a;->b:Lcom/yandex/div/core/tooltip/DivTooltipController;

    iput-object p2, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$a;->c:Landroid/view/View;

    iput-object p3, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$a;->d:Lcom/yandex/div2/DivTooltip;

    iput-object p4, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$a;->e:Lcom/yandex/div/core/view2/a;

    iput-boolean p5, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$a;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$a;->b:Lcom/yandex/div/core/tooltip/DivTooltipController;

    iget-object p2, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$a;->c:Landroid/view/View;

    iget-object p3, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$a;->d:Lcom/yandex/div2/DivTooltip;

    iget-object p4, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$a;->e:Lcom/yandex/div/core/view2/a;

    iget-boolean p0, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$a;->f:Z

    invoke-static {p1, p2, p3, p4, p0}, Lcom/yandex/div/core/tooltip/DivTooltipController;->f(Lcom/yandex/div/core/tooltip/DivTooltipController;Landroid/view/View;Lcom/yandex/div2/DivTooltip;Lcom/yandex/div/core/view2/a;Z)V

    return-void
.end method
