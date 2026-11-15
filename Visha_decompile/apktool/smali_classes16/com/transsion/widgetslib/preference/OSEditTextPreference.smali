.class public Lcom/transsion/widgetslib/preference/OSEditTextPreference;
.super Lcom/transsion/widgetslib/preference/OSDialogPreference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/preference/OSEditTextPreference$SavedState;
    }
.end annotation


# instance fields
.field public q:Landroid/widget/EditText;

.field public r:Ljava/lang/String;

.field public s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 8
    sget v0, Lcom/transsion/widgetslib/R$attr;->OsEditTextPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/preference/OSEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslib/preference/OSEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/widgetslib/preference/OSDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    new-instance p3, Landroid/widget/EditText;

    invoke-direct {p3, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->q:Landroid/widget/EditText;

    .line 3
    const-string p1, "com.android.internal.R$id"

    const-string p2, "edit"

    invoke-static {p1, p2}, Lolb;->F(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 4
    iget-object p2, p0, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->q:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    .line 5
    iget-object p1, p0, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->q:Landroid/widget/EditText;

    sget p2, Lcom/transsion/widgetslib/R$drawable;->os_dialog_edittext_bg:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 6
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->q:Landroid/widget/EditText;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public e()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public f(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->f(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->q:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, p1, :cond_1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->n(Landroid/view/View;Landroid/widget/EditText;)V

    :cond_1
    return-void
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->q:Landroid/widget/EditText;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->r:Ljava/lang/String;

    return-object p0
.end method

.method public h(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->h(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->q:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public n(Landroid/view/View;Landroid/widget/EditText;)V
    .locals 1

    sget p0, Lcom/transsion/widgetslib/R$id;->edittext_container:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    const/4 p1, -0x1

    const/4 v0, -0x2

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/transsion/widgetslib/preference/OSEditTextPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/transsion/widgetslib/preference/OSEditTextPreference$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object p1, p1, Lcom/transsion/widgetslib/preference/OSEditTextPreference$SavedState;->text:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->setText(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/preference/Preference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/transsion/widgetslib/preference/OSEditTextPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/transsion/widgetslib/preference/OSEditTextPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->getText()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/transsion/widgetslib/preference/OSEditTextPreference$SavedState;->text:Ljava/lang/String;

    return-object v1
.end method

.method public onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->r:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->r:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->s:Z

    if-nez v1, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->r:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->s:Z

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->persistString(Ljava/lang/String;)Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->shouldDisableDependents()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    :cond_1
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSEditTextPreference;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
