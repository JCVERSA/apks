.class public Lbv/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/lifecycle/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbv/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Lbv/b$a;

.field private f:Lcom/google/android/material/bottomsheet/c;

.field private g:Ljava/lang/String;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lbv/b$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lbv/b;->a:Landroid/app/Activity;

    .line 5
    .line 6
    iput-object p2, p0, Lbv/b;->e:Lbv/b$a;

    .line 7
    .line 8
    iput-object p3, p0, Lbv/b;->g:Ljava/lang/String;

    .line 9
    .line 10
    invoke-direct {p0}, Lbv/b;->a()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lbv/b;->a:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget v1, Lcom/transsion/usercenter/R$layout;->dialog_edit_gender:I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget v1, Lcom/transsion/usercenter/R$id;->tv_first:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/widget/TextView;

    .line 21
    .line 22
    iput-object v1, p0, Lbv/b;->b:Landroid/widget/TextView;

    .line 23
    .line 24
    sget v1, Lcom/transsion/usercenter/R$id;->tv_second:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/widget/TextView;

    .line 31
    .line 32
    iput-object v1, p0, Lbv/b;->c:Landroid/widget/TextView;

    .line 33
    .line 34
    sget v1, Lcom/transsion/usercenter/R$id;->tv_third:I

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroid/widget/TextView;

    .line 41
    .line 42
    iput-object v1, p0, Lbv/b;->d:Landroid/widget/TextView;

    .line 43
    .line 44
    iget-object v1, p0, Lbv/b;->b:Landroid/widget/TextView;

    .line 45
    .line 46
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lbv/b;->c:Landroid/widget/TextView;

    .line 50
    .line 51
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lbv/b;->d:Landroid/widget/TextView;

    .line 55
    .line 56
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    .line 58
    .line 59
    new-instance v1, Lcom/google/android/material/bottomsheet/c;

    .line 60
    .line 61
    iget-object v2, p0, Lbv/b;->a:Landroid/app/Activity;

    .line 62
    .line 63
    sget v3, Lcom/transsion/usercenter/R$style;->BottomDialog1:I

    .line 64
    .line 65
    invoke-direct {v1, v2, v3}, Lcom/google/android/material/bottomsheet/c;-><init>(Landroid/content/Context;I)V

    .line 66
    .line 67
    .line 68
    iput-object v1, p0, Lbv/b;->f:Lcom/google/android/material/bottomsheet/c;

    .line 69
    .line 70
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    sget v2, Lcom/transsion/usercenter/R$style;->bottom_dialog_animation:I

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lbv/b;->f:Lcom/google/android/material/bottomsheet/c;

    .line 80
    .line 81
    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomsheet/c;->setContentView(Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lbv/b;->g:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lbv/b;->a:Landroid/app/Activity;

    .line 4
    .line 5
    sget v2, Lcom/transsion/usercenter/R$string;->profile_female:I

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lbv/b;->b:Landroid/widget/TextView;

    .line 18
    .line 19
    sget v1, Lcom/tn/lib/widget/R$color;->white:I

    .line 20
    .line 21
    invoke-static {v1}, Lcom/blankj/utilcode/util/h;->a(I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lbv/b;->c:Landroid/widget/TextView;

    .line 29
    .line 30
    sget v1, Lcom/tn/lib/widget/R$color;->text_03:I

    .line 31
    .line 32
    invoke-static {v1}, Lcom/blankj/utilcode/util/h;->a(I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lbv/b;->d:Landroid/widget/TextView;

    .line 40
    .line 41
    sget v1, Lcom/tn/lib/widget/R$color;->text_03:I

    .line 42
    .line 43
    invoke-static {v1}, Lcom/blankj/utilcode/util/h;->a(I)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lbv/b;->g:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v1, p0, Lbv/b;->a:Landroid/app/Activity;

    .line 54
    .line 55
    sget v2, Lcom/transsion/usercenter/R$string;->profile_male:I

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    iget-object v0, p0, Lbv/b;->c:Landroid/widget/TextView;

    .line 68
    .line 69
    sget v1, Lcom/tn/lib/widget/R$color;->white:I

    .line 70
    .line 71
    invoke-static {v1}, Lcom/blankj/utilcode/util/h;->a(I)I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lbv/b;->b:Landroid/widget/TextView;

    .line 79
    .line 80
    sget v1, Lcom/tn/lib/widget/R$color;->text_03:I

    .line 81
    .line 82
    invoke-static {v1}, Lcom/blankj/utilcode/util/h;->a(I)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lbv/b;->d:Landroid/widget/TextView;

    .line 90
    .line 91
    sget v1, Lcom/tn/lib/widget/R$color;->text_03:I

    .line 92
    .line 93
    invoke-static {v1}, Lcom/blankj/utilcode/util/h;->a(I)I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    iget-object v0, p0, Lbv/b;->d:Landroid/widget/TextView;

    .line 102
    .line 103
    sget v1, Lcom/tn/lib/widget/R$color;->white:I

    .line 104
    .line 105
    invoke-static {v1}, Lcom/blankj/utilcode/util/h;->a(I)I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lbv/b;->b:Landroid/widget/TextView;

    .line 113
    .line 114
    sget v1, Lcom/tn/lib/widget/R$color;->text_03:I

    .line 115
    .line 116
    invoke-static {v1}, Lcom/blankj/utilcode/util/h;->a(I)I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lbv/b;->c:Landroid/widget/TextView;

    .line 124
    .line 125
    sget v1, Lcom/tn/lib/widget/R$color;->text_03:I

    .line 126
    .line 127
    invoke-static {v1}, Lcom/blankj/utilcode/util/h;->a(I)I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    .line 133
    .line 134
    :goto_0
    iget-object v0, p0, Lbv/b;->b:Landroid/widget/TextView;

    .line 135
    .line 136
    sget v1, Lcom/transsion/usercenter/R$string;->profile_female:I

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lbv/b;->c:Landroid/widget/TextView;

    .line 142
    .line 143
    sget v1, Lcom/transsion/usercenter/R$string;->profile_male:I

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lbv/b;->d:Landroid/widget/TextView;

    .line 149
    .line 150
    sget v1, Lcom/transsion/usercenter/R$string;->profile_gender_other:I

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lbv/b;->f:Lcom/google/android/material/bottomsheet/c;

    .line 156
    .line 157
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 158
    .line 159
    .line 160
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    sget v0, Lcom/transsion/usercenter/R$id;->tv_first:I

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lbv/b;->e:Lbv/b$a;

    .line 10
    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lbv/b;->b:Landroid/widget/TextView;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-interface {p1, v1, v0}, Lbv/b$a;->onDialogSelect(ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lbv/b;->f:Lcom/google/android/material/bottomsheet/c;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/appcompat/app/w;->dismiss()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    sget v0, Lcom/transsion/usercenter/R$id;->tv_second:I

    .line 34
    .line 35
    if-ne p1, v0, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lbv/b;->e:Lbv/b$a;

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, Lbv/b;->c:Landroid/widget/TextView;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const/4 v1, 0x1

    .line 52
    invoke-interface {p1, v1, v0}, Lbv/b$a;->onDialogSelect(ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lbv/b;->f:Lcom/google/android/material/bottomsheet/c;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroidx/appcompat/app/w;->dismiss()V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    sget v0, Lcom/transsion/usercenter/R$id;->tv_third:I

    .line 62
    .line 63
    if-ne p1, v0, :cond_2

    .line 64
    .line 65
    iget-object p1, p0, Lbv/b;->e:Lbv/b$a;

    .line 66
    .line 67
    iget-object v0, p0, Lbv/b;->d:Landroid/widget/TextView;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const/4 v1, 0x2

    .line 78
    invoke-interface {p1, v1, v0}, Lbv/b$a;->onDialogSelect(ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lbv/b;->f:Lcom/google/android/material/bottomsheet/c;

    .line 82
    .line 83
    invoke-virtual {p1}, Landroidx/appcompat/app/w;->dismiss()V

    .line 84
    .line 85
    .line 86
    :cond_2
    :goto_0
    return-void
.end method

.method public onLifecycleChanged(Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0
    .annotation runtime Landroidx/lifecycle/d0;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_ANY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    return-void
.end method

.method public onPause(Landroidx/lifecycle/u;)V
    .locals 0
    .annotation runtime Landroidx/lifecycle/d0;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lbv/b;->h:Z

    .line 3
    .line 4
    return-void
.end method

.method public onResume(Landroidx/lifecycle/u;)V
    .locals 0
    .annotation runtime Landroidx/lifecycle/d0;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lbv/b;->h:Z

    .line 3
    .line 4
    return-void
.end method
