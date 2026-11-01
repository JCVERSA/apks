.class public Lru/zdevs/zarchiver/ui/preference/ColorPreference;
.super Landroid/preference/DialogPreference;
.source "SourceFile"


# instance fields
.field public final a:I

.field public b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, La0/c;->a:[I

    .line 5
    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const p2, 0xffffff

    .line 11
    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    iput p2, p0, Lru/zdevs/zarchiver/ui/preference/ColorPreference;->a:I

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iput p2, p0, Lru/zdevs/zarchiver/ui/preference/ColorPreference;->a:I

    .line 27
    .line 28
    :goto_0
    return-void
.end method


# virtual methods
.method public final onBindView(Landroid/view/View;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->getPersistedInt(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iput v0, p0, Lru/zdevs/zarchiver/ui/preference/ColorPreference;->b:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v1, p0, Lru/zdevs/zarchiver/ui/preference/ColorPreference;->b:I

    .line 13
    .line 14
    invoke-static {v0, v1}, Lc0/b;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onDialogClosed(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Lru/zdevs/zarchiver/ui/preference/ColorPreference;->b:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->persistInt(I)Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget v0, p0, Lru/zdevs/zarchiver/ui/preference/ColorPreference;->b:I

    .line 14
    .line 15
    invoke-static {p1, v0}, Lc0/b;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lc0/b;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget v2, p0, Lru/zdevs/zarchiver/ui/preference/ColorPreference;->a:I

    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lc0/b;-><init>(Landroid/content/Context;I)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, v1}, Landroid/preference/Preference;->getPersistedInt(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iput v1, p0, Lru/zdevs/zarchiver/ui/preference/ColorPreference;->b:I

    .line 21
    .line 22
    new-instance v2, Lru/zdevs/zarchiver/ui/preference/ColorPreference$a;

    .line 23
    .line 24
    invoke-direct {v2, p0, v0}, Lru/zdevs/zarchiver/ui/preference/ColorPreference$a;-><init>(Lru/zdevs/zarchiver/ui/preference/ColorPreference;Lc0/b;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p1, v0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 32
    .line 33
    .line 34
    return-void
.end method
