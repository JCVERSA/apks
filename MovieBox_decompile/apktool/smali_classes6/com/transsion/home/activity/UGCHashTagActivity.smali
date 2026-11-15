.class public final Lcom/transsion/home/activity/UGCHashTagActivity;
.super Lcom/transsion/baseui/activity/BaseActivity;
.source "source.java"

# interfaces
.implements Lcom/transsion/baselib/report/g;
.implements Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseActivity<",
        "Leh/a;",
        ">;",
        "Lcom/transsion/baselib/report/g;",
        "Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$b;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0006J\u000f\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u0011\u001a\u00020\u00072\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0019\u0010\u0013\u001a\u00020\u00072\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0006J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0019\u0010\u0019\u001a\u00020\u00072\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0015H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR*\u0010#\u001a\u0016\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001fj\n\u0012\u0004\u0012\u00020\u001b\u0018\u0001` 8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0016\u0010&\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u0018\u0010(\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010%R\u0016\u0010,\u001a\u00020)8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0018\u0010.\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010%R\u0018\u00100\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u0010%\u00a8\u00061"
    }
    d2 = {
        "Lcom/transsion/home/activity/UGCHashTagActivity;",
        "Lcom/transsion/baseui/activity/BaseActivity;",
        "Leh/a;",
        "Lcom/transsion/baselib/report/g;",
        "Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$b;",
        "<init>",
        "()V",
        "",
        "d0",
        "",
        "isTranslucent",
        "()Z",
        "isStatusDark",
        "c0",
        "()Leh/a;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "initView",
        "retryLoadData",
        "",
        "getPageName",
        "()Ljava/lang/String;",
        "title",
        "j",
        "(Ljava/lang/String;)V",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;",
        "a",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;",
        "mainHasTag",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "b",
        "Ljava/util/ArrayList;",
        "hasTagList",
        "c",
        "Ljava/lang/String;",
        "fromOptId",
        "d",
        "ugcVideoId",
        "",
        "e",
        "I",
        "tabId",
        "f",
        "mHashtagJson",
        "g",
        "currentHashTagTitle",
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


# instance fields
.field public a:Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;

.field public b:Ljava/util/ArrayList;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/home/activity/UGCHashTagActivity;->c:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic b0(Lcom/transsion/home/activity/UGCHashTagActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/home/activity/UGCHashTagActivity;->e0(Lcom/transsion/home/activity/UGCHashTagActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final d0()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/home/activity/UGCHashTagActivity;->f:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;->i:Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$a;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/transsion/home/activity/UGCHashTagActivity;->f:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/transsion/home/activity/UGCHashTagActivity;->c:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/transsion/home/activity/UGCHashTagActivity;->d:Ljava/lang/String;

    .line 19
    .line 20
    iget v4, p0, Lcom/transsion/home/activity/UGCHashTagActivity;->e:I

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    sget-object v1, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;->i:Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$a;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/transsion/home/activity/UGCHashTagActivity;->a:Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;

    .line 30
    .line 31
    iget-object v3, p0, Lcom/transsion/home/activity/UGCHashTagActivity;->b:Ljava/util/ArrayList;

    .line 32
    .line 33
    iget-object v4, p0, Lcom/transsion/home/activity/UGCHashTagActivity;->c:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v5, p0, Lcom/transsion/home/activity/UGCHashTagActivity;->d:Ljava/lang/String;

    .line 36
    .line 37
    iget v6, p0, Lcom/transsion/home/activity/UGCHashTagActivity;->e:I

    .line 38
    .line 39
    invoke-virtual/range {v1 .. v6}, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$a;->a(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    sget v2, Lcom/transsion/home/R$id;->container:I

    .line 52
    .line 53
    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/w;->s(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroidx/fragment/app/w;->k()V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method private static final e0(Lcom/transsion/home/activity/UGCHashTagActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c0()Leh/a;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Leh/a;->c(Landroid/view/LayoutInflater;)Leh/a;

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
    .locals 1

    .line 1
    const-string v0, "/home/hashtag"

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lf4/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/home/activity/UGCHashTagActivity;->c0()Leh/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Leh/a;

    .line 6
    .line 7
    iget-object p1, p1, Leh/a;->c:Lcom/tn/lib/view/TitleLayout;

    .line 8
    .line 9
    new-instance v0, Llk/g;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Llk/g;-><init>(Lcom/transsion/home/activity/UGCHashTagActivity;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/tn/lib/view/TitleLayout;->setLeftOnclick(Landroid/view/View$OnClickListener;)Lcom/tn/lib/view/TitleLayout;

    .line 15
    .line 16
    .line 17
    const-string v0, ""

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/tn/lib/view/TitleLayout;->setTitleText(Ljava/lang/String;)Lcom/tn/lib/view/TitleLayout;

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {p1, v0, v1, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/transsion/home/activity/UGCHashTagActivity;->d0()V

    .line 31
    .line 32
    .line 33
    return-void
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

.method public j(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/transsion/home/activity/UGCHashTagActivity;->g:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Leh/a;

    .line 8
    .line 9
    iget-object v0, v0, Leh/a;->c:Lcom/tn/lib/view/TitleLayout;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const-string p1, ""

    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0, p1}, Lcom/tn/lib/view/TitleLayout;->setTitleText(Ljava/lang/String;)Lcom/tn/lib/view/TitleLayout;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/therouter/TheRouter;->l(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lcom/transsion/baseui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public retryLoadData()V
    .locals 0

    .line 1
    return-void
.end method
