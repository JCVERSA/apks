.class public Lru/zdevs/zarchiver/ZImageViewer;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lw0/a$c;
.implements Landroid/view/View$OnClickListener;
.implements Lg/d$g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/zdevs/zarchiver/ZImageViewer$e;,
        Lru/zdevs/zarchiver/ZImageViewer$c;,
        Lru/zdevs/zarchiver/ZImageViewer$d;
    }
.end annotation


# instance fields
.field public a:Lru/zdevs/zarchiver/ui/layout/b;

.field public b:Lru/zdevs/zarchiver/ZImageViewer$e;

.field public final c:Lw0/a;

.field public d:I


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
    iput-object v0, p0, Lru/zdevs/zarchiver/ZImageViewer;->c:Lw0/a;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/app/ActionBar;->isShowing()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iget v1, p0, Lru/zdevs/zarchiver/ZImageViewer;->d:I

    .line 27
    .line 28
    or-int/2addr p1, v1

    .line 29
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iget v1, p0, Lru/zdevs/zarchiver/ZImageViewer;->d:I

    .line 45
    .line 46
    xor-int/lit8 v1, v1, -0x1

    .line 47
    .line 48
    and-int/2addr p1, v1

    .line 49
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/app/ActionBar;->show()V

    .line 57
    .line 58
    .line 59
    :goto_1
    return-void
.end method

.method public final b(Lw0/a$b;)V
    .locals 2

    .line 1
    check-cast p1, Lru/zdevs/zarchiver/ZImageViewer$d;

    .line 2
    .line 3
    iget-object v0, p1, Lru/zdevs/zarchiver/ZImageViewer$d;->a:Lh0/c;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const p1, 0x7f0c004c

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lru/zdevs/zarchiver/ZApp;->i(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ZImageViewer;->finish()V

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    new-instance v1, Lru/zdevs/zarchiver/ZImageViewer$e;

    .line 18
    .line 19
    invoke-direct {v1, p0, p0, v0}, Lru/zdevs/zarchiver/ZImageViewer$e;-><init>(Lru/zdevs/zarchiver/ZImageViewer;Landroid/content/Context;Lh0/c;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lru/zdevs/zarchiver/ZImageViewer;->b:Lru/zdevs/zarchiver/ZImageViewer$e;

    .line 23
    .line 24
    iget-object v0, p0, Lru/zdevs/zarchiver/ZImageViewer;->a:Lru/zdevs/zarchiver/ui/layout/b;

    .line 25
    .line 26
    iget-object p1, p1, Lru/zdevs/zarchiver/ZImageViewer$d;->a:Lh0/c;

    .line 27
    .line 28
    invoke-interface {p1}, Lh0/c;->c()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    const/4 v1, 0x2

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x1

    .line 37
    :goto_0
    invoke-virtual {v0, v1}, Lf/b;->setOffscreenPageLimit(I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lru/zdevs/zarchiver/ZImageViewer;->a:Lru/zdevs/zarchiver/ui/layout/b;

    .line 41
    .line 42
    iget-object v1, p0, Lru/zdevs/zarchiver/ZImageViewer;->b:Lru/zdevs/zarchiver/ZImageViewer$e;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lf/b;->setAdapter(Lf/a;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lru/zdevs/zarchiver/ZImageViewer;->a:Lru/zdevs/zarchiver/ui/layout/b;

    .line 48
    .line 49
    invoke-interface {p1}, Lh0/c;->a()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-virtual {v0, p1}, Lf/b;->setCurrentItem(I)V

    .line 54
    .line 55
    .line 56
    :goto_1
    return-void
.end method

.method public final c(Lg/d;Ljava/lang/Exception;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/widget/FrameLayout;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 10
    .line 11
    .line 12
    new-instance v0, Landroid/widget/TextView;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 22
    .line 23
    const/4 v2, -0x2

    .line 24
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 25
    .line 26
    .line 27
    const/16 v2, 0x11

    .line 28
    .line 29
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v0, "Failed to load image: "

    .line 48
    .line 49
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1}, Lru/zdevs/zarchiver/ZApp;->j(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    return-void
.end method

.method public final finish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZImageViewer;->a:Lru/zdevs/zarchiver/ui/layout/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lf/b;->setAdapter(Lf/a;)V

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lf1/a;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lf1/a;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/ZImageViewer;->a(Z)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v0, v1}, Lt0/b;->m(Landroid/content/Context;ZLt0/b$a;)V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x600

    .line 7
    .line 8
    invoke-static {v1}, Lt0/b;->k(I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const/16 v3, 0x9

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const/16 v4, 0x700

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 30
    .line 31
    .line 32
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    .line 34
    const/16 v4, 0x13

    .line 35
    .line 36
    const/4 v5, 0x1

    .line 37
    if-lt v3, v4, :cond_1

    .line 38
    .line 39
    const/16 v4, 0x806

    .line 40
    .line 41
    iput v4, p0, Lru/zdevs/zarchiver/ZImageViewer;->d:I

    .line 42
    .line 43
    const/high16 v4, 0x8000000

    .line 44
    .line 45
    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 46
    .line 47
    .line 48
    const/16 v4, 0x1c

    .line 49
    .line 50
    if-lt v3, v4, :cond_2

    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/4 v4, 0x6

    .line 60
    iput v4, p0, Lru/zdevs/zarchiver/ZImageViewer;->d:I

    .line 61
    .line 62
    :cond_2
    :goto_0
    invoke-static {p0}, Lz0/e;->g(Landroid/app/Activity;)V

    .line 63
    .line 64
    .line 65
    sget-object v4, Lt0/b;->e:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {p0, v4}, Lz0/e;->k(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    sget-object v4, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;

    .line 71
    .line 72
    sget-object v6, Lt0/b;->e:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v4, v6}, Lz0/e;->k(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const/high16 v4, 0x40000000    # 2.0f

    .line 78
    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    invoke-static {p0, v0}, Lz0/e;->o(Landroid/app/Activity;Z)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 86
    .line 87
    const/high16 v6, -0x1000000

    .line 88
    .line 89
    invoke-direct {v0, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    .line 94
    .line 95
    const/16 v0, 0x15

    .line 96
    .line 97
    if-lt v3, v0, :cond_4

    .line 98
    .line 99
    invoke-virtual {v2, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 100
    .line 101
    .line 102
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    .line 104
    .line 105
    new-instance p1, Lru/zdevs/zarchiver/ui/layout/b;

    .line 106
    .line 107
    invoke-direct {p1, p0}, Lru/zdevs/zarchiver/ui/layout/b;-><init>(Landroid/content/Context;)V

    .line 108
    .line 109
    .line 110
    iput-object p1, p0, Lru/zdevs/zarchiver/ZImageViewer;->a:Lru/zdevs/zarchiver/ui/layout/b;

    .line 111
    .line 112
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 113
    .line 114
    const/4 v2, -0x1

    .line 115
    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lru/zdevs/zarchiver/ZImageViewer;->a:Lru/zdevs/zarchiver/ui/layout/b;

    .line 122
    .line 123
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    if-eqz p1, :cond_6

    .line 131
    .line 132
    if-nez v1, :cond_5

    .line 133
    .line 134
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 135
    .line 136
    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    .line 141
    .line 142
    :cond_5
    invoke-static {p0}, Lz0/e;->d(Landroid/content/Context;)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-nez v0, :cond_6

    .line 147
    .line 148
    invoke-virtual {p1, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 149
    .line 150
    .line 151
    :cond_6
    new-instance p1, Lru/zdevs/zarchiver/ZImageViewer$c;

    .line 152
    .line 153
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-direct {p1, v0}, Lru/zdevs/zarchiver/ZImageViewer$c;-><init>(Landroid/content/Intent;)V

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Lru/zdevs/zarchiver/ZImageViewer;->c:Lw0/a;

    .line 161
    .line 162
    invoke-virtual {p1, p0, v0}, Lw0/c;->g(Landroid/content/Context;Lw0/a;)V

    .line 163
    .line 164
    .line 165
    :try_start_0
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->f()Landroid/os/Handler;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    new-instance v0, Lru/zdevs/zarchiver/ZImageViewer$a;

    .line 170
    .line 171
    invoke-direct {v0, p0}, Lru/zdevs/zarchiver/ZImageViewer$a;-><init>(Lru/zdevs/zarchiver/ZImageViewer;)V

    .line 172
    .line 173
    .line 174
    const-wide/16 v1, 0x7d0

    .line 175
    .line 176
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .line 178
    .line 179
    :catch_0
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ZImageViewer;->getMenuInflater()Landroid/view/MenuInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f090003

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/16 v0, 0x42

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x14

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0x13

    .line 10
    .line 11
    if-ne p1, v0, :cond_1

    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, v0}, Lru/zdevs/zarchiver/ZImageViewer;->a(Z)V

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .locals 7

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-ne p1, v0, :cond_2

    .line 4
    .line 5
    invoke-static {p2}, Lz0/e;->m(Landroid/view/Menu;)V

    .line 6
    .line 7
    .line 8
    if-eqz p2, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lru/zdevs/zarchiver/ZImageViewer;->b:Lru/zdevs/zarchiver/ZImageViewer$e;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ZImageViewer$e;->b()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-lez v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lru/zdevs/zarchiver/ZImageViewer;->b:Lru/zdevs/zarchiver/ZImageViewer$e;

    .line 21
    .line 22
    iget-object v1, v0, Lru/zdevs/zarchiver/ZImageViewer$e;->b:Lh0/c;

    .line 23
    .line 24
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ZImageViewer$e;->d()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v1}, Lh0/c;->e()Lh0/h;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const v3, 0x7f070021

    .line 33
    .line 34
    .line 35
    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const/4 v4, 0x0

    .line 40
    const/4 v5, 0x1

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-nez v6, :cond_0

    .line 48
    .line 49
    const/4 v6, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v6, 0x0

    .line 52
    :goto_0
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 53
    .line 54
    .line 55
    const v3, 0x7f07000e

    .line 56
    .line 57
    .line 58
    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-interface {v1}, Lh0/c;->c()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_1

    .line 67
    .line 68
    if-eqz v2, :cond_1

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_1

    .line 75
    .line 76
    iget-object v0, v2, Lh0/h;->c:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v0}, Ln0/e;->l(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_1

    .line 83
    .line 84
    const/4 v4, 0x1

    .line 85
    :cond_1
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 86
    .line 87
    .line 88
    const v0, 0x7f07003a

    .line 89
    .line 90
    .line 91
    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 96
    .line 97
    .line 98
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    return p1
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x102002c

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq p1, v0, :cond_b

    .line 10
    .line 11
    const v0, 0x7f07000f

    .line 12
    .line 13
    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    goto/16 :goto_3

    .line 17
    .line 18
    :cond_0
    const v0, 0x7f07003a

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-ne p1, v0, :cond_4

    .line 23
    .line 24
    iget-object p1, p0, Lru/zdevs/zarchiver/ZImageViewer;->b:Lru/zdevs/zarchiver/ZImageViewer$e;

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p1}, Lru/zdevs/zarchiver/ZImageViewer$e;->d()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Lru/zdevs/zarchiver/ZImageViewer;->b:Lru/zdevs/zarchiver/ZImageViewer$e;

    .line 33
    .line 34
    iget v3, v0, Lru/zdevs/zarchiver/ZImageViewer$e;->c:I

    .line 35
    .line 36
    if-ltz v3, :cond_3

    .line 37
    .line 38
    iget-object v4, v0, Lru/zdevs/zarchiver/ZImageViewer$e;->b:Lh0/c;

    .line 39
    .line 40
    invoke-interface {v4}, Lh0/c;->getCount()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-lt v3, v5, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget v0, v0, Lru/zdevs/zarchiver/ZImageViewer$e;->c:I

    .line 48
    .line 49
    invoke-interface {v4, p0, v0}, Lh0/c;->b(Landroid/content/Context;I)Landroid/net/Uri;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    move-object v2, v0

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const-string p1, ""

    .line 56
    .line 57
    :cond_3
    :goto_0
    invoke-static {p0, v2, p1}, Lv0/e;->e(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return v1

    .line 61
    :cond_4
    const v0, 0x7f070021

    .line 62
    .line 63
    .line 64
    const/4 v3, 0x0

    .line 65
    if-ne p1, v0, :cond_7

    .line 66
    .line 67
    iget-object p1, p0, Lru/zdevs/zarchiver/ZImageViewer;->b:Lru/zdevs/zarchiver/ZImageViewer$e;

    .line 68
    .line 69
    iget-object p1, p1, Lru/zdevs/zarchiver/ZImageViewer$e;->b:Lh0/c;

    .line 70
    .line 71
    invoke-interface {p1}, Lh0/c;->e()Lh0/h;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    iget-object p1, p0, Lru/zdevs/zarchiver/ZImageViewer;->b:Lru/zdevs/zarchiver/ZImageViewer$e;

    .line 76
    .line 77
    invoke-virtual {p1}, Lru/zdevs/zarchiver/ZImageViewer$e;->d()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    if-eqz v7, :cond_6

    .line 82
    .line 83
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_5

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_5
    new-instance p1, Lg0/o;

    .line 91
    .line 92
    const/4 v5, 0x0

    .line 93
    const/4 v9, 0x0

    .line 94
    move-object v4, p1

    .line 95
    move-object v6, p0

    .line 96
    invoke-direct/range {v4 .. v9}, Lg0/o;-><init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;Lh0/h;Ljava/lang/String;Z)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lg0/o;->w()V

    .line 100
    .line 101
    .line 102
    return v1

    .line 103
    :cond_6
    :goto_1
    return v3

    .line 104
    :cond_7
    const v0, 0x7f07000e

    .line 105
    .line 106
    .line 107
    if-ne p1, v0, :cond_a

    .line 108
    .line 109
    iget-object p1, p0, Lru/zdevs/zarchiver/ZImageViewer;->b:Lru/zdevs/zarchiver/ZImageViewer$e;

    .line 110
    .line 111
    if-nez p1, :cond_8

    .line 112
    .line 113
    return v1

    .line 114
    :cond_8
    iget v0, p1, Lru/zdevs/zarchiver/ZImageViewer$e;->c:I

    .line 115
    .line 116
    iget-object p1, p1, Lru/zdevs/zarchiver/ZImageViewer$e;->b:Lh0/c;

    .line 117
    .line 118
    invoke-interface {p1}, Lh0/c;->e()Lh0/h;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iget-object v4, p0, Lru/zdevs/zarchiver/ZImageViewer;->b:Lru/zdevs/zarchiver/ZImageViewer$e;

    .line 123
    .line 124
    invoke-virtual {v4}, Lru/zdevs/zarchiver/ZImageViewer$e;->d()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    if-eqz p1, :cond_a

    .line 129
    .line 130
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    if-eqz v5, :cond_9

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_9
    const v3, 0x7f0c00f6

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    iget-object v5, p0, Lru/zdevs/zarchiver/ZImageViewer;->b:Lru/zdevs/zarchiver/ZImageViewer$e;

    .line 145
    .line 146
    invoke-virtual {v5}, Lru/zdevs/zarchiver/ZImageViewer$e;->d()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    const-string v6, "%1"

    .line 151
    .line 152
    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    new-instance v5, Lg0/w;

    .line 157
    .line 158
    invoke-direct {v5, v1, p0, v3, v2}, Lg0/w;-><init>(ILandroid/content/Context;Ljava/lang/String;Lru/zdevs/zarchiver/d;)V

    .line 159
    .line 160
    .line 161
    new-instance v2, Lru/zdevs/zarchiver/ZImageViewer$b;

    .line 162
    .line 163
    invoke-direct {v2, p0, p1, v4, v0}, Lru/zdevs/zarchiver/ZImageViewer$b;-><init>(Lru/zdevs/zarchiver/ZImageViewer;Lh0/h;Ljava/lang/String;I)V

    .line 164
    .line 165
    .line 166
    iput-object v2, v5, Lg0/i;->b:Lg0/i$d;

    .line 167
    .line 168
    invoke-virtual {v5}, Lg0/w;->t()V

    .line 169
    .line 170
    .line 171
    return v1

    .line 172
    :cond_a
    :goto_2
    return v3

    .line 173
    :cond_b
    :goto_3
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ZImageViewer;->finish()V

    .line 174
    .line 175
    .line 176
    return v1
.end method

.method public final onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lru/zdevs/zarchiver/ZImageViewer;->c:Lw0/a;

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
    iget-object v0, p0, Lru/zdevs/zarchiver/ZImageViewer;->c:Lw0/a;

    .line 5
    .line 6
    invoke-virtual {v0, p0, p0}, Lw0/a;->a(Lw0/a$c;Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onStart()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lru/zdevs/zarchiver/ZApp;->b(Landroid/content/Context;)Landroid/content/ContentResolver;

    .line 5
    .line 6
    .line 7
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
    iget-object v2, p0, Lru/zdevs/zarchiver/ZImageViewer;->c:Lw0/a;

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

.method public final onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/app/ActionBar;->show()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
