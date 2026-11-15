.class public abstract Landroidx/core/app/NotificationCompat$p;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$p$a;
    }
.end annotation


# instance fields
.field protected a:Landroidx/core/app/NotificationCompat$m;

.field b:Ljava/lang/CharSequence;

.field c:Ljava/lang/CharSequence;

.field d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$p;->d:Z

    .line 6
    .line 7
    return-void
.end method

.method private e()I
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/core/app/NotificationCompat$m;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget v1, Landroidx/core/R$dimen;->notification_top_pad:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sget v2, Landroidx/core/R$dimen;->notification_top_pad_large_text:I

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 26
    .line 27
    const v3, 0x3fa66666    # 1.3f

    .line 28
    .line 29
    .line 30
    const/high16 v4, 0x3f800000    # 1.0f

    .line 31
    .line 32
    invoke-static {v0, v4, v3}, Landroidx/core/app/NotificationCompat$p;->f(FFF)F

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    sub-float/2addr v0, v4

    .line 37
    const v3, 0x3e999998    # 0.29999995f

    .line 38
    .line 39
    .line 40
    div-float/2addr v0, v3

    .line 41
    sub-float/2addr v4, v0

    .line 42
    int-to-float v1, v1

    .line 43
    mul-float/2addr v4, v1

    .line 44
    int-to-float v1, v2

    .line 45
    mul-float/2addr v0, v1

    .line 46
    add-float/2addr v4, v0

    .line 47
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    return v0
.end method

.method private static f(FFF)F
    .locals 1

    .line 1
    cmpg-float v0, p0, p1

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    move p0, p1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    cmpl-float p1, p0, p2

    .line 8
    .line 9
    if-lez p1, :cond_1

    .line 10
    .line 11
    move p0, p2

    .line 12
    :cond_1
    :goto_0
    return p0
.end method

.method private g(III)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/core/app/NotificationCompat$m;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/IconCompat;->j(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroidx/core/app/NotificationCompat$p;->i(Landroidx/core/graphics/drawable/IconCompat;II)Landroid/graphics/Bitmap;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method private i(Landroidx/core/graphics/drawable/IconCompat;II)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/core/app/NotificationCompat$m;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroidx/core/graphics/drawable/IconCompat;->s(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, p3

    .line 17
    :goto_0
    if-nez p3, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 24
    .line 25
    invoke-static {v0, p3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {p1, v2, v2, v0, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 31
    .line 32
    .line 33
    if-eqz p2, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 40
    .line 41
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 42
    .line 43
    invoke-direct {v0, p2, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    new-instance p2, Landroid/graphics/Canvas;

    .line 50
    .line 51
    invoke-direct {p2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 55
    .line 56
    .line 57
    return-object v1
.end method

.method private j(IIII)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    sget v0, Landroidx/core/R$drawable;->notification_icon_background:I

    .line 2
    .line 3
    if-nez p4, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, v0, p4, p2}, Landroidx/core/app/NotificationCompat$p;->g(III)Landroid/graphics/Bitmap;

    .line 7
    .line 8
    .line 9
    move-result-object p4

    .line 10
    new-instance v0, Landroid/graphics/Canvas;

    .line 11
    .line 12
    invoke-direct {v0, p4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    .line 16
    .line 17
    iget-object v1, v1, Landroidx/core/app/NotificationCompat$m;->a:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 33
    .line 34
    .line 35
    sub-int/2addr p2, p3

    .line 36
    div-int/lit8 p2, p2, 0x2

    .line 37
    .line 38
    add-int/2addr p3, p2

    .line 39
    invoke-virtual {p1, p2, p2, p3, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 40
    .line 41
    .line 42
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    .line 43
    .line 44
    const/4 p3, -0x1

    .line 45
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 46
    .line 47
    invoke-direct {p2, p3, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 54
    .line 55
    .line 56
    return-object p4
.end method

.method private l(Landroid/widget/RemoteViews;)V
    .locals 2

    .line 1
    sget v0, Landroidx/core/R$id;->title:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6
    .line 7
    .line 8
    sget v0, Landroidx/core/R$id;->text2:I

    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 11
    .line 12
    .line 13
    sget v0, Landroidx/core/R$id;->text:I

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/core/app/NotificationCompat$p;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "android.summaryText"

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$p;->c:Ljava/lang/CharSequence;

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$p;->b:Ljava/lang/CharSequence;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-string v1, "android.title.big"

    .line 17
    .line 18
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$p;->k()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    const-string v1, "androidx.core.app.extra.COMPAT_TEMPLATE"

    .line 28
    .line 29
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_2
    return-void
.end method

.method public b(Landroidx/core/app/o;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(ZIZ)Landroid/widget/RemoteViews;
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/core/app/NotificationCompat$m;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v7, Landroid/widget/RemoteViews;

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    .line 12
    .line 13
    iget-object v1, v1, Landroidx/core/app/NotificationCompat$m;->a:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v7, v1, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    iget-object p2, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    .line 23
    .line 24
    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$m;->i()I

    .line 25
    .line 26
    .line 27
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    .line 30
    .line 31
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$m;->j:Landroidx/core/graphics/drawable/IconCompat;

    .line 32
    .line 33
    const/4 v8, 0x0

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    sget v1, Landroidx/core/R$id;->icon:I

    .line 37
    .line 38
    invoke-virtual {v7, v1, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 39
    .line 40
    .line 41
    sget v1, Landroidx/core/R$id;->icon:I

    .line 42
    .line 43
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    .line 44
    .line 45
    iget-object v2, v2, Landroidx/core/app/NotificationCompat$m;->j:Landroidx/core/graphics/drawable/IconCompat;

    .line 46
    .line 47
    invoke-virtual {p0, v2, v8}, Landroidx/core/app/NotificationCompat$p;->h(Landroidx/core/graphics/drawable/IconCompat;I)Landroid/graphics/Bitmap;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v7, v1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 52
    .line 53
    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    .line 57
    .line 58
    iget-object p1, p1, Landroidx/core/app/NotificationCompat$m;->U:Landroid/app/Notification;

    .line 59
    .line 60
    iget p1, p1, Landroid/app/Notification;->icon:I

    .line 61
    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    sget p1, Landroidx/core/R$dimen;->notification_right_icon_size:I

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    sget v1, Landroidx/core/R$dimen;->notification_small_icon_background_padding:I

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    mul-int/lit8 v1, v1, 0x2

    .line 77
    .line 78
    sub-int v1, p1, v1

    .line 79
    .line 80
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    .line 81
    .line 82
    iget-object v3, v2, Landroidx/core/app/NotificationCompat$m;->U:Landroid/app/Notification;

    .line 83
    .line 84
    iget v3, v3, Landroid/app/Notification;->icon:I

    .line 85
    .line 86
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$m;->e()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    invoke-direct {p0, v3, p1, v1, v2}, Landroidx/core/app/NotificationCompat$p;->j(IIII)Landroid/graphics/Bitmap;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    sget v1, Landroidx/core/R$id;->right_icon:I

    .line 95
    .line 96
    invoke-virtual {v7, v1, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 97
    .line 98
    .line 99
    sget p1, Landroidx/core/R$id;->right_icon:I

    .line 100
    .line 101
    invoke-virtual {v7, p1, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_0
    if-eqz p1, :cond_1

    .line 106
    .line 107
    iget-object p1, v1, Landroidx/core/app/NotificationCompat$m;->U:Landroid/app/Notification;

    .line 108
    .line 109
    iget p1, p1, Landroid/app/Notification;->icon:I

    .line 110
    .line 111
    if-eqz p1, :cond_1

    .line 112
    .line 113
    sget p1, Landroidx/core/R$id;->icon:I

    .line 114
    .line 115
    invoke-virtual {v7, p1, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 116
    .line 117
    .line 118
    sget p1, Landroidx/core/R$dimen;->notification_large_icon_width:I

    .line 119
    .line 120
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    sget v1, Landroidx/core/R$dimen;->notification_big_circle_margin:I

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    sub-int/2addr p1, v1

    .line 131
    sget v1, Landroidx/core/R$dimen;->notification_small_icon_size_as_large:I

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    .line 138
    .line 139
    iget-object v3, v2, Landroidx/core/app/NotificationCompat$m;->U:Landroid/app/Notification;

    .line 140
    .line 141
    iget v3, v3, Landroid/app/Notification;->icon:I

    .line 142
    .line 143
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$m;->e()I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    invoke-direct {p0, v3, p1, v1, v2}, Landroidx/core/app/NotificationCompat$p;->j(IIII)Landroid/graphics/Bitmap;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    sget v1, Landroidx/core/R$id;->icon:I

    .line 152
    .line 153
    invoke-virtual {v7, v1, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 154
    .line 155
    .line 156
    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    .line 157
    .line 158
    iget-object p1, p1, Landroidx/core/app/NotificationCompat$m;->e:Ljava/lang/CharSequence;

    .line 159
    .line 160
    if-eqz p1, :cond_2

    .line 161
    .line 162
    sget v1, Landroidx/core/R$id;->title:I

    .line 163
    .line 164
    invoke-virtual {v7, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    :cond_2
    iget-object p1, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    .line 168
    .line 169
    iget-object p1, p1, Landroidx/core/app/NotificationCompat$m;->f:Ljava/lang/CharSequence;

    .line 170
    .line 171
    const/4 v9, 0x1

    .line 172
    if-eqz p1, :cond_3

    .line 173
    .line 174
    sget v1, Landroidx/core/R$id;->text:I

    .line 175
    .line 176
    invoke-virtual {v7, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 177
    .line 178
    .line 179
    move p1, v9

    .line 180
    goto :goto_1

    .line 181
    :cond_3
    move p1, v8

    .line 182
    :goto_1
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    .line 183
    .line 184
    iget-object v2, v1, Landroidx/core/app/NotificationCompat$m;->k:Ljava/lang/CharSequence;

    .line 185
    .line 186
    const/16 v10, 0x8

    .line 187
    .line 188
    if-eqz v2, :cond_4

    .line 189
    .line 190
    sget p1, Landroidx/core/R$id;->info:I

    .line 191
    .line 192
    invoke-virtual {v7, p1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 193
    .line 194
    .line 195
    sget p1, Landroidx/core/R$id;->info:I

    .line 196
    .line 197
    invoke-virtual {v7, p1, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 198
    .line 199
    .line 200
    :goto_2
    move p1, v9

    .line 201
    move v11, p1

    .line 202
    goto :goto_4

    .line 203
    :cond_4
    iget v1, v1, Landroidx/core/app/NotificationCompat$m;->l:I

    .line 204
    .line 205
    if-lez v1, :cond_6

    .line 206
    .line 207
    sget p1, Landroidx/core/R$integer;->status_bar_notification_info_maxnum:I

    .line 208
    .line 209
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    .line 214
    .line 215
    iget v1, v1, Landroidx/core/app/NotificationCompat$m;->l:I

    .line 216
    .line 217
    if-le v1, p1, :cond_5

    .line 218
    .line 219
    sget p1, Landroidx/core/R$id;->info:I

    .line 220
    .line 221
    sget v1, Landroidx/core/R$string;->status_bar_notification_info_overflow:I

    .line 222
    .line 223
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-virtual {v7, p1, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 228
    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_5
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    sget v1, Landroidx/core/R$id;->info:I

    .line 236
    .line 237
    iget-object v2, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    .line 238
    .line 239
    iget v2, v2, Landroidx/core/app/NotificationCompat$m;->l:I

    .line 240
    .line 241
    int-to-long v2, v2

    .line 242
    invoke-virtual {p1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-virtual {v7, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 247
    .line 248
    .line 249
    :goto_3
    sget p1, Landroidx/core/R$id;->info:I

    .line 250
    .line 251
    invoke-virtual {v7, p1, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 252
    .line 253
    .line 254
    goto :goto_2

    .line 255
    :cond_6
    sget v1, Landroidx/core/R$id;->info:I

    .line 256
    .line 257
    invoke-virtual {v7, v1, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 258
    .line 259
    .line 260
    move v11, v8

    .line 261
    :goto_4
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    .line 262
    .line 263
    iget-object v1, v1, Landroidx/core/app/NotificationCompat$m;->r:Ljava/lang/CharSequence;

    .line 264
    .line 265
    if-eqz v1, :cond_9

    .line 266
    .line 267
    sget v2, Landroidx/core/R$id;->text:I

    .line 268
    .line 269
    invoke-virtual {v7, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 270
    .line 271
    .line 272
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    .line 273
    .line 274
    iget-object v1, v1, Landroidx/core/app/NotificationCompat$m;->f:Ljava/lang/CharSequence;

    .line 275
    .line 276
    if-eqz v1, :cond_8

    .line 277
    .line 278
    sget v2, Landroidx/core/R$id;->text2:I

    .line 279
    .line 280
    invoke-virtual {v7, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 281
    .line 282
    .line 283
    sget v1, Landroidx/core/R$id;->text2:I

    .line 284
    .line 285
    invoke-virtual {v7, v1, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 286
    .line 287
    .line 288
    if-eqz p3, :cond_7

    .line 289
    .line 290
    sget p3, Landroidx/core/R$dimen;->notification_subtext_size:I

    .line 291
    .line 292
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 293
    .line 294
    .line 295
    move-result p3

    .line 296
    int-to-float p3, p3

    .line 297
    sget v0, Landroidx/core/R$id;->text:I

    .line 298
    .line 299
    invoke-virtual {v7, v0, v8, p3}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 300
    .line 301
    .line 302
    :cond_7
    sget v2, Landroidx/core/R$id;->line1:I

    .line 303
    .line 304
    const/4 v5, 0x0

    .line 305
    const/4 v6, 0x0

    .line 306
    const/4 v3, 0x0

    .line 307
    const/4 v4, 0x0

    .line 308
    move-object v1, v7

    .line 309
    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 310
    .line 311
    .line 312
    goto :goto_5

    .line 313
    :cond_8
    sget p3, Landroidx/core/R$id;->text2:I

    .line 314
    .line 315
    invoke-virtual {v7, p3, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 316
    .line 317
    .line 318
    :cond_9
    :goto_5
    iget-object p3, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    .line 319
    .line 320
    invoke-virtual {p3}, Landroidx/core/app/NotificationCompat$m;->j()J

    .line 321
    .line 322
    .line 323
    move-result-wide v0

    .line 324
    const-wide/16 v2, 0x0

    .line 325
    .line 326
    cmp-long p3, v0, v2

    .line 327
    .line 328
    if-eqz p3, :cond_b

    .line 329
    .line 330
    iget-object p3, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    .line 331
    .line 332
    iget-boolean p3, p3, Landroidx/core/app/NotificationCompat$m;->o:Z

    .line 333
    .line 334
    if-eqz p3, :cond_a

    .line 335
    .line 336
    sget p3, Landroidx/core/R$id;->chronometer:I

    .line 337
    .line 338
    invoke-virtual {v7, p3, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 339
    .line 340
    .line 341
    sget p3, Landroidx/core/R$id;->chronometer:I

    .line 342
    .line 343
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    .line 344
    .line 345
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$m;->j()J

    .line 346
    .line 347
    .line 348
    move-result-wide v0

    .line 349
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 350
    .line 351
    .line 352
    move-result-wide v2

    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 354
    .line 355
    .line 356
    move-result-wide v4

    .line 357
    sub-long/2addr v2, v4

    .line 358
    add-long/2addr v0, v2

    .line 359
    const-string v2, "setBase"

    .line 360
    .line 361
    invoke-virtual {v7, p3, v2, v0, v1}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 362
    .line 363
    .line 364
    sget p3, Landroidx/core/R$id;->chronometer:I

    .line 365
    .line 366
    const-string v0, "setStarted"

    .line 367
    .line 368
    invoke-virtual {v7, p3, v0, v9}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 369
    .line 370
    .line 371
    iget-object p3, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    .line 372
    .line 373
    iget-boolean p3, p3, Landroidx/core/app/NotificationCompat$m;->p:Z

    .line 374
    .line 375
    if-eqz p3, :cond_c

    .line 376
    .line 377
    const/16 v0, 0x18

    .line 378
    .line 379
    if-lt p2, v0, :cond_c

    .line 380
    .line 381
    sget p2, Landroidx/core/R$id;->chronometer:I

    .line 382
    .line 383
    invoke-static {v7, p2, p3}, Landroidx/core/app/NotificationCompat$p$a;->a(Landroid/widget/RemoteViews;IZ)V

    .line 384
    .line 385
    .line 386
    goto :goto_6

    .line 387
    :cond_a
    sget p2, Landroidx/core/R$id;->time:I

    .line 388
    .line 389
    invoke-virtual {v7, p2, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 390
    .line 391
    .line 392
    sget p2, Landroidx/core/R$id;->time:I

    .line 393
    .line 394
    iget-object p3, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    .line 395
    .line 396
    invoke-virtual {p3}, Landroidx/core/app/NotificationCompat$m;->j()J

    .line 397
    .line 398
    .line 399
    move-result-wide v0

    .line 400
    const-string p3, "setTime"

    .line 401
    .line 402
    invoke-virtual {v7, p2, p3, v0, v1}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 403
    .line 404
    .line 405
    goto :goto_6

    .line 406
    :cond_b
    move v9, v11

    .line 407
    :cond_c
    :goto_6
    sget p2, Landroidx/core/R$id;->right_side:I

    .line 408
    .line 409
    if-eqz v9, :cond_d

    .line 410
    .line 411
    move p3, v8

    .line 412
    goto :goto_7

    .line 413
    :cond_d
    move p3, v10

    .line 414
    :goto_7
    invoke-virtual {v7, p2, p3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 415
    .line 416
    .line 417
    sget p2, Landroidx/core/R$id;->line3:I

    .line 418
    .line 419
    if-eqz p1, :cond_e

    .line 420
    .line 421
    goto :goto_8

    .line 422
    :cond_e
    move v8, v10

    .line 423
    :goto_8
    invoke-virtual {v7, p2, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 424
    .line 425
    .line 426
    return-object v7
.end method

.method public d(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/app/NotificationCompat$p;->l(Landroid/widget/RemoteViews;)V

    .line 2
    .line 3
    .line 4
    sget v0, Landroidx/core/R$id;->notification_main_column:I

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 7
    .line 8
    .line 9
    sget v0, Landroidx/core/R$id;->notification_main_column:I

    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 16
    .line 17
    .line 18
    sget p2, Landroidx/core/R$id;->notification_main_column:I

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$p;->e()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    sget v2, Landroidx/core/R$id;->notification_main_column_container:I

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v3, 0x0

    .line 33
    move-object v1, p1

    .line 34
    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method h(Landroidx/core/graphics/drawable/IconCompat;I)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/core/app/NotificationCompat$p;->i(Landroidx/core/graphics/drawable/IconCompat;II)Landroid/graphics/Bitmap;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method protected k()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public m(Landroidx/core/app/o;)Landroid/widget/RemoteViews;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public n(Landroidx/core/app/o;)Landroid/widget/RemoteViews;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public o(Landroidx/core/app/o;)Landroid/widget/RemoteViews;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public p(Landroidx/core/app/NotificationCompat$m;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$p;->a:Landroidx/core/app/NotificationCompat$m;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$m;->L(Landroidx/core/app/NotificationCompat$p;)Landroidx/core/app/NotificationCompat$m;

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
