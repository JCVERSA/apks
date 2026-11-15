.class Landroidx/fragment/app/u;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Landroidx/fragment/app/k;

.field private final b:Landroidx/fragment/app/v;

.field private final c:Landroidx/fragment/app/Fragment;

.field private d:Z

.field private e:I


# direct methods
.method constructor <init>(Landroidx/fragment/app/k;Landroidx/fragment/app/v;Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/u;->d:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/fragment/app/u;->e:I

    .line 4
    iput-object p1, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/k;

    .line 5
    iput-object p2, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;

    .line 6
    iput-object p3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/k;Landroidx/fragment/app/v;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentState;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Landroidx/fragment/app/u;->d:Z

    const/4 v1, -0x1

    .line 17
    iput v1, p0, Landroidx/fragment/app/u;->e:I

    .line 18
    iput-object p1, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/k;

    .line 19
    iput-object p2, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;

    .line 20
    iput-object p3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x0

    .line 21
    iput-object p1, p3, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 22
    iput-object p1, p3, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 23
    iput v0, p3, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    .line 24
    iput-boolean v0, p3, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 25
    iput-boolean v0, p3, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 26
    iget-object p2, p3, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_0

    iget-object p2, p2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p3, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 27
    iput-object p1, p3, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 28
    iget-object p1, p4, Landroidx/fragment/app/FragmentState;->m:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    .line 29
    iput-object p1, p3, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    goto :goto_1

    .line 30
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p3, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    :goto_1
    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/k;Landroidx/fragment/app/v;Ljava/lang/ClassLoader;Landroidx/fragment/app/h;Landroidx/fragment/app/FragmentState;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Landroidx/fragment/app/u;->d:Z

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Landroidx/fragment/app/u;->e:I

    .line 10
    iput-object p1, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/k;

    .line 11
    iput-object p2, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;

    .line 12
    invoke-virtual {p5, p4, p3}, Landroidx/fragment/app/FragmentState;->a(Landroidx/fragment/app/h;Ljava/lang/ClassLoader;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    const/4 p2, 0x2

    .line 13
    invoke-static {p2}, Landroidx/fragment/app/FragmentManager;->M0(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Instantiated fragment "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentManager"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private l(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :goto_0
    if-eqz p1, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 16
    .line 17
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 18
    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method private q()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/k;

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/k;->j(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 27
    .line 28
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/u;->t()V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 36
    .line 37
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 38
    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    new-instance v0, Landroid/os/Bundle;

    .line 44
    .line 45
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 49
    .line 50
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 51
    .line 52
    const-string v2, "android:view_state"

    .line 53
    .line 54
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 58
    .line 59
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 60
    .line 61
    if-eqz v1, :cond_5

    .line 62
    .line 63
    if-nez v0, :cond_4

    .line 64
    .line 65
    new-instance v0, Landroid/os/Bundle;

    .line 66
    .line 67
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 68
    .line 69
    .line 70
    :cond_4
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 71
    .line 72
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 73
    .line 74
    const-string v2, "android:view_registry_state"

    .line 75
    .line 76
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 77
    .line 78
    .line 79
    :cond_5
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 80
    .line 81
    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 82
    .line 83
    if-nez v1, :cond_7

    .line 84
    .line 85
    if-nez v0, :cond_6

    .line 86
    .line 87
    new-instance v0, Landroid/os/Bundle;

    .line 88
    .line 89
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 90
    .line 91
    .line 92
    :cond_6
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 93
    .line 94
    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 95
    .line 96
    const-string v2, "android:user_visible_hint"

    .line 97
    .line 98
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 99
    .line 100
    .line 101
    :cond_7
    return-object v0
.end method


# virtual methods
.method a()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "moveto ACTIVITY_CREATED: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 24
    .line 25
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/k;

    .line 31
    .line 32
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 33
    .line 34
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/k;->a(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method b()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/v;->j(Landroidx/fragment/app/Fragment;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 10
    .line 11
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 12
    .line 13
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method c()V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "moveto ATTACHED: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 24
    .line 25
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    const-string v3, " that does not belong to this FragmentManager!"

    .line 29
    .line 30
    const-string v4, " declared target fragment "

    .line 31
    .line 32
    const-string v5, "Fragment "

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;

    .line 37
    .line 38
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroidx/fragment/app/v;->n(Ljava/lang/String;)Landroidx/fragment/app/u;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 47
    .line 48
    iget-object v3, v1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 49
    .line 50
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 51
    .line 52
    iput-object v3, v1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 53
    .line 54
    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 55
    .line 56
    move-object v2, v0

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 77
    .line 78
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v0

    .line 94
    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 95
    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    iget-object v1, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;

    .line 99
    .line 100
    invoke-virtual {v1, v0}, Landroidx/fragment/app/v;->n(Ljava/lang/String;)Landroidx/fragment/app/u;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    if-eqz v2, :cond_3

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 108
    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 126
    .line 127
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw v0

    .line 143
    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    .line 144
    .line 145
    invoke-virtual {v2}, Landroidx/fragment/app/u;->m()V

    .line 146
    .line 147
    .line 148
    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 149
    .line 150
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 151
    .line 152
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->z0()Landroidx/fragment/app/i;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/i;

    .line 157
    .line 158
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 159
    .line 160
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 161
    .line 162
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->C0()Landroidx/fragment/app/Fragment;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 167
    .line 168
    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/k;

    .line 169
    .line 170
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 171
    .line 172
    const/4 v2, 0x0

    .line 173
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/k;->g(Landroidx/fragment/app/Fragment;Z)V

    .line 174
    .line 175
    .line 176
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 177
    .line 178
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performAttach()V

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/k;

    .line 182
    .line 183
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 184
    .line 185
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/k;->b(Landroidx/fragment/app/Fragment;Z)V

    .line 186
    .line 187
    .line 188
    return-void
.end method

.method d()I
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget v0, v0, Landroidx/fragment/app/Fragment;->mState:I

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    iget v1, p0, Landroidx/fragment/app/u;->e:I

    .line 11
    .line 12
    sget-object v2, Landroidx/fragment/app/u$b;->a:[I

    .line 13
    .line 14
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    aget v0, v2, v0

    .line 21
    .line 22
    const/4 v2, 0x5

    .line 23
    const/4 v3, -0x1

    .line 24
    const/4 v4, 0x3

    .line 25
    const/4 v5, 0x4

    .line 26
    const/4 v6, 0x2

    .line 27
    const/4 v7, 0x1

    .line 28
    if-eq v0, v7, :cond_4

    .line 29
    .line 30
    if-eq v0, v6, :cond_3

    .line 31
    .line 32
    if-eq v0, v4, :cond_2

    .line 33
    .line 34
    if-eq v0, v5, :cond_1

    .line 35
    .line 36
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    :cond_4
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 57
    .line 58
    iget-boolean v8, v0, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    .line 59
    .line 60
    if-eqz v8, :cond_7

    .line 61
    .line 62
    iget-boolean v8, v0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 63
    .line 64
    if-eqz v8, :cond_5

    .line 65
    .line 66
    iget v0, p0, Landroidx/fragment/app/u;->e:I

    .line 67
    .line 68
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 73
    .line 74
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 75
    .line 76
    if-eqz v0, :cond_7

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-nez v0, :cond_7

    .line 83
    .line 84
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    goto :goto_1

    .line 89
    :cond_5
    iget v8, p0, Landroidx/fragment/app/u;->e:I

    .line 90
    .line 91
    if-ge v8, v5, :cond_6

    .line 92
    .line 93
    iget v0, v0, Landroidx/fragment/app/Fragment;->mState:I

    .line 94
    .line 95
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    goto :goto_1

    .line 100
    :cond_6
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    :cond_7
    :goto_1
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 105
    .line 106
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 107
    .line 108
    if-nez v0, :cond_8

    .line 109
    .line 110
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 115
    .line 116
    iget-object v8, v0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 117
    .line 118
    if-eqz v8, :cond_9

    .line 119
    .line 120
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-static {v8, v0}, Landroidx/fragment/app/SpecialEffectsController;->n(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/SpecialEffectsController;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0, p0}, Landroidx/fragment/app/SpecialEffectsController;->l(Landroidx/fragment/app/u;)Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    goto :goto_2

    .line 133
    :cond_9
    const/4 v0, 0x0

    .line 134
    :goto_2
    sget-object v8, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->ADDING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 135
    .line 136
    if-ne v0, v8, :cond_a

    .line 137
    .line 138
    const/4 v0, 0x6

    .line 139
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    goto :goto_3

    .line 144
    :cond_a
    sget-object v8, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->REMOVING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 145
    .line 146
    if-ne v0, v8, :cond_b

    .line 147
    .line 148
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    goto :goto_3

    .line 153
    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 154
    .line 155
    iget-boolean v4, v0, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 156
    .line 157
    if-eqz v4, :cond_d

    .line 158
    .line 159
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_c

    .line 164
    .line 165
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    goto :goto_3

    .line 170
    :cond_c
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    :cond_d
    :goto_3
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 175
    .line 176
    iget-boolean v3, v0, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 177
    .line 178
    if-eqz v3, :cond_e

    .line 179
    .line 180
    iget v0, v0, Landroidx/fragment/app/Fragment;->mState:I

    .line 181
    .line 182
    if-ge v0, v2, :cond_e

    .line 183
    .line 184
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    :cond_e
    invoke-static {v6}, Landroidx/fragment/app/FragmentManager;->M0(I)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_f

    .line 193
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    const-string v2, "computeExpectedState() of "

    .line 200
    .line 201
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v2, " for "

    .line 208
    .line 209
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 213
    .line 214
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    const-string v2, "FragmentManager"

    .line 222
    .line 223
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    :cond_f
    return v1
.end method

.method e()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "moveto CREATED: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 24
    .line 25
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mIsCreated:Z

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/k;

    .line 30
    .line 31
    iget-object v2, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-virtual {v1, v0, v2, v3}, Landroidx/fragment/app/k;->h(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 38
    .line 39
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/k;

    .line 45
    .line 46
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 47
    .line 48
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/k;->c(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 60
    .line 61
    const/4 v1, 0x1

    .line 62
    iput v1, v0, Landroidx/fragment/app/Fragment;->mState:I

    .line 63
    .line 64
    :goto_0
    return-void
.end method

.method f()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x3

    .line 9
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M0(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v1, "moveto CREATE_VIEW: "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 31
    .line 32
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 39
    .line 40
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    goto/16 :goto_1

    .line 45
    .line 46
    :cond_2
    iget v2, v1, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 47
    .line 48
    if-eqz v2, :cond_6

    .line 49
    .line 50
    const/4 v3, -0x1

    .line 51
    if-eq v2, v3, :cond_5

    .line 52
    .line 53
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 54
    .line 55
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->t0()Landroidx/fragment/app/f;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 60
    .line 61
    iget v2, v2, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroidx/fragment/app/f;->c(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    move-object v2, v1

    .line 68
    check-cast v2, Landroid/view/ViewGroup;

    .line 69
    .line 70
    if-nez v2, :cond_4

    .line 71
    .line 72
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 73
    .line 74
    iget-boolean v3, v1, Landroidx/fragment/app/Fragment;->mRestored:Z

    .line 75
    .line 76
    if-eqz v3, :cond_3

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    :try_start_0
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 84
    .line 85
    iget v1, v1, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_0

    .line 92
    :catch_0
    const-string v0, "unknown"

    .line 93
    .line 94
    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 95
    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v3, "No view found for id 0x"

    .line 102
    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 107
    .line 108
    iget v3, v3, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 109
    .line 110
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v3, " ("

    .line 118
    .line 119
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v0, ") for fragment "

    .line 126
    .line 127
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 131
    .line 132
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw v1

    .line 143
    :cond_4
    instance-of v1, v2, Landroidx/fragment/app/FragmentContainerView;

    .line 144
    .line 145
    if-nez v1, :cond_7

    .line 146
    .line 147
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 148
    .line 149
    invoke-static {v1, v2}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->n(Landroidx/fragment/app/Fragment;Landroid/view/ViewGroup;)V

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 154
    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    const-string v2, "Cannot create fragment "

    .line 161
    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 166
    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v2, " for a container view with no id"

    .line 171
    .line 172
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw v0

    .line 183
    :cond_6
    const/4 v2, 0x0

    .line 184
    :cond_7
    :goto_1
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 185
    .line 186
    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 187
    .line 188
    iget-object v3, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 189
    .line 190
    invoke-virtual {v1, v0, v2, v3}, Landroidx/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 191
    .line 192
    .line 193
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 194
    .line 195
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 196
    .line 197
    const/4 v1, 0x2

    .line 198
    if-eqz v0, :cond_c

    .line 199
    .line 200
    const/4 v3, 0x0

    .line 201
    invoke-virtual {v0, v3}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 205
    .line 206
    iget-object v4, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 207
    .line 208
    sget v5, Landroidx/fragment/R$id;->fragment_container_view_tag:I

    .line 209
    .line 210
    invoke-virtual {v4, v5, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    if-eqz v2, :cond_8

    .line 214
    .line 215
    invoke-virtual {p0}, Landroidx/fragment/app/u;->b()V

    .line 216
    .line 217
    .line 218
    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 219
    .line 220
    iget-boolean v2, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 221
    .line 222
    if-eqz v2, :cond_9

    .line 223
    .line 224
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 225
    .line 226
    const/16 v2, 0x8

    .line 227
    .line 228
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 229
    .line 230
    .line 231
    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 232
    .line 233
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 234
    .line 235
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-eqz v0, :cond_a

    .line 240
    .line 241
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 242
    .line 243
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 244
    .line 245
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 246
    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_a
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 250
    .line 251
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 252
    .line 253
    new-instance v2, Landroidx/fragment/app/u$a;

    .line 254
    .line 255
    invoke-direct {v2, p0, v0}, Landroidx/fragment/app/u$a;-><init>(Landroidx/fragment/app/u;Landroid/view/View;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 259
    .line 260
    .line 261
    :goto_2
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 262
    .line 263
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performViewCreated()V

    .line 264
    .line 265
    .line 266
    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/k;

    .line 267
    .line 268
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 269
    .line 270
    iget-object v4, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 271
    .line 272
    iget-object v5, v2, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 273
    .line 274
    invoke-virtual {v0, v2, v4, v5, v3}, Landroidx/fragment/app/k;->m(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 275
    .line 276
    .line 277
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 278
    .line 279
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 280
    .line 281
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 286
    .line 287
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 288
    .line 289
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 294
    .line 295
    invoke-virtual {v3, v2}, Landroidx/fragment/app/Fragment;->setPostOnViewCreatedAlpha(F)V

    .line 296
    .line 297
    .line 298
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 299
    .line 300
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 301
    .line 302
    if-eqz v3, :cond_c

    .line 303
    .line 304
    if-nez v0, :cond_c

    .line 305
    .line 306
    iget-object v0, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 307
    .line 308
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    if-eqz v0, :cond_b

    .line 313
    .line 314
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 315
    .line 316
    invoke-virtual {v2, v0}, Landroidx/fragment/app/Fragment;->setFocusedView(Landroid/view/View;)V

    .line 317
    .line 318
    .line 319
    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->M0(I)Z

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    if-eqz v2, :cond_b

    .line 324
    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .line 329
    .line 330
    const-string v3, "requestFocus: Saved focused view "

    .line 331
    .line 332
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    const-string v0, " for Fragment "

    .line 339
    .line 340
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 344
    .line 345
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    const-string v2, "FragmentManager"

    .line 353
    .line 354
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    .line 356
    .line 357
    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 358
    .line 359
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 360
    .line 361
    const/4 v2, 0x0

    .line 362
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 363
    .line 364
    .line 365
    :cond_c
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 366
    .line 367
    iput v1, v0, Landroidx/fragment/app/Fragment;->mState:I

    .line 368
    .line 369
    return-void
.end method

.method g()V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "movefrom CREATED: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 24
    .line 25
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    move v0, v3

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v0, v2

    .line 40
    :goto_0
    const/4 v1, 0x0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    iget-object v4, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 44
    .line 45
    iget-boolean v5, v4, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    .line 46
    .line 47
    if-nez v5, :cond_2

    .line 48
    .line 49
    iget-object v5, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;

    .line 50
    .line 51
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v5, v4, v1}, Landroidx/fragment/app/v;->B(Ljava/lang/String;Landroidx/fragment/app/FragmentState;)Landroidx/fragment/app/FragmentState;

    .line 54
    .line 55
    .line 56
    :cond_2
    if-nez v0, :cond_5

    .line 57
    .line 58
    iget-object v4, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;

    .line 59
    .line 60
    invoke-virtual {v4}, Landroidx/fragment/app/v;->p()Landroidx/fragment/app/r;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    iget-object v5, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 65
    .line 66
    invoke-virtual {v4, v5}, Landroidx/fragment/app/r;->n(Landroidx/fragment/app/Fragment;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_3

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 74
    .line 75
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 76
    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    iget-object v1, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;

    .line 80
    .line 81
    invoke-virtual {v1, v0}, Landroidx/fragment/app/v;->f(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    .line 88
    .line 89
    if-eqz v1, :cond_4

    .line 90
    .line 91
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 92
    .line 93
    iput-object v0, v1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 94
    .line 95
    :cond_4
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 96
    .line 97
    iput v2, v0, Landroidx/fragment/app/Fragment;->mState:I

    .line 98
    .line 99
    goto/16 :goto_4

    .line 100
    .line 101
    :cond_5
    :goto_1
    iget-object v4, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 102
    .line 103
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/i;

    .line 104
    .line 105
    instance-of v5, v4, Landroidx/lifecycle/y0;

    .line 106
    .line 107
    if-eqz v5, :cond_6

    .line 108
    .line 109
    iget-object v3, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;

    .line 110
    .line 111
    invoke-virtual {v3}, Landroidx/fragment/app/v;->p()Landroidx/fragment/app/r;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v3}, Landroidx/fragment/app/r;->k()Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    goto :goto_2

    .line 120
    :cond_6
    invoke-virtual {v4}, Landroidx/fragment/app/i;->f()Landroid/content/Context;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    instance-of v5, v5, Landroid/app/Activity;

    .line 125
    .line 126
    if-eqz v5, :cond_7

    .line 127
    .line 128
    invoke-virtual {v4}, Landroidx/fragment/app/i;->f()Landroid/content/Context;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    check-cast v4, Landroid/app/Activity;

    .line 133
    .line 134
    invoke-virtual {v4}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    xor-int/2addr v3, v4

    .line 139
    :cond_7
    :goto_2
    if-eqz v0, :cond_8

    .line 140
    .line 141
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 142
    .line 143
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    .line 144
    .line 145
    if-eqz v0, :cond_9

    .line 146
    .line 147
    :cond_8
    if-eqz v3, :cond_a

    .line 148
    .line 149
    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;

    .line 150
    .line 151
    invoke-virtual {v0}, Landroidx/fragment/app/v;->p()Landroidx/fragment/app/r;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 156
    .line 157
    invoke-virtual {v0, v3}, Landroidx/fragment/app/r;->c(Landroidx/fragment/app/Fragment;)V

    .line 158
    .line 159
    .line 160
    :cond_a
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 161
    .line 162
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performDestroy()V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/k;

    .line 166
    .line 167
    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 168
    .line 169
    invoke-virtual {v0, v3, v2}, Landroidx/fragment/app/k;->d(Landroidx/fragment/app/Fragment;Z)V

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;

    .line 173
    .line 174
    invoke-virtual {v0}, Landroidx/fragment/app/v;->k()Ljava/util/List;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    :cond_b
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    if-eqz v2, :cond_c

    .line 187
    .line 188
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    check-cast v2, Landroidx/fragment/app/u;

    .line 193
    .line 194
    if-eqz v2, :cond_b

    .line 195
    .line 196
    invoke-virtual {v2}, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 201
    .line 202
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 203
    .line 204
    iget-object v4, v2, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    if-eqz v3, :cond_b

    .line 211
    .line 212
    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 213
    .line 214
    iput-object v3, v2, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 215
    .line 216
    iput-object v1, v2, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_c
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 220
    .line 221
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 222
    .line 223
    if-eqz v1, :cond_d

    .line 224
    .line 225
    iget-object v2, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;

    .line 226
    .line 227
    invoke-virtual {v2, v1}, Landroidx/fragment/app/v;->f(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 232
    .line 233
    :cond_d
    iget-object v0, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;

    .line 234
    .line 235
    invoke-virtual {v0, p0}, Landroidx/fragment/app/v;->s(Landroidx/fragment/app/u;)V

    .line 236
    .line 237
    .line 238
    :goto_4
    return-void
.end method

.method h()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "movefrom CREATE_VIEW: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 24
    .line 25
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performDestroyView()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/k;

    .line 42
    .line 43
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/k;->n(Landroidx/fragment/app/Fragment;Z)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 53
    .line 54
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 55
    .line 56
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/z;

    .line 57
    .line 58
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/b0;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 64
    .line 65
    iput-boolean v2, v0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 66
    .line 67
    return-void
.end method

.method i()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "movefrom ATTACHED: "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->performDetach()V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/k;

    .line 29
    .line 30
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/k;->e(Landroidx/fragment/app/Fragment;Z)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 37
    .line 38
    const/4 v2, -0x1

    .line 39
    iput v2, v1, Landroidx/fragment/app/Fragment;->mState:I

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/i;

    .line 43
    .line 44
    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 45
    .line 46
    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 47
    .line 48
    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 49
    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;

    .line 60
    .line 61
    invoke-virtual {v1}, Landroidx/fragment/app/v;->p()Landroidx/fragment/app/r;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroidx/fragment/app/r;->n(Landroidx/fragment/app/Fragment;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    :goto_0
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M0(I)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v1, "initState called for fragment: "

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 95
    .line 96
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->initState()V

    .line 97
    .line 98
    .line 99
    :cond_3
    return-void
.end method

.method j()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mPerformedCreateView:Z

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M0(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v1, "moveto CREATE_VIEW: "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 38
    .line 39
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 46
    .line 47
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    invoke-virtual {v0, v1, v3, v2}, Landroidx/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 54
    .line 55
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 64
    .line 65
    iget-object v2, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 66
    .line 67
    sget v3, Landroidx/fragment/R$id;->fragment_container_view_tag:I

    .line 68
    .line 69
    invoke-virtual {v2, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 73
    .line 74
    iget-boolean v2, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 75
    .line 76
    if-eqz v2, :cond_1

    .line 77
    .line 78
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 79
    .line 80
    const/16 v2, 0x8

    .line 81
    .line 82
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 86
    .line 87
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performViewCreated()V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/k;

    .line 91
    .line 92
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 93
    .line 94
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 95
    .line 96
    iget-object v4, v2, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 97
    .line 98
    invoke-virtual {v0, v2, v3, v4, v1}, Landroidx/fragment/app/k;->m(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 102
    .line 103
    const/4 v1, 0x2

    .line 104
    iput v1, v0, Landroidx/fragment/app/Fragment;->mState:I

    .line 105
    .line 106
    :cond_2
    return-void
.end method

.method k()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    return-object v0
.end method

.method m()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/u;->d:Z

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->M0(I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "Ignoring re-entrant call to moveToExpectedState() for "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/u;->k()Landroidx/fragment/app/Fragment;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "FragmentManager"

    .line 34
    .line 35
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    const/4 v2, 0x1

    .line 41
    :try_start_0
    iput-boolean v2, p0, Landroidx/fragment/app/u;->d:Z

    .line 42
    .line 43
    move v3, v0

    .line 44
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/u;->d()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    iget-object v5, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 49
    .line 50
    iget v6, v5, Landroidx/fragment/app/Fragment;->mState:I

    .line 51
    .line 52
    const/4 v7, 0x3

    .line 53
    if-eq v4, v6, :cond_9

    .line 54
    .line 55
    if-le v4, v6, :cond_3

    .line 56
    .line 57
    add-int/lit8 v6, v6, 0x1

    .line 58
    .line 59
    packed-switch v6, :pswitch_data_0

    .line 60
    .line 61
    .line 62
    goto/16 :goto_2

    .line 63
    .line 64
    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/u;->p()V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_2

    .line 68
    .line 69
    :catchall_0
    move-exception v1

    .line 70
    goto/16 :goto_4

    .line 71
    .line 72
    :pswitch_1
    const/4 v3, 0x6

    .line 73
    iput v3, v5, Landroidx/fragment/app/Fragment;->mState:I

    .line 74
    .line 75
    goto/16 :goto_2

    .line 76
    .line 77
    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/u;->v()V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_2

    .line 81
    .line 82
    :pswitch_3
    iget-object v3, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 83
    .line 84
    if-eqz v3, :cond_2

    .line 85
    .line 86
    iget-object v3, v5, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 87
    .line 88
    if-eqz v3, :cond_2

    .line 89
    .line 90
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-static {v3, v4}, Landroidx/fragment/app/SpecialEffectsController;->n(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/SpecialEffectsController;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    iget-object v4, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 99
    .line 100
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 101
    .line 102
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    invoke-static {v4}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->from(I)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v3, v4, p0}, Landroidx/fragment/app/SpecialEffectsController;->b(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/u;)V

    .line 111
    .line 112
    .line 113
    :cond_2
    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 114
    .line 115
    const/4 v4, 0x4

    .line 116
    iput v4, v3, Landroidx/fragment/app/Fragment;->mState:I

    .line 117
    .line 118
    goto/16 :goto_2

    .line 119
    .line 120
    :pswitch_4
    invoke-virtual {p0}, Landroidx/fragment/app/u;->a()V

    .line 121
    .line 122
    .line 123
    goto/16 :goto_2

    .line 124
    .line 125
    :pswitch_5
    invoke-virtual {p0}, Landroidx/fragment/app/u;->j()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/u;->f()V

    .line 129
    .line 130
    .line 131
    goto/16 :goto_2

    .line 132
    .line 133
    :pswitch_6
    invoke-virtual {p0}, Landroidx/fragment/app/u;->e()V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_2

    .line 137
    .line 138
    :pswitch_7
    invoke-virtual {p0}, Landroidx/fragment/app/u;->c()V

    .line 139
    .line 140
    .line 141
    goto/16 :goto_2

    .line 142
    .line 143
    :cond_3
    add-int/lit8 v6, v6, -0x1

    .line 144
    .line 145
    packed-switch v6, :pswitch_data_1

    .line 146
    .line 147
    .line 148
    goto/16 :goto_2

    .line 149
    .line 150
    :pswitch_8
    invoke-virtual {p0}, Landroidx/fragment/app/u;->n()V

    .line 151
    .line 152
    .line 153
    goto/16 :goto_2

    .line 154
    .line 155
    :pswitch_9
    const/4 v3, 0x5

    .line 156
    iput v3, v5, Landroidx/fragment/app/Fragment;->mState:I

    .line 157
    .line 158
    goto/16 :goto_2

    .line 159
    .line 160
    :pswitch_a
    invoke-virtual {p0}, Landroidx/fragment/app/u;->w()V

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :pswitch_b
    invoke-static {v7}, Landroidx/fragment/app/FragmentManager;->M0(I)Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    if-eqz v3, :cond_4

    .line 169
    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    const-string v4, "movefrom ACTIVITY_CREATED: "

    .line 176
    .line 177
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    iget-object v4, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 181
    .line 182
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    :cond_4
    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 186
    .line 187
    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    .line 188
    .line 189
    if-eqz v4, :cond_5

    .line 190
    .line 191
    invoke-virtual {p0}, Landroidx/fragment/app/u;->s()V

    .line 192
    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_5
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 196
    .line 197
    if-eqz v4, :cond_6

    .line 198
    .line 199
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 200
    .line 201
    if-nez v3, :cond_6

    .line 202
    .line 203
    invoke-virtual {p0}, Landroidx/fragment/app/u;->t()V

    .line 204
    .line 205
    .line 206
    :cond_6
    :goto_1
    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 207
    .line 208
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 209
    .line 210
    if-eqz v4, :cond_7

    .line 211
    .line 212
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 213
    .line 214
    if-eqz v4, :cond_7

    .line 215
    .line 216
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    invoke-static {v4, v3}, Landroidx/fragment/app/SpecialEffectsController;->n(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/SpecialEffectsController;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-virtual {v3, p0}, Landroidx/fragment/app/SpecialEffectsController;->d(Landroidx/fragment/app/u;)V

    .line 225
    .line 226
    .line 227
    :cond_7
    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 228
    .line 229
    iput v7, v3, Landroidx/fragment/app/Fragment;->mState:I

    .line 230
    .line 231
    goto :goto_2

    .line 232
    :pswitch_c
    iput-boolean v0, v5, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 233
    .line 234
    iput v1, v5, Landroidx/fragment/app/Fragment;->mState:I

    .line 235
    .line 236
    goto :goto_2

    .line 237
    :pswitch_d
    invoke-virtual {p0}, Landroidx/fragment/app/u;->h()V

    .line 238
    .line 239
    .line 240
    iget-object v3, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 241
    .line 242
    iput v2, v3, Landroidx/fragment/app/Fragment;->mState:I

    .line 243
    .line 244
    goto :goto_2

    .line 245
    :pswitch_e
    iget-boolean v3, v5, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    .line 246
    .line 247
    if-eqz v3, :cond_8

    .line 248
    .line 249
    iget-object v3, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;

    .line 250
    .line 251
    iget-object v4, v5, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 252
    .line 253
    invoke-virtual {v3, v4}, Landroidx/fragment/app/v;->q(Ljava/lang/String;)Landroidx/fragment/app/FragmentState;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    if-nez v3, :cond_8

    .line 258
    .line 259
    invoke-virtual {p0}, Landroidx/fragment/app/u;->s()V

    .line 260
    .line 261
    .line 262
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/u;->g()V

    .line 263
    .line 264
    .line 265
    goto :goto_2

    .line 266
    :pswitch_f
    invoke-virtual {p0}, Landroidx/fragment/app/u;->i()V

    .line 267
    .line 268
    .line 269
    :goto_2
    move v3, v2

    .line 270
    goto/16 :goto_0

    .line 271
    .line 272
    :cond_9
    if-nez v3, :cond_c

    .line 273
    .line 274
    const/4 v1, -0x1

    .line 275
    if-ne v6, v1, :cond_c

    .line 276
    .line 277
    iget-boolean v1, v5, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 278
    .line 279
    if-eqz v1, :cond_c

    .line 280
    .line 281
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-nez v1, :cond_c

    .line 286
    .line 287
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 288
    .line 289
    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    .line 290
    .line 291
    if-nez v1, :cond_c

    .line 292
    .line 293
    invoke-static {v7}, Landroidx/fragment/app/FragmentManager;->M0(I)Z

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    if-eqz v1, :cond_a

    .line 298
    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .line 303
    .line 304
    const-string v2, "Cleaning up state of never attached fragment: "

    .line 305
    .line 306
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 310
    .line 311
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    :cond_a
    iget-object v1, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;

    .line 315
    .line 316
    invoke-virtual {v1}, Landroidx/fragment/app/v;->p()Landroidx/fragment/app/r;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 321
    .line 322
    invoke-virtual {v1, v2}, Landroidx/fragment/app/r;->c(Landroidx/fragment/app/Fragment;)V

    .line 323
    .line 324
    .line 325
    iget-object v1, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;

    .line 326
    .line 327
    invoke-virtual {v1, p0}, Landroidx/fragment/app/v;->s(Landroidx/fragment/app/u;)V

    .line 328
    .line 329
    .line 330
    invoke-static {v7}, Landroidx/fragment/app/FragmentManager;->M0(I)Z

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    if-eqz v1, :cond_b

    .line 335
    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    .line 337
    .line 338
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .line 340
    .line 341
    const-string v2, "initState called for fragment: "

    .line 342
    .line 343
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 347
    .line 348
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    :cond_b
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 352
    .line 353
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->initState()V

    .line 354
    .line 355
    .line 356
    :cond_c
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 357
    .line 358
    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 359
    .line 360
    if-eqz v2, :cond_10

    .line 361
    .line 362
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 363
    .line 364
    if-eqz v2, :cond_e

    .line 365
    .line 366
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 367
    .line 368
    if-eqz v2, :cond_e

    .line 369
    .line 370
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    invoke-static {v2, v1}, Landroidx/fragment/app/SpecialEffectsController;->n(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/SpecialEffectsController;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 379
    .line 380
    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 381
    .line 382
    if-eqz v2, :cond_d

    .line 383
    .line 384
    invoke-virtual {v1, p0}, Landroidx/fragment/app/SpecialEffectsController;->c(Landroidx/fragment/app/u;)V

    .line 385
    .line 386
    .line 387
    goto :goto_3

    .line 388
    :cond_d
    invoke-virtual {v1, p0}, Landroidx/fragment/app/SpecialEffectsController;->e(Landroidx/fragment/app/u;)V

    .line 389
    .line 390
    .line 391
    :cond_e
    :goto_3
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 392
    .line 393
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 394
    .line 395
    if-eqz v2, :cond_f

    .line 396
    .line 397
    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentManager;->K0(Landroidx/fragment/app/Fragment;)V

    .line 398
    .line 399
    .line 400
    :cond_f
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 401
    .line 402
    iput-boolean v0, v1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 403
    .line 404
    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 405
    .line 406
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 407
    .line 408
    .line 409
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 410
    .line 411
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 412
    .line 413
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->K()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    .line 415
    .line 416
    :cond_10
    iput-boolean v0, p0, Landroidx/fragment/app/u;->d:Z

    .line 417
    .line 418
    return-void

    .line 419
    :goto_4
    iput-boolean v0, p0, Landroidx/fragment/app/u;->d:Z

    .line 420
    .line 421
    throw v1

    .line 422
    nop

    .line 423
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method n()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "movefrom RESUMED: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performPause()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/k;

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/k;->f(Landroidx/fragment/app/Fragment;Z)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method o(Ljava/lang/ClassLoader;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 12
    .line 13
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 14
    .line 15
    const-string v1, "android:view_state"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 22
    .line 23
    iget-object p1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 24
    .line 25
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 26
    .line 27
    const-string v1, "android:view_registry_state"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 34
    .line 35
    iget-object p1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 36
    .line 37
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 38
    .line 39
    const-string v1, "android:target_state"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 46
    .line 47
    iget-object p1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 48
    .line 49
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 54
    .line 55
    const-string v1, "android:target_req_state"

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iput v0, p1, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    .line 63
    .line 64
    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 65
    .line 66
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 76
    .line 77
    iget-object p1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 78
    .line 79
    const/4 v0, 0x0

    .line 80
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 84
    .line 85
    const-string v2, "android:user_visible_hint"

    .line 86
    .line 87
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 92
    .line 93
    :goto_0
    iget-object p1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 94
    .line 95
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 96
    .line 97
    if-nez v0, :cond_3

    .line 98
    .line 99
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 100
    .line 101
    :cond_3
    return-void
.end method

.method p()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "moveto RESUMED: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFocusedView()Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-direct {p0, v0}, Landroidx/fragment/app/u;->l(Landroid/view/View;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v2, 0x2

    .line 42
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->M0(I)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v3, "requestFocus: Restoring focused view "

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v0, " "

    .line 62
    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    if-eqz v1, :cond_1

    .line 67
    .line 68
    const-string v0, "succeeded"

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const-string v0, "failed"

    .line 72
    .line 73
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, " on Fragment "

    .line 77
    .line 78
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 82
    .line 83
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v0, " resulting in focused view "

    .line 87
    .line 88
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 92
    .line 93
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const-string v1, "FragmentManager"

    .line 107
    .line 108
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 112
    .line 113
    const/4 v1, 0x0

    .line 114
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setFocusedView(Landroid/view/View;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 118
    .line 119
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performResume()V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/k;

    .line 123
    .line 124
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 125
    .line 126
    const/4 v3, 0x0

    .line 127
    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/k;->i(Landroidx/fragment/app/Fragment;Z)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 131
    .line 132
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 133
    .line 134
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 135
    .line 136
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 137
    .line 138
    return-void
.end method

.method r()Landroidx/fragment/app/Fragment$SavedState;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    iget v0, v0, Landroidx/fragment/app/Fragment;->mState:I

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-le v0, v1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/fragment/app/u;->q()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v2, Landroidx/fragment/app/Fragment$SavedState;

    .line 16
    .line 17
    invoke-direct {v2, v0}, Landroidx/fragment/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-object v2
.end method

.method s()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/fragment/app/FragmentState;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentState;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 9
    .line 10
    iget v2, v1, Landroidx/fragment/app/Fragment;->mState:I

    .line 11
    .line 12
    const/4 v3, -0x1

    .line 13
    if-le v2, v3, :cond_1

    .line 14
    .line 15
    iget-object v2, v0, Landroidx/fragment/app/FragmentState;->m:Landroid/os/Bundle;

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    invoke-direct {p0}, Landroidx/fragment/app/u;->q()Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, v0, Landroidx/fragment/app/FragmentState;->m:Landroid/os/Bundle;

    .line 24
    .line 25
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 26
    .line 27
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    new-instance v1, Landroid/os/Bundle;

    .line 34
    .line 35
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v1, v0, Landroidx/fragment/app/FragmentState;->m:Landroid/os/Bundle;

    .line 39
    .line 40
    :cond_0
    iget-object v1, v0, Landroidx/fragment/app/FragmentState;->m:Landroid/os/Bundle;

    .line 41
    .line 42
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 43
    .line 44
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 45
    .line 46
    const-string v3, "android:target_state"

    .line 47
    .line 48
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 52
    .line 53
    iget v1, v1, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    iget-object v2, v0, Landroidx/fragment/app/FragmentState;->m:Landroid/os/Bundle;

    .line 58
    .line 59
    const-string v3, "android:target_req_state"

    .line 60
    .line 61
    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 66
    .line 67
    iput-object v1, v0, Landroidx/fragment/app/FragmentState;->m:Landroid/os/Bundle;

    .line 68
    .line 69
    :cond_2
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/u;->b:Landroidx/fragment/app/v;

    .line 70
    .line 71
    iget-object v2, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 72
    .line 73
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/v;->B(Ljava/lang/String;Landroidx/fragment/app/FragmentState;)Landroidx/fragment/app/FragmentState;

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method t()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x2

    .line 9
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M0(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v1, "Saving view state for fragment "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, " with view "

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 36
    .line 37
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "FragmentManager"

    .line 47
    .line 48
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :cond_1
    new-instance v0, Landroid/util/SparseArray;

    .line 52
    .line 53
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 57
    .line 58
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-lez v1, :cond_2

    .line 68
    .line 69
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 70
    .line 71
    iput-object v0, v1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 72
    .line 73
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    .line 74
    .line 75
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 79
    .line 80
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/z;

    .line 81
    .line 82
    invoke-virtual {v1, v0}, Landroidx/fragment/app/z;->e(Landroid/os/Bundle;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-nez v1, :cond_3

    .line 90
    .line 91
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 92
    .line 93
    iput-object v0, v1, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 94
    .line 95
    :cond_3
    return-void
.end method

.method u(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/fragment/app/u;->e:I

    .line 2
    .line 3
    return-void
.end method

.method v()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "moveto STARTED: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performStart()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/k;

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/k;->k(Landroidx/fragment/app/Fragment;Z)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method w()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M0(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "movefrom STARTED: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performStop()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Landroidx/fragment/app/u;->a:Landroidx/fragment/app/k;

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/fragment/app/u;->c:Landroidx/fragment/app/Fragment;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/k;->l(Landroidx/fragment/app/Fragment;Z)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
