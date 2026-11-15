.class public Lcom/transsion/widgetslib/preference/OSListPreference;
.super Lcom/transsion/widgetslib/preference/OSDialogPreference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/preference/OSListPreference$SavedState;
    }
.end annotation


# instance fields
.field public q:[Ljava/lang/CharSequence;

.field public r:[Ljava/lang/CharSequence;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:I

.field public v:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 7
    sget v0, Lcom/transsion/widgetslib/R$attr;->OsDialogPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/preference/OSListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslib/preference/OSListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/widgetslib/preference/OSDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    sget-object v0, Lcom/transsion/widgetslib/R$styleable;->OsListPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OsListPreference_entries:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->q:[Ljava/lang/CharSequence;

    .line 4
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OsListPreference_entryValues:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->r:[Ljava/lang/CharSequence;

    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static bridge synthetic n(Lcom/transsion/widgetslib/preference/OSListPreference;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->u:I

    return-void
.end method


# virtual methods
.method public getEntries()[Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->q:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getEntry()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/preference/OSListPreference;->p()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->q:[Ljava/lang/CharSequence;

    if-eqz p0, :cond_0

    aget-object p0, p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->r:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/widgetslib/preference/OSListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->t:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-super {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->s:Ljava/lang/String;

    return-object p0
.end method

.method public h(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->h(Z)V

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->u:I

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->r:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    aget-object p1, v0, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public i(Lcom/transsion/widgetslib/dialog/d$a;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->i(Lcom/transsion/widgetslib/dialog/d$a;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->q:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->r:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/preference/OSListPreference;->p()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->u:I

    iget-object v1, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->q:[Ljava/lang/CharSequence;

    new-instance v2, Lcom/transsion/widgetslib/preference/OSListPreference$a;

    invoke-direct {v2, p0}, Lcom/transsion/widgetslib/preference/OSListPreference$a;-><init>(Lcom/transsion/widgetslib/preference/OSListPreference;)V

    invoke-virtual {p1, v1, v0, v2}, Lcom/transsion/widgetslib/dialog/d$a;->z([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public o(Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->r:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->r:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
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

    const-class v1, Lcom/transsion/widgetslib/preference/OSListPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/transsion/widgetslib/preference/OSListPreference$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object p1, p1, Lcom/transsion/widgetslib/preference/OSListPreference$SavedState;->value:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSListPreference;->setValue(Ljava/lang/String;)V

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
    new-instance v1, Lcom/transsion/widgetslib/preference/OSListPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/transsion/widgetslib/preference/OSListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/preference/OSListPreference;->getValue()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/transsion/widgetslib/preference/OSListPreference$SavedState;->value:Ljava/lang/String;

    return-object v1
.end method

.method public onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->s:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public final p()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->s:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/preference/OSListPreference;->o(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setEntries(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ArrayRes;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSListPreference;->setEntries([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->q:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setEntryValues(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ArrayRes;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->r:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->t:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->t:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->t:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->s:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->v:Z

    if-nez v1, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->s:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->v:Z

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->persistString(Ljava/lang/String;)Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    :cond_1
    return-void
.end method

.method public setValueIndex(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSListPreference;->r:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    aget-object p1, v0, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
