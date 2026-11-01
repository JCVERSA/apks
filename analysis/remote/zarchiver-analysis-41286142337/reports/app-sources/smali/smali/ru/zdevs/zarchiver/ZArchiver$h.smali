.class public final Lru/zdevs/zarchiver/ZArchiver$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/ZArchiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "h"
.end annotation


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/ZArchiver;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ZArchiver;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/ZArchiver$h;->a:Lru/zdevs/zarchiver/ZArchiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x7f07000c

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    iget-object v3, p0, Lru/zdevs/zarchiver/ZArchiver$h;->a:Lru/zdevs/zarchiver/ZArchiver;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-object p2, v3, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 14
    .line 15
    iget-object p2, p2, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 16
    .line 17
    invoke-virtual {p2, v3, v2}, Lru/zdevs/zarchiver/a;->m(Landroid/content/Context;Z)Z

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 21
    .line 22
    .line 23
    return v2

    .line 24
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const v0, 0x7f070028

    .line 29
    .line 30
    .line 31
    if-ne p1, v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v3, p2}, Lru/zdevs/zarchiver/ZArchiver;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 34
    .line 35
    .line 36
    return v2

    .line 37
    :cond_1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-virtual {v3, p1}, Lru/zdevs/zarchiver/ZArchiver;->D(I)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    return p1
.end method

.method public final onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver$h;->a:Lru/zdevs/zarchiver/ZArchiver;

    .line 2
    .line 3
    iget-object v1, v0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 4
    .line 5
    iget-char v1, v1, Lru/zdevs/zarchiver/d;->a:C

    .line 6
    .line 7
    invoke-virtual {v0}, Lb0/c;->getMenuInflater()Landroid/view/MenuInflater;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const v3, 0x7f09000a

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v3, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 15
    .line 16
    .line 17
    const/16 v3, 0x22

    .line 18
    .line 19
    if-ne v1, v3, :cond_0

    .line 20
    .line 21
    const v4, 0x7f090008

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const v4, 0x7f09000b

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {v2, v4, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 29
    .line 30
    .line 31
    const v4, 0x7f090004

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v4, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lv0/b;->j(Landroid/content/Context;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const/4 v4, 0x1

    .line 42
    xor-int/2addr v2, v4

    .line 43
    const v5, 0x7f07002e

    .line 44
    .line 45
    .line 46
    const/4 v6, 0x0

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    new-array v7, v4, [I

    .line 50
    .line 51
    aput v5, v7, v6

    .line 52
    .line 53
    invoke-static {p2, v7, v6}, Lz0/e;->p(Landroid/view/Menu;[IZ)V

    .line 54
    .line 55
    .line 56
    :cond_1
    const/4 v7, 0x2

    .line 57
    if-ne v1, v3, :cond_3

    .line 58
    .line 59
    const/4 v3, 0x5

    .line 60
    new-array v3, v3, [I

    .line 61
    .line 62
    aput v5, v3, v6

    .line 63
    .line 64
    const v5, 0x7f070024

    .line 65
    .line 66
    .line 67
    aput v5, v3, v4

    .line 68
    .line 69
    const v5, 0x7f070025

    .line 70
    .line 71
    .line 72
    aput v5, v3, v7

    .line 73
    .line 74
    const/4 v5, 0x3

    .line 75
    const v8, 0x7f070006

    .line 76
    .line 77
    .line 78
    aput v8, v3, v5

    .line 79
    .line 80
    iget-object v5, v0, Lru/zdevs/zarchiver/ZArchiver;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 81
    .line 82
    if-nez v5, :cond_2

    .line 83
    .line 84
    const/4 v5, 0x0

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    const v5, 0x7f07000c

    .line 87
    .line 88
    .line 89
    :goto_1
    const/4 v8, 0x4

    .line 90
    aput v5, v3, v8

    .line 91
    .line 92
    invoke-static {p2, v3, v6}, Lz0/e;->p(Landroid/view/Menu;[IZ)V

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_3
    new-array v3, v7, [I

    .line 97
    .line 98
    fill-array-data v3, :array_0

    .line 99
    .line 100
    .line 101
    invoke-static {p2, v3, v6}, Lz0/e;->p(Landroid/view/Menu;[IZ)V

    .line 102
    .line 103
    .line 104
    const v3, 0x7f070026

    .line 105
    .line 106
    .line 107
    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 112
    .line 113
    .line 114
    :goto_2
    new-array v3, v4, [I

    .line 115
    .line 116
    const v5, 0x7f070028

    .line 117
    .line 118
    .line 119
    aput v5, v3, v6

    .line 120
    .line 121
    invoke-static {p2, v3, v4}, Lz0/e;->p(Landroid/view/Menu;[IZ)V

    .line 122
    .line 123
    .line 124
    if-eqz v2, :cond_4

    .line 125
    .line 126
    invoke-static {v0}, Lv0/b;->g(Landroid/content/Context;)Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_4

    .line 131
    .line 132
    const/4 v2, -0x1

    .line 133
    invoke-virtual {v0, v2, p2}, Lb0/c;->l(ILandroid/view/Menu;)V

    .line 134
    .line 135
    .line 136
    :cond_4
    invoke-virtual {v0, p1}, Lru/zdevs/zarchiver/ZArchiver;->S(Landroid/view/ActionMode;)V

    .line 137
    .line 138
    .line 139
    iget-object p1, v0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 140
    .line 141
    invoke-virtual {p1, v6}, Lru/zdevs/zarchiver/ui/FilePanelView;->setPageChangeEnable(Z)V

    .line 142
    .line 143
    .line 144
    if-ne v1, v7, :cond_5

    .line 145
    .line 146
    iget-object p1, v0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 147
    .line 148
    iget-boolean p1, p1, Lru/zdevs/zarchiver/d;->b:Z

    .line 149
    .line 150
    if-nez p1, :cond_5

    .line 151
    .line 152
    const p1, 0x7f0c00fe

    .line 153
    .line 154
    .line 155
    invoke-static {p1}, Lru/zdevs/zarchiver/ZApp;->i(I)V

    .line 156
    .line 157
    .line 158
    :cond_5
    return v4

    .line 159
    :array_0
    .array-data 4
        0x7f070029
        0x7f07000c
    .end array-data
.end method

.method public final onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lru/zdevs/zarchiver/ZArchiver$h;->a:Lru/zdevs/zarchiver/ZArchiver;

    .line 2
    .line 3
    iget-object v0, p1, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 4
    .line 5
    iget-object v0, v0, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p1, v1}, Lru/zdevs/zarchiver/a;->m(Landroid/content/Context;Z)Z

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p1, Lb0/c;->b:Landroid/view/ActionMode;

    .line 13
    .line 14
    iget-object v0, p1, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ui/FilePanelView;->setPageChangeEnable(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lru/zdevs/zarchiver/ZArchiver;->J()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    invoke-static {p2}, Lz0/e;->m(Landroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method
