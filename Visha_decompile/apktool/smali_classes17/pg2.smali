.class public final synthetic Lpg2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcom/yandex/div/core/view2/divs/DivBaseBinder;

.field public final synthetic d:Lcom/yandex/div/core/view2/Div2View;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;

.field public final synthetic g:Lcom/yandex/div/core/view2/a;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lcom/yandex/div/core/view2/divs/DivBaseBinder;Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;Lcom/yandex/div/core/view2/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpg2;->b:Landroid/view/View;

    iput-object p2, p0, Lpg2;->c:Lcom/yandex/div/core/view2/divs/DivBaseBinder;

    iput-object p3, p0, Lpg2;->d:Lcom/yandex/div/core/view2/Div2View;

    iput-object p4, p0, Lpg2;->e:Ljava/lang/String;

    iput-object p5, p0, Lpg2;->f:Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;

    iput-object p6, p0, Lpg2;->g:Lcom/yandex/div/core/view2/a;

    iput-object p7, p0, Lpg2;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lpg2;->b:Landroid/view/View;

    iget-object v2, v0, Lpg2;->c:Lcom/yandex/div/core/view2/divs/DivBaseBinder;

    iget-object v3, v0, Lpg2;->d:Lcom/yandex/div/core/view2/Div2View;

    iget-object v4, v0, Lpg2;->e:Ljava/lang/String;

    iget-object v5, v0, Lpg2;->f:Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;

    iget-object v6, v0, Lpg2;->g:Lcom/yandex/div/core/view2/a;

    iget-object v7, v0, Lpg2;->h:Ljava/lang/String;

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    invoke-static/range {v0 .. v15}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->b(Landroid/view/View;Lcom/yandex/div/core/view2/divs/DivBaseBinder;Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;Lcom/yandex/div/core/view2/a;Ljava/lang/String;Landroid/view/View;IIIIIIII)V

    return-void
.end method
