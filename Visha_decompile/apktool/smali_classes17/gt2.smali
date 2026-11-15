.class public final synthetic Lgt2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic b:Lcom/yandex/div/core/tooltip/DivTooltipController;

.field public final synthetic c:Lcom/yandex/div2/DivTooltip;

.field public final synthetic d:Lcom/yandex/div/core/view2/a;

.field public final synthetic e:Lcom/yandex/div/core/tooltip/DivTooltipContainer;

.field public final synthetic f:Lcom/yandex/div/core/view2/Div2View;

.field public final synthetic g:Landroid/view/View;

.field public final synthetic h:Lb19;

.field public final synthetic i:Lgqa;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/div/core/tooltip/DivTooltipController;Lcom/yandex/div2/DivTooltip;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/tooltip/DivTooltipContainer;Lcom/yandex/div/core/view2/Div2View;Landroid/view/View;Lb19;Lgqa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgt2;->b:Lcom/yandex/div/core/tooltip/DivTooltipController;

    iput-object p2, p0, Lgt2;->c:Lcom/yandex/div2/DivTooltip;

    iput-object p3, p0, Lgt2;->d:Lcom/yandex/div/core/view2/a;

    iput-object p4, p0, Lgt2;->e:Lcom/yandex/div/core/tooltip/DivTooltipContainer;

    iput-object p5, p0, Lgt2;->f:Lcom/yandex/div/core/view2/Div2View;

    iput-object p6, p0, Lgt2;->g:Landroid/view/View;

    iput-object p7, p0, Lgt2;->h:Lb19;

    iput-object p8, p0, Lgt2;->i:Lgqa;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 8

    iget-object v0, p0, Lgt2;->b:Lcom/yandex/div/core/tooltip/DivTooltipController;

    iget-object v1, p0, Lgt2;->c:Lcom/yandex/div2/DivTooltip;

    iget-object v2, p0, Lgt2;->d:Lcom/yandex/div/core/view2/a;

    iget-object v3, p0, Lgt2;->e:Lcom/yandex/div/core/tooltip/DivTooltipContainer;

    iget-object v4, p0, Lgt2;->f:Lcom/yandex/div/core/view2/Div2View;

    iget-object v5, p0, Lgt2;->g:Landroid/view/View;

    iget-object v6, p0, Lgt2;->h:Lb19;

    iget-object v7, p0, Lgt2;->i:Lgqa;

    invoke-static/range {v0 .. v7}, Lcom/yandex/div/core/tooltip/DivTooltipController;->a(Lcom/yandex/div/core/tooltip/DivTooltipController;Lcom/yandex/div2/DivTooltip;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/tooltip/DivTooltipContainer;Lcom/yandex/div/core/view2/Div2View;Landroid/view/View;Lb19;Lgqa;)V

    return-void
.end method
