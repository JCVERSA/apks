.class public final Lcom/community/oneroom/nu/mm/b;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final synthetic d:I


# instance fields
.field public final a:Landroid/os/Handler;

.field public b:Landroid/widget/LinearLayout;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/community/oneroom/nu/mm/b;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/Button;
    .locals 1

    .line 195
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 196
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 197
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    const/4 p1, -0x1

    .line 198
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 200
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 p2, 0xc

    .line 201
    invoke-virtual {p0, p2}, Lcom/community/oneroom/nu/mm/b;->b(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 202
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public final b(I)I
    .locals 1

    int-to-float p1, p1

    .line 206
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public final c()V
    .locals 26

    move-object/from16 v0, p0

    .line 46
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_6

    iget-boolean v1, v0, Lcom/community/oneroom/nu/mm/b;->c:Z

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 361
    :cond_0
    sget-object v1, La/k;->q:La/k;

    iget v2, v1, La/k;->c:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_4

    .line 49
    iput-boolean v5, v0, Lcom/community/oneroom/nu/mm/b;->c:Z

    .line 360
    iget-object v1, v1, La/k;->b:La/b;

    .line 43
    const-string v2, "support_pref"

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 51
    const-string v6, "success_time"

    const-wide/16 v7, 0x0

    invoke-interface {v2, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v9

    .line 53
    iget-wide v13, v1, La/b;->d:J

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    cmp-long v2, v9, v7

    if-eqz v2, :cond_1

    cmp-long v2, v13, v7

    if-lez v2, :cond_1

    cmp-long v2, v11, v7

    if-ltz v2, :cond_1

    cmp-long v2, v11, v13

    if-gez v2, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v4

    .line 56
    :goto_0
    iget-boolean v6, v1, La/b;->i:Z

    if-eqz v6, :cond_3

    if-nez v2, :cond_3

    .line 65
    iget-object v2, v0, Lcom/community/oneroom/nu/mm/b;->b:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 83
    :cond_2
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v6, 0x10

    .line 84
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v6, 0x14

    .line 85
    invoke-virtual {v0, v6}, Lcom/community/oneroom/nu/mm/b;->b(I)I

    move-result v7

    const/16 v8, 0xe

    invoke-virtual {v0, v8}, Lcom/community/oneroom/nu/mm/b;->b(I)I

    move-result v8

    invoke-virtual {v0, v6}, Lcom/community/oneroom/nu/mm/b;->b(I)I

    move-result v6

    const/16 v9, 0xa

    invoke-virtual {v0, v9}, Lcom/community/oneroom/nu/mm/b;->b(I)I

    move-result v9

    invoke-virtual {v2, v7, v8, v6, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 86
    const-string v6, "MovieBox"

    const/high16 v7, 0x41900000    # 18.0f

    const/4 v8, -0x1

    invoke-virtual {v0, v6, v7, v8}, Lcom/community/oneroom/nu/mm/b;->e(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v6

    .line 87
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 88
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v9, v4, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    const-string v9, "Website"

    const-string v12, "#444444"

    invoke-virtual {v0, v9, v12}, Lcom/community/oneroom/nu/mm/b;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v9

    .line 90
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 91
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 93
    new-instance v6, Landroid/widget/ScrollView;

    invoke-direct {v6, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-virtual {v6, v5}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 95
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-virtual {v12, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x11

    .line 97
    invoke-virtual {v12, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v13, 0x1c

    .line 98
    invoke-virtual {v0, v13}, Lcom/community/oneroom/nu/mm/b;->b(I)I

    move-result v14

    const/16 v15, 0x50

    invoke-virtual {v0, v15}, Lcom/community/oneroom/nu/mm/b;->b(I)I

    move-result v15

    invoke-virtual {v0, v13}, Lcom/community/oneroom/nu/mm/b;->b(I)I

    move-result v13

    const/16 v11, 0x28

    invoke-virtual {v0, v11}, Lcom/community/oneroom/nu/mm/b;->b(I)I

    move-result v11

    invoke-virtual {v12, v14, v15, v13, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 99
    const-string v11, "We Need Support"

    const/high16 v13, 0x41e00000    # 28.0f

    invoke-virtual {v0, v11, v13, v8}, Lcom/community/oneroom/nu/mm/b;->e(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v11

    .line 100
    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 101
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 102
    const-string v7, "Click Here\nOpen Support Ad"

    const-string v13, "#0093FF"

    invoke-virtual {v0, v7, v13}, Lcom/community/oneroom/nu/mm/b;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v7

    const/high16 v13, 0x41a00000    # 20.0f

    .line 103
    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v13, 0x18

    .line 104
    invoke-virtual {v0, v13}, Lcom/community/oneroom/nu/mm/b;->b(I)I

    move-result v14

    invoke-virtual {v0, v13}, Lcom/community/oneroom/nu/mm/b;->b(I)I

    move-result v15

    invoke-virtual {v0, v13}, Lcom/community/oneroom/nu/mm/b;->b(I)I

    move-result v5

    invoke-virtual {v0, v13}, Lcom/community/oneroom/nu/mm/b;->b(I)I

    move-result v13

    invoke-virtual {v7, v14, v15, v5, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 105
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v13, 0x118

    invoke-virtual {v0, v13}, Lcom/community/oneroom/nu/mm/b;->b(I)I

    move-result v13

    invoke-direct {v5, v13, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0x2a

    .line 106
    invoke-virtual {v0, v10}, Lcom/community/oneroom/nu/mm/b;->b(I)I

    move-result v10

    const/16 v13, 0x24

    invoke-virtual {v0, v13}, Lcom/community/oneroom/nu/mm/b;->b(I)I

    move-result v13

    invoke-virtual {v5, v4, v10, v4, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 107
    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    new-instance v17, Landroid/view/animation/ScaleAnimation;

    const/16 v24, 0x1

    const/high16 v25, 0x3f000000    # 0.5f

    const/high16 v18, 0x3f800000    # 1.0f

    const v19, 0x3f8a3d71    # 1.08f

    const/high16 v20, 0x3f800000    # 1.0f

    const v21, 0x3f8a3d71    # 1.08f

    const/16 v22, 0x1

    const/high16 v23, 0x3f000000    # 0.5f

    invoke-direct/range {v17 .. v25}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object/from16 v5, v17

    const-wide/16 v13, 0x2bc

    .line 109
    invoke-virtual {v5, v13, v14}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 110
    invoke-virtual {v5, v8}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 111
    invoke-virtual {v5, v3}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 112
    invoke-virtual {v7, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "How To Use.\n\n(1) Click on above ADS Button.\n(2) Ads will open in your device\'s browser.\n(3) Watch ads for more than "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v1, La/b;->c:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " seconds.\n(4) After "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, La/b;->c:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " seconds, close the ad and come back to the app."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v0, v3, v5, v8}, Lcom/community/oneroom/nu/mm/b;->e(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v3

    const/16 v5, 0x11

    .line 117
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v10, 0x41600000    # 14.0f

    const v13, -0xff0100

    .line 118
    const-string v14, "Guys, we know ads are a headache. If we don\'t put ads then we will have to shut down the app because there is not enough funds to run the app."

    invoke-virtual {v0, v14, v10, v13}, Lcom/community/oneroom/nu/mm/b;->e(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v10

    .line 121
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v5, 0x46

    .line 122
    invoke-virtual {v0, v5}, Lcom/community/oneroom/nu/mm/b;->b(I)I

    move-result v5

    invoke-virtual {v10, v4, v5, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 123
    invoke-virtual {v12, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 124
    invoke-virtual {v12, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 125
    invoke-virtual {v12, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 126
    invoke-virtual {v12, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 127
    invoke-virtual {v6, v12}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 128
    iget-object v3, v0, Lcom/community/oneroom/nu/mm/b;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 129
    iget-object v2, v0, Lcom/community/oneroom/nu/mm/b;->b:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v8, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    new-instance v2, La/l;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, La/l;-><init>(Lcom/community/oneroom/nu/mm/b;La/b;I)V

    invoke-virtual {v7, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    new-instance v2, La/l;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, La/l;-><init>(Lcom/community/oneroom/nu/mm/b;La/b;I)V

    invoke-virtual {v9, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 56
    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_4
    if-ne v2, v3, :cond_5

    .line 58
    iput-boolean v5, v0, Lcom/community/oneroom/nu/mm/b;->c:Z

    .line 145
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "No Internet!"

    .line 146
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Please check your internet is working?"

    .line 147
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, La/m;

    invoke-direct {v2, v0}, La/m;-><init>(Lcom/community/oneroom/nu/mm/b;)V

    .line 148
    const-string v3, "RETRY"

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 156
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 157
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 61
    :cond_5
    iget-object v1, v0, Lcom/community/oneroom/nu/mm/b;->a:Landroid/os/Handler;

    new-instance v2, La/h;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, La/h;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_1
    return-void
.end method

.method public final d()V
    .locals 6

    .line 65
    iget-object v0, p0, Lcom/community/oneroom/nu/mm/b;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 69
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 70
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 72
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-direct {v2, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 74
    const-string v4, "Loading..."

    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {p0, v4, v5, v3}, Lcom/community/oneroom/nu/mm/b;->e(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v3

    .line 75
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 76
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 78
    iget-object v1, p0, Lcom/community/oneroom/nu/mm/b;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final e(Ljava/lang/String;FI)Landroid/widget/TextView;
    .locals 1

    .line 186
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 187
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 189
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x4

    .line 190
    invoke-virtual {p0, p1}, Lcom/community/oneroom/nu/mm/b;->b(I)I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3f933333    # 1.15f

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    sget p1, Lcom/community/oneroom/nu/mm/a;->a:I

    .line 58
    invoke-static {p0}, La/e;->a(Landroid/app/Activity;)V

    .line 34
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/community/oneroom/nu/mm/b;->b:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    .line 35
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 36
    iget-object p1, p0, Lcom/community/oneroom/nu/mm/b;->b:Landroid/widget/LinearLayout;

    const-string v0, "#121212"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 37
    iget-object p1, p0, Lcom/community/oneroom/nu/mm/b;->b:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    iget-object p1, p0, Lcom/community/oneroom/nu/mm/b;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 39
    invoke-virtual {p0}, Lcom/community/oneroom/nu/mm/b;->d()V

    .line 40
    invoke-virtual {p0}, Lcom/community/oneroom/nu/mm/b;->c()V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/community/oneroom/nu/mm/b;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 182
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public final onResume()V
    .locals 10

    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 162
    sget v0, Lcom/community/oneroom/nu/mm/a;->a:I

    .line 58
    invoke-static {p0}, La/e;->a(Landroid/app/Activity;)V

    .line 43
    const-string v0, "support_pref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 163
    const-string v3, "click_time"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v2, v6, v4

    if-nez v2, :cond_0

    return-void

    .line 360
    :cond_0
    sget-object v2, La/k;->q:La/k;

    iget-object v2, v2, La/k;->b:La/b;

    .line 165
    iget v2, v2, La/b;->c:I

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    .line 43
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 167
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    int-to-long v6, v2

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-ltz v3, :cond_1

    .line 43
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 169
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "success_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 170
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 172
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Error"

    .line 173
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "You must watch ads at least "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " seconds!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "RETRY"

    const/4 v2, 0x0

    .line 175
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
