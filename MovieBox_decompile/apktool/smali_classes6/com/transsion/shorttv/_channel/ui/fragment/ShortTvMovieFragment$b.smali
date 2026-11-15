.class public final Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;->R0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$b;->a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;

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
    .locals 8

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
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$b;->a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    invoke-virtual {v0, p1, v1}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;->i1(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$b;->a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;

    .line 49
    .line 50
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 51
    .line 52
    .line 53
    move-result-wide v1

    .line 54
    invoke-static {v0, v1, v2}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;->A0(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;J)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$b;->a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;->M0()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v0, v1}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;->z0(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    if-nez p1, :cond_2

    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$b;->a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    invoke-static {v0, p1}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;->q0(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;I)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$b;->a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;

    .line 79
    .line 80
    invoke-static {p1}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;->v0(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object p1, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$b;->a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;

    .line 85
    .line 86
    invoke-static {p1}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;->v0(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const/16 v6, 0x3c

    .line 91
    .line 92
    const/4 v7, 0x0

    .line 93
    const/4 v2, 0x0

    .line 94
    const/4 v3, 0x0

    .line 95
    const/4 v4, 0x0

    .line 96
    const/4 v5, 0x0

    .line 97
    invoke-static/range {v0 .. v7}, Lxq/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$b;->a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;

    .line 101
    .line 102
    invoke-static {p1}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;->u0(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;)Lbr/b;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-eqz p1, :cond_3

    .line 107
    .line 108
    invoke-virtual {p1}, Lbr/b;->e()V

    .line 109
    .line 110
    .line 111
    :cond_3
    iget-object p1, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$b;->a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;

    .line 112
    .line 113
    invoke-static {p1}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;->t0(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {p1, v0}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;->y0(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$b;->a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;

    .line 121
    .line 122
    invoke-static {p1}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;->w0(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;)Ljava/util/HashMap;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$b;->a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;

    .line 127
    .line 128
    invoke-static {v1}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;->t0(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Ljava/util/HashMap;

    .line 137
    .line 138
    invoke-static {p1, v0}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;->B0(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;Ljava/util/HashMap;)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$b;->a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;

    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/transsion/shorttv/base/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    check-cast p1, Lqr/a0;

    .line 148
    .line 149
    if-eqz p1, :cond_4

    .line 150
    .line 151
    iget-object p1, p1, Lqr/a0;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 152
    .line 153
    if-eqz p1, :cond_4

    .line 154
    .line 155
    const/4 v0, 0x0

    .line 156
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 157
    .line 158
    .line 159
    :cond_4
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 10

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$b;->a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;->i1(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

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
    iget-object v2, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$b;->a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;->M0()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$b;->a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;

    .line 20
    .line 21
    invoke-static {v3}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;->v0(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v4, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$b;->a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;

    .line 26
    .line 27
    invoke-static {v4}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;->x0(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    sub-long/2addr v0, v4

    .line 32
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v2, v3, v0}, Lxq/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 p1, 0x0

    .line 53
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v1, "unselected tab "

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    const/4 v8, 0x4

    .line 71
    const/4 v9, 0x0

    .line 72
    const-string v5, "MovieFragment"

    .line 73
    .line 74
    const/4 v7, 0x0

    .line 75
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method
