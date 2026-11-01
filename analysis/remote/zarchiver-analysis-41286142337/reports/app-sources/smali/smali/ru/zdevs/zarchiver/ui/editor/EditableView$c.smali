.class public final Lru/zdevs/zarchiver/ui/editor/EditableView$c;
.super Landroid/view/ActionMode$Callback2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/ui/editor/EditableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/Object;

.field public final synthetic c:Lru/zdevs/zarchiver/ui/editor/EditableView;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ui/editor/EditableView;ILjava/lang/Object;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$c;->c:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    const/4 p2, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p2, 0x0

    .line 12
    :goto_0
    iput-boolean p2, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$c;->a:Z

    .line 13
    .line 14
    iput-object p3, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$c;->b:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object p3, p1, Lru/zdevs/zarchiver/ui/editor/EditableView;->f:Lru/zdevs/zarchiver/ui/editor/c;

    .line 17
    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    :cond_1
    invoke-virtual {p3, v0}, Lru/zdevs/zarchiver/ui/editor/c;->g(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/Menu;Landroid/app/RemoteAction;II)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x1020041

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-interface {p1, v1, v2, p3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p2}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1, p4}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 26
    .line 27
    const/16 p4, 0x1c

    .line 28
    .line 29
    if-lt p3, p4, :cond_0

    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/app/RemoteAction;->shouldShowIcon()Z

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    if-eqz p3, :cond_0

    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    iget-object p3, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$c;->c:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 42
    .line 43
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method public final onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    invoke-interface {p2}, Landroid/view/MenuItem;->getGroupId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x1020041

    .line 6
    .line 7
    .line 8
    if-ne p1, v0, :cond_4

    .line 9
    .line 10
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v1, 0x1a

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-lt p1, v1, :cond_3

    .line 16
    .line 17
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$c;->b:Ljava/lang/Object;

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    check-cast v1, Landroid/view/textclassifier/TextClassification;

    .line 23
    .line 24
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-ne v3, v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassification;->getOnClickListener()Landroid/view/View$OnClickListener;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-interface {p2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/16 v0, 0x1c

    .line 45
    .line 46
    if-lt p1, v0, :cond_2

    .line 47
    .line 48
    :try_start_0
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-interface {p2}, Landroid/view/MenuItem;->getOrder()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    add-int/lit8 v0, v0, -0x14

    .line 57
    .line 58
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Landroid/app/RemoteAction;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    :catch_0
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 74
    :goto_2
    if-eqz p1, :cond_4

    .line 75
    .line 76
    return v2

    .line 77
    :cond_4
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$c;->c:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Lru/zdevs/zarchiver/ui/editor/EditableView;->onMenuItemClick(Landroid/view/MenuItem;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    return p1
.end method

.method public final onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$c;->c:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 13
    .line 14
    sget v1, Lru/zdevs/zarchiver/ui/editor/EditableView;->y:I

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lru/zdevs/zarchiver/ui/editor/EditableView;->e(Landroid/view/Menu;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$c;->c:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 20
    .line 21
    invoke-static {p1, p2}, Lru/zdevs/zarchiver/ui/editor/EditableView;->b(Lru/zdevs/zarchiver/ui/editor/EditableView;Landroid/view/Menu;)V

    .line 22
    .line 23
    .line 24
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    .line 26
    const/16 v1, 0x1a

    .line 27
    .line 28
    if-lt p1, v1, :cond_5

    .line 29
    .line 30
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$c;->b:Ljava/lang/Object;

    .line 31
    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    goto/16 :goto_2

    .line 35
    .line 36
    :cond_0
    check-cast v1, Landroid/view/textclassifier/TextClassification;

    .line 37
    .line 38
    const/4 v2, 0x2

    .line 39
    const/4 v3, 0x0

    .line 40
    const/16 v4, 0x1c

    .line 41
    .line 42
    if-lt p1, v4, :cond_1

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-nez v5, :cond_1

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    check-cast v5, Landroid/app/RemoteAction;

    .line 63
    .line 64
    const/16 v6, 0x14

    .line 65
    .line 66
    invoke-virtual {p0, p2, v5, v6, v2}, Lru/zdevs/zarchiver/ui/editor/EditableView$c;->a(Landroid/view/Menu;Landroid/app/RemoteAction;II)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassification;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    if-nez v5, :cond_2

    .line 75
    .line 76
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassification;->getLabel()Ljava/lang/CharSequence;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-nez v5, :cond_4

    .line 85
    .line 86
    :cond_2
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassification;->getIntent()Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    if-nez v5, :cond_3

    .line 91
    .line 92
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassification;->getOnClickListener()Landroid/view/View$OnClickListener;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    if-eqz v5, :cond_4

    .line 97
    .line 98
    :cond_3
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassification;->getLabel()Ljava/lang/CharSequence;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    const v6, 0x1020041

    .line 103
    .line 104
    .line 105
    const/16 v7, 0xa

    .line 106
    .line 107
    invoke-interface {p2, v6, v6, v7, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassification;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassification;->getIntent()Landroid/content/Intent;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 128
    .line 129
    .line 130
    :cond_4
    :goto_0
    if-lt p1, v4, :cond_5

    .line 131
    .line 132
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    const/4 v2, 0x1

    .line 141
    :goto_1
    if-ge v2, p1, :cond_5

    .line 142
    .line 143
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    check-cast v4, Landroid/app/RemoteAction;

    .line 152
    .line 153
    add-int/lit8 v5, v2, 0x14

    .line 154
    .line 155
    invoke-virtual {p0, p2, v4, v5, v3}, Lru/zdevs/zarchiver/ui/editor/EditableView$c;->a(Landroid/view/Menu;Landroid/app/RemoteAction;II)V

    .line 156
    .line 157
    .line 158
    add-int/lit8 v2, v2, 0x1

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_5
    :goto_2
    return v0
.end method

.method public final onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$c;->c:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 2
    .line 3
    iget-object p1, p1, Lru/zdevs/zarchiver/ui/editor/EditableView;->f:Lru/zdevs/zarchiver/ui/editor/c;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lru/zdevs/zarchiver/ui/editor/c;->g(I)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$c;->c:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p1, Lru/zdevs/zarchiver/ui/editor/EditableView;->m:Landroid/view/ActionMode;

    .line 13
    .line 14
    invoke-virtual {p1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->postInvalidate()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$c;->c:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 2
    .line 3
    iget-object p2, p1, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 4
    .line 5
    iget-object p2, p2, Lru/zdevs/zarchiver/ui/editor/b;->g:[I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    aget p2, p2, v0

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    if-ne p2, v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p1, p1, Lru/zdevs/zarchiver/ui/editor/EditableView;->k:Lc1/e;

    .line 15
    .line 16
    invoke-virtual {p1}, Lc1/e;->c()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget-object p2, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$c;->c:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 21
    .line 22
    iget-object v2, p2, Lru/zdevs/zarchiver/ui/editor/EditableView;->d:[I

    .line 23
    .line 24
    aget v3, v2, v0

    .line 25
    .line 26
    const/4 v4, 0x3

    .line 27
    const/4 v5, 0x1

    .line 28
    const/4 v6, 0x2

    .line 29
    if-eq v3, v1, :cond_1

    .line 30
    .line 31
    aget v7, v2, v5

    .line 32
    .line 33
    if-eq v7, v1, :cond_1

    .line 34
    .line 35
    sub-int/2addr v7, p1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    aget v3, v2, v6

    .line 38
    .line 39
    if-eq v3, v1, :cond_2

    .line 40
    .line 41
    aget v2, v2, v4

    .line 42
    .line 43
    if-eq v2, v1, :cond_2

    .line 44
    .line 45
    sub-int v7, v2, p1

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    div-int/lit8 v3, p2, 0x2

    .line 54
    .line 55
    neg-int v7, p1

    .line 56
    :goto_0
    iget-boolean p2, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$c;->a:Z

    .line 57
    .line 58
    if-eqz p2, :cond_3

    .line 59
    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    iget-object p2, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$c;->c:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 63
    .line 64
    iget-object p2, p2, Lru/zdevs/zarchiver/ui/editor/EditableView;->d:[I

    .line 65
    .line 66
    aget v0, p2, v6

    .line 67
    .line 68
    if-eq v0, v1, :cond_3

    .line 69
    .line 70
    aget p2, p2, v4

    .line 71
    .line 72
    if-eq p2, v1, :cond_3

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    add-int/lit8 v0, v3, 0x1

    .line 76
    .line 77
    add-int p2, v7, p1

    .line 78
    .line 79
    :goto_1
    invoke-virtual {p3, v3, v7, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$c;->c:Lru/zdevs/zarchiver/ui/editor/EditableView;

    invoke-static {p1, p2}, Lru/zdevs/zarchiver/ui/editor/EditableView;->b(Lru/zdevs/zarchiver/ui/editor/EditableView;Landroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method
