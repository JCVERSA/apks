.class public final Lcom/transsion/videodetail/music/ui/MusicDetailActivity;
.super Lcom/transsion/videodetail/BaseDetailActivity;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/videodetail/BaseDetailActivity<",
        "Llm/a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0004\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/transsion/videodetail/music/ui/MusicDetailActivity;",
        "Lcom/transsion/videodetail/BaseDetailActivity;",
        "Llm/a;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "n0",
        "()Z",
        "G0",
        "()Llm/a;",
        "q0",
        "VideoDetail_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/videodetail/BaseDetailActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public G0()Llm/a;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Llm/a;->c(Landroid/view/LayoutInflater;)Llm/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "inflate(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lf4/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/videodetail/music/ui/MusicDetailActivity;->G0()Llm/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public n0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/videodetail/BaseDetailActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/transsion/baselib/report/k;->a:Lcom/transsion/baselib/report/k;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0, p0}, Lcom/transsion/baselib/report/k;->w(ILandroid/app/Activity;)V

    .line 8
    .line 9
    .line 10
    sget-object p1, Lyv/a;->a:Lyv/a;

    .line 11
    .line 12
    const-string v0, "MusicDetailActivity --> onCreate() --> \u97f3\u4e50\u8be6\u60c5\u9875\u5355\u72ec\u5904\u7406"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lyv/a;->c(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object p1, Lcw/c;->a:Lcw/c;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcw/c;->a()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public q0()V
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;->q0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/videodetail/BaseDetailActivity;->D0()Landroidx/fragment/app/Fragment;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "MusicDetailFragment"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Lcom/transsion/videodetail/BaseDetailActivity;->E0(Landroidx/fragment/app/Fragment;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/transsion/videodetail/BaseDetailActivity;->D0()Landroidx/fragment/app/Fragment;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v2, "getSupportFragmentManager(...)"

    .line 34
    .line 35
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v2, "beginTransaction()"

    .line 43
    .line 44
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sget-object v2, Lcom/transsion/videodetail/music/ui/MusicDetailFragment;->M:Lcom/transsion/videodetail/music/ui/MusicDetailFragment$a;

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$a;->a()Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    new-instance v3, Landroid/os/Bundle;

    .line 54
    .line 55
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v4, "id"

    .line 59
    .line 60
    iget-object v5, p0, Lcom/transsion/videodetail/BaseDetailActivity;->i:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string v4, "ops"

    .line 66
    .line 67
    iget-object v5, p0, Lcom/transsion/videodetail/BaseDetailActivity;->j:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string v4, "auto_download"

    .line 73
    .line 74
    iget-boolean v5, p0, Lcom/transsion/videodetail/BaseDetailActivity;->k:Z

    .line 75
    .line 76
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    .line 78
    .line 79
    const-string v4, "auto_play"

    .line 80
    .line 81
    iget-boolean v5, p0, Lcom/transsion/videodetail/BaseDetailActivity;->l:Z

    .line 82
    .line 83
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 84
    .line 85
    .line 86
    const-string v4, "auto_play_resource_id"

    .line 87
    .line 88
    iget-object v5, p0, Lcom/transsion/videodetail/BaseDetailActivity;->m:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string v4, "module_name"

    .line 94
    .line 95
    iget-object v5, p0, Lcom/transsion/videodetail/BaseDetailActivity;->n:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v4, "yy_preload_id"

    .line 101
    .line 102
    iget v5, p0, Lcom/transsion/videodetail/BaseDetailActivity;->o:I

    .line 103
    .line 104
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 105
    .line 106
    .line 107
    const-string v4, "season"

    .line 108
    .line 109
    iget v5, p0, Lcom/transsion/videodetail/BaseDetailActivity;->p:I

    .line 110
    .line 111
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 112
    .line 113
    .line 114
    const-string v4, "episode"

    .line 115
    .line 116
    iget v5, p0, Lcom/transsion/videodetail/BaseDetailActivity;->q:I

    .line 117
    .line 118
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 119
    .line 120
    .line 121
    const-string v4, "is_music_liked_fragment"

    .line 122
    .line 123
    iget-boolean v5, p0, Lcom/transsion/videodetail/BaseDetailActivity;->r:Z

    .line 124
    .line 125
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 126
    .line 127
    .line 128
    const-string v4, "is_music_float_view_click"

    .line 129
    .line 130
    iget-boolean v5, p0, Lcom/transsion/videodetail/BaseDetailActivity;->s:Z

    .line 131
    .line 132
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 133
    .line 134
    .line 135
    sget-object v4, Lyv/a;->a:Lyv/a;

    .line 136
    .line 137
    invoke-virtual {v2}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getClassTag()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    iget-boolean v6, p0, Lcom/transsion/videodetail/BaseDetailActivity;->r:Z

    .line 142
    .line 143
    new-instance v7, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v5, " --> loadDefaultData() --> isMusicLikedFragment = "

    .line 152
    .line 153
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    invoke-virtual {v4, v5}, Lyv/a;->c(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 167
    .line 168
    .line 169
    sget v3, Lcom/transsion/moviedetail/R$id;->container:I

    .line 170
    .line 171
    invoke-virtual {v0, v3, v2, v1}, Landroidx/fragment/app/w;->t(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/w;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, v2}, Lcom/transsion/videodetail/BaseDetailActivity;->E0(Landroidx/fragment/app/Fragment;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0}, Landroidx/fragment/app/w;->j()I

    .line 178
    .line 179
    .line 180
    :cond_0
    return-void
.end method
