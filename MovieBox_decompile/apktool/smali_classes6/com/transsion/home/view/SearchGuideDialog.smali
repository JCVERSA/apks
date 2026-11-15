.class public final Lcom/transsion/home/view/SearchGuideDialog;
.super Lcom/transsion/baseui/dialog/BaseDialog;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/view/SearchGuideDialog$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 %2\u00020\u0001:\u0001&B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J-\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0003J!\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000c2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0011\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR \u0010 \u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0018\u0010$\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/transsion/home/view/SearchGuideDialog;",
        "Lcom/transsion/baseui/dialog/BaseDialog;",
        "<init>",
        "()V",
        "",
        "initView",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "onResume",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lqi/b;",
        "newLogViewConfig",
        "()Lqi/b;",
        "",
        "d0",
        "()Ljava/lang/String;",
        "Lqk/g;",
        "c",
        "Lqk/g;",
        "mViewBinding",
        "Lkotlin/Function0;",
        "d",
        "Lkotlin/jvm/functions/Function0;",
        "mCallback",
        "Landroidx/constraintlayout/widget/ConstraintLayout$b;",
        "e",
        "Landroidx/constraintlayout/widget/ConstraintLayout$b;",
        "searchLayoutParam",
        "f",
        "a",
        "Home_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final f:Lcom/transsion/home/view/SearchGuideDialog$a;

.field public static final g:I

.field private static h:Z


# instance fields
.field private c:Lqk/g;

.field private d:Lkotlin/jvm/functions/Function0;

.field private e:Landroidx/constraintlayout/widget/ConstraintLayout$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/home/view/SearchGuideDialog$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/home/view/SearchGuideDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/home/view/SearchGuideDialog;->f:Lcom/transsion/home/view/SearchGuideDialog$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/transsion/home/view/SearchGuideDialog;->g:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final initView()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    const/16 v3, 0x11

    .line 24
    .line 25
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 26
    .line 27
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 38
    .line 39
    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 50
    .line 51
    :cond_2
    const/high16 v2, 0x3f000000    # 0.5f

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 54
    .line 55
    .line 56
    :cond_3
    iget-object v0, p0, Lcom/transsion/home/view/SearchGuideDialog;->c:Lqk/g;

    .line 57
    .line 58
    if-eqz v0, :cond_5

    .line 59
    .line 60
    iget-object v0, v0, Lqk/g;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 61
    .line 62
    if-eqz v0, :cond_5

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const-string v3, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 69
    .line 70
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 74
    .line 75
    iget-object v3, p0, Lcom/transsion/home/view/SearchGuideDialog;->e:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 76
    .line 77
    if-eqz v3, :cond_4

    .line 78
    .line 79
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 83
    .line 84
    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    sub-int/2addr v3, v4

    .line 89
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 90
    .line 91
    iget-object v3, p0, Lcom/transsion/home/view/SearchGuideDialog;->e:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 92
    .line 93
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 97
    .line 98
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 99
    .line 100
    iget-object v3, p0, Lcom/transsion/home/view/SearchGuideDialog;->e:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 101
    .line 102
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 106
    .line 107
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 108
    .line 109
    iget-object v3, p0, Lcom/transsion/home/view/SearchGuideDialog;->e:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 110
    .line 111
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 119
    .line 120
    .line 121
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 122
    .line 123
    iget-object v4, p0, Lcom/transsion/home/view/SearchGuideDialog;->e:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 124
    .line 125
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    new-instance v5, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string v6, "the searchLayoutParam.marginStart is "

    .line 138
    .line 139
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    const/4 v5, 0x0

    .line 150
    const/4 v6, 0x2

    .line 151
    invoke-static {v3, v4, v5, v6, v1}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    .line 156
    .line 157
    :cond_5
    iget-object v0, p0, Lcom/transsion/home/view/SearchGuideDialog;->c:Lqk/g;

    .line 158
    .line 159
    if-eqz v0, :cond_6

    .line 160
    .line 161
    iget-object v0, v0, Lqk/g;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 162
    .line 163
    if-eqz v0, :cond_6

    .line 164
    .line 165
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    if-eqz v0, :cond_6

    .line 170
    .line 171
    new-instance v1, Lcom/transsion/home/view/SearchGuideDialog$b;

    .line 172
    .line 173
    invoke-direct {v1, p0}, Lcom/transsion/home/view/SearchGuideDialog$b;-><init>(Lcom/transsion/home/view/SearchGuideDialog;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 177
    .line 178
    .line 179
    :cond_6
    iget-object v0, p0, Lcom/transsion/home/view/SearchGuideDialog;->c:Lqk/g;

    .line 180
    .line 181
    if-eqz v0, :cond_7

    .line 182
    .line 183
    iget-object v0, v0, Lqk/g;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 184
    .line 185
    if-eqz v0, :cond_7

    .line 186
    .line 187
    new-instance v1, Lcom/transsion/home/view/f;

    .line 188
    .line 189
    invoke-direct {v1, p0}, Lcom/transsion/home/view/f;-><init>(Lcom/transsion/home/view/SearchGuideDialog;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    .line 194
    .line 195
    :cond_7
    return-void
.end method

.method public static synthetic n0(Lcom/transsion/home/view/SearchGuideDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/home/view/SearchGuideDialog;->p0(Lcom/transsion/home/view/SearchGuideDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic o0(Lcom/transsion/home/view/SearchGuideDialog;)Lqk/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/home/view/SearchGuideDialog;->c:Lqk/g;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final p0(Lcom/transsion/home/view/SearchGuideDialog;Landroid/view/View;)V
    .locals 4

    .line 1
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/4 v1, 0x0

    .line 5
    const-string v2, "the search button is clicked"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {p1, v2, v3, v0, v1}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/home/view/SearchGuideDialog;->d:Lkotlin/jvm/functions/Function0;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lkotlin/Unit;

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public d0()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "POSITION_SEARCH"

    .line 2
    .line 3
    return-object v0
.end method

.method public newLogViewConfig()Lqi/b;
    .locals 5

    .line 1
    new-instance v0, Lqi/b;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "OneClickToDownloadDialog"

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-direct {v0, v3, v4, v1, v2}, Lqi/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    const-string p2, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lqk/g;->c(Landroid/view/LayoutInflater;)Lqk/g;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/transsion/home/view/SearchGuideDialog;->c:Lqk/g;

    .line 11
    .line 12
    const/4 p2, 0x1

    .line 13
    sput-boolean p2, Lcom/transsion/home/view/SearchGuideDialog;->h:Z

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lqk/g;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    return-object p1
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/transsion/home/view/SearchGuideDialog;->initView()V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, " --> onCreate()"

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v1, 0x2

    .line 36
    const/4 v2, 0x0

    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-static {p1, v0, v3, v1, v2}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    if-eqz p2, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method
