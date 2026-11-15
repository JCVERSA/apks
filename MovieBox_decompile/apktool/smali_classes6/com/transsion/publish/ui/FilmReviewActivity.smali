.class public final Lcom/transsion/publish/ui/FilmReviewActivity;
.super Lcom/transsion/baseui/activity/BaseActivity;
.source "source.java"

# interfaces
.implements Lro/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseActivity<",
        "Llo/b;",
        ">;",
        "Lro/a;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0005J#\u0010\u000c\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0005J\u0019\u0010\u0011\u001a\u00020\u00062\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0005J\u000f\u0010\u0014\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0005J\u000f\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0019J1\u0010\"\u001a\u00020\u00062\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\u001eH\u0016\u00a2\u0006\u0004\u0008\"\u0010#J\u000f\u0010%\u001a\u00020$H\u0016\u00a2\u0006\u0004\u0008%\u0010&J\u000f\u0010(\u001a\u00020\'H\u0016\u00a2\u0006\u0004\u0008(\u0010)J\u000f\u0010*\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008*\u0010\u0005J\u0015\u0010,\u001a\u00020\u00062\u0006\u0010+\u001a\u00020\u0017\u00a2\u0006\u0004\u0008,\u0010-R\u0018\u00101\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0016\u00104\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u00103R$\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00085\u00106\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:\u00a8\u0006;"
    }
    d2 = {
        "Lcom/transsion/publish/ui/FilmReviewActivity;",
        "Lcom/transsion/baseui/activity/BaseActivity;",
        "Llo/b;",
        "Lro/a;",
        "<init>",
        "()V",
        "",
        "initView",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "subject",
        "Lcom/transsion/publish/api/GroupBean;",
        "groupBean",
        "i0",
        "(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/publish/api/GroupBean;)V",
        "initData",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onDestroy",
        "e0",
        "()Llo/b;",
        "onBackPressed",
        "",
        "isTranslucent",
        "()Z",
        "isStatusDark",
        "isChangeStatusBar",
        "",
        "p0",
        "",
        "p1",
        "p2",
        "p3",
        "onTextChanged",
        "(Ljava/lang/CharSequence;III)V",
        "",
        "getPageName",
        "()Ljava/lang/String;",
        "Lqi/b;",
        "newLogViewConfig",
        "()Lqi/b;",
        "onResume",
        "enable",
        "j0",
        "(Z)V",
        "Lcom/transsion/publish/ui/FilmReviewFragment;",
        "a",
        "Lcom/transsion/publish/ui/FilmReviewFragment;",
        "fragment",
        "b",
        "I",
        "sourceType",
        "c",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "getSubject",
        "()Lcom/transsion/moviedetailapi/bean/Subject;",
        "setSubject",
        "(Lcom/transsion/moviedetailapi/bean/Subject;)V",
        "Publish_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private a:Lcom/transsion/publish/ui/FilmReviewFragment;

.field private b:I

.field private c:Lcom/transsion/moviedetailapi/bean/Subject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b0(Lcom/transsion/publish/ui/FilmReviewActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/ui/FilmReviewActivity;->g0(Lcom/transsion/publish/ui/FilmReviewActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c0(Lcom/transsion/publish/ui/FilmReviewActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/ui/FilmReviewActivity;->f0(Lcom/transsion/publish/ui/FilmReviewActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d0()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/transsion/publish/ui/FilmReviewActivity;->h0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final f0(Lcom/transsion/publish/ui/FilmReviewActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/publish/ui/FilmReviewActivity;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->closeAffirm()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private static final g0(Lcom/transsion/publish/ui/FilmReviewActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/publish/ui/FilmReviewActivity;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/transsion/publish/ui/FilmReviewFragment;->checkPost()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private static final h0()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lep/b;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lep/b;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Lep/b;->c()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private final i0(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/publish/api/GroupBean;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Llo/b;

    .line 8
    .line 9
    iget-object v0, v0, Llo/b;->c:Lcom/transsion/publish/view/CustomPublishHeader;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    invoke-virtual {v0, v1, p1}, Lcom/transsion/publish/view/CustomPublishHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    if-eqz p2, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Llo/b;

    .line 37
    .line 38
    iget-object p1, p1, Llo/b;->c:Lcom/transsion/publish/view/CustomPublishHeader;

    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/transsion/publish/api/GroupBean;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p2}, Lcom/transsion/publish/api/GroupBean;->getAvatar()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p1, v0, p2}, Lcom/transsion/publish/view/CustomPublishHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    return-void
.end method

.method private final initData()V
    .locals 0

    .line 1
    return-void
.end method

.method private final initView()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Llo/b;

    .line 6
    .line 7
    iget-object v0, v0, Llo/b;->c:Lcom/transsion/publish/view/CustomPublishHeader;

    .line 8
    .line 9
    new-instance v1, Lcom/transsion/publish/ui/f;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/transsion/publish/ui/f;-><init>(Lcom/transsion/publish/ui/FilmReviewActivity;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/transsion/publish/view/CustomPublishHeader;->setOnBackClick(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Llo/b;

    .line 22
    .line 23
    iget-object v0, v0, Llo/b;->c:Lcom/transsion/publish/view/CustomPublishHeader;

    .line 24
    .line 25
    new-instance v1, Lcom/transsion/publish/ui/g;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/transsion/publish/ui/g;-><init>(Lcom/transsion/publish/ui/FilmReviewActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/transsion/publish/view/CustomPublishHeader;->setOnEditClick(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "sourceType"

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput v0, p0, Lcom/transsion/publish/ui/FilmReviewActivity;->b:I

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "sourceMode"

    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string v3, "subject"

    .line 62
    .line 63
    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_0

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const-string v3, "null cannot be cast to non-null type com.transsion.moviedetailapi.bean.Subject"

    .line 78
    .line 79
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    check-cast v1, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 83
    .line 84
    iput-object v1, p0, Lcom/transsion/publish/ui/FilmReviewActivity;->c:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 85
    .line 86
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const-string v3, "group"

    .line 91
    .line 92
    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_1

    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    const-string v3, "null cannot be cast to non-null type com.transsion.publish.api.GroupBean"

    .line 107
    .line 108
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    check-cast v1, Lcom/transsion/publish/api/GroupBean;

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    const/4 v1, 0x0

    .line 115
    :goto_0
    iget v3, p0, Lcom/transsion/publish/ui/FilmReviewActivity;->b:I

    .line 116
    .line 117
    const/4 v4, 0x2

    .line 118
    if-ne v3, v4, :cond_2

    .line 119
    .line 120
    iget-object v3, p0, Lcom/transsion/publish/ui/FilmReviewActivity;->c:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 121
    .line 122
    invoke-direct {p0, v3, v1}, Lcom/transsion/publish/ui/FilmReviewActivity;->i0(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/publish/api/GroupBean;)V

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    check-cast v3, Llo/b;

    .line 131
    .line 132
    iget-object v3, v3, Llo/b;->c:Lcom/transsion/publish/view/CustomPublishHeader;

    .line 133
    .line 134
    sget v4, Lcom/transsion/publish/R$string;->film_review_title:I

    .line 135
    .line 136
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v3, v4}, Lcom/transsion/publish/view/CustomPublishHeader;->setTitle(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :goto_1
    sget-object v3, Lcom/transsion/publish/ui/FilmReviewFragment;->Companion:Lcom/transsion/publish/ui/FilmReviewFragment$a;

    .line 144
    .line 145
    iget v4, p0, Lcom/transsion/publish/ui/FilmReviewActivity;->b:I

    .line 146
    .line 147
    iget-object v5, p0, Lcom/transsion/publish/ui/FilmReviewActivity;->c:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 148
    .line 149
    invoke-virtual {v3, v4, v5, v0, v1}, Lcom/transsion/publish/ui/FilmReviewFragment$a;->a(ILcom/transsion/moviedetailapi/bean/Subject;ILcom/transsion/publish/api/GroupBean;)Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    iput-object v0, p0, Lcom/transsion/publish/ui/FilmReviewActivity;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 154
    .line 155
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    sget v1, Lcom/transsion/publish/R$id;->fl_content:I

    .line 164
    .line 165
    iget-object v3, p0, Lcom/transsion/publish/ui/FilmReviewActivity;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 166
    .line 167
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v1, v3}, Landroidx/fragment/app/w;->s(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v0}, Landroidx/fragment/app/w;->j()I

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseActivity;->getLogViewConfig()Lqi/b;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    if-eqz v0, :cond_3

    .line 182
    .line 183
    invoke-virtual {v0, v2}, Lqi/b;->k(Z)V

    .line 184
    .line 185
    .line 186
    :cond_3
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lro/a$a;->a(Lro/a;Landroid/text/Editable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lro/a$a;->b(Lro/a;Ljava/lang/CharSequence;III)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public e0()Llo/b;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Llo/b;->c(Landroid/view/LayoutInflater;)Llo/b;

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

.method public getPageName()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/transsion/publish/ui/FilmReviewActivity;->b:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const-string v0, "create_post"

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string v0, "create_review"

    .line 10
    .line 11
    :goto_0
    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lf4/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/publish/ui/FilmReviewActivity;->e0()Llo/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public isChangeStatusBar()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public isStatusDark()Z
    .locals 1

    .line 1
    sget-object v0, Lij/y;->a:Lij/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Lij/y;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    return v0
.end method

.method public isTranslucent()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final j0(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Llo/b;

    .line 6
    .line 7
    iget-object v0, v0, Llo/b;->c:Lcom/transsion/publish/view/CustomPublishHeader;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/transsion/publish/view/CustomPublishHeader;->setPostEnable(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public newLogViewConfig()Lqi/b;
    .locals 5

    .line 1
    new-instance v0, Lqi/b;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/publish/ui/FilmReviewActivity;->getPageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v1, v4, v2, v3}, Lqi/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewActivity;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/publish/ui/FilmReviewFragment;->closeAffirm()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/baseui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewActivity;->initView()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/transsion/publish/ui/FilmReviewActivity;->initData()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Llo/b;

    .line 15
    .line 16
    iget-object p1, p1, Llo/b;->b:Landroid/widget/FrameLayout;

    .line 17
    .line 18
    new-instance v0, Lcom/transsion/publish/ui/e;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/transsion/publish/ui/e;-><init>()V

    .line 21
    .line 22
    .line 23
    const-wide/16 v1, 0x64

    .line 24
    .line 25
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    .line 7
    const-class v1, Lep/b;

    .line 8
    .line 9
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lep/b;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Lep/b;->e()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method
