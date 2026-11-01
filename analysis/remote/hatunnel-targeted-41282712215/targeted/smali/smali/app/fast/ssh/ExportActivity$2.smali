.class Lapp/fast/ssh/ExportActivity$2;
.super Ljava/lang/Object;
.source "ExportActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/ExportActivity;->checkedListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/fast/ssh/ExportActivity;


# direct methods
.method constructor <init>(Lapp/fast/ssh/ExportActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/ExportActivity$2;->this$0:Lapp/fast/ssh/ExportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .prologue
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p2

    const v0, 0x7f090095

    const-string/jumbo v1, "\u2e50"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u2e51"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Lapp/fast/ssh/ExportActivity$TextQuery;

    iget-object v0, p0, Lapp/fast/ssh/ExportActivity$2;->this$0:Lapp/fast/ssh/ExportActivity;

    invoke-direct {p2, v0}, Lapp/fast/ssh/ExportActivity$TextQuery;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "\u2e52"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lapp/fast/ssh/ExportActivity$TextQuery;->setTitle(Ljava/lang/String;)V

    iget-object v0, p2, Lapp/fast/ssh/ExportActivity$TextQuery;->input:Landroid/widget/EditText;

    iget-object v3, p0, Lapp/fast/ssh/ExportActivity$2;->this$0:Lapp/fast/ssh/ExportActivity;

    invoke-static {v3}, Lapp/fast/ssh/ExportActivity;->access$300(Lapp/fast/ssh/ExportActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lapp/fast/ssh/ExportActivity$TextQuery;->builder:Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v3, Lapp/fast/ssh/ExportActivity$2$1;

    invoke-direct {v3, p0, p2, p1}, Lapp/fast/ssh/ExportActivity$2$1;-><init>(Lapp/fast/ssh/ExportActivity$2;Lapp/fast/ssh/ExportActivity$TextQuery;Landroid/widget/CompoundButton;)V

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p2, Lapp/fast/ssh/ExportActivity$TextQuery;->builder:Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v2, Lapp/fast/ssh/ExportActivity$2$2;

    invoke-direct {v2, p0, p1}, Lapp/fast/ssh/ExportActivity$2$2;-><init>(Lapp/fast/ssh/ExportActivity$2;Landroid/widget/CompoundButton;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p2, Lapp/fast/ssh/ExportActivity$TextQuery;->builder:Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lapp/fast/ssh/ExportActivity$2$3;

    invoke-direct {v1, p0, p1}, Lapp/fast/ssh/ExportActivity$2$3;-><init>(Lapp/fast/ssh/ExportActivity$2;Landroid/widget/CompoundButton;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p2}, Lapp/fast/ssh/ExportActivity$TextQuery;->show()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p2

    const v0, 0x7f090093

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Lapp/fast/ssh/ExportActivity$TextQuery;

    iget-object v0, p0, Lapp/fast/ssh/ExportActivity$2;->this$0:Lapp/fast/ssh/ExportActivity;

    invoke-direct {p2, v0}, Lapp/fast/ssh/ExportActivity$TextQuery;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "\u2e53"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lapp/fast/ssh/ExportActivity$TextQuery;->setTitle(Ljava/lang/String;)V

    iget-object v0, p2, Lapp/fast/ssh/ExportActivity$TextQuery;->input:Landroid/widget/EditText;

    iget-object v3, p0, Lapp/fast/ssh/ExportActivity$2;->this$0:Lapp/fast/ssh/ExportActivity;

    invoke-static {v3}, Lapp/fast/ssh/ExportActivity;->access$400(Lapp/fast/ssh/ExportActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lapp/fast/ssh/ExportActivity$TextQuery;->builder:Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v3, Lapp/fast/ssh/ExportActivity$2$4;

    invoke-direct {v3, p0, p2, p1}, Lapp/fast/ssh/ExportActivity$2$4;-><init>(Lapp/fast/ssh/ExportActivity$2;Lapp/fast/ssh/ExportActivity$TextQuery;Landroid/widget/CompoundButton;)V

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p2, Lapp/fast/ssh/ExportActivity$TextQuery;->builder:Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v2, Lapp/fast/ssh/ExportActivity$2$5;

    invoke-direct {v2, p0, p1}, Lapp/fast/ssh/ExportActivity$2$5;-><init>(Lapp/fast/ssh/ExportActivity$2;Landroid/widget/CompoundButton;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p2, Lapp/fast/ssh/ExportActivity$TextQuery;->builder:Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lapp/fast/ssh/ExportActivity$2$6;

    invoke-direct {v1, p0, p1}, Lapp/fast/ssh/ExportActivity$2$6;-><init>(Lapp/fast/ssh/ExportActivity$2;Landroid/widget/CompoundButton;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p2}, Lapp/fast/ssh/ExportActivity$TextQuery;->show()V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p2

    const v0, 0x7f090098

    if-ne p2, v0, :cond_3

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->datePicker()Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;

    move-result-object p2

    const-string/jumbo v0, "\u2e54"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->setTitleText(Ljava/lang/CharSequence;)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->setSelection(Ljava/lang/Object;)Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;

    invoke-virtual {p2}, Lcom/google/android/material/datepicker/MaterialDatePicker$Builder;->build()Lcom/google/android/material/datepicker/MaterialDatePicker;

    move-result-object p2

    iget-object v0, p0, Lapp/fast/ssh/ExportActivity$2;->this$0:Lapp/fast/ssh/ExportActivity;

    invoke-virtual {v0}, Lapp/fast/ssh/ExportActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "\u2e55"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->showNow(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    new-instance v0, Lapp/fast/ssh/ExportActivity$2$7;

    invoke-direct {v0, p0, p1, p2}, Lapp/fast/ssh/ExportActivity$2$7;-><init>(Lapp/fast/ssh/ExportActivity$2;Landroid/widget/CompoundButton;Lcom/google/android/material/datepicker/MaterialDatePicker;)V

    invoke-virtual {p2, v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->addOnPositiveButtonClickListener(Lcom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener;)Z

    new-instance v0, Lapp/fast/ssh/ExportActivity$2$8;

    invoke-direct {v0, p0, p1}, Lapp/fast/ssh/ExportActivity$2$8;-><init>(Lapp/fast/ssh/ExportActivity$2;Landroid/widget/CompoundButton;)V

    invoke-virtual {p2, v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->addOnNegativeButtonClickListener(Landroid/view/View$OnClickListener;)Z

    new-instance v0, Lapp/fast/ssh/ExportActivity$2$9;

    invoke-direct {v0, p0, p1}, Lapp/fast/ssh/ExportActivity$2$9;-><init>(Lapp/fast/ssh/ExportActivity$2;Landroid/widget/CompoundButton;)V

    invoke-virtual {p2, v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->addOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Z

    return-void

    :cond_2
    const-string/jumbo p2, "\u2e56"

    invoke-static {p2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
