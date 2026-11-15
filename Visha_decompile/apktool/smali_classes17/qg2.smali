.class public final synthetic Lqg2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic b:Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;

.field public final synthetic c:Lcom/yandex/div/core/view2/Div2View;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;Lcom/yandex/div/core/view2/Div2View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqg2;->b:Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;

    iput-object p2, p0, Lqg2;->c:Lcom/yandex/div/core/view2/Div2View;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 1

    iget-object v0, p0, Lqg2;->b:Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;

    iget-object p0, p0, Lqg2;->c:Lcom/yandex/div/core/view2/Div2View;

    invoke-static {v0, p0}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->a(Lcom/yandex/div/core/view2/divs/DivLayoutProviderVariablesHolder;Lcom/yandex/div/core/view2/Div2View;)Z

    move-result p0

    return p0
.end method
