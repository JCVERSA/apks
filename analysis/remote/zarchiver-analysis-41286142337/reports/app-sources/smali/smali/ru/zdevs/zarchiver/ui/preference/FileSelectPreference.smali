.class public Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;
.super Landroid/preference/DialogPreference;
.source "SourceFile"

# interfaces
.implements Lru/zdevs/zarchiver/ui/FSSelect$b;
.implements Lru/zdevs/zarchiver/ui/FSSelect$c;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public c:Landroid/view/View;

.field public d:Lru/zdevs/zarchiver/ui/FSSelect;

.field public e:Landroid/widget/ListPopupWindow;

.field public f:I

.field public g:Z

.field public h:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, La0/c;->c:[I

    .line 5
    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 p2, 0x0

    .line 11
    const/4 v0, 0x3

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iput v1, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->a:I

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iput-object v1, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iput v0, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->a:I

    .line 33
    .line 34
    iput-object p2, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->b:Ljava/lang/String;

    .line 35
    .line 36
    :goto_0
    iget p1, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->a:I

    .line 37
    .line 38
    if-eq p1, v0, :cond_1

    .line 39
    .line 40
    if-nez p1, :cond_2

    .line 41
    .line 42
    :cond_1
    invoke-virtual {p0, p2}, Landroid/preference/DialogPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->b:Ljava/lang/String;

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    const-string p2, "$SD$"

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->b:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {}, Lx0/d;->m()Lx0/d$a;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v0, v0, Lx0/d$a;->b:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->b:Ljava/lang/String;

    .line 70
    .line 71
    :cond_3
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->h:[Ljava/lang/String;

    .line 4
    .line 5
    aget-object v1, v1, p1

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->d:Lru/zdevs/zarchiver/ui/FSSelect;

    .line 23
    .line 24
    new-instance v1, Lh0/h;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-direct {v1, v0}, Lh0/h;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v1}, Lru/zdevs/zarchiver/ui/FSSelect;->setPath(Lh0/h;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->d:Lru/zdevs/zarchiver/ui/FSSelect;

    .line 38
    .line 39
    new-instance v1, Lh0/h;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-direct {v1, v0}, Lh0/h;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v1}, Lru/zdevs/zarchiver/ui/FSSelect;->setPath(Lh0/h;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->h:[Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {}, Lx0/d;->m()Lx0/d$a;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget-object v1, v1, Lx0/d$a;->b:Ljava/lang/String;

    .line 63
    .line 64
    aput-object v1, v0, p1

    .line 65
    .line 66
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->d:Lru/zdevs/zarchiver/ui/FSSelect;

    .line 67
    .line 68
    new-instance v1, Lh0/h;

    .line 69
    .line 70
    iget-object v2, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->h:[Ljava/lang/String;

    .line 71
    .line 72
    aget-object p1, v2, p1

    .line 73
    .line 74
    invoke-direct {v1, p1}, Lh0/h;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ui/FSSelect;->setPath(Lh0/h;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    return-void
.end method

.method public final b(Landroid/widget/RadioGroup;I)V
    .locals 4

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/widget/RadioButton;

    .line 6
    .line 7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x2

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    .line 14
    add-int/lit8 v2, p2, 0x1

    .line 15
    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v3, 0x0

    .line 21
    aput-object v2, v1, v3

    .line 22
    .line 23
    iget-object v2, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->h:[Ljava/lang/String;

    .line 24
    .line 25
    aget-object p2, v2, p2

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    aput-object p2, v1, v2

    .line 29
    .line 30
    const-string p2, "%d: %s"

    .line 31
    .line 32
    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final onBindView(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, ";#;"

    .line 10
    .line 11
    const-string v2, "\n"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->c:Landroid/view/View;

    .line 2
    .line 3
    const v1, 0x7f0700b3

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/RadioGroup;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const v2, 0x7f07009b

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-ne v1, v2, :cond_3

    .line 21
    .line 22
    iput-boolean p2, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->g:Z

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-ge p1, p2, :cond_5

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Landroid/widget/RadioButton;

    .line 36
    .line 37
    iget-boolean v1, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->g:Z

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    const/16 v1, 0x8

    .line 42
    .line 43
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_0
    if-eqz p1, :cond_1

    .line 48
    .line 49
    invoke-virtual {p0, v0, p1}, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->b(Landroid/widget/RadioGroup;I)V

    .line 50
    .line 51
    .line 52
    :cond_1
    if-nez p1, :cond_2

    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const/4 v1, 0x0

    .line 57
    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    if-eqz p2, :cond_5

    .line 67
    .line 68
    const/4 p2, 0x0

    .line 69
    :goto_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-ge p2, v1, :cond_5

    .line 74
    .line 75
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Landroid/widget/RadioButton;

    .line 80
    .line 81
    if-ne v1, p1, :cond_4

    .line 82
    .line 83
    iput p2, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->f:I

    .line 84
    .line 85
    invoke-virtual {p0, p2}, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->a(I)V

    .line 86
    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_4
    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 90
    .line 91
    .line 92
    :goto_4
    add-int/lit8 p2, p2, 0x1

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_5
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    const v0, 0x7f070096

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 9
    .line 10
    new-instance v1, Landroid/widget/ListPopupWindow;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v1, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->e:Landroid/widget/ListPopupWindow;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->e:Landroid/widget/ListPopupWindow;

    .line 25
    .line 26
    new-instance v2, Lc0/d;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x1

    .line 34
    invoke-direct {v2, p1, v4, v3}, Lc0/d;-><init>(Landroid/content/Context;ZZ)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->e:Landroid/widget/ListPopupWindow;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    sub-int/2addr v1, v2

    .line 51
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    sub-int/2addr v1, v0

    .line 56
    invoke-virtual {p1, v1}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->e:Landroid/widget/ListPopupWindow;

    .line 60
    .line 61
    new-instance v0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference$a;

    .line 62
    .line 63
    invoke-direct {v0, p0}, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference$a;-><init>(Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->e:Landroid/widget/ListPopupWindow;

    .line 70
    .line 71
    new-instance v0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference$b;

    .line 72
    .line 73
    invoke-direct {v0, p0}, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference$b;-><init>(Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->e:Landroid/widget/ListPopupWindow;

    .line 80
    .line 81
    invoke-virtual {p1, v4}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->e:Landroid/widget/ListPopupWindow;

    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->show()V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final onCreateDialogView()Landroid/view/View;
    .locals 8

    .line 1
    invoke-super {p0}, Landroid/preference/DialogPreference;->onCreateDialogView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    const/4 v1, 0x0

    .line 6
    iget v2, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->a:I

    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    if-ne v2, v3, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v4, "iTwoTab"

    .line 16
    .line 17
    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    new-array v2, v3, [Ljava/lang/String;

    .line 24
    .line 25
    iput-object v2, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->h:[Ljava/lang/String;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-array v2, v0, [Ljava/lang/String;

    .line 29
    .line 30
    iput-object v2, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->h:[Ljava/lang/String;

    .line 31
    .line 32
    :goto_0
    iput v1, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->f:I

    .line 33
    .line 34
    iput-boolean v0, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->g:Z

    .line 35
    .line 36
    iget-object v2, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->h:[Ljava/lang/String;

    .line 37
    .line 38
    iget-object v4, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->b:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p0, v4}, Landroid/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    aput-object v4, v2, v1

    .line 45
    .line 46
    iget-object v2, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->h:[Ljava/lang/String;

    .line 47
    .line 48
    aget-object v4, v2, v1

    .line 49
    .line 50
    if-nez v4, :cond_1

    .line 51
    .line 52
    invoke-static {}, Lx0/d;->m()Lx0/d$a;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    iget-object v4, v4, Lx0/d$a;->b:Ljava/lang/String;

    .line 57
    .line 58
    aput-object v4, v2, v1

    .line 59
    .line 60
    :cond_1
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const v4, 0x7f080002

    .line 69
    .line 70
    .line 71
    const/4 v5, 0x0

    .line 72
    invoke-virtual {v2, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    iput-object v2, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->c:Landroid/view/View;

    .line 77
    .line 78
    const v4, 0x7f07009b

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Landroid/widget/CheckBox;

    .line 86
    .line 87
    iget-object v4, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->c:Landroid/view/View;

    .line 88
    .line 89
    const v5, 0x7f0700b3

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    check-cast v4, Landroid/widget/RadioGroup;

    .line 97
    .line 98
    iget-object v5, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->h:[Ljava/lang/String;

    .line 99
    .line 100
    array-length v6, v5

    .line 101
    const/16 v7, 0x8

    .line 102
    .line 103
    if-le v6, v0, :cond_6

    .line 104
    .line 105
    aget-object v5, v5, v1

    .line 106
    .line 107
    const-string v6, ";#;"

    .line 108
    .line 109
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-eqz v5, :cond_2

    .line 114
    .line 115
    iget-object v5, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->h:[Ljava/lang/String;

    .line 116
    .line 117
    aget-object v5, v5, v1

    .line 118
    .line 119
    invoke-static {v5}, Lv0/h;->g(Ljava/lang/String;)[Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    array-length v6, v5

    .line 124
    if-ne v6, v3, :cond_2

    .line 125
    .line 126
    iget-object v3, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->h:[Ljava/lang/String;

    .line 127
    .line 128
    aget-object v6, v5, v1

    .line 129
    .line 130
    aput-object v6, v3, v1

    .line 131
    .line 132
    aget-object v5, v5, v0

    .line 133
    .line 134
    aput-object v5, v3, v0

    .line 135
    .line 136
    iput-boolean v1, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->g:Z

    .line 137
    .line 138
    :cond_2
    iget-object v3, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->h:[Ljava/lang/String;

    .line 139
    .line 140
    aget-object v5, v3, v0

    .line 141
    .line 142
    if-nez v5, :cond_3

    .line 143
    .line 144
    aget-object v5, v3, v1

    .line 145
    .line 146
    aput-object v5, v3, v0

    .line 147
    .line 148
    :cond_3
    iget-boolean v3, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->g:Z

    .line 149
    .line 150
    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 154
    .line 155
    .line 156
    const/4 v2, 0x0

    .line 157
    :goto_1
    iget-object v3, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->h:[Ljava/lang/String;

    .line 158
    .line 159
    array-length v3, v3

    .line 160
    if-ge v2, v3, :cond_7

    .line 161
    .line 162
    new-instance v3, Landroid/widget/RadioButton;

    .line 163
    .line 164
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    invoke-direct {v3, v5}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 169
    .line 170
    .line 171
    if-nez v2, :cond_4

    .line 172
    .line 173
    const/4 v5, 0x1

    .line 174
    goto :goto_2

    .line 175
    :cond_4
    const/4 v5, 0x0

    .line 176
    :goto_2
    invoke-virtual {v3, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 177
    .line 178
    .line 179
    iget-boolean v5, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->g:Z

    .line 180
    .line 181
    if-eqz v5, :cond_5

    .line 182
    .line 183
    const/16 v5, 0x8

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_5
    const/4 v5, 0x0

    .line 187
    :goto_3
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, v4, v2}, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->b(Landroid/widget/RadioGroup;I)V

    .line 197
    .line 198
    .line 199
    add-int/lit8 v2, v2, 0x1

    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_6
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 206
    .line 207
    .line 208
    :cond_7
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->c:Landroid/view/View;

    .line 209
    .line 210
    const v1, 0x7f070096

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 218
    .line 219
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    .line 221
    .line 222
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->c:Landroid/view/View;

    .line 223
    .line 224
    const v1, 0x7f07006d

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    check-cast v0, Lru/zdevs/zarchiver/ui/FSSelect;

    .line 232
    .line 233
    iput-object v0, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->d:Lru/zdevs/zarchiver/ui/FSSelect;

    .line 234
    .line 235
    invoke-virtual {v0, p0}, Lru/zdevs/zarchiver/ui/FSSelect;->setOnFileClickListener(Lru/zdevs/zarchiver/ui/FSSelect$b;)V

    .line 236
    .line 237
    .line 238
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->d:Lru/zdevs/zarchiver/ui/FSSelect;

    .line 239
    .line 240
    invoke-virtual {v0, p0}, Lru/zdevs/zarchiver/ui/FSSelect;->setOnPathChangeListener(Lru/zdevs/zarchiver/ui/FSSelect$c;)V

    .line 241
    .line 242
    .line 243
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->c:Landroid/view/View;

    .line 244
    .line 245
    const v1, 0x7f0700ea

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    check-cast v0, Landroid/widget/TextView;

    .line 253
    .line 254
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->d:Lru/zdevs/zarchiver/ui/FSSelect;

    .line 255
    .line 256
    invoke-virtual {v1, v0}, Lru/zdevs/zarchiver/ui/FSSelect;->setEmptyText(Landroid/widget/TextView;)V

    .line 257
    .line 258
    .line 259
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->d:Lru/zdevs/zarchiver/ui/FSSelect;

    .line 260
    .line 261
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/FSSelect;->d()V

    .line 262
    .line 263
    .line 264
    iget v0, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->f:I

    .line 265
    .line 266
    invoke-virtual {p0, v0}, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->a(I)V

    .line 267
    .line 268
    .line 269
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->c:Landroid/view/View;

    .line 270
    .line 271
    return-object v0
.end method

.method public final onDialogClosed(Z)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->e:Landroid/widget/ListPopupWindow;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->e:Landroid/widget/ListPopupWindow;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->d:Lru/zdevs/zarchiver/ui/FSSelect;

    .line 15
    .line 16
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/FSSelect;->e()V

    .line 17
    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->h:[Ljava/lang/String;

    .line 23
    .line 24
    array-length v0, p1

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x1

    .line 27
    if-le v0, v3, :cond_3

    .line 28
    .line 29
    aget-object v0, p1, v2

    .line 30
    .line 31
    aget-object p1, p1, v3

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_3

    .line 38
    .line 39
    iget-boolean p1, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->g:Z

    .line 40
    .line 41
    if-nez p1, :cond_3

    .line 42
    .line 43
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->h:[Ljava/lang/String;

    .line 44
    .line 45
    array-length v0, p1

    .line 46
    :goto_0
    if-ge v2, v0, :cond_4

    .line 47
    .line 48
    aget-object v3, p1, v2

    .line 49
    .line 50
    if-nez v1, :cond_2

    .line 51
    .line 52
    move-object v1, v3

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v1, ";#;"

    .line 63
    .line 64
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->h:[Ljava/lang/String;

    .line 78
    .line 79
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->d:Lru/zdevs/zarchiver/ui/FSSelect;

    .line 80
    .line 81
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/FSSelect;->getPath()Lh0/h;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lh0/h;->r()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    aput-object v1, p1, v2

    .line 90
    .line 91
    :cond_4
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_5

    .line 96
    .line 97
    invoke-virtual {p0, v1}, Landroid/preference/Preference;->persistString(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    :cond_5
    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public onFileSelect(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, La0/c;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x1

    .line 6
    iget v0, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->a:I

    .line 7
    .line 8
    if-eq v0, p2, :cond_4

    .line 9
    .line 10
    const/4 p2, 0x2

    .line 11
    if-ne v0, p2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    if-nez v0, :cond_2

    .line 15
    .line 16
    const/16 p2, 0x9

    .line 17
    .line 18
    if-eq p3, p2, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    instance-of p3, p2, Landroid/graphics/drawable/BitmapDrawable;

    .line 26
    .line 27
    if-eqz p3, :cond_2

    .line 28
    .line 29
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    const-string p3, "ro.hwui.max_texture_allocation_size"

    .line 40
    .line 41
    invoke-static {p3}, Lv0/b;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    const/high16 v0, 0x6400000

    .line 46
    .line 47
    invoke-static {v0, p3}, La0/c;->i0(ILjava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result p3

    .line 51
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    div-int/lit8 p3, p3, 0x3

    .line 56
    .line 57
    if-le p2, p3, :cond_2

    .line 58
    .line 59
    const-string p1, "The image is too big!"

    .line 60
    .line 61
    invoke-static {p1}, Lru/zdevs/zarchiver/ZApp;->j(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :catch_0
    const-string p1, "The image is not correct"

    .line 66
    .line 67
    invoke-static {p1}, Lru/zdevs/zarchiver/ZApp;->j(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_2
    iget-object p2, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->h:[Ljava/lang/String;

    .line 72
    .line 73
    const/4 p3, 0x0

    .line 74
    aput-object p1, p2, p3

    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->h:[Ljava/lang/String;

    .line 83
    .line 84
    aget-object p1, p1, p3

    .line 85
    .line 86
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->persistString(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    :cond_3
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->h:[Ljava/lang/String;

    .line 90
    .line 91
    aget-object p1, p1, p3

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 104
    .line 105
    .line 106
    :cond_4
    :goto_0
    return-void
.end method

.method public onPathChange(Lh0/h;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lh0/h;->r()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->h:[Ljava/lang/String;

    .line 6
    .line 7
    iget v1, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->f:I

    .line 8
    .line 9
    aput-object p1, v0, v1

    .line 10
    .line 11
    const/16 v0, 0x2f

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const-string v1, "/"

    .line 18
    .line 19
    if-ltz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    add-int/lit8 v3, v0, 0x1

    .line 26
    .line 27
    if-le v2, v3, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-lez v0, :cond_0

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :cond_0
    move-object p1, v2

    .line 41
    :cond_1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->c:Landroid/view/View;

    .line 42
    .line 43
    const v2, 0x7f07008b

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/widget/TextView;

    .line 51
    .line 52
    iget-object v2, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->c:Landroid/view/View;

    .line 53
    .line 54
    const v3, 0x7f07008a

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Landroid/widget/TextView;

    .line 62
    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catch_0
    const/4 v3, 0x0

    .line 70
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 71
    .line 72
    .line 73
    const v3, 0x800005

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 83
    .line 84
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->h:[Ljava/lang/String;

    .line 88
    .line 89
    array-length p1, p1

    .line 90
    const/4 v0, 0x1

    .line 91
    if-le p1, v0, :cond_4

    .line 92
    .line 93
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->c:Landroid/view/View;

    .line 94
    .line 95
    const v0, 0x7f0700b3

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Landroid/widget/RadioGroup;

    .line 103
    .line 104
    iget v0, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->f:I

    .line 105
    .line 106
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-ge v0, v1, :cond_4

    .line 111
    .line 112
    iget v0, p0, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->f:I

    .line 113
    .line 114
    invoke-virtual {p0, p1, v0}, Lru/zdevs/zarchiver/ui/preference/FileSelectPreference;->b(Landroid/widget/RadioGroup;I)V

    .line 115
    .line 116
    .line 117
    :cond_4
    return-void
.end method
