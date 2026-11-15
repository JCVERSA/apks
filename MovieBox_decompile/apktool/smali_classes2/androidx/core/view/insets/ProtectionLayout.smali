.class public Landroidx/core/view/insets/ProtectionLayout;
.super Landroid/widget/FrameLayout;
.source "source.java"


# static fields
.field private static final PROTECTION_VIEW:Ljava/lang/Object;


# instance fields
.field private mGroup:Landroidx/core/view/insets/c;

.field private final mProtections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/core/view/insets/Protection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/core/view/insets/ProtectionLayout;->PROTECTION_VIEW:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/core/view/insets/ProtectionLayout;->mProtections:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Landroidx/core/view/insets/ProtectionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/core/view/insets/ProtectionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/core/view/insets/ProtectionLayout;->mProtections:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/core/view/insets/Protection;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/core/view/insets/ProtectionLayout;->mProtections:Ljava/util/List;

    .line 9
    invoke-virtual {p0, p2}, Landroidx/core/view/insets/ProtectionLayout;->setProtections(Ljava/util/List;)V

    return-void
.end method

.method private addProtectionView(Landroid/content/Context;ILandroidx/core/view/insets/Protection;)V
    .locals 6

    .line 1
    invoke-virtual {p3}, Landroidx/core/view/insets/Protection;->getAttributes()Landroidx/core/view/insets/Protection$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p3}, Landroidx/core/view/insets/Protection;->getSide()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x4

    .line 11
    const/4 v4, -0x1

    .line 12
    if-eq v1, v2, :cond_3

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq v1, v2, :cond_2

    .line 16
    .line 17
    if-eq v1, v3, :cond_1

    .line 18
    .line 19
    const/16 v2, 0x8

    .line 20
    .line 21
    if-ne v1, v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/core/view/insets/Protection$a;->m()I

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    const/16 v1, 0x50

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    new-instance p2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v0, "Unexpected side: "

    .line 38
    .line 39
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3}, Landroidx/core/view/insets/Protection;->getSide()I

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_1
    invoke-virtual {v0}, Landroidx/core/view/insets/Protection$a;->q()I

    .line 58
    .line 59
    .line 60
    move-result p3

    .line 61
    const/4 v1, 0x5

    .line 62
    :goto_0
    move v5, v4

    .line 63
    move v4, p3

    .line 64
    move p3, v5

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    invoke-virtual {v0}, Landroidx/core/view/insets/Protection$a;->m()I

    .line 67
    .line 68
    .line 69
    move-result p3

    .line 70
    const/16 v1, 0x30

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    invoke-virtual {v0}, Landroidx/core/view/insets/Protection$a;->q()I

    .line 74
    .line 75
    .line 76
    move-result p3

    .line 77
    const/4 v1, 0x3

    .line 78
    goto :goto_0

    .line 79
    :goto_1
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 80
    .line 81
    invoke-direct {v2, v4, p3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Landroidx/core/view/insets/Protection$a;->n()Lz0/c;

    .line 85
    .line 86
    .line 87
    move-result-object p3

    .line 88
    iget v1, p3, Lz0/c;->a:I

    .line 89
    .line 90
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 91
    .line 92
    iget v1, p3, Lz0/c;->b:I

    .line 93
    .line 94
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 95
    .line 96
    iget v1, p3, Lz0/c;->c:I

    .line 97
    .line 98
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 99
    .line 100
    iget p3, p3, Lz0/c;->d:I

    .line 101
    .line 102
    iput p3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 103
    .line 104
    new-instance p3, Landroid/view/View;

    .line 105
    .line 106
    invoke-direct {p3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 107
    .line 108
    .line 109
    sget-object p1, Landroidx/core/view/insets/ProtectionLayout;->PROTECTION_VIEW:Ljava/lang/Object;

    .line 110
    .line 111
    invoke-virtual {p3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Landroidx/core/view/insets/Protection$a;->o()F

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    invoke-virtual {p3, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Landroidx/core/view/insets/Protection$a;->p()F

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    invoke-virtual {p3, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Landroidx/core/view/insets/Protection$a;->k()F

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    invoke-virtual {p3, p1}, Landroid/view/View;->setAlpha(F)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Landroidx/core/view/insets/Protection$a;->r()Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-eqz p1, :cond_4

    .line 140
    .line 141
    const/4 v3, 0x0

    .line 142
    :cond_4
    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Landroidx/core/view/insets/Protection$a;->l()Landroid/graphics/drawable/Drawable;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p3, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 150
    .line 151
    .line 152
    new-instance p1, Landroidx/core/view/insets/ProtectionLayout$a;

    .line 153
    .line 154
    invoke-direct {p1, p0, v2, p3}, Landroidx/core/view/insets/ProtectionLayout$a;-><init>(Landroidx/core/view/insets/ProtectionLayout;Landroid/widget/FrameLayout$LayoutParams;Landroid/view/View;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, p1}, Landroidx/core/view/insets/Protection$a;->t(Landroidx/core/view/insets/Protection$a$a;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, p3, p2, v2}, Landroidx/core/view/insets/ProtectionLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 161
    .line 162
    .line 163
    return-void
.end method

.method private addProtectionViews()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout;->mProtections:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-direct {p0}, Landroidx/core/view/insets/ProtectionLayout;->getOrInstallSystemBarStateMonitor()Landroidx/core/view/insets/f;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Landroidx/core/view/insets/c;

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/core/view/insets/ProtectionLayout;->mProtections:Ljava/util/List;

    .line 17
    .line 18
    invoke-direct {v1, v0, v2}, Landroidx/core/view/insets/c;-><init>(Landroidx/core/view/insets/f;Ljava/util/List;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Landroidx/core/view/insets/ProtectionLayout;->mGroup:Landroidx/core/view/insets/c;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Landroidx/core/view/insets/ProtectionLayout;->mGroup:Landroidx/core/view/insets/c;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroidx/core/view/insets/c;->i()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x0

    .line 34
    :goto_0
    if-ge v2, v1, :cond_1

    .line 35
    .line 36
    iget-object v3, p0, Landroidx/core/view/insets/ProtectionLayout;->mGroup:Landroidx/core/view/insets/c;

    .line 37
    .line 38
    invoke-virtual {v3, v2}, Landroidx/core/view/insets/c;->h(I)Landroidx/core/view/insets/Protection;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    add-int v5, v2, v0

    .line 47
    .line 48
    invoke-direct {p0, v4, v5, v3}, Landroidx/core/view/insets/ProtectionLayout;->addProtectionView(Landroid/content/Context;ILandroidx/core/view/insets/Protection;)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    return-void
.end method

.method private getOrInstallSystemBarStateMonitor()Landroidx/core/view/insets/f;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup;

    .line 6
    .line 7
    sget v1, Landroidx/core/R$id;->tag_system_bar_state_monitor:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    instance-of v2, v1, Landroidx/core/view/insets/f;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    check-cast v1, Landroidx/core/view/insets/f;

    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    new-instance v1, Landroidx/core/view/insets/f;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Landroidx/core/view/insets/f;-><init>(Landroid/view/ViewGroup;)V

    .line 23
    .line 24
    .line 25
    sget v2, Landroidx/core/R$id;->tag_system_bar_state_monitor:I

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-object v1
.end method

.method private maybeUninstallSystemBarStateMonitor()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup;

    .line 6
    .line 7
    sget v1, Landroidx/core/R$id;->tag_system_bar_state_monitor:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    instance-of v2, v1, Landroidx/core/view/insets/f;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    check-cast v1, Landroidx/core/view/insets/f;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/core/view/insets/f;->k()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-virtual {v1}, Landroidx/core/view/insets/f;->h()V

    .line 28
    .line 29
    .line 30
    sget v1, Landroidx/core/R$id;->tag_system_bar_state_monitor:I

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private removeProtectionViews()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout;->mGroup:Landroidx/core/view/insets/c;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Landroidx/core/view/insets/ProtectionLayout;->mGroup:Landroidx/core/view/insets/c;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/core/view/insets/c;->i()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sub-int/2addr v0, v1

    .line 16
    iget-object v1, p0, Landroidx/core/view/insets/ProtectionLayout;->mGroup:Landroidx/core/view/insets/c;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroidx/core/view/insets/c;->i()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout;->mGroup:Landroidx/core/view/insets/c;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/core/view/insets/c;->i()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x0

    .line 32
    :goto_0
    const/4 v2, 0x0

    .line 33
    if-ge v1, v0, :cond_0

    .line 34
    .line 35
    iget-object v3, p0, Landroidx/core/view/insets/ProtectionLayout;->mGroup:Landroidx/core/view/insets/c;

    .line 36
    .line 37
    invoke-virtual {v3, v1}, Landroidx/core/view/insets/c;->h(I)Landroidx/core/view/insets/Protection;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Landroidx/core/view/insets/Protection;->getAttributes()Landroidx/core/view/insets/Protection$a;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3, v2}, Landroidx/core/view/insets/Protection$a;->t(Landroidx/core/view/insets/Protection$a$a;)V

    .line 46
    .line 47
    .line 48
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout;->mGroup:Landroidx/core/view/insets/c;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroidx/core/view/insets/c;->g()V

    .line 54
    .line 55
    .line 56
    iput-object v2, p0, Landroidx/core/view/insets/ProtectionLayout;->mGroup:Landroidx/core/view/insets/c;

    .line 57
    .line 58
    :cond_1
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Landroidx/core/view/insets/ProtectionLayout;->PROTECTION_VIEW:Ljava/lang/Object;

    .line 8
    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout;->mGroup:Landroidx/core/view/insets/c;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/core/view/insets/c;->i()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    sub-int/2addr v1, v0

    .line 26
    if-gt p2, v1, :cond_1

    .line 27
    .line 28
    if-gez p2, :cond_2

    .line 29
    .line 30
    :cond_1
    move p2, v1

    .line 31
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout;->mGroup:Landroidx/core/view/insets/c;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/core/view/insets/ProtectionLayout;->removeProtectionViews()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-direct {p0}, Landroidx/core/view/insets/ProtectionLayout;->addProtectionViews()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/core/view/insets/ProtectionLayout;->removeProtectionViews()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/core/view/insets/ProtectionLayout;->maybeUninstallSystemBarStateMonitor()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setProtections(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/view/insets/Protection;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout;->mProtections:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout;->mProtections:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-direct {p0}, Landroidx/core/view/insets/ProtectionLayout;->removeProtectionViews()V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Landroidx/core/view/insets/ProtectionLayout;->addProtectionViews()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
