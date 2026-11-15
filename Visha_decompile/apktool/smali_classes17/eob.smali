.class public final synthetic Leob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic b:Lcom/yandex/div/core/view2/errors/VariableView;

.field public final synthetic c:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/div/core/view2/errors/VariableView;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leob;->b:Lcom/yandex/div/core/view2/errors/VariableView;

    iput-object p2, p0, Leob;->c:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Leob;->b:Lcom/yandex/div/core/view2/errors/VariableView;

    iget-object p0, p0, Leob;->c:Landroid/widget/EditText;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/yandex/div/core/view2/errors/VariableView;->a(Lcom/yandex/div/core/view2/errors/VariableView;Landroid/widget/EditText;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
