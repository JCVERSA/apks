.class public final Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;
.super Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;
.source "source.java"

# interfaces
.implements Lcom/transsion/subtitle_download/a;
.implements Llt/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/subtitle/fragment/SubtitleBaseFragment<",
        "Ljt/g;",
        ">;",
        "Lcom/transsion/subtitle_download/a;",
        "Llt/c;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u0000 u2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004:\u0001vB\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J/\u0010\u000f\u001a\u00020\u000e2\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0006J\u000f\u0010\u0018\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0006J\u0011\u0010\u0019\u001a\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0019\u0010\u001c\u001a\u00020\u000e2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u0013J\u0017\u0010\u001f\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u001f\u0010\"\u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\u00082\u0006\u0010\u001e\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008\"\u0010#J\u001f\u0010$\u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\u00082\u0006\u0010\u001e\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008$\u0010#J\u001f\u0010%\u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\u00082\u0006\u0010\u001e\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008%\u0010#J\u0019\u0010&\u001a\u00020\u000e2\u0008\u0010!\u001a\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0004\u0008&\u0010\u0013J\u000f\u0010\'\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\'\u0010\u0006J#\u0010*\u001a\u00020\u000e2\u0008\u0010(\u001a\u0004\u0018\u00010\u00082\u0008\u0010)\u001a\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0004\u0008*\u0010+J\u001f\u0010-\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010,\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008-\u0010.J\u000f\u0010/\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008/\u00100J\u0017\u00102\u001a\u00020\u000e2\u0006\u00101\u001a\u00020\nH\u0003\u00a2\u0006\u0004\u00082\u0010\u0016J\u0017\u00103\u001a\u00020\u001d2\u0006\u00101\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u00083\u00104J!\u00107\u001a\u00020\u000e2\u0006\u00101\u001a\u00020\n2\u0008\u00106\u001a\u0004\u0018\u000105H\u0002\u00a2\u0006\u0004\u00087\u00108J!\u0010;\u001a\u00020\u000e2\u0006\u00101\u001a\u00020\n2\u0008\u0010:\u001a\u0004\u0018\u000109H\u0002\u00a2\u0006\u0004\u0008;\u0010<J\u000f\u0010=\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008=\u0010\u0006J\u000f\u0010>\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008>\u0010\u0006J\u0017\u0010A\u001a\u00020\u00022\u0006\u0010@\u001a\u00020?H\u0016\u00a2\u0006\u0004\u0008A\u0010BJ!\u0010G\u001a\u00020\u000e2\u0006\u0010D\u001a\u00020C2\u0008\u0010F\u001a\u0004\u0018\u00010EH\u0016\u00a2\u0006\u0004\u0008G\u0010HJ\u000f\u0010I\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008I\u0010\u0006J!\u0010J\u001a\u00020\u000e2\u0006\u0010D\u001a\u00020C2\u0008\u0010F\u001a\u0004\u0018\u00010EH\u0016\u00a2\u0006\u0004\u0008J\u0010HJ\u000f\u0010K\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008K\u0010\u0006J\u0017\u0010M\u001a\u00020\u000e2\u0006\u0010L\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008M\u0010\u0016J\u0017\u0010N\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008N\u0010\u0013J\u001f\u0010R\u001a\u00020\u000e2\u0006\u0010O\u001a\u00020\u001d2\u0006\u0010Q\u001a\u00020PH\u0016\u00a2\u0006\u0004\u0008R\u0010SJ\u0017\u0010T\u001a\u00020\u000e2\u0006\u0010Q\u001a\u00020PH\u0016\u00a2\u0006\u0004\u0008T\u0010UJ#\u0010Z\u001a\u00020\u000e2\n\u0010X\u001a\u00060Vj\u0002`W2\u0006\u0010Y\u001a\u00020PH\u0016\u00a2\u0006\u0004\u0008Z\u0010[J\u0017\u0010^\u001a\u00020\u000e2\u0008\u0010]\u001a\u0004\u0018\u00010\\\u00a2\u0006\u0004\u0008^\u0010_R\u0018\u0010a\u001a\u0004\u0018\u00010C8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008N\u0010`R\u0018\u0010d\u001a\u0004\u0018\u00010\\8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008b\u0010cR\u001c\u0010h\u001a\u0008\u0012\u0004\u0012\u00020\u00080e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008f\u0010gR\u0018\u0010\r\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008i\u0010jR\u0018\u0010n\u001a\u0004\u0018\u00010k8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008l\u0010mR\u0016\u0010q\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008o\u0010pR\u0016\u00101\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008r\u0010pR\u0016\u0010t\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008s\u0010p\u00a8\u0006w"
    }
    d2 = {
        "Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;",
        "Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;",
        "Ljt/g;",
        "Lcom/transsion/subtitle_download/a;",
        "Llt/c;",
        "<init>",
        "()V",
        "",
        "Lht/a;",
        "list",
        "",
        "isLand",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "downloadBean",
        "",
        "K0",
        "(Ljava/util/List;ZLcom/transsion/baselib/db/download/DownloadBean;)V",
        "bean",
        "P0",
        "(Lht/a;)V",
        "isChecked",
        "A0",
        "(Z)V",
        "O0",
        "o0",
        "q0",
        "()Lht/a;",
        "have1StBean",
        "n0",
        "",
        "position",
        "G0",
        "(I)V",
        "videoSubtitleBean",
        "M0",
        "(Lht/a;I)V",
        "F0",
        "C0",
        "E0",
        "B0",
        "top",
        "bottom",
        "H0",
        "(Lht/a;Lht/a;)V",
        "item",
        "p0",
        "(ILht/a;)V",
        "t0",
        "()Z",
        "isOpenSubtitle",
        "I0",
        "r0",
        "(Z)I",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "textView",
        "N0",
        "(ZLandroidx/appcompat/widget/AppCompatTextView;)V",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "imageView",
        "L0",
        "(ZLandroidx/appcompat/widget/AppCompatImageView;)V",
        "onResume",
        "onPause",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "s0",
        "(Landroid/view/LayoutInflater;)Ljt/g;",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "lazyLoadData",
        "initView",
        "initListener",
        "hidden",
        "onHiddenChanged",
        "g",
        "progress",
        "Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;",
        "stDownloadTable",
        "onDownloading",
        "(ILcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V",
        "onComplete",
        "(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "e",
        "dbBean",
        "onFail",
        "(Ljava/lang/Exception;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V",
        "Llt/b;",
        "callback",
        "J0",
        "(Llt/b;)V",
        "Landroid/view/View;",
        "footerView",
        "h",
        "Llt/b;",
        "mCallback",
        "",
        "i",
        "Ljava/util/List;",
        "dataList",
        "j",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "Lcom/transsion/subtitle/adapter/b;",
        "k",
        "Lcom/transsion/subtitle/adapter/b;",
        "listAdapter",
        "l",
        "Z",
        "hasSubDownloading",
        "m",
        "n",
        "isOpenBilingual",
        "o",
        "a",
        "VideoSubtitle_psRelease"
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


# static fields
.field public static final o:Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment$a;


# instance fields
.field private g:Landroid/view/View;

.field private h:Llt/b;

.field private i:Ljava/util/List;

.field private j:Lcom/transsion/baselib/db/download/DownloadBean;

.field private k:Lcom/transsion/subtitle/adapter/b;

.field private l:Z

.field private m:Z

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->o:Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->i:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->m:Z

    .line 13
    .line 14
    return-void
.end method

.method private final A0(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->O0()V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->o0()V

    .line 8
    .line 9
    .line 10
    :goto_0
    return-void
.end method

.method private final B0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->k:Lcom/transsion/subtitle/adapter/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    check-cast v0, Ljava/lang/Iterable;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    move-object v2, v1

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_3

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lht/a;

    .line 30
    .line 31
    invoke-virtual {v3}, Lht/a;->f()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    const-string v4, "1st"

    .line 38
    .line 39
    invoke-virtual {v3}, Lht/a;->a()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    move-object v1, v3

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v3}, Lht/a;->f()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_0

    .line 56
    .line 57
    const-string v4, "2nd"

    .line 58
    .line 59
    invoke-virtual {v3}, Lht/a;->a()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_0

    .line 68
    .line 69
    move-object v2, v3

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    move-object v2, v1

    .line 72
    :cond_3
    invoke-direct {p0, v1, v2}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->H0(Lht/a;Lht/a;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method private final C0(Lht/a;I)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lht/a;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    const-string v2, "1st"

    .line 8
    .line 9
    const-string v3, "2nd"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-eqz v0, :cond_4

    .line 13
    .line 14
    invoke-virtual {p1, v4}, Lht/a;->l(Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v1}, Lht/a;->g(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->k:Lcom/transsion/subtitle/adapter/b;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->k:Lcom/transsion/subtitle/adapter/b;

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    check-cast p1, Ljava/lang/Iterable;

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_3

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    add-int/lit8 v0, v4, 0x1

    .line 54
    .line 55
    if-gez v4, :cond_1

    .line 56
    .line 57
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 58
    .line 59
    .line 60
    :cond_1
    check-cast p2, Lht/a;

    .line 61
    .line 62
    invoke-virtual {p2}, Lht/a;->a()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    invoke-virtual {p2, v2}, Lht/a;->g(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->k:Lcom/transsion/subtitle/adapter/b;

    .line 76
    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    invoke-virtual {v1, v4, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    move v4, v0

    .line 83
    goto :goto_0

    .line 84
    :cond_3
    invoke-direct {p0}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->B0()V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_4
    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->k:Lcom/transsion/subtitle/adapter/b;

    .line 89
    .line 90
    if-eqz v0, :cond_6

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_6

    .line 97
    .line 98
    check-cast v0, Ljava/lang/Iterable;

    .line 99
    .line 100
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    move v5, v4

    .line 105
    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    if-eqz v6, :cond_7

    .line 110
    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    check-cast v6, Lht/a;

    .line 116
    .line 117
    invoke-virtual {v6}, Lht/a;->a()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    if-nez v6, :cond_5

    .line 126
    .line 127
    add-int/lit8 v5, v5, 0x1

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_6
    move v5, v4

    .line 131
    :cond_7
    const/4 v0, 0x2

    .line 132
    if-lt v5, v0, :cond_a

    .line 133
    .line 134
    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->k:Lcom/transsion/subtitle/adapter/b;

    .line 135
    .line 136
    if-eqz v0, :cond_a

    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    if-eqz v0, :cond_a

    .line 143
    .line 144
    check-cast v0, Ljava/lang/Iterable;

    .line 145
    .line 146
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    move v5, v4

    .line 151
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    if-eqz v6, :cond_a

    .line 156
    .line 157
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    add-int/lit8 v7, v5, 0x1

    .line 162
    .line 163
    if-gez v5, :cond_8

    .line 164
    .line 165
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 166
    .line 167
    .line 168
    :cond_8
    check-cast v6, Lht/a;

    .line 169
    .line 170
    invoke-virtual {v6}, Lht/a;->a()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    invoke-static {v8, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 175
    .line 176
    .line 177
    move-result v8

    .line 178
    if-eqz v8, :cond_9

    .line 179
    .line 180
    invoke-virtual {v6, v4}, Lht/a;->l(Z)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v6, v1}, Lht/a;->g(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget-object v8, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->k:Lcom/transsion/subtitle/adapter/b;

    .line 187
    .line 188
    if-eqz v8, :cond_9

    .line 189
    .line 190
    invoke-virtual {v8, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    :cond_9
    move v5, v7

    .line 194
    goto :goto_2

    .line 195
    :cond_a
    const/4 v0, 0x1

    .line 196
    invoke-virtual {p1, v0}, Lht/a;->l(Z)V

    .line 197
    .line 198
    .line 199
    iget-object v1, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->k:Lcom/transsion/subtitle/adapter/b;

    .line 200
    .line 201
    if-eqz v1, :cond_c

    .line 202
    .line 203
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    if-eqz v1, :cond_c

    .line 208
    .line 209
    check-cast v1, Ljava/lang/Iterable;

    .line 210
    .line 211
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    :cond_b
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 216
    .line 217
    .line 218
    move-result v5

    .line 219
    if-eqz v5, :cond_c

    .line 220
    .line 221
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    check-cast v5, Lht/a;

    .line 226
    .line 227
    invoke-virtual {v5}, Lht/a;->a()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 232
    .line 233
    .line 234
    move-result v5

    .line 235
    if-eqz v5, :cond_b

    .line 236
    .line 237
    move v4, v0

    .line 238
    goto :goto_3

    .line 239
    :cond_c
    if-eqz v4, :cond_d

    .line 240
    .line 241
    invoke-virtual {p1, v3}, Lht/a;->g(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    goto :goto_4

    .line 245
    :cond_d
    invoke-virtual {p1, v2}, Lht/a;->g(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    :goto_4
    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->k:Lcom/transsion/subtitle/adapter/b;

    .line 249
    .line 250
    if-eqz v0, :cond_e

    .line 251
    .line 252
    invoke-virtual {v0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    :cond_e
    invoke-direct {p0}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->B0()V

    .line 256
    .line 257
    .line 258
    return-void
.end method

.method private static final D0(Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->k:Lcom/transsion/subtitle/adapter/b;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    check-cast v0, Ljava/lang/Iterable;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    move-object v3, v1

    .line 29
    check-cast v3, Lht/a;

    .line 30
    .line 31
    invoke-virtual {v3}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move-object v1, v2

    .line 51
    :goto_0
    check-cast v1, Lht/a;

    .line 52
    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    invoke-virtual {v1, p1}, Lht/a;->h(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    .line 56
    .line 57
    .line 58
    sget-object v0, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 59
    .line 60
    const-class v3, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;

    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    iget-object v4, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->j:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 67
    .line 68
    if-eqz v4, :cond_2

    .line 69
    .line 70
    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalTitleName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    move-object v4, v2

    .line 76
    :goto_1
    iget-object v5, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->j:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 77
    .line 78
    if-eqz v5, :cond_3

    .line 79
    .line 80
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    :cond_3
    invoke-virtual {v1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-virtual {v1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-virtual {v6}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getStatus()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    new-instance v7, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v3, " --> onFail() --> \u5185\u7f6e\u5b57\u5e55\u70b9\u51fb\u4e0b\u8f7d\u5931\u8d25TnT\uff0cname = "

    .line 113
    .line 114
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v3, ", videoResourceId = "

    .line 121
    .line 122
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v2, ",\" + \" download subtitleName = "

    .line 129
    .line 130
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v2, ", lan = "

    .line 137
    .line 138
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v2, "\uff0c status:"

    .line 145
    .line 146
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string p1, "~"

    .line 153
    .line 154
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {v0, p1}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-direct {p0, v1}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->P0(Lht/a;)V

    .line 165
    .line 166
    .line 167
    :cond_4
    return-void
.end method

.method private final E0(Lht/a;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->k:Lcom/transsion/subtitle/adapter/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    check-cast v0, Ljava/lang/Iterable;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v2, 0x0

    .line 19
    move v3, v2

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_4

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    add-int/lit8 v5, v3, 0x1

    .line 31
    .line 32
    if-gez v3, :cond_0

    .line 33
    .line 34
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 35
    .line 36
    .line 37
    :cond_0
    check-cast v4, Lht/a;

    .line 38
    .line 39
    invoke-virtual {v4}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-virtual {v6}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    if-eqz v7, :cond_1

    .line 54
    .line 55
    invoke-virtual {v7}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move-object v7, v1

    .line 61
    :goto_1
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-eqz v6, :cond_2

    .line 66
    .line 67
    const/4 v6, 0x1

    .line 68
    invoke-virtual {v4, v6}, Lht/a;->l(Z)V

    .line 69
    .line 70
    .line 71
    iget-object v6, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->k:Lcom/transsion/subtitle/adapter/b;

    .line 72
    .line 73
    if-eqz v6, :cond_3

    .line 74
    .line 75
    invoke-virtual {v6, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_2
    invoke-virtual {v4, v2}, Lht/a;->l(Z)V

    .line 80
    .line 81
    .line 82
    iget-object v6, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->k:Lcom/transsion/subtitle/adapter/b;

    .line 83
    .line 84
    if-eqz v6, :cond_3

    .line 85
    .line 86
    invoke-virtual {v6, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    :cond_3
    :goto_2
    move v3, v5

    .line 90
    goto :goto_0

    .line 91
    :cond_4
    invoke-direct {p0, p1, v1}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->H0(Lht/a;Lht/a;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method private final F0(Lht/a;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lht/a;->f()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 8
    .line 9
    const-class p2, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p2, " --> setSubtitle() --> \u5355\u5b57\u5e55 --> \u5df2\u7ecf\u9009\u4e2d\u7684\u5c31\u4e0d\u5728\u91cd\u590d\u8bbe\u7f6e\u4e86"

    .line 24
    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p1, p2}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->E0(Lht/a;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private final G0(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->m:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->i:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lht/a;

    .line 13
    .line 14
    invoke-virtual {v0}, Lht/a;->d()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-direct {p0, v0, p1}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->M0(Lht/a;I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->p0(ILht/a;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method private final H0(Lht/a;Lht/a;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    if-eqz p2, :cond_3

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->h:Llt/b;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    sget v2, Lcom/transsion/subtitle/R$string;->subtitle_switch_toast:I

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    :cond_1
    const-string v1, ""

    .line 24
    .line 25
    :cond_2
    invoke-interface {v0, v1}, Llt/b;->c(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_3
    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->h:Llt/b;

    .line 29
    .line 30
    if-eqz v0, :cond_4

    .line 31
    .line 32
    iget-boolean v1, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->n:Z

    .line 33
    .line 34
    invoke-interface {v0, p1, p2, v1}, Llt/b;->e(Lht/a;Lht/a;Z)V

    .line 35
    .line 36
    .line 37
    :cond_4
    return-void
.end method

.method private final I0(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljt/g;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, v0, Ljt/g;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->N0(ZLandroidx/appcompat/widget/AppCompatTextView;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljt/g;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, v0, Ljt/g;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move-object v0, v1

    .line 29
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->N0(ZLandroidx/appcompat/widget/AppCompatTextView;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljt/g;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object v0, v0, Ljt/g;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    move-object v0, v1

    .line 44
    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->N0(ZLandroidx/appcompat/widget/AppCompatTextView;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Ljt/g;

    .line 52
    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    iget-object v0, v0, Ljt/g;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_3
    move-object v0, v1

    .line 59
    :goto_3
    invoke-direct {p0, p1, v0}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->L0(ZLandroidx/appcompat/widget/AppCompatImageView;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Ljt/g;

    .line 67
    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    iget-object v1, v0, Ljt/g;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 71
    .line 72
    :cond_4
    invoke-direct {p0, p1, v1}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->L0(ZLandroidx/appcompat/widget/AppCompatImageView;)V

    .line 73
    .line 74
    .line 75
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sget v1, Lcom/tn/lib/widget/R$color;->brand_new_gradient_start:I

    .line 80
    .line 81
    invoke-static {v0, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    sget v2, Lcom/tn/lib/widget/R$color;->brand_new_gradient_end:I

    .line 90
    .line 91
    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    sget v3, Lcom/tn/lib/widget/R$color;->common_white:I

    .line 100
    .line 101
    invoke-static {v2, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-nez p1, :cond_6

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Ljt/g;

    .line 112
    .line 113
    if-eqz v0, :cond_5

    .line 114
    .line 115
    iget-object v0, v0, Ljt/g;->g:Lcom/tn/lib/view/SwitchButton;

    .line 116
    .line 117
    if-eqz v0, :cond_5

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/tn/lib/view/SwitchButton;->isChecked()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    const/4 v1, 0x1

    .line 124
    if-ne v0, v1, :cond_5

    .line 125
    .line 126
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    sget v1, Lcom/tn/lib/widget/R$color;->brand_new_gradient_start_50:I

    .line 131
    .line 132
    invoke-static {v0, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    sget v2, Lcom/tn/lib/widget/R$color;->brand_new_gradient_end_50:I

    .line 141
    .line 142
    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    sget v3, Lcom/tn/lib/widget/R$color;->white_50:I

    .line 151
    .line 152
    invoke-static {v2, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    goto :goto_4

    .line 157
    :cond_5
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    sget v1, Lcom/tn/lib/widget/R$color;->brand_new_gradient_start:I

    .line 162
    .line 163
    invoke-static {v0, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    sget v2, Lcom/tn/lib/widget/R$color;->brand_new_gradient_end:I

    .line 172
    .line 173
    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    sget v3, Lcom/tn/lib/widget/R$color;->white_50:I

    .line 182
    .line 183
    invoke-static {v2, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    check-cast v3, Ljt/g;

    .line 192
    .line 193
    if-eqz v3, :cond_7

    .line 194
    .line 195
    iget-object v3, v3, Ljt/g;->g:Lcom/tn/lib/view/SwitchButton;

    .line 196
    .line 197
    if-eqz v3, :cond_7

    .line 198
    .line 199
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {v3, v0, v1, v2}, Lcom/tn/lib/view/SwitchButton;->setGradientColors(IILjava/lang/Integer;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v3, p1}, Lcom/tn/lib/view/SwitchButton;->setEnable(Z)V

    .line 207
    .line 208
    .line 209
    :cond_7
    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->k:Lcom/transsion/subtitle/adapter/b;

    .line 210
    .line 211
    if-eqz v0, :cond_8

    .line 212
    .line 213
    invoke-virtual {v0, p1}, Lcom/transsion/subtitle/adapter/b;->G1(Z)V

    .line 214
    .line 215
    .line 216
    :cond_8
    if-eqz p1, :cond_a

    .line 217
    .line 218
    iget-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->g:Landroid/view/View;

    .line 219
    .line 220
    if-eqz p1, :cond_9

    .line 221
    .line 222
    sget v0, Lcom/transsion/subtitle/R$id;->tvText:I

    .line 223
    .line 224
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    check-cast p1, Landroid/widget/TextView;

    .line 229
    .line 230
    if-eqz p1, :cond_9

    .line 231
    .line 232
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    sget v1, Lcom/tn/lib/widget/R$color;->white:I

    .line 237
    .line 238
    invoke-static {v0, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 243
    .line 244
    .line 245
    :cond_9
    iget-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->g:Landroid/view/View;

    .line 246
    .line 247
    if-eqz p1, :cond_c

    .line 248
    .line 249
    sget v0, Lcom/transsion/subtitle/R$id;->ivImage:I

    .line 250
    .line 251
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    check-cast p1, Landroid/widget/ImageView;

    .line 256
    .line 257
    if-eqz p1, :cond_c

    .line 258
    .line 259
    sget v0, Lcom/transsion/subtitle/R$drawable;->subtitle_arrow_left_white:I

    .line 260
    .line 261
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 262
    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_a
    iget-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->g:Landroid/view/View;

    .line 266
    .line 267
    if-eqz p1, :cond_b

    .line 268
    .line 269
    sget v0, Lcom/transsion/subtitle/R$id;->tvText:I

    .line 270
    .line 271
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    check-cast p1, Landroid/widget/TextView;

    .line 276
    .line 277
    if-eqz p1, :cond_b

    .line 278
    .line 279
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    sget v1, Lcom/tn/lib/widget/R$color;->white_40:I

    .line 284
    .line 285
    invoke-static {v0, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 290
    .line 291
    .line 292
    :cond_b
    iget-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->g:Landroid/view/View;

    .line 293
    .line 294
    if-eqz p1, :cond_c

    .line 295
    .line 296
    sget v0, Lcom/transsion/subtitle/R$id;->ivImage:I

    .line 297
    .line 298
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    check-cast p1, Landroid/widget/ImageView;

    .line 303
    .line 304
    if-eqz p1, :cond_c

    .line 305
    .line 306
    sget v0, Lcom/transsion/subtitle/R$drawable;->subtitle_arrow_left_white_2:I

    .line 307
    .line 308
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 309
    .line 310
    .line 311
    :cond_c
    :goto_5
    return-void
.end method

.method private final K0(Ljava/util/List;ZLcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 4

    .line 1
    iput-object p3, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->j:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    iget-object p3, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->i:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object p3, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->i:Ljava/util/List;

    .line 9
    .line 10
    move-object v0, p1

    .line 11
    check-cast v0, Ljava/util/Collection;

    .line 12
    .line 13
    invoke-interface {p3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    .line 15
    .line 16
    iget-object p3, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->i:Ljava/util/List;

    .line 17
    .line 18
    check-cast p3, Ljava/util/Collection;

    .line 19
    .line 20
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    const-string v0, ""

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    :goto_0
    if-ge v1, p3, :cond_1

    .line 28
    .line 29
    iget-object v2, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->i:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lht/a;

    .line 36
    .line 37
    invoke-virtual {v2}, Lht/a;->f()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    invoke-virtual {v2}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v3, "\u83b7\u53d6\u9009\u4e2d\u7684\u90a3\u4e2a -- index = "

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v3, " -- name = "

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    sget-object p3, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 80
    .line 81
    const-class v1, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v1, " --> setData() --> isLand = "

    .line 100
    .line 101
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p2, " --> list = "

    .line 108
    .line 109
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string p1, " --> tag = "

    .line 116
    .line 117
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p3, p1}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method private final L0(ZLandroidx/appcompat/widget/AppCompatImageView;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->r0(Z)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {v0, p1}, La1/a;->n(Landroid/graphics/drawable/Drawable;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private final M0(Lht/a;I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->C0(Lht/a;I)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->F0(Lht/a;I)V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method private final N0(ZLandroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->r0(Z)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private final O0()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->k:Lcom/transsion/subtitle/adapter/b;

    .line 2
    .line 3
    const-string v1, "1st"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    check-cast v0, Ljava/lang/Iterable;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    move v5, v3

    .line 23
    move v6, v5

    .line 24
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    if-eqz v7, :cond_3

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    add-int/lit8 v8, v6, 0x1

    .line 35
    .line 36
    if-gez v6, :cond_0

    .line 37
    .line 38
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 39
    .line 40
    .line 41
    :cond_0
    check-cast v7, Lht/a;

    .line 42
    .line 43
    invoke-virtual {v7}, Lht/a;->f()Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-eqz v6, :cond_1

    .line 48
    .line 49
    invoke-virtual {v7, v1}, Lht/a;->g(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    move v5, v2

    .line 53
    move-object v4, v7

    .line 54
    :cond_1
    move v6, v8

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    move v5, v3

    .line 57
    :cond_3
    if-nez v5, :cond_6

    .line 58
    .line 59
    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->k:Lcom/transsion/subtitle/adapter/b;

    .line 60
    .line 61
    if-eqz v0, :cond_6

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-eqz v0, :cond_6

    .line 68
    .line 69
    check-cast v0, Ljava/lang/Iterable;

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-eqz v6, :cond_6

    .line 80
    .line 81
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    add-int/lit8 v7, v3, 0x1

    .line 86
    .line 87
    if-gez v3, :cond_4

    .line 88
    .line 89
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 90
    .line 91
    .line 92
    :cond_4
    check-cast v6, Lht/a;

    .line 93
    .line 94
    invoke-virtual {v6}, Lht/a;->d()Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_5

    .line 99
    .line 100
    if-nez v5, :cond_5

    .line 101
    .line 102
    invoke-virtual {v6, v2}, Lht/a;->l(Z)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v6, v1}, Lht/a;->g(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    move v5, v2

    .line 109
    move-object v4, v6

    .line 110
    :cond_5
    move v3, v7

    .line 111
    goto :goto_1

    .line 112
    :cond_6
    invoke-direct {p0, v4}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->n0(Lht/a;)V

    .line 113
    .line 114
    .line 115
    invoke-direct {p0}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->B0()V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method private final P0(Lht/a;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->k:Lcom/transsion/subtitle/adapter/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ltz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    sget-object v1, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 22
    .line 23
    const-class v2, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getStatus()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {p1}, Lht/a;->f()Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    new-instance v6, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v2, " --> updateDownloadStatus() --> updateDownloadStatus index:"

    .line 58
    .line 59
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v2, ", status:"

    .line 66
    .line 67
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v2, ",name:"

    .line 74
    .line 75
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v2, ",isSelect:"

    .line 82
    .line 83
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v1, v2}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->k:Lcom/transsion/subtitle/adapter/b;

    .line 97
    .line 98
    if-eqz v1, :cond_0

    .line 99
    .line 100
    invoke-virtual {v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :cond_0
    return-void
.end method

.method public static synthetic f0(Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->y0(Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g0(Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->z0(Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h0(Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;Lcom/tn/lib/view/SwitchButton;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->u0(Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;Lcom/tn/lib/view/SwitchButton;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i0(Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->D0(Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j0(Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->w0(Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k0(Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;Lcom/tn/lib/view/SwitchButton;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->x0(Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;Lcom/tn/lib/view/SwitchButton;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l0(Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->v0(Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic m0(Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;Ljava/util/List;ZLcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->K0(Ljava/util/List;ZLcom/transsion/baselib/db/download/DownloadBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final n0(Lht/a;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->q0()Lht/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object p1, v1

    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-object v2, v1

    .line 34
    :goto_1
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    const/4 v2, 0x0

    .line 39
    const-class v3, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;

    .line 40
    .line 41
    if-nez p1, :cond_6

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    goto/16 :goto_3

    .line 46
    .line 47
    :cond_2
    invoke-virtual {v0}, Lht/a;->d()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    invoke-virtual {v0}, Lht/a;->f()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_a

    .line 58
    .line 59
    const-string p1, "2nd"

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Lht/a;->g(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/4 p1, 0x1

    .line 65
    invoke-virtual {v0, p1}, Lht/a;->l(Z)V

    .line 66
    .line 67
    .line 68
    sget-object p1, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v1, " --> autoShowNdSubtitle() --> 2nd \u5df2\u4e0b\u8f7d\uff0c\u81ea\u52a8\u8bbe\u7f6e --> name = "

    .line 91
    .line 92
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {p1, v0}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_6

    .line 106
    .line 107
    :cond_3
    iget-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->k:Lcom/transsion/subtitle/adapter/b;

    .line 108
    .line 109
    if-eqz p1, :cond_a

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    if-eqz p1, :cond_a

    .line 116
    .line 117
    check-cast p1, Ljava/lang/Iterable;

    .line 118
    .line 119
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_a

    .line 128
    .line 129
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    add-int/lit8 v4, v2, 0x1

    .line 134
    .line 135
    if-gez v2, :cond_4

    .line 136
    .line 137
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 138
    .line 139
    .line 140
    :cond_4
    check-cast v1, Lht/a;

    .line 141
    .line 142
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_5

    .line 147
    .line 148
    sget-object p1, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 149
    .line 150
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v0}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-virtual {v3}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v1, " --> autoShowNdSubtitle() --> \u6ca1\u6709\u4e0b\u8f7d\uff0c\u81ea\u52a8\u4e0b\u8f7d --> index = "

    .line 171
    .line 172
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string v1, " --> name = "

    .line 179
    .line 180
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {p1, v1}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-direct {p0, v2, v0}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->p0(ILht/a;)V

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :cond_5
    move v2, v4

    .line 198
    goto :goto_2

    .line 199
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->k:Lcom/transsion/subtitle/adapter/b;

    .line 200
    .line 201
    if-eqz p1, :cond_a

    .line 202
    .line 203
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    if-eqz p1, :cond_a

    .line 208
    .line 209
    check-cast p1, Ljava/lang/Iterable;

    .line 210
    .line 211
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    if-eqz v4, :cond_a

    .line 220
    .line 221
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    add-int/lit8 v5, v2, 0x1

    .line 226
    .line 227
    if-gez v2, :cond_7

    .line 228
    .line 229
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 230
    .line 231
    .line 232
    :cond_7
    check-cast v4, Lht/a;

    .line 233
    .line 234
    invoke-virtual {v4}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 235
    .line 236
    .line 237
    move-result-object v6

    .line 238
    invoke-virtual {v6}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    if-eqz v0, :cond_8

    .line 243
    .line 244
    invoke-virtual {v0}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 245
    .line 246
    .line 247
    move-result-object v7

    .line 248
    if-eqz v7, :cond_8

    .line 249
    .line 250
    invoke-virtual {v7}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v7

    .line 254
    goto :goto_5

    .line 255
    :cond_8
    move-object v7, v1

    .line 256
    :goto_5
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 257
    .line 258
    .line 259
    move-result v6

    .line 260
    if-nez v6, :cond_9

    .line 261
    .line 262
    invoke-virtual {v4}, Lht/a;->f()Z

    .line 263
    .line 264
    .line 265
    move-result v6

    .line 266
    if-nez v6, :cond_9

    .line 267
    .line 268
    invoke-direct {p0, v2, v4}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->p0(ILht/a;)V

    .line 269
    .line 270
    .line 271
    sget-object p1, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 272
    .line 273
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const-string v0, " --> autoShowNdSubtitle() --> \u5982\u679c\u6309\u7167\u89c4\u5219\u83b7\u53d6\u5230\u76842nd\u548c1st\u662f\u540c\u4e00\u4e2a\uff0c\u90a3\u5c31\u9ed8\u8ba4\u4e0b\u8f7d\u4e00\u4e2a\u4f5c\u4e3a2nd"

    .line 286
    .line 287
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-virtual {p1, v0}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    return-void

    .line 298
    :cond_9
    move v2, v5

    .line 299
    goto :goto_4

    .line 300
    :cond_a
    :goto_6
    return-void
.end method

.method private final o0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->k:Lcom/transsion/subtitle/adapter/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    check-cast v0, Ljava/lang/Iterable;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lht/a;

    .line 29
    .line 30
    invoke-virtual {v2}, Lht/a;->f()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    const-string v3, "2nd"

    .line 37
    .line 38
    invoke-virtual {v2}, Lht/a;->a()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    const-string v4, ""

    .line 47
    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-virtual {v2, v3}, Lht/a;->l(Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v4}, Lht/a;->g(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    if-nez v1, :cond_0

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const-string v3, "1st"

    .line 61
    .line 62
    invoke-virtual {v2}, Lht/a;->a()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_0

    .line 71
    .line 72
    const/4 v1, 0x1

    .line 73
    invoke-virtual {v2, v1}, Lht/a;->l(Z)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v4}, Lht/a;->g(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :goto_1
    move-object v1, v2

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-direct {p0, v1}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->E0(Lht/a;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method private final p0(ILht/a;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->l:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 6
    .line 7
    sget p2, Lcom/transsion/subtitle/R$string;->subtitle_is_downloading:I

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 14
    .line 15
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 22
    .line 23
    sget p2, Lcom/transsion/baseui/R$string;->base_network_fail:I

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-virtual {p2}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x2

    .line 34
    invoke-virtual {v0, v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->setStatus(I)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->l:Z

    .line 39
    .line 40
    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->k:Lcom/transsion/subtitle/adapter/b;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    sget-object p1, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 48
    .line 49
    const-class v0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->j:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 56
    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalTitleName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    const/4 v1, 0x0

    .line 65
    :goto_0
    invoke-virtual {p2}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getType()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-virtual {p2}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v3}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getSubtitleName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {p2}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getResourceId()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    new-instance v5, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v0, " --> downloadSubtitle() --> \u5185\u7f6e\u5b57\u5e55\u5217\u8868\uff0c\u4e0b\u8f7d\u5b57\u5e55\uff0cname = "

    .line 98
    .line 99
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v0, ", subtype = "

    .line 106
    .line 107
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v0, ",\" + \" download subtitleName = "

    .line 114
    .line 115
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v0, ", subResourceId = "

    .line 122
    .line 123
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v0, "~"

    .line 130
    .line 131
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {p1, v0}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    sget-object p1, Lcom/transsion/subtitle/h;->a:Lcom/transsion/subtitle/h$a;

    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-interface {p1, p2}, Lcom/transsion/subtitle/h;->h(Lht/a;)V

    .line 148
    .line 149
    .line 150
    return-void
.end method

.method private final q0()Lht/a;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->k:Lcom/transsion/subtitle/adapter/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_6

    .line 11
    .line 12
    check-cast v0, Ljava/lang/Iterable;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v2, 0x0

    .line 19
    move-object v3, v1

    .line 20
    move-object v4, v3

    .line 21
    move-object v5, v4

    .line 22
    move-object v7, v5

    .line 23
    move v6, v2

    .line 24
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v8

    .line 28
    if-eqz v8, :cond_7

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    add-int/lit8 v9, v6, 0x1

    .line 35
    .line 36
    if-gez v6, :cond_0

    .line 37
    .line 38
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 39
    .line 40
    .line 41
    :cond_0
    check-cast v8, Lht/a;

    .line 42
    .line 43
    invoke-virtual {v8}, Lht/a;->f()Z

    .line 44
    .line 45
    .line 46
    move-result v10

    .line 47
    if-nez v10, :cond_5

    .line 48
    .line 49
    invoke-virtual {v8}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    invoke-virtual {v10}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    const-string v11, "en"

    .line 58
    .line 59
    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    if-eqz v10, :cond_1

    .line 64
    .line 65
    move-object v3, v8

    .line 66
    :cond_1
    sget-object v10, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 67
    .line 68
    invoke-virtual {v10}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    const-string v11, "k_language_short_name"

    .line 73
    .line 74
    invoke-virtual {v10, v11, v1}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    invoke-virtual {v8}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 79
    .line 80
    .line 81
    move-result-object v11

    .line 82
    invoke-virtual {v11}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v11

    .line 86
    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v10

    .line 90
    if-eqz v10, :cond_2

    .line 91
    .line 92
    move-object v4, v8

    .line 93
    :cond_2
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 94
    .line 95
    const/16 v11, 0x18

    .line 96
    .line 97
    if-lt v10, v11, :cond_3

    .line 98
    .line 99
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 104
    .line 105
    .line 106
    move-result-object v10

    .line 107
    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    invoke-static {v10}, Landroidx/appcompat/app/h;->a(Landroid/content/res/Configuration;)Landroid/os/LocaleList;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    invoke-static {v10, v2}, Ln0/d;->a(Landroid/os/LocaleList;I)Ljava/util/Locale;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    goto :goto_1

    .line 120
    :cond_3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 121
    .line 122
    .line 123
    move-result-object v10

    .line 124
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 129
    .line 130
    .line 131
    move-result-object v10

    .line 132
    iget-object v10, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 133
    .line 134
    :goto_1
    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    invoke-virtual {v8}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 139
    .line 140
    .line 141
    move-result-object v11

    .line 142
    invoke-virtual {v11}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v11

    .line 146
    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 147
    .line 148
    .line 149
    move-result v10

    .line 150
    if-eqz v10, :cond_4

    .line 151
    .line 152
    move-object v5, v8

    .line 153
    :cond_4
    if-nez v6, :cond_5

    .line 154
    .line 155
    move-object v7, v8

    .line 156
    :cond_5
    move v6, v9

    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :cond_6
    move-object v3, v1

    .line 160
    move-object v4, v3

    .line 161
    move-object v5, v4

    .line 162
    move-object v7, v5

    .line 163
    :cond_7
    if-eqz v3, :cond_8

    .line 164
    .line 165
    move-object v1, v3

    .line 166
    goto :goto_2

    .line 167
    :cond_8
    if-eqz v4, :cond_9

    .line 168
    .line 169
    move-object v1, v4

    .line 170
    goto :goto_2

    .line 171
    :cond_9
    if-eqz v5, :cond_a

    .line 172
    .line 173
    move-object v1, v5

    .line 174
    goto :goto_2

    .line 175
    :cond_a
    if-eqz v7, :cond_b

    .line 176
    .line 177
    move-object v1, v7

    .line 178
    :cond_b
    :goto_2
    return-object v1
.end method

.method private final r0(Z)I
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget v0, Lcom/tn/lib/widget/R$color;->white:I

    .line 8
    .line 9
    invoke-static {p1, v0}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    sget v0, Lcom/tn/lib/widget/R$color;->white_40:I

    .line 19
    .line 20
    invoke-static {p1, v0}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    :goto_0
    return p1
.end method

.method private final t0()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->k:Lcom/transsion/subtitle/adapter/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    check-cast v0, Ljava/lang/Iterable;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lht/a;

    .line 29
    .line 30
    invoke-virtual {v2}, Lht/a;->f()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    if-nez v1, :cond_4

    .line 39
    .line 40
    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->h:Llt/b;

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    sget v3, Lcom/transsion/subtitle/R$string;->subtitle_please_select_subtitles:I

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    if-nez v2, :cond_3

    .line 57
    .line 58
    :cond_2
    const-string v2, ""

    .line 59
    .line 60
    :cond_3
    invoke-interface {v0, v2}, Llt/b;->c(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_4
    return v1
.end method

.method private static final u0(Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;Lcom/tn/lib/view/SwitchButton;Z)V
    .locals 0

    .line 1
    iput-boolean p2, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->n:Z

    .line 2
    .line 3
    iget-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->h:Llt/b;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1, p2}, Llt/b;->f(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-direct {p0, p2}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->A0(Z)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->k:Lcom/transsion/subtitle/adapter/b;

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, p2}, Lcom/transsion/subtitle/adapter/b;->F1(Z)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method private static final v0(Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->m:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->t0()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->b0()Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;->h()Landroidx/lifecycle/b0;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    const-string p1, "SUBTITLE_OPTIONS"

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method private static final w0(Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->m:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->t0()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->b0()Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;->h()Landroidx/lifecycle/b0;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    const-string p1, "SUBTITLE_SYNC_ADJUST"

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method private static final x0(Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;Lcom/tn/lib/view/SwitchButton;Z)V
    .locals 0

    .line 1
    iput-boolean p2, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->m:Z

    .line 2
    .line 3
    iget-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->h:Llt/b;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1, p2}, Llt/b;->b(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-direct {p0, p2}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->I0(Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static final y0(Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    const-string v0, "<unused var>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p3}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->G0(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private static final z0(Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->m:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->b0()Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;->n()Landroidx/lifecycle/b0;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    sget-object v0, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->c:Lcom/transsion/subtitle/helper/SubtitleSearchHelper$a;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/transsion/subtitle/helper/SubtitleSearchHelper$a;->a()Lcom/transsion/subtitle/helper/SubtitleSearchHelper;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->j:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/transsion/subtitle/helper/SubtitleSearchHelper;->e(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->b0()Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    if-eqz p0, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;->h()Landroidx/lifecycle/b0;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    if-eqz p0, :cond_2

    .line 44
    .line 45
    const-string p1, "DOWNLOAD_SUBTITLE"

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    return-void
.end method


# virtual methods
.method public final J0(Llt/b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->h:Llt/b;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Llt/b;->k()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    :goto_0
    iput-boolean v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->m:Z

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-interface {p1}, Llt/b;->g()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    :goto_1
    iput-boolean p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->n:Z

    .line 22
    .line 23
    return-void
.end method

.method public K(ZLcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Llt/c$a;->a(Llt/c;ZLcom/transsion/baselib/db/download/DownloadBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public g(Lht/a;)V
    .locals 1

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lf4/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->s0(Landroid/view/LayoutInflater;)Ljt/g;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public initListener()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->initListener()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljt/g;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Ljt/g;->d:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v1, Lcom/transsion/subtitle/fragment/t;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/transsion/subtitle/fragment/t;-><init>(Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljt/g;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, v0, Ljt/g;->e:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    new-instance v1, Lcom/transsion/subtitle/fragment/u;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Lcom/transsion/subtitle/fragment/u;-><init>(Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Ljt/g;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    iget-object v0, v0, Ljt/g;->h:Lcom/tn/lib/view/SwitchButton;

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    iget-boolean v1, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->m:Z

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/SwitchButton;->setChecked(Z)V

    .line 59
    .line 60
    .line 61
    iget-boolean v1, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->m:Z

    .line 62
    .line 63
    invoke-direct {p0, v1}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->I0(Z)V

    .line 64
    .line 65
    .line 66
    new-instance v1, Lcom/transsion/subtitle/fragment/v;

    .line 67
    .line 68
    invoke-direct {v1, p0}, Lcom/transsion/subtitle/fragment/v;-><init>(Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/SwitchButton;->setOnCheckedChangeListener(Lcom/tn/lib/view/SwitchButton$d;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Ljt/g;

    .line 79
    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    iget-object v0, v0, Ljt/g;->g:Lcom/tn/lib/view/SwitchButton;

    .line 83
    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    iget-boolean v1, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->n:Z

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/SwitchButton;->setChecked(Z)V

    .line 89
    .line 90
    .line 91
    new-instance v1, Lcom/transsion/subtitle/fragment/w;

    .line 92
    .line 93
    invoke-direct {v1, p0}, Lcom/transsion/subtitle/fragment/w;-><init>(Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/SwitchButton;->setOnCheckedChangeListener(Lcom/tn/lib/view/SwitchButton$d;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    return-void
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 1
    const-string p2, "view"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/transsion/subtitle/adapter/b;

    .line 7
    .line 8
    iget-object p2, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->i:Ljava/util/List;

    .line 9
    .line 10
    invoke-direct {p1, p2}, Lcom/transsion/subtitle/adapter/b;-><init>(Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    new-instance p2, Lcom/transsion/subtitle/fragment/x;

    .line 14
    .line 15
    invoke-direct {p2, p0}, Lcom/transsion/subtitle/fragment/x;-><init>(Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 19
    .line 20
    .line 21
    iget-boolean p2, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->m:Z

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lcom/transsion/subtitle/adapter/b;->G1(Z)V

    .line 24
    .line 25
    .line 26
    iget-boolean p2, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->n:Z

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Lcom/transsion/subtitle/adapter/b;->F1(Z)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->k:Lcom/transsion/subtitle/adapter/b;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    sget p2, Lcom/transsion/subtitle/R$layout;->footer_download_other_subtitle_layout:I

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->g:Landroid/view/View;

    .line 49
    .line 50
    if-eqz p1, :cond_0

    .line 51
    .line 52
    new-instance p2, Lcom/transsion/subtitle/fragment/y;

    .line 53
    .line 54
    invoke-direct {p2, p0}, Lcom/transsion/subtitle/fragment/y;-><init>(Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    iget-object v1, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->g:Landroid/view/View;

    .line 61
    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->k:Lcom/transsion/subtitle/adapter/b;

    .line 65
    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    const/4 v4, 0x6

    .line 69
    const/4 v5, 0x0

    .line 70
    const/4 v2, 0x0

    .line 71
    const/4 v3, 0x0

    .line 72
    invoke-static/range {v0 .. v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->u(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IIILjava/lang/Object;)I

    .line 73
    .line 74
    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Ljt/g;

    .line 80
    .line 81
    if-eqz p1, :cond_2

    .line 82
    .line 83
    iget-object p1, p1, Ljt/g;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 84
    .line 85
    if-eqz p1, :cond_2

    .line 86
    .line 87
    new-instance p2, Lcom/tn/lib/view/layoutmanager/NpaLinearLayoutManager;

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-direct {p2, v0}, Lcom/tn/lib/view/layoutmanager/NpaLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 97
    .line 98
    .line 99
    iget-object p2, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->k:Lcom/transsion/subtitle/adapter/b;

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    return-void
.end method

.method public lazyLoadData()V
    .locals 0

    .line 1
    return-void
.end method

.method public onComplete(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 6

    .line 1
    const-string v0, "stDownloadTable"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->l:Z

    .line 8
    .line 9
    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v3, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment$onComplete$1;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-direct {v3, p0, p1}, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment$onComplete$1;-><init>(Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;Lkotlin/coroutines/Continuation;)V

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x3

    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onDownloading(ILcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    .line 1
    const-string p1, "stDownloadTable"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onFail(Ljava/lang/Exception;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 1

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "dbBean"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->l:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    new-instance v0, Lcom/transsion/subtitle/fragment/z;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/transsion/subtitle/fragment/z;-><init>(Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->h:Llt/b;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-interface {p1}, Llt/b;->j()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    sget-object v0, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    .line 17
    .line 18
    const-class v1, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iget-object v3, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->k:Lcom/transsion/subtitle/adapter/b;

    .line 29
    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 v3, 0x0

    .line 48
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, " --> onHiddenChanged(hidden = false) --> \u5237\u65b0\u754c\u9762 --> newSize = "

    .line 57
    .line 58
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, " --> oldSize = "

    .line 65
    .line 66
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->i:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->i:Ljava/util/List;

    .line 85
    .line 86
    check-cast p1, Ljava/util/Collection;

    .line 87
    .line 88
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->k:Lcom/transsion/subtitle/adapter/b;

    .line 92
    .line 93
    if-eqz p1, :cond_1

    .line 94
    .line 95
    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSelectListFragment;->i:Ljava/util/List;

    .line 96
    .line 97
    check-cast v0, Ljava/util/Collection;

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 100
    .line 101
    .line 102
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->onPause()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/transsion/subtitle/h;->a:Lcom/transsion/subtitle/h$a;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1, p0}, Lcom/transsion/subtitle/h;->c(Lcom/transsion/subtitle_download/a;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0, p0}, Lcom/transsion/subtitle/h;->f(Llt/c;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/transsion/subtitle/h;->a:Lcom/transsion/subtitle/h$a;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1, p0}, Lcom/transsion/subtitle/h;->b(Lcom/transsion/subtitle_download/a;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0, p0}, Lcom/transsion/subtitle/h;->d(Llt/c;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onSaveDownload(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/subtitle_download/a$a;->a(Lcom/transsion/subtitle_download/a;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onUnGzZip(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/subtitle_download/a$a;->b(Lcom/transsion/subtitle_download/a;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    const-string p1, "dialog_subtitle_select"

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;->e0(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public s0(Landroid/view/LayoutInflater;)Ljt/g;
    .locals 1

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljt/g;->c(Landroid/view/LayoutInflater;)Ljt/g;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "inflate(...)"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object p1
.end method
