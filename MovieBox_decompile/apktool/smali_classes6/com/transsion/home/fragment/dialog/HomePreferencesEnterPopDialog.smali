.class public final Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;
.super Lcom/transsion/baseui/dialog/BaseDialog;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\n\u0008\u0007\u0018\u0000 -2\u00020\u0001:\u0001.B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\u000f\u001a\u00020\u00062\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J!\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0018\u0010\n\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR*\u0010#\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u001c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R6\u0010,\u001a\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180%\u0012\u0004\u0012\u00020\u0006\u0018\u00010$8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+\u00a8\u0006/"
    }
    d2 = {
        "Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;",
        "Lcom/transsion/baseui/dialog/BaseDialog;",
        "<init>",
        "()V",
        "Lcom/noober/background/view/BLTextView;",
        "button",
        "",
        "w0",
        "(Lcom/noober/background/view/BLTextView;)V",
        "Lcom/transsion/home/bean/HomePreferencesConfig;",
        "config",
        "t0",
        "(Lcom/transsion/home/bean/HomePreferencesConfig;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "c",
        "Lcom/transsion/home/bean/HomePreferencesConfig;",
        "",
        "",
        "d",
        "Ljava/util/Set;",
        "selectedIds",
        "Lkotlin/Function0;",
        "e",
        "Lkotlin/jvm/functions/Function0;",
        "getOnSkip",
        "()Lkotlin/jvm/functions/Function0;",
        "v0",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onSkip",
        "Lkotlin/Function1;",
        "",
        "f",
        "Lkotlin/jvm/functions/Function1;",
        "getOnConfirm",
        "()Lkotlin/jvm/functions/Function1;",
        "u0",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onConfirm",
        "g",
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
.field public static final g:Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog$a;

.field public static final h:I


# instance fields
.field private c:Lcom/transsion/home/bean/HomePreferencesConfig;

.field private final d:Ljava/util/Set;

.field private e:Lkotlin/jvm/functions/Function0;

.field private f:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->g:Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->h:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lcom/transsion/home/R$layout;->dialog_home_preferences_enter_pop:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->d:Ljava/util/Set;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic n0(Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->r0(Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o0(Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->s0(Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic p0(Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;Lcom/noober/background/view/BLTextView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->q0(Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;Lcom/noober/background/view/BLTextView;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final q0(Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;Lcom/noober/background/view/BLTextView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->w0(Lcom/noober/background/view/BLTextView;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final r0(Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->d:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->f:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->d:Ljava/util/Set;

    .line 15
    .line 16
    check-cast v0, Ljava/lang/Iterable;

    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->R0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private static final s0(Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->e:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private final w0(Lcom/noober/background/view/BLTextView;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->d:Ljava/util/Set;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/high16 v0, 0x3f000000    # 0.5f

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    .line 16
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    sget v0, Lcom/transsion/baseui/R$style;->BottomDialogTheme:I

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

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
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const/4 v0, 0x0

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    const/4 v1, -0x1

    .line 32
    const/4 v2, -0x2

    .line 33
    invoke-virtual {p2, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 34
    .line 35
    .line 36
    const/16 v1, 0x50

    .line 37
    .line 38
    invoke-virtual {p2, v1}, Landroid/view/Window;->setGravity(I)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object p2, p0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->c:Lcom/transsion/home/bean/HomePreferencesConfig;

    .line 42
    .line 43
    if-nez p2, :cond_2

    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    sget v1, Lcom/transsion/home/R$id;->tvTitle:I

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Landroid/widget/TextView;

    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/transsion/home/bean/HomePreferencesConfig;->getTitle()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    sget v1, Lcom/transsion/home/R$id;->tvSubtitle:I

    .line 62
    .line 63
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Landroid/widget/TextView;

    .line 68
    .line 69
    invoke-virtual {p2}, Lcom/transsion/home/bean/HomePreferencesConfig;->getSubTitle()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    if-eqz v2, :cond_4

    .line 74
    .line 75
    invoke-static {v2}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_3

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    invoke-virtual {p2}, Lcom/transsion/home/bean/HomePreferencesConfig;->getSubTitle()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_4
    :goto_0
    const/16 v2, 0x8

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    :goto_1
    sget v1, Lcom/transsion/home/R$id;->btnConfirm:I

    .line 99
    .line 100
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    check-cast v1, Lcom/noober/background/view/BLTextView;

    .line 105
    .line 106
    invoke-direct {p0, v1}, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->w0(Lcom/noober/background/view/BLTextView;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Lcom/transsion/home/bean/HomePreferencesConfig;->getSelectType()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    sget-object v3, Lcom/transsion/home/bean/HomePreferencesSelectType;->SINGLE:Lcom/transsion/home/bean/HomePreferencesSelectType;

    .line 114
    .line 115
    invoke-virtual {v3}, Lcom/transsion/home/bean/HomePreferencesSelectType;->getValue()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    new-instance v3, Lcom/transsion/home/adapter/preferences/b;

    .line 124
    .line 125
    iget-object v4, p0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->d:Ljava/util/Set;

    .line 126
    .line 127
    invoke-virtual {p2}, Lcom/transsion/home/bean/HomePreferencesConfig;->getMaxSelectNum()I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    new-instance v6, Lcom/transsion/home/fragment/dialog/l;

    .line 132
    .line 133
    invoke-direct {v6, p0, v1}, Lcom/transsion/home/fragment/dialog/l;-><init>(Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;Lcom/noober/background/view/BLTextView;)V

    .line 134
    .line 135
    .line 136
    invoke-direct {v3, v4, v2, v5, v6}, Lcom/transsion/home/adapter/preferences/b;-><init>(Ljava/util/Set;ZILkotlin/jvm/functions/Function0;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2}, Lcom/transsion/home/bean/HomePreferencesConfig;->getOptions()Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    check-cast p2, Ljava/util/Collection;

    .line 144
    .line 145
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    invoke-virtual {v3, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->p1(Ljava/util/List;)V

    .line 150
    .line 151
    .line 152
    sget p2, Lcom/transsion/home/R$id;->rvTags:I

    .line 153
    .line 154
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 159
    .line 160
    new-instance v2, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 161
    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-direct {v2, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c0(I)V

    .line 170
    .line 171
    .line 172
    const/4 v4, 0x1

    .line 173
    invoke-virtual {v2, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d0(I)V

    .line 174
    .line 175
    .line 176
    const/4 v4, 0x2

    .line 177
    invoke-virtual {v2, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->e0(I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->b0(I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 190
    .line 191
    .line 192
    new-instance p2, Lcom/transsion/home/fragment/dialog/m;

    .line 193
    .line 194
    invoke-direct {p2, p0}, Lcom/transsion/home/fragment/dialog/m;-><init>(Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    .line 199
    .line 200
    sget p2, Lcom/transsion/home/R$id;->btnSkip:I

    .line 201
    .line 202
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    new-instance p2, Lcom/transsion/home/fragment/dialog/n;

    .line 207
    .line 208
    invoke-direct {p2, p0}, Lcom/transsion/home/fragment/dialog/n;-><init>(Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    .line 213
    .line 214
    return-void
.end method

.method public final t0(Lcom/transsion/home/bean/HomePreferencesConfig;)V
    .locals 1

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->c:Lcom/transsion/home/bean/HomePreferencesConfig;

    .line 7
    .line 8
    iget-object p1, p0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->d:Ljava/util/Set;

    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final u0(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->f:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final v0(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->e:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method
