.class public final Lcom/transsion/home/fragment/tab/MovieFragment$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/tab/MovieFragment;->k1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/fragment/tab/MovieFragment;


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/tab/MovieFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/fragment/tab/MovieFragment$b;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "release tab "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/4 v4, 0x4

    .line 33
    const/4 v5, 0x0

    .line 34
    const-string v1, "MovieFragment"

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 10

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v3, "selected tab "

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/4 v4, 0x4

    .line 33
    const/4 v5, 0x0

    .line 34
    const-string v1, "MovieFragment"

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Lcom/transsion/home/fragment/tab/MovieFragment$b;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    invoke-virtual {v0, p1, v1}, Lcom/transsion/home/fragment/tab/MovieFragment;->B1(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object v0, p0, Lcom/transsion/home/fragment/tab/MovieFragment$b;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    .line 49
    .line 50
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 51
    .line 52
    .line 53
    move-result-wide v1

    .line 54
    invoke-static {v0, v1, v2}, Lcom/transsion/home/fragment/tab/MovieFragment;->T0(Lcom/transsion/home/fragment/tab/MovieFragment;J)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/transsion/home/fragment/tab/MovieFragment$b;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/transsion/home/fragment/tab/MovieFragment;->K0(Lcom/transsion/home/fragment/tab/MovieFragment;)Lcom/transsion/home/bean/FilterItems;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Lcom/transsion/home/fragment/tab/MovieFragment;->f1(Lcom/transsion/home/bean/FilterItems;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v0, v1}, Lcom/transsion/home/fragment/tab/MovieFragment;->S0(Lcom/transsion/home/fragment/tab/MovieFragment;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    if-nez p1, :cond_2

    .line 71
    .line 72
    return-void

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/transsion/home/fragment/tab/MovieFragment$b;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    invoke-static {v0, p1}, Lcom/transsion/home/fragment/tab/MovieFragment;->E0(Lcom/transsion/home/fragment/tab/MovieFragment;I)V

    .line 80
    .line 81
    .line 82
    sget-object v1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 83
    .line 84
    iget-object p1, p0, Lcom/transsion/home/fragment/tab/MovieFragment$b;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    .line 85
    .line 86
    invoke-static {p1}, Lcom/transsion/home/fragment/tab/MovieFragment;->N0(Lcom/transsion/home/fragment/tab/MovieFragment;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    iget-object p1, p0, Lcom/transsion/home/fragment/tab/MovieFragment$b;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    .line 91
    .line 92
    invoke-static {p1}, Lcom/transsion/home/fragment/tab/MovieFragment;->N0(Lcom/transsion/home/fragment/tab/MovieFragment;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    const/16 v8, 0x3c

    .line 97
    .line 98
    const/4 v9, 0x0

    .line 99
    const/4 v4, 0x0

    .line 100
    const/4 v5, 0x0

    .line 101
    const/4 v6, 0x0

    .line 102
    const/4 v7, 0x0

    .line 103
    invoke-static/range {v1 .. v9}, Lcom/transsion/baselib/helper/a;->j(Lcom/transsion/baselib/helper/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/transsion/home/fragment/tab/MovieFragment$b;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    .line 107
    .line 108
    invoke-static {p1}, Lcom/transsion/home/fragment/tab/MovieFragment;->J0(Lcom/transsion/home/fragment/tab/MovieFragment;)Lrk/b;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    if-eqz p1, :cond_3

    .line 113
    .line 114
    invoke-virtual {p1}, Lrk/b;->e()V

    .line 115
    .line 116
    .line 117
    :cond_3
    iget-object p1, p0, Lcom/transsion/home/fragment/tab/MovieFragment$b;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    .line 118
    .line 119
    invoke-static {p1}, Lcom/transsion/home/fragment/tab/MovieFragment;->I0(Lcom/transsion/home/fragment/tab/MovieFragment;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {p1, v0}, Lcom/transsion/home/fragment/tab/MovieFragment;->R0(Lcom/transsion/home/fragment/tab/MovieFragment;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lcom/transsion/home/fragment/tab/MovieFragment$b;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    .line 127
    .line 128
    invoke-static {p1}, Lcom/transsion/home/fragment/tab/MovieFragment;->O0(Lcom/transsion/home/fragment/tab/MovieFragment;)Ljava/util/HashMap;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/transsion/home/fragment/tab/MovieFragment$b;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    .line 133
    .line 134
    invoke-static {v1}, Lcom/transsion/home/fragment/tab/MovieFragment;->I0(Lcom/transsion/home/fragment/tab/MovieFragment;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    check-cast v0, Ljava/util/HashMap;

    .line 143
    .line 144
    invoke-static {p1, v0}, Lcom/transsion/home/fragment/tab/MovieFragment;->U0(Lcom/transsion/home/fragment/tab/MovieFragment;Ljava/util/HashMap;)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, Lcom/transsion/home/fragment/tab/MovieFragment$b;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    check-cast p1, Lqk/q;

    .line 154
    .line 155
    if-eqz p1, :cond_4

    .line 156
    .line 157
    iget-object p1, p1, Lqk/q;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 158
    .line 159
    if-eqz p1, :cond_4

    .line 160
    .line 161
    const/4 v0, 0x0

    .line 162
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 163
    .line 164
    .line 165
    :cond_4
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 11

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/home/fragment/tab/MovieFragment$b;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/transsion/home/fragment/tab/MovieFragment;->B1(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    sget-object v2, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/transsion/home/fragment/tab/MovieFragment$b;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    .line 16
    .line 17
    invoke-static {v3}, Lcom/transsion/home/fragment/tab/MovieFragment;->K0(Lcom/transsion/home/fragment/tab/MovieFragment;)Lcom/transsion/home/bean/FilterItems;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v3, v4}, Lcom/transsion/home/fragment/tab/MovieFragment;->f1(Lcom/transsion/home/bean/FilterItems;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v4, p0, Lcom/transsion/home/fragment/tab/MovieFragment$b;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    .line 26
    .line 27
    invoke-static {v4}, Lcom/transsion/home/fragment/tab/MovieFragment;->N0(Lcom/transsion/home/fragment/tab/MovieFragment;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget-object v5, p0, Lcom/transsion/home/fragment/tab/MovieFragment$b;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    .line 32
    .line 33
    invoke-static {v5}, Lcom/transsion/home/fragment/tab/MovieFragment;->P0(Lcom/transsion/home/fragment/tab/MovieFragment;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v5

    .line 37
    sub-long/2addr v0, v5

    .line 38
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v2, v3, v4, v0}, Lcom/transsion/baselib/helper/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/4 p1, 0x0

    .line 59
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v1, "unselected tab "

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    const/4 v9, 0x4

    .line 77
    const/4 v10, 0x0

    .line 78
    const-string v6, "MovieFragment"

    .line 79
    .line 80
    const/4 v8, 0x0

    .line 81
    invoke-static/range {v5 .. v10}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method
