.class public Lcom/transsion/audio/activities/AudioSheetDialogActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/activities/AudioSheetDialogActivity;->K0(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

.field public final synthetic c:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

.field public final synthetic d:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

.field public final synthetic e:Landroid/widget/TextView;

.field public final synthetic f:Lcom/transsion/audio/activities/AudioSheetDialogActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/activities/AudioSheetDialogActivity;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$c;->f:Lcom/transsion/audio/activities/AudioSheetDialogActivity;

    iput-object p2, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$c;->b:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iput-object p3, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$c;->c:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iput-object p4, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$c;->d:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    iput-object p5, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$c;->e:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object p1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$c;->b:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$c;->c:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$c;->d:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$c;->f:Lcom/transsion/audio/activities/AudioSheetDialogActivity;

    iget-object v2, v2, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->W:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$c;->f:Lcom/transsion/audio/activities/AudioSheetDialogActivity;

    iget-object v2, v2, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->X:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$c;->f:Lcom/transsion/audio/activities/AudioSheetDialogActivity;

    iget-object v2, v2, Lcom/transsion/audio/activities/AudioSheetDialogActivity;->Y:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$c;->e:Landroid/widget/TextView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/audio/activities/AudioSheetDialogActivity$c;->e:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
