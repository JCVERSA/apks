.class public Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$c;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;Landroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$c;->a:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$c;->a:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->r(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;C)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result p0

    return p0
.end method

.method public deleteSurroundingText(II)Z
    .locals 3

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$c;->a:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->c(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x0

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$c;->a:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->c(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$c;->a:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-static {v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->c(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->m(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$c;->a:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v2

    :cond_0
    return p2
.end method

.method public performEditorAction(I)Z
    .locals 1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$c;->a:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->finishEditing()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->performEditorAction(I)Z

    move-result p0

    return p0
.end method
