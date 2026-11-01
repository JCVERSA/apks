.class public Lru/zdevs/zarchiver/ui/preference/SeekBarPreference;
.super Landroid/preference/DialogPreference;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public d:I

.field public e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, La0/c;->e:[I

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
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/high16 v0, -0x80000000

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    :try_start_0
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 17
    .line 18
    .line 19
    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    :goto_0
    iput v1, p0, Lru/zdevs/zarchiver/ui/preference/SeekBarPreference;->a:I

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    :try_start_1
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 29
    .line 30
    .line 31
    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 32
    goto :goto_1

    .line 33
    :catch_1
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    :goto_1
    iput v1, p0, Lru/zdevs/zarchiver/ui/preference/SeekBarPreference;->b:I

    .line 38
    .line 39
    :try_start_2
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 40
    .line 41
    .line 42
    move-result p2
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 43
    goto :goto_2

    .line 44
    :catch_2
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    :goto_2
    iput p2, p0, Lru/zdevs/zarchiver/ui/preference/SeekBarPreference;->c:I

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_0
    iput p2, p0, Lru/zdevs/zarchiver/ui/preference/SeekBarPreference;->a:I

    .line 55
    .line 56
    iput p2, p0, Lru/zdevs/zarchiver/ui/preference/SeekBarPreference;->c:I

    .line 57
    .line 58
    const/16 p1, 0x64

    .line 59
    .line 60
    iput p1, p0, Lru/zdevs/zarchiver/ui/preference/SeekBarPreference;->b:I

    .line 61
    .line 62
    :goto_3
    return-void
.end method


# virtual methods
.method public final onCreateDialogView()Landroid/view/View;
    .locals 10

    .line 1
    iget v0, p0, Lru/zdevs/zarchiver/ui/preference/SeekBarPreference;->c:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->getPersistedInt(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lru/zdevs/zarchiver/ui/preference/SeekBarPreference;->d:I

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const v1, 0x7f080003

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const v1, 0x7f070087

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroid/widget/TextView;

    .line 34
    .line 35
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 36
    .line 37
    const/4 v4, 0x1

    .line 38
    new-array v5, v4, [Ljava/lang/Object;

    .line 39
    .line 40
    iget v6, p0, Lru/zdevs/zarchiver/ui/preference/SeekBarPreference;->a:I

    .line 41
    .line 42
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    aput-object v7, v5, v3

    .line 47
    .line 48
    const-string v7, "%d"

    .line 49
    .line 50
    invoke-static {v2, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    const v1, 0x7f070086

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Landroid/widget/TextView;

    .line 65
    .line 66
    new-array v5, v4, [Ljava/lang/Object;

    .line 67
    .line 68
    iget v8, p0, Lru/zdevs/zarchiver/ui/preference/SeekBarPreference;->b:I

    .line 69
    .line 70
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    aput-object v9, v5, v3

    .line 75
    .line 76
    invoke-static {v2, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    const v1, 0x7f07009c

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    check-cast v1, Landroid/widget/SeekBar;

    .line 91
    .line 92
    sub-int/2addr v8, v6

    .line 93
    invoke-virtual {v1, v8}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 94
    .line 95
    .line 96
    iget v5, p0, Lru/zdevs/zarchiver/ui/preference/SeekBarPreference;->d:I

    .line 97
    .line 98
    sub-int/2addr v5, v6

    .line 99
    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 103
    .line 104
    .line 105
    const v1, 0x7f07005f

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    check-cast v1, Landroid/widget/TextView;

    .line 113
    .line 114
    iput-object v1, p0, Lru/zdevs/zarchiver/ui/preference/SeekBarPreference;->e:Landroid/widget/TextView;

    .line 115
    .line 116
    new-array v4, v4, [Ljava/lang/Object;

    .line 117
    .line 118
    iget v5, p0, Lru/zdevs/zarchiver/ui/preference/SeekBarPreference;->d:I

    .line 119
    .line 120
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    aput-object v5, v4, v3

    .line 125
    .line 126
    invoke-static {v2, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    .line 133
    return-object v0
.end method

.method public final onDialogClosed(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget p1, p0, Lru/zdevs/zarchiver/ui/preference/SeekBarPreference;->d:I

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->persistInt(I)Z

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 1
    iget p1, p0, Lru/zdevs/zarchiver/ui/preference/SeekBarPreference;->a:I

    .line 2
    .line 3
    add-int/2addr p2, p1

    .line 4
    iput p2, p0, Lru/zdevs/zarchiver/ui/preference/SeekBarPreference;->d:I

    .line 5
    .line 6
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/preference/SeekBarPreference;->e:Landroid/widget/TextView;

    .line 7
    .line 8
    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    aput-object p2, v0, v1

    .line 19
    .line 20
    const-string p2, "%d"

    .line 21
    .line 22
    invoke-static {p3, p2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
