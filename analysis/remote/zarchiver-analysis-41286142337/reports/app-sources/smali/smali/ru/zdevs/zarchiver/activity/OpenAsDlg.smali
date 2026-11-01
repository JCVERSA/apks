.class public Lru/zdevs/zarchiver/activity/OpenAsDlg;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lw0/a$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/zdevs/zarchiver/activity/OpenAsDlg$e;,
        Lru/zdevs/zarchiver/activity/OpenAsDlg$c;,
        Lru/zdevs/zarchiver/activity/OpenAsDlg$d;
    }
.end annotation


# static fields
.field public static final synthetic f:I


# instance fields
.field public a:Lc0/i;

.field public b:I

.field public c:Ljava/lang/String;

.field public final d:Lw0/a;

.field public final e:Lru/zdevs/zarchiver/activity/OpenAsDlg$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lw0/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lw0/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lru/zdevs/zarchiver/activity/OpenAsDlg;->d:Lw0/a;

    .line 10
    .line 11
    new-instance v0, Lru/zdevs/zarchiver/activity/OpenAsDlg$b;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lru/zdevs/zarchiver/activity/OpenAsDlg$b;-><init>(Lru/zdevs/zarchiver/activity/OpenAsDlg;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lru/zdevs/zarchiver/activity/OpenAsDlg;->e:Lru/zdevs/zarchiver/activity/OpenAsDlg$b;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const p1, 0x1020002

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance v0, Lru/zdevs/zarchiver/activity/OpenAsDlg$a;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lru/zdevs/zarchiver/activity/OpenAsDlg$a;-><init>(Lru/zdevs/zarchiver/activity/OpenAsDlg;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    sub-int/2addr v2, p1

    .line 34
    int-to-float p1, v2

    .line 35
    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 40
    .line 41
    const/high16 v2, 0x40000000    # 2.0f

    .line 42
    .line 43
    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const/16 v1, 0x1f4

    .line 51
    .line 52
    int-to-long v1, v1

    .line 53
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    new-instance v1, Lz0/g;

    .line 58
    .line 59
    invoke-direct {v1, v0}, Lz0/g;-><init>(Lru/zdevs/zarchiver/activity/OpenAsDlg$a;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const/4 p1, 0x0

    .line 67
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 71
    .line 72
    .line 73
    :goto_0
    return-void
.end method

.method public final b(Lw0/a$b;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lw0/a$b;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    check-cast p1, Lru/zdevs/zarchiver/activity/OpenAsDlg$c;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iget-object v1, p1, Lru/zdevs/zarchiver/activity/OpenAsDlg$c;->a:Ljava/util/ArrayList;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Lru/zdevs/zarchiver/activity/OpenAsDlg$d;

    .line 15
    .line 16
    iget-object p1, p1, Lru/zdevs/zarchiver/activity/OpenAsDlg$c;->a:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v1, p1}, Lru/zdevs/zarchiver/activity/OpenAsDlg$d;-><init>(Ljava/util/ArrayList;)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lru/zdevs/zarchiver/activity/OpenAsDlg;->d:Lw0/a;

    .line 22
    .line 23
    invoke-virtual {v1, p0, v2}, Lw0/c;->g(Landroid/content/Context;Lw0/a;)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Lc0/i;

    .line 27
    .line 28
    invoke-direct {v1, p0, p1}, Lc0/i;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lru/zdevs/zarchiver/activity/OpenAsDlg;->a:Lc0/i;

    .line 32
    .line 33
    const p1, 0x7f08001d

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 37
    .line 38
    .line 39
    const p1, 0x1020002

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    new-instance v2, Lb0/e;

    .line 51
    .line 52
    invoke-direct {v2, p1}, Lb0/e;-><init>(Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 56
    .line 57
    .line 58
    const p1, 0x102000a

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Landroid/widget/ListView;

    .line 66
    .line 67
    iget-object v1, p0, Lru/zdevs/zarchiver/activity/OpenAsDlg;->a:Lc0/i;

    .line 68
    .line 69
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    .line 71
    .line 72
    const/4 v1, 0x1

    .line 73
    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 74
    .line 75
    .line 76
    new-instance v1, Lb0/f;

    .line 77
    .line 78
    invoke-direct {v1, p0}, Lb0/f;-><init>(Lru/zdevs/zarchiver/activity/OpenAsDlg;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 82
    .line 83
    .line 84
    const v1, 0x7f0700af

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    .line 92
    .line 93
    new-instance v2, Lb0/g;

    .line 94
    .line 95
    invoke-direct {v2, p0}, Lb0/g;-><init>(Lru/zdevs/zarchiver/activity/OpenAsDlg;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelSlideListener(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$d;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setScrollableView(Landroid/view/View;)V

    .line 102
    .line 103
    .line 104
    const p1, 0x7f07008e

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    new-instance v1, Lb0/h;

    .line 112
    .line 113
    invoke-direct {v1, p0}, Lb0/h;-><init>(Lru/zdevs/zarchiver/activity/OpenAsDlg;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v0}, Lru/zdevs/zarchiver/activity/OpenAsDlg;->c(Z)V

    .line 120
    .line 121
    .line 122
    const p1, 0x7f070042

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    iget-object v0, p0, Lru/zdevs/zarchiver/activity/OpenAsDlg;->e:Lru/zdevs/zarchiver/activity/OpenAsDlg$b;

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    .line 133
    .line 134
    const p1, 0x7f070044

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p0, v0}, Lru/zdevs/zarchiver/activity/OpenAsDlg;->a(Z)V

    .line 146
    .line 147
    .line 148
    :cond_1
    :goto_0
    return-void
.end method

.method public final c(Z)V
    .locals 4

    .line 1
    const v0, 0x7f070042

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 9
    .line 10
    .line 11
    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    .line 13
    const v2, 0x3ecccccd    # 0.4f

    .line 14
    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const/high16 v3, 0x3f800000    # 1.0f

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const v3, 0x3ecccccd    # 0.4f

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 25
    .line 26
    .line 27
    const v0, 0x7f070044

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 35
    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const v1, 0x3ecccccd    # 0.4f

    .line 41
    .line 42
    .line 43
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lz0/e;->o(Landroid/app/Activity;Z)V

    .line 3
    .line 4
    .line 5
    sget-object v1, Lt0/b;->e:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p0, v1}, Lz0/e;->k(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 19
    .line 20
    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 27
    .line 28
    .line 29
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 30
    .line 31
    const/16 v4, 0x17

    .line 32
    .line 33
    if-lt v3, v4, :cond_1

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-static {p0, v1, v3}, Lz0/e;->c(Landroid/content/Context;ZLandroid/content/res/Configuration;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    const v3, 0x7f030015

    .line 43
    .line 44
    .line 45
    invoke-static {p0, v3}, Lz0/c;->b(Landroid/content/Context;I)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_0

    .line 50
    .line 51
    const v3, 0x7f040002

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/high16 v3, 0x7f040000

    .line 56
    .line 57
    :goto_0
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getColor(I)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-virtual {v2, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 69
    .line 70
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 71
    .line 72
    or-int/2addr v1, v4

    .line 73
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 74
    .line 75
    const/high16 v1, 0x3f400000    # 0.75f

    .line 76
    .line 77
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 78
    .line 79
    const/4 v1, 0x2

    .line 80
    invoke-virtual {v2, v1}, Landroid/view/Window;->addFlags(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    const v4, 0x7f050009

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-lez v1, :cond_2

    .line 95
    .line 96
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 97
    .line 98
    const/high16 v1, 0x40000

    .line 99
    .line 100
    invoke-virtual {v2, v1}, Landroid/view/Window;->addFlags(I)V

    .line 101
    .line 102
    .line 103
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    if-nez p1, :cond_3

    .line 111
    .line 112
    invoke-virtual {p0, v0}, Lru/zdevs/zarchiver/activity/OpenAsDlg;->a(Z)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_3
    const-string v1, "android.intent.extra.INITIAL_INTENTS"

    .line 117
    .line 118
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    if-nez v1, :cond_4

    .line 123
    .line 124
    invoke-virtual {p0, v0}, Lru/zdevs/zarchiver/activity/OpenAsDlg;->a(Z)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_4
    const-string v0, "OpenAsDlg.EXTRA_FILE_NAME"

    .line 129
    .line 130
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    iput-object p1, p0, Lru/zdevs/zarchiver/activity/OpenAsDlg;->c:Ljava/lang/String;

    .line 135
    .line 136
    if-eqz p1, :cond_5

    .line 137
    .line 138
    invoke-static {p1}, La0/c;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    iput-object p1, p0, Lru/zdevs/zarchiver/activity/OpenAsDlg;->c:Ljava/lang/String;

    .line 143
    .line 144
    :cond_5
    new-instance p1, Lru/zdevs/zarchiver/activity/OpenAsDlg$e;

    .line 145
    .line 146
    iget-object v0, p0, Lru/zdevs/zarchiver/activity/OpenAsDlg;->c:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-direct {p1, v1, v0, v2}, Lru/zdevs/zarchiver/activity/OpenAsDlg$e;-><init>([Landroid/os/Parcelable;Ljava/lang/String;Landroid/content/pm/PackageManager;)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lru/zdevs/zarchiver/activity/OpenAsDlg;->d:Lw0/a;

    .line 156
    .line 157
    invoke-virtual {p1, p0, v0}, Lw0/c;->g(Landroid/content/Context;Lw0/a;)V

    .line 158
    .line 159
    .line 160
    :goto_1
    const/4 p1, -0x1

    .line 161
    iput p1, p0, Lru/zdevs/zarchiver/activity/OpenAsDlg;->b:I

    .line 162
    .line 163
    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lru/zdevs/zarchiver/activity/OpenAsDlg;->d:Lw0/a;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lw0/a;->d(Lw0/a$c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lru/zdevs/zarchiver/activity/OpenAsDlg;->d:Lw0/a;

    .line 5
    .line 6
    invoke-virtual {v0, p0, p0}, Lw0/a;->a(Lw0/a$c;Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onStop()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    const/4 v1, -0x1

    .line 6
    iget-object v2, p0, Lru/zdevs/zarchiver/activity/OpenAsDlg;->d:Lw0/a;

    .line 7
    .line 8
    const/16 v3, 0x3e8

    .line 9
    .line 10
    invoke-virtual {v2, v3, v0, v1}, Lw0/a;->f(III)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/activity/OpenAsDlg;->a(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    return p1
.end method
