.class public final Lcom/yandex/div/core/view2/errors/VariableView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/errors/VariableView$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/yandex/div/core/view2/errors/VariableView$a;


# instance fields
.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/widget/EditText;

.field public e:Le74;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div/core/view2/errors/VariableView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/core/view2/errors/VariableView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/core/view2/errors/VariableView;->f:Lcom/yandex/div/core/view2/errors/VariableView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/errors/VariableView;->d()Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/core/view2/errors/VariableView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/errors/VariableView;->d()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/div/core/view2/errors/VariableView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/errors/VariableView;->e()Landroid/widget/EditText;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div/core/view2/errors/VariableView;->d:Landroid/widget/EditText;

    sget-object v2, Lcom/yandex/div/core/view2/errors/VariableView$onEnterAction$1;->INSTANCE:Lcom/yandex/div/core/view2/errors/VariableView$onEnterAction$1;

    iput-object v2, p0, Lcom/yandex/div/core/view2/errors/VariableView;->e:Le74;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0xc8

    invoke-virtual {p0, p1, v2}, Lcom/yandex/div/core/view2/errors/VariableView;->b(Landroid/widget/TextView;I)V

    const/16 p1, 0x3c

    invoke-virtual {p0, v0, p1}, Lcom/yandex/div/core/view2/errors/VariableView;->b(Landroid/widget/TextView;I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, v4, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic a(Lcom/yandex/div/core/view2/errors/VariableView;Landroid/widget/EditText;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/view2/errors/VariableView;->f(Lcom/yandex/div/core/view2/errors/VariableView;Landroid/widget/EditText;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static final f(Lcom/yandex/div/core/view2/errors/VariableView;Landroid/widget/EditText;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this_apply"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getAction()I

    move-result p4

    if-eqz p4, :cond_0

    return p2

    :cond_0
    const/4 p4, 0x6

    if-ne p3, p4, :cond_1

    iget-object p0, p0, Lcom/yandex/div/core/view2/errors/VariableView;->e:Le74;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    :cond_1
    return p2
.end method


# virtual methods
.method public final b(Landroid/widget/TextView;I)V
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const-string v2, "resources.displayMetrics"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->L(Ljava/lang/Number;Landroid/util/DisplayMetrics;)I

    move-result p2

    const/4 v1, -0x1

    invoke-direct {v0, p2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final c(Landroid/widget/TextView;)V
    .locals 2

    const/16 p0, 0x8

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const-string v1, "resources.displayMetrics"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->L(Ljava/lang/Number;Landroid/util/DisplayMetrics;)I

    move-result p0

    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 p0, -0x1

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    sget p0, Lcom/yandex/div/R$drawable;->table_cell_background:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    new-instance v0, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v0}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMaxLines(I)V

    return-void
.end method

.method public final d()Landroid/widget/TextView;
    .locals 2

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/view2/errors/VariableView;->c(Landroid/widget/TextView;)V

    return-object v0
.end method

.method public final e()Landroid/widget/EditText;
    .locals 2

    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/view2/errors/VariableView;->c(Landroid/widget/TextView;)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    new-instance v1, Leob;

    invoke-direct {v1, p0, v0}, Leob;-><init>(Lcom/yandex/div/core/view2/errors/VariableView;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-object v0
.end method

.method public final g()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/errors/VariableView;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method public final h()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/errors/VariableView;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method public final i()Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/errors/VariableView;->d:Landroid/widget/EditText;

    return-object p0
.end method

.method public final j(Le74;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/errors/VariableView;->e:Le74;

    return-void
.end method
