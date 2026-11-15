.class public final Lcom/yandex/div/core/view2/divs/DivStateBinder$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivStateBinder;->m(Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivState;Lcom/yandex/div2/DivState$State;Lcom/yandex/div2/DivState;Lcom/yandex/div2/DivState$State;Lcom/yandex/div2/Div;Lcom/yandex/div/core/state/DivStatePath;Loj3;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/yandex/div/core/view2/divs/DivStateBinder;

.field public final synthetic c:Lcom/yandex/div/core/view2/Div2View;

.field public final synthetic d:Loj3;

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Lcom/yandex/div2/Div;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/DivStateBinder;Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/Div;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$b;->b:Lcom/yandex/div/core/view2/divs/DivStateBinder;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$b;->c:Lcom/yandex/div/core/view2/Div2View;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$b;->d:Loj3;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$b;->e:Landroid/view/View;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/DivStateBinder$b;->f:Lcom/yandex/div2/Div;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v1, v0, Lcom/yandex/div/core/view2/divs/DivStateBinder$b;->b:Lcom/yandex/div/core/view2/divs/DivStateBinder;

    invoke-static {v1}, Lcom/yandex/div/core/view2/divs/DivStateBinder;->i(Lcom/yandex/div/core/view2/divs/DivStateBinder;)Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    move-result-object v1

    iget-object v2, v0, Lcom/yandex/div/core/view2/divs/DivStateBinder$b;->c:Lcom/yandex/div/core/view2/Div2View;

    iget-object v3, v0, Lcom/yandex/div/core/view2/divs/DivStateBinder$b;->d:Loj3;

    iget-object v4, v0, Lcom/yandex/div/core/view2/divs/DivStateBinder$b;->e:Landroid/view/View;

    iget-object v0, v0, Lcom/yandex/div/core/view2/divs/DivStateBinder$b;->f:Lcom/yandex/div2/Div;

    const/16 v5, 0x30

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object p0, v1

    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v0

    move-object p5, v7

    move-object p6, v8

    move/from16 p7, v5

    move-object/from16 p8, v6

    invoke-static/range {p0 .. p8}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->x(Lcom/yandex/div/core/view2/DivVisibilityActionTracker;Lcom/yandex/div/core/view2/Div2View;Loj3;Landroid/view/View;Lcom/yandex/div2/Div;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method
