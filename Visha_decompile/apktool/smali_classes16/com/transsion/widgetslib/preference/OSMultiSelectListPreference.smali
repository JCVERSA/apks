.class public Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;
.super Lcom/transsion/widgetslib/preference/OSDialogPreference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference$SavedState;
    }
.end annotation


# instance fields
.field public q:[Ljava/lang/CharSequence;

.field public r:[Ljava/lang/CharSequence;

.field public s:Ljava/util/Set;

.field public t:Ljava/util/Set;

.field public u:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 9
    sget v0, Lcom/transsion/widgetslib/R$attr;->OsDialogPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/widgetslib/preference/OSDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->s:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->t:Ljava/util/Set;

    .line 4
    sget-object v0, Lcom/transsion/widgetslib/R$styleable;->OsListPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OsListPreference_entries:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->q:[Ljava/lang/CharSequence;

    .line 6
    sget p2, Lcom/transsion/widgetslib/R$styleable;->OsListPreference_entryValues:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->r:[Ljava/lang/CharSequence;

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static bridge synthetic n(Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;)[Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->r:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->t:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic p(Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->u:Z

    return p0
.end method

.method public static bridge synthetic q(Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->u:Z

    return-void
.end method


# virtual methods
.method public getEntries()[Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->q:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->r:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getValues()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->s:Ljava/util/Set;

    return-object p0
.end method

.method public h(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->h(Z)V

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->u:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->t:Ljava/util/Set;

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->setValues(Ljava/util/Set;)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->u:Z

    return-void
.end method

.method public i(Lcom/transsion/widgetslib/dialog/d$a;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->i(Lcom/transsion/widgetslib/dialog/d$a;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->q:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->r:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->r()[Z

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->q:[Ljava/lang/CharSequence;

    new-instance v2, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference$a;

    invoke-direct {v2, p0}, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference$a;-><init>(Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;)V

    invoke-virtual {p1, v1, v0, v2}, Lcom/transsion/widgetslib/dialog/d$a;->l([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    iget-object p1, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->t:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    iget-object p1, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->t:Ljava/util/Set;

    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->s:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "MultiSelectListPreference requires an entries array and an entryValues array."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p0

    array-length p1, p0

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p0, v0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p2
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
    new-instance v1, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object p0

    iput-object p0, v1, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference$SavedState;->values:Ljava/util/Set;

    return-object v1
.end method

.method public onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->s:Ljava/util/Set;

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    check-cast p1, Ljava/util/Set;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->setValues(Ljava/util/Set;)V

    return-void
.end method

.method public final r()[Z
    .locals 5

    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->r:[Ljava/lang/CharSequence;

    array-length v1, v0

    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->s:Ljava/util/Set;

    new-array v2, v1, [Z

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    aput-boolean v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
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

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->q:[Ljava/lang/CharSequence;

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

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->r:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setValues(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->s:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->persistStringSet(Ljava/util/Set;)Z

    return-void
.end method
