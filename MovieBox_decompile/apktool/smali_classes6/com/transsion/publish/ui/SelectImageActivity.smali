.class public final Lcom/transsion/publish/ui/SelectImageActivity;
.super Lcom/transsion/baseui/activity/BaseActivity;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/publish/ui/SelectImageActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseActivity<",
        "Llo/d;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u0000 n2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u00019B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u001d\u0010\u000b\u001a\u00020\u00052\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0004J\u000f\u0010\u000f\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0004J\u001f\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0004J\u0019\u0010\u0018\u001a\u00020\u00052\u0008\u0010\n\u001a\u0004\u0018\u00010\u0017H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0004J/\u0010\u001f\u001a\u00020\u00052\u000e\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001b2\u000e\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001bH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008!\u0010\u0004J\u000f\u0010\"\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\"\u0010\u0004J\u0017\u0010$\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008$\u0010%J\u000f\u0010\'\u001a\u00020&H\u0016\u00a2\u0006\u0004\u0008\'\u0010(J\u000f\u0010)\u001a\u00020&H\u0016\u00a2\u0006\u0004\u0008)\u0010(J\u000f\u0010*\u001a\u00020&H\u0016\u00a2\u0006\u0004\u0008*\u0010(J\u0019\u0010-\u001a\u00020\u00052\u0008\u0010,\u001a\u0004\u0018\u00010+H\u0014\u00a2\u0006\u0004\u0008-\u0010.J\u000f\u0010/\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008/\u00100J\u000f\u00101\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u00081\u0010\u0004J)\u00104\u001a\u00020\u00052\u0006\u00102\u001a\u00020\u00122\u0006\u00103\u001a\u00020\u00122\u0008\u0010\n\u001a\u0004\u0018\u00010\u0017H\u0014\u00a2\u0006\u0004\u00084\u00105J\u000f\u00107\u001a\u000206H\u0016\u00a2\u0006\u0004\u00087\u00108R\u0014\u0010;\u001a\u00020\u00108\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u0018\u0010?\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u0018\u0010C\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008A\u0010BR\u0018\u0010G\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u0018\u0010K\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR\u0018\u0010M\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010JR\u0018\u0010Q\u001a\u0004\u0018\u00010N8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010PR\u001e\u0010T\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008R\u0010SR\u0018\u0010X\u001a\u0004\u0018\u00010U8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008V\u0010WR\u0016\u0010\\\u001a\u00020Y8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Z\u0010[R\u0016\u0010_\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008]\u0010^R\u0016\u0010a\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008`\u0010^R\u001e\u0010f\u001a\n\u0012\u0004\u0012\u00020c\u0018\u00010b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008d\u0010eR\u001e\u0010h\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008g\u0010eR\u001e\u0010j\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008i\u0010eR\u0016\u0010m\u001a\u00020&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008k\u0010l\u00a8\u0006o"
    }
    d2 = {
        "Lcom/transsion/publish/ui/SelectImageActivity;",
        "Lcom/transsion/baseui/activity/BaseActivity;",
        "Llo/d;",
        "<init>",
        "()V",
        "",
        "initData",
        "N0",
        "",
        "Landroid/net/Uri;",
        "data",
        "K0",
        "(Ljava/util/List;)V",
        "L0",
        "initView",
        "J0",
        "",
        "uri",
        "",
        "source",
        "M0",
        "(Ljava/lang/String;I)V",
        "A0",
        "Landroid/content/Intent;",
        "x0",
        "(Landroid/content/Intent;)V",
        "H0",
        "",
        "Lcom/transsion/publish/api/PhotoEntity;",
        "photos",
        "selectList",
        "v0",
        "(Ljava/util/List;Ljava/util/List;)V",
        "showLoading",
        "z0",
        "size",
        "w0",
        "(I)V",
        "",
        "isTranslucent",
        "()Z",
        "isStatusDark",
        "isChangeStatusBar",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "y0",
        "()Llo/d;",
        "onDestroy",
        "requestCode",
        "resultCode",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "Lqi/b;",
        "newLogViewConfig",
        "()Lqi/b;",
        "a",
        "Ljava/lang/String;",
        "tag",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "b",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "videoRecycler",
        "Lcom/transsion/publish/adapter/e0;",
        "c",
        "Lcom/transsion/publish/adapter/e0;",
        "videoAdapter",
        "Lno/b;",
        "d",
        "Lno/b;",
        "selectPhotoManager",
        "Landroid/widget/LinearLayout;",
        "e",
        "Landroid/widget/LinearLayout;",
        "noContentView",
        "f",
        "lockView",
        "Landroid/widget/ProgressBar;",
        "g",
        "Landroid/widget/ProgressBar;",
        "selectVideoLoading",
        "h",
        "Ljava/util/List;",
        "selectImages",
        "Lio/reactivex/rxjava3/disposables/c;",
        "i",
        "Lio/reactivex/rxjava3/disposables/c;",
        "disposable",
        "",
        "j",
        "J",
        "showDuration",
        "k",
        "I",
        "keyType",
        "l",
        "maxLimit",
        "Landroidx/activity/result/b;",
        "Landroidx/activity/result/e;",
        "m",
        "Landroidx/activity/result/b;",
        "imageSelectLauncher",
        "n",
        "singleSelectLauncher",
        "o",
        "clipLauncher",
        "p",
        "Z",
        "underOS33",
        "q",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final q:Lcom/transsion/publish/ui/SelectImageActivity$a;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroidx/recyclerview/widget/RecyclerView;

.field private c:Lcom/transsion/publish/adapter/e0;

.field private d:Lno/b;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/ProgressBar;

.field private h:Ljava/util/List;

.field private i:Lio/reactivex/rxjava3/disposables/c;

.field private j:J

.field private k:I

.field private l:I

.field private m:Landroidx/activity/result/b;

.field private n:Landroidx/activity/result/b;

.field private o:Landroidx/activity/result/b;

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/publish/ui/SelectImageActivity$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/publish/ui/SelectImageActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/publish/ui/SelectImageActivity;->q:Lcom/transsion/publish/ui/SelectImageActivity$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "ImageSelect"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->a:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->l:I

    .line 10
    .line 11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v2, 0x21

    .line 14
    .line 15
    if-ge v1, v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    iput-boolean v0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->p:Z

    .line 20
    .line 21
    return-void
.end method

.method private final A0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->o:Landroidx/activity/result/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lf/j;

    .line 7
    .line 8
    invoke-direct {v0}, Lf/j;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/transsion/publish/ui/n0;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/transsion/publish/ui/n0;-><init>(Lcom/transsion/publish/ui/SelectImageActivity;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Lf/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->o:Landroidx/activity/result/b;

    .line 21
    .line 22
    return-void
.end method

.method private static final B0(Lcom/transsion/publish/ui/SelectImageActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 1

    .line 1
    const-string v0, "result"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-direct {p0, p1}, Lcom/transsion/publish/ui/SelectImageActivity;->x0(Landroid/content/Intent;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static final C0(Lcom/transsion/publish/ui/SelectImageActivity;Lcom/transsion/publish/bean/PreviewMediaConfirmEvent;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/publish/ui/SelectImageActivity;->J0()V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private static final D0(Lcom/transsion/publish/ui/SelectImageActivity;Lcom/transsion/publish/bean/BigImageBean;)Lkotlin/Unit;
    .locals 3

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/transsion/publish/bean/BigImageBean;->getFrom()Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v2, 0x3

    .line 19
    if-ne v0, v2, :cond_a

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/transsion/publish/bean/BigImageBean;->getOperator()Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v2, 0x2

    .line 33
    if-ne v0, v2, :cond_5

    .line 34
    .line 35
    iget-object p1, p0, Lcom/transsion/publish/ui/SelectImageActivity;->c:Lcom/transsion/publish/adapter/e0;

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/e0;->n()V

    .line 40
    .line 41
    .line 42
    :cond_2
    iget-object p1, p0, Lcom/transsion/publish/ui/SelectImageActivity;->c:Lcom/transsion/publish/adapter/e0;

    .line 43
    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/e0;->x()V

    .line 47
    .line 48
    .line 49
    :cond_3
    iget-object p0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->c:Lcom/transsion/publish/adapter/e0;

    .line 50
    .line 51
    if-eqz p0, :cond_4

    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 54
    .line 55
    .line 56
    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 57
    .line 58
    return-object p0

    .line 59
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->c:Lcom/transsion/publish/adapter/e0;

    .line 60
    .line 61
    if-eqz v0, :cond_6

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/transsion/publish/adapter/e0;->n()V

    .line 64
    .line 65
    .line 66
    :cond_6
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->c:Lcom/transsion/publish/adapter/e0;

    .line 67
    .line 68
    if-eqz v0, :cond_7

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/transsion/publish/adapter/e0;->x()V

    .line 71
    .line 72
    .line 73
    :cond_7
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->c:Lcom/transsion/publish/adapter/e0;

    .line 74
    .line 75
    if-eqz v0, :cond_8

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/transsion/publish/adapter/e0;->q()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    :cond_8
    invoke-virtual {p1}, Lcom/transsion/publish/bean/BigImageBean;->getSelect()Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-direct {p0, v1, p1}, Lcom/transsion/publish/ui/SelectImageActivity;->v0(Ljava/util/List;Ljava/util/List;)V

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->c:Lcom/transsion/publish/adapter/e0;

    .line 89
    .line 90
    if-eqz p0, :cond_9

    .line 91
    .line 92
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 93
    .line 94
    .line 95
    :cond_9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 96
    .line 97
    return-object p0

    .line 98
    :cond_a
    :goto_1
    invoke-virtual {p1}, Lcom/transsion/publish/bean/BigImageBean;->getFrom()Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-nez v0, :cond_b

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    const/4 v2, 0x1

    .line 110
    if-eq v0, v2, :cond_c

    .line 111
    .line 112
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 113
    .line 114
    return-object p0

    .line 115
    :cond_c
    invoke-virtual {p1}, Lcom/transsion/publish/bean/BigImageBean;->getOperator()Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    if-nez v0, :cond_d

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-ne v0, v2, :cond_11

    .line 127
    .line 128
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->c:Lcom/transsion/publish/adapter/e0;

    .line 129
    .line 130
    if-eqz v0, :cond_e

    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/transsion/publish/adapter/e0;->n()V

    .line 133
    .line 134
    .line 135
    :cond_e
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->c:Lcom/transsion/publish/adapter/e0;

    .line 136
    .line 137
    if-eqz v0, :cond_f

    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/transsion/publish/adapter/e0;->x()V

    .line 140
    .line 141
    .line 142
    :cond_f
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->c:Lcom/transsion/publish/adapter/e0;

    .line 143
    .line 144
    if-eqz v0, :cond_10

    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/transsion/publish/adapter/e0;->q()Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    :cond_10
    invoke-virtual {p1}, Lcom/transsion/publish/bean/BigImageBean;->getSelect()Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-direct {p0, v1, p1}, Lcom/transsion/publish/ui/SelectImageActivity;->v0(Ljava/util/List;Ljava/util/List;)V

    .line 155
    .line 156
    .line 157
    iget-object p0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->c:Lcom/transsion/publish/adapter/e0;

    .line 158
    .line 159
    if-eqz p0, :cond_11

    .line 160
    .line 161
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 162
    .line 163
    .line 164
    :cond_11
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 165
    .line 166
    return-object p0
.end method

.method private static final E0(Lcom/transsion/publish/ui/SelectImageActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final F0(Lcom/transsion/publish/ui/SelectImageActivity;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/publish/ui/SelectImageActivity;->J0()V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private static final G0(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->v()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final H0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseActivity;->getLogViewConfig()Lqi/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lqi/b;->k(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/transsion/publish/ui/SelectImageActivity;->showLoading()V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lno/b;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lno/b;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->d:Lno/b;

    .line 20
    .line 21
    new-instance v0, Lcom/transsion/publish/ui/m0;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/transsion/publish/ui/m0;-><init>(Lcom/transsion/publish/ui/SelectImageActivity;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lio/reactivex/rxjava3/core/j;->g(Lio/reactivex/rxjava3/core/l;)Lio/reactivex/rxjava3/core/j;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/16 v1, 0xc

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->b(I)Lio/reactivex/rxjava3/core/j;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/b;->c()Lio/reactivex/rxjava3/core/Scheduler;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->v(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {}, Ley/a;->c()Lio/reactivex/rxjava3/core/Scheduler;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->E(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    new-instance v1, Lcom/transsion/publish/ui/SelectImageActivity$b;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lcom/transsion/publish/ui/SelectImageActivity$b;-><init>(Lcom/transsion/publish/ui/SelectImageActivity;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method private static final I0(Lcom/transsion/publish/ui/SelectImageActivity;Lio/reactivex/rxjava3/core/k;)V
    .locals 7

    .line 1
    const-string v0, "emitter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    const/4 v5, 0x4

    .line 9
    const/4 v6, 0x0

    .line 10
    const-string v2, "SelectVideoManager"

    .line 11
    .line 12
    const-string v3, "loadLocalVideo success"

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->d:Lno/b;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lno/b;->a(Lio/reactivex/rxjava3/core/k;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-interface {p1}, Lio/reactivex/rxjava3/core/k;->isDisposed()Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_1

    .line 30
    .line 31
    invoke-interface {p1}, Lio/reactivex/rxjava3/core/d;->onComplete()V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method private final J0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->c:Lcom/transsion/publish/adapter/e0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/publish/adapter/e0;->r()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    move-object v1, v0

    .line 12
    check-cast v1, Ljava/util/Collection;

    .line 13
    .line 14
    if-eqz v1, :cond_4

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_1
    iget v2, p0, Lcom/transsion/publish/ui/SelectImageActivity;->k:I

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    new-instance v0, Ljo/b;

    .line 29
    .line 30
    invoke-direct {v0}, Ljo/b;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v0, v2}, Ljo/b;->o(Ljava/lang/Integer;)V

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v0, v2}, Ljo/b;->n(Ljava/lang/Integer;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljo/b;->r(Ljava/util/List;)V

    .line 53
    .line 54
    .line 55
    sget-object v1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 56
    .line 57
    const-class v2, Lcom/transsnet/flow/event/FlowEventBus;

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 64
    .line 65
    const-class v2, Ljo/b;

    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const-string v3, "getName(...)"

    .line 72
    .line 73
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-wide/16 v3, 0x0

    .line 77
    .line 78
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lcom/transsion/publish/api/PhotoEntity;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/transsion/publish/api/PhotoEntity;->getLocalPath()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    if-eqz v0, :cond_3

    .line 96
    .line 97
    iget v1, p0, Lcom/transsion/publish/ui/SelectImageActivity;->k:I

    .line 98
    .line 99
    invoke-direct {p0, v0, v1}, Lcom/transsion/publish/ui/SelectImageActivity;->M0(Ljava/lang/String;I)V

    .line 100
    .line 101
    .line 102
    :cond_3
    :goto_1
    return-void

    .line 103
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method private final K0(Ljava/util/List;)V
    .locals 6

    .line 1
    new-instance v0, Ljo/b;

    .line 2
    .line 3
    invoke-direct {v0}, Ljo/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/transsion/publish/ui/SelectImageActivity;->k:I

    .line 7
    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljo/b;->o(Ljava/lang/Integer;)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v0, v2}, Ljo/b;->n(Ljava/lang/Integer;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljo/b;->r(Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Landroid/net/Uri;

    .line 46
    .line 47
    new-instance v3, Lcom/transsion/publish/api/PhotoEntity;

    .line 48
    .line 49
    invoke-direct {v3}, Lcom/transsion/publish/api/PhotoEntity;-><init>()V

    .line 50
    .line 51
    .line 52
    sget-object v4, Lqo/g;->a:Lqo/g;

    .line 53
    .line 54
    invoke-virtual {v4, p0, v2}, Lqo/g;->b(Landroid/content/Context;Landroid/net/Uri;)Lko/a;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    if-eqz v4, :cond_0

    .line 59
    .line 60
    invoke-virtual {v4}, Lko/a;->c()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v3, v5}, Lcom/transsion/publish/api/PhotoEntity;->setLocalPath(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4}, Lko/a;->e()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v3, v5}, Lcom/transsion/publish/api/PhotoEntity;->setImageTitle(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4}, Lko/a;->f()I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    invoke-virtual {v3, v5}, Lcom/transsion/publish/api/PhotoEntity;->setWidth(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Lko/a;->b()I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    invoke-virtual {v3, v5}, Lcom/transsion/publish/api/PhotoEntity;->setHeight(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4}, Lko/a;->d()J

    .line 89
    .line 90
    .line 91
    move-result-wide v4

    .line 92
    invoke-virtual {v3, v4, v5}, Lcom/transsion/publish/api/PhotoEntity;->setImageSize(J)V

    .line 93
    .line 94
    .line 95
    :cond_0
    invoke-virtual {v0}, Ljo/b;->h()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    if-eqz v4, :cond_1

    .line 100
    .line 101
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    :cond_1
    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 105
    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v3, v2, v1}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 111
    .line 112
    .line 113
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 114
    .line 115
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :catchall_0
    move-exception v2

    .line 120
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 121
    .line 122
    invoke-static {v2}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_2
    sget-object p1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 131
    .line 132
    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 133
    .line 134
    invoke-virtual {p1, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    check-cast p1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 139
    .line 140
    const-class v1, Ljo/b;

    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    const-string v2, "getName(...)"

    .line 147
    .line 148
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    const-wide/16 v2, 0x0

    .line 152
    .line 153
    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 157
    .line 158
    .line 159
    return-void
.end method

.method private final L0()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const-string v0, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 v1, 0x21

    .line 11
    .line 12
    if-lt v0, v1, :cond_1

    .line 13
    .line 14
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 18
    .line 19
    :goto_0
    filled-new-array {v0}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Lcom/blankj/utilcode/util/PermissionUtils;->s([Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    filled-new-array {v0}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->x([Ljava/lang/String;)Lcom/blankj/utilcode/util/PermissionUtils;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Lcom/transsion/publish/ui/SelectImageActivity$c;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/transsion/publish/ui/SelectImageActivity$c;-><init>(Lcom/transsion/publish/ui/SelectImageActivity;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/PermissionUtils;->m(Lcom/blankj/utilcode/util/PermissionUtils$b;)Lcom/blankj/utilcode/util/PermissionUtils;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->y()V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    invoke-direct {p0}, Lcom/transsion/publish/ui/SelectImageActivity;->H0()V

    .line 51
    .line 52
    .line 53
    :goto_1
    return-void
.end method

.method private final M0(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/publish/ui/ClippingImageActivity;->j:Lcom/transsion/publish/ui/ClippingImageActivity$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/publish/ui/SelectImageActivity;->o:Landroidx/activity/result/b;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/transsion/publish/ui/ClippingImageActivity$a;->a(Landroid/app/Activity;Ljava/lang/String;ILandroidx/activity/result/b;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final N0()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->l:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-le v0, v1, :cond_0

    .line 5
    .line 6
    new-instance v1, Lf/e;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lf/e;-><init>(I)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/transsion/publish/ui/p0;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/transsion/publish/ui/p0;-><init>(Lcom/transsion/publish/ui/SelectImageActivity;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Lf/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->m:Landroidx/activity/result/b;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    sget-object v1, Lf/g$d;->a:Lf/g$d;

    .line 25
    .line 26
    const/16 v5, 0xe

    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-static/range {v1 .. v6}, Landroidx/activity/result/f;->b(Lf/g$f;IZLf/g$b;ILjava/lang/Object;)Landroidx/activity/result/e;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance v0, Lf/b;

    .line 41
    .line 42
    invoke-direct {v0}, Lf/b;-><init>()V

    .line 43
    .line 44
    .line 45
    new-instance v1, Lcom/transsion/publish/ui/q0;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Lcom/transsion/publish/ui/q0;-><init>(Lcom/transsion/publish/ui/SelectImageActivity;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Lf/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->n:Landroidx/activity/result/b;

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    const-string v1, "image/*"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_0
    return-void
.end method

.method private static final O0(Lcom/transsion/publish/ui/SelectImageActivity;Ljava/util/List;)V
    .locals 7

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/transsion/publish/ui/SelectImageActivity;->a:Ljava/lang/String;

    .line 9
    .line 10
    iget v0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->k:I

    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v4, "imageSelect keyType:"

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, ", data\uff1a"

    .line 26
    .line 27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const/4 v5, 0x4

    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, p1}, Lcom/transsion/publish/ui/SelectImageActivity;->K0(Ljava/util/List;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private static final P0(Lcom/transsion/publish/ui/SelectImageActivity;Landroid/net/Uri;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/publish/ui/SelectImageActivity;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/transsion/publish/ui/SelectImageActivity;->k:I

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v4, "singleSelect keyType:"

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, ", uri\uff1a"

    .line 21
    .line 22
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/4 v4, 0x4

    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    if-nez p1, :cond_0

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    iget v0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->k:I

    .line 45
    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {p0, p1}, Lcom/transsion/publish/ui/SelectImageActivity;->K0(Ljava/util/List;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    sget-object v0, Lqo/g;->a:Lqo/g;

    .line 57
    .line 58
    invoke-virtual {v0, p0, p1}, Lqo/g;->b(Landroid/content/Context;Landroid/net/Uri;)Lko/a;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    invoke-virtual {p1}, Lko/a;->c()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    iget v0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->k:I

    .line 71
    .line 72
    invoke-direct {p0, p1, v0}, Lcom/transsion/publish/ui/SelectImageActivity;->M0(Ljava/lang/String;I)V

    .line 73
    .line 74
    .line 75
    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic b0(Lcom/transsion/publish/ui/SelectImageActivity;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/ui/SelectImageActivity;->P0(Lcom/transsion/publish/ui/SelectImageActivity;Landroid/net/Uri;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c0(Lcom/transsion/publish/ui/SelectImageActivity;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/ui/SelectImageActivity;->O0(Lcom/transsion/publish/ui/SelectImageActivity;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d0(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/publish/ui/SelectImageActivity;->G0(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e0(Lcom/transsion/publish/ui/SelectImageActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/ui/SelectImageActivity;->E0(Lcom/transsion/publish/ui/SelectImageActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f0(Lcom/transsion/publish/ui/SelectImageActivity;Lcom/transsion/publish/bean/PreviewMediaConfirmEvent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/ui/SelectImageActivity;->C0(Lcom/transsion/publish/ui/SelectImageActivity;Lcom/transsion/publish/bean/PreviewMediaConfirmEvent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g0(Lcom/transsion/publish/ui/SelectImageActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/ui/SelectImageActivity;->B0(Lcom/transsion/publish/ui/SelectImageActivity;Landroidx/activity/result/ActivityResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h0(Lcom/transsion/publish/ui/SelectImageActivity;Lcom/transsion/publish/bean/BigImageBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/ui/SelectImageActivity;->D0(Lcom/transsion/publish/ui/SelectImageActivity;Lcom/transsion/publish/bean/BigImageBean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i0(Lcom/transsion/publish/ui/SelectImageActivity;Lio/reactivex/rxjava3/core/k;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/ui/SelectImageActivity;->I0(Lcom/transsion/publish/ui/SelectImageActivity;Lio/reactivex/rxjava3/core/k;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final initData()V
    .locals 7

    .line 1
    new-instance v6, Lcom/transsion/publish/ui/o0;

    .line 2
    .line 3
    invoke-direct {v6, p0}, Lcom/transsion/publish/ui/o0;-><init>(Lcom/transsion/publish/ui/SelectImageActivity;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 7
    .line 8
    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 15
    .line 16
    const-class v1, Lcom/transsion/publish/bean/PreviewMediaConfirmEvent;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v1, "getName(...)"

    .line 23
    .line 24
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 28
    .line 29
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lkotlinx/coroutines/a2;->p()Lkotlinx/coroutines/a2;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const/4 v5, 0x0

    .line 38
    move-object v1, p0

    .line 39
    invoke-virtual/range {v0 .. v6}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private final initView()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->h:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    check-cast v0, Ljava/lang/Iterable;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/transsion/publish/api/PhotoEntity;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/transsion/publish/api/PhotoEntity;->isAdd()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    move-object v1, v2

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    if-eqz v1, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->h:Ljava/util/List;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    :cond_2
    sget v0, Lcom/transsion/publish/R$id;->sv_title_bar:I

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/transsion/publish/view/CustomHeader;

    .line 48
    .line 49
    new-instance v1, Lcom/transsion/publish/ui/i0;

    .line 50
    .line 51
    invoke-direct {v1, p0}, Lcom/transsion/publish/ui/i0;-><init>(Lcom/transsion/publish/ui/SelectImageActivity;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/transsion/publish/view/CustomHeader;->setOnBackClick(Landroid/view/View$OnClickListener;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->h:Ljava/util/List;

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    move v0, v1

    .line 68
    :goto_1
    invoke-direct {p0, v0}, Lcom/transsion/publish/ui/SelectImageActivity;->w0(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Llo/d;

    .line 76
    .line 77
    iget-object v2, v0, Llo/d;->b:Landroid/widget/TextView;

    .line 78
    .line 79
    const-string v0, "confirmTV"

    .line 80
    .line 81
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    new-instance v5, Lcom/transsion/publish/ui/j0;

    .line 85
    .line 86
    invoke-direct {v5, p0}, Lcom/transsion/publish/ui/j0;-><init>(Lcom/transsion/publish/ui/SelectImageActivity;)V

    .line 87
    .line 88
    .line 89
    const/4 v6, 0x1

    .line 90
    const/4 v7, 0x0

    .line 91
    const-wide/16 v3, 0x0

    .line 92
    .line 93
    invoke-static/range {v2 .. v7}, Luf/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    sget v0, Lcom/transsion/publish/R$id;->select_video_loading:I

    .line 97
    .line 98
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Landroid/widget/ProgressBar;

    .line 103
    .line 104
    iput-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->g:Landroid/widget/ProgressBar;

    .line 105
    .line 106
    sget v0, Lcom/transsion/publish/R$id;->sv_no_content_view:I

    .line 107
    .line 108
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Landroid/widget/LinearLayout;

    .line 113
    .line 114
    iput-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->e:Landroid/widget/LinearLayout;

    .line 115
    .line 116
    sget v0, Lcom/transsion/publish/R$id;->sv_lock_view:I

    .line 117
    .line 118
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Landroid/widget/LinearLayout;

    .line 123
    .line 124
    iput-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->f:Landroid/widget/LinearLayout;

    .line 125
    .line 126
    sget v0, Lcom/transsion/publish/R$id;->sv_tv_grant:I

    .line 127
    .line 128
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Landroid/widget/TextView;

    .line 133
    .line 134
    if-eqz v0, :cond_4

    .line 135
    .line 136
    new-instance v2, Lcom/transsion/publish/ui/k0;

    .line 137
    .line 138
    invoke-direct {v2}, Lcom/transsion/publish/ui/k0;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    .line 143
    .line 144
    :cond_4
    sget v0, Lcom/transsion/publish/R$id;->select_video_recycler:I

    .line 145
    .line 146
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 151
    .line 152
    iput-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 153
    .line 154
    new-instance v0, Lcom/transsion/publish/adapter/e0;

    .line 155
    .line 156
    new-instance v2, Lcom/transsion/publish/ui/SelectImageActivity$initView$5;

    .line 157
    .line 158
    invoke-direct {v2, p0}, Lcom/transsion/publish/ui/SelectImageActivity$initView$5;-><init>(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    invoke-direct {v0, v2}, Lcom/transsion/publish/adapter/e0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 162
    .line 163
    .line 164
    iput-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->c:Lcom/transsion/publish/adapter/e0;

    .line 165
    .line 166
    iget v2, p0, Lcom/transsion/publish/ui/SelectImageActivity;->k:I

    .line 167
    .line 168
    invoke-virtual {v0, v2, p0}, Lcom/transsion/publish/adapter/e0;->y(ILandroid/app/Activity;)V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->c:Lcom/transsion/publish/adapter/e0;

    .line 172
    .line 173
    if-eqz v0, :cond_5

    .line 174
    .line 175
    iget v2, p0, Lcom/transsion/publish/ui/SelectImageActivity;->l:I

    .line 176
    .line 177
    invoke-virtual {v0, v2}, Lcom/transsion/publish/adapter/e0;->z(I)V

    .line 178
    .line 179
    .line 180
    :cond_5
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 181
    .line 182
    if-eqz v0, :cond_6

    .line 183
    .line 184
    new-instance v2, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;

    .line 185
    .line 186
    const/4 v3, 0x4

    .line 187
    const/4 v4, 0x1

    .line 188
    invoke-direct {v2, p0, v3, v4, v1}, Lcom/tn/lib/view/layoutmanager/NpaGridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 192
    .line 193
    .line 194
    :cond_6
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 195
    .line 196
    if-eqz v0, :cond_7

    .line 197
    .line 198
    new-instance v1, Lqo/f;

    .line 199
    .line 200
    const/high16 v2, 0x40000000    # 2.0f

    .line 201
    .line 202
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    invoke-direct {v1, v2}, Lqo/f;-><init>(I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 210
    .line 211
    .line 212
    :cond_7
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 213
    .line 214
    if-eqz v0, :cond_8

    .line 215
    .line 216
    iget-object v1, p0, Lcom/transsion/publish/ui/SelectImageActivity;->c:Lcom/transsion/publish/adapter/e0;

    .line 217
    .line 218
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 219
    .line 220
    .line 221
    :cond_8
    new-instance v8, Lcom/transsion/publish/ui/l0;

    .line 222
    .line 223
    invoke-direct {v8, p0}, Lcom/transsion/publish/ui/l0;-><init>(Lcom/transsion/publish/ui/SelectImageActivity;)V

    .line 224
    .line 225
    .line 226
    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 227
    .line 228
    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 229
    .line 230
    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    move-object v2, v0

    .line 235
    check-cast v2, Lcom/transsnet/flow/event/FlowEventBus;

    .line 236
    .line 237
    const-class v0, Lcom/transsion/publish/bean/BigImageBean;

    .line 238
    .line 239
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    const-string v0, "getName(...)"

    .line 244
    .line 245
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 249
    .line 250
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-virtual {v0}, Lkotlinx/coroutines/a2;->p()Lkotlinx/coroutines/a2;

    .line 255
    .line 256
    .line 257
    move-result-object v6

    .line 258
    const/4 v7, 0x0

    .line 259
    move-object v3, p0

    .line 260
    invoke-virtual/range {v2 .. v8}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    .line 261
    .line 262
    .line 263
    return-void
.end method

.method public static synthetic j0(Lcom/transsion/publish/ui/SelectImageActivity;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/ui/SelectImageActivity;->F0(Lcom/transsion/publish/ui/SelectImageActivity;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic k0(Lcom/transsion/publish/ui/SelectImageActivity;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/publish/ui/SelectImageActivity;->v0(Ljava/util/List;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic l0(Lcom/transsion/publish/ui/SelectImageActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/publish/ui/SelectImageActivity;->w0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic m0(Lcom/transsion/publish/ui/SelectImageActivity;)Lio/reactivex/rxjava3/disposables/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->i:Lio/reactivex/rxjava3/disposables/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic n0(Lcom/transsion/publish/ui/SelectImageActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->f:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic o0(Lcom/transsion/publish/ui/SelectImageActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->e:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic p0(Lcom/transsion/publish/ui/SelectImageActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->h:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic q0(Lcom/transsion/publish/ui/SelectImageActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->g:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic r0(Lcom/transsion/publish/ui/SelectImageActivity;)Lcom/transsion/publish/adapter/e0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->c:Lcom/transsion/publish/adapter/e0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic s0(Lcom/transsion/publish/ui/SelectImageActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/publish/ui/SelectImageActivity;->z0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final showLoading()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->g:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->g:Landroid/widget/ProgressBar;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public static final synthetic t0(Lcom/transsion/publish/ui/SelectImageActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/publish/ui/SelectImageActivity;->H0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic u0(Lcom/transsion/publish/ui/SelectImageActivity;Lio/reactivex/rxjava3/disposables/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/publish/ui/SelectImageActivity;->i:Lio/reactivex/rxjava3/disposables/c;

    .line 2
    .line 3
    return-void
.end method

.method private final v0(Ljava/util/List;Ljava/util/List;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    move-object v1, p2

    .line 5
    check-cast v1, Ljava/util/Collection;

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_3

    .line 14
    :cond_0
    move-object v1, p1

    .line 15
    check-cast v1, Ljava/util/Collection;

    .line 16
    .line 17
    if-eqz v1, :cond_6

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    goto :goto_3

    .line 26
    :cond_1
    if-eqz p2, :cond_6

    .line 27
    .line 28
    check-cast p2, Ljava/lang/Iterable;

    .line 29
    .line 30
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    const/4 v1, 0x0

    .line 35
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_6

    .line 40
    .line 41
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    add-int/lit8 v3, v1, 0x1

    .line 46
    .line 47
    if-gez v1, :cond_2

    .line 48
    .line 49
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 50
    .line 51
    .line 52
    :cond_2
    check-cast v2, Lcom/transsion/publish/api/PhotoEntity;

    .line 53
    .line 54
    if-eqz p1, :cond_5

    .line 55
    .line 56
    move-object v1, p1

    .line 57
    check-cast v1, Ljava/lang/Iterable;

    .line 58
    .line 59
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_5

    .line 68
    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Lcom/transsion/publish/api/PhotoEntity;

    .line 74
    .line 75
    if-eqz v4, :cond_4

    .line 76
    .line 77
    invoke-virtual {v4}, Lcom/transsion/publish/api/PhotoEntity;->getLocalPath()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    goto :goto_2

    .line 82
    :cond_4
    const/4 v5, 0x0

    .line 83
    :goto_2
    invoke-virtual {v2}, Lcom/transsion/publish/api/PhotoEntity;->getLocalPath()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-eqz v5, :cond_3

    .line 92
    .line 93
    invoke-virtual {v4, v0}, Lcom/transsion/publish/api/PhotoEntity;->setEnableSelect(Z)V

    .line 94
    .line 95
    .line 96
    iget-object v4, p0, Lcom/transsion/publish/ui/SelectImageActivity;->c:Lcom/transsion/publish/adapter/e0;

    .line 97
    .line 98
    if-eqz v4, :cond_3

    .line 99
    .line 100
    invoke-virtual {v4, v2}, Lcom/transsion/publish/adapter/e0;->A(Lcom/transsion/publish/api/PhotoEntity;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_5
    move v1, v3

    .line 105
    goto :goto_0

    .line 106
    :cond_6
    :goto_3
    return-void
.end method

.method private final w0(I)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    check-cast v1, Llo/d;

    .line 7
    .line 8
    iget-object v1, v1, Llo/d;->c:Landroid/widget/TextView;

    .line 9
    .line 10
    const-string v2, "selectNumTV"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-lez p1, :cond_0

    .line 17
    .line 18
    move v3, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v3, v2

    .line 21
    :goto_0
    if-eqz v3, :cond_1

    .line 22
    .line 23
    move v3, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const/16 v3, 0x8

    .line 26
    .line 27
    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Llo/d;

    .line 35
    .line 36
    iget-object v1, v1, Llo/d;->c:Landroid/widget/TextView;

    .line 37
    .line 38
    sget v3, Lcom/transsion/publish/R$string;->image_select_num_tips:I

    .line 39
    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget v4, p0, Lcom/transsion/publish/ui/SelectImageActivity;->l:I

    .line 45
    .line 46
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    const/4 v5, 0x2

    .line 51
    new-array v5, v5, [Ljava/lang/Object;

    .line 52
    .line 53
    aput-object p1, v5, v2

    .line 54
    .line 55
    aput-object v4, v5, v0

    .line 56
    .line 57
    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method private final x0(Landroid/content/Intent;)V
    .locals 8

    .line 1
    const-string v0, "clip_result"

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p1, 0x0

    .line 35
    :goto_0
    if-nez p1, :cond_2

    .line 36
    .line 37
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 38
    .line 39
    const/4 v5, 0x4

    .line 40
    const/4 v6, 0x0

    .line 41
    const-string v2, "clip_result"

    .line 42
    .line 43
    const-string v3, "null..."

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    instance-of v1, p1, Lcom/transsion/publish/api/PhotoEntity;

    .line 54
    .line 55
    if-eqz v1, :cond_5

    .line 56
    .line 57
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 58
    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v3, "result:"

    .line 65
    .line 66
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    const/4 v6, 0x4

    .line 77
    const/4 v7, 0x0

    .line 78
    const-string v3, "clip_result"

    .line 79
    .line 80
    const/4 v5, 0x0

    .line 81
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    iget v1, p0, Lcom/transsion/publish/ui/SelectImageActivity;->k:I

    .line 85
    .line 86
    const/4 v2, 0x5

    .line 87
    if-eqz v1, :cond_4

    .line 88
    .line 89
    if-ne v1, v2, :cond_3

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    new-instance v1, Landroid/content/Intent;

    .line 93
    .line 94
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 95
    .line 96
    .line 97
    check-cast p1, Lcom/transsion/publish/api/PhotoEntity;

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/transsion/publish/api/PhotoEntity;->getLocalPath()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    .line 105
    .line 106
    const/4 p1, -0x1

    .line 107
    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_4
    :goto_1
    new-instance v0, Ljo/b;

    .line 112
    .line 113
    invoke-direct {v0}, Ljo/b;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Ljo/b;->o(Ljava/lang/Integer;)V

    .line 121
    .line 122
    .line 123
    const/4 v1, 0x1

    .line 124
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Ljo/b;->n(Ljava/lang/Integer;)V

    .line 129
    .line 130
    .line 131
    check-cast p1, Lcom/transsion/publish/api/PhotoEntity;

    .line 132
    .line 133
    invoke-virtual {v0, p1}, Ljo/b;->l(Lcom/transsion/publish/api/PhotoEntity;)V

    .line 134
    .line 135
    .line 136
    sget-object p1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 137
    .line 138
    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 139
    .line 140
    invoke-virtual {p1, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    check-cast p1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 145
    .line 146
    const-class v1, Ljo/b;

    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    const-string v2, "getName(...)"

    .line 153
    .line 154
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    const-wide/16 v2, 0x0

    .line 158
    .line 159
    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 160
    .line 161
    .line 162
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 163
    .line 164
    .line 165
    return-void
.end method

.method private final z0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->g:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->g:Landroid/widget/ProgressBar;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic getViewBinding()Lf4/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/publish/ui/SelectImageActivity;->y0()Llo/d;

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
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public isStatusDark()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public isTranslucent()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
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
    const-string v3, "select_image"

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

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/transsion/publish/ui/SelectImageActivity;->a:Ljava/lang/String;

    .line 7
    .line 8
    iget p2, p0, Lcom/transsion/publish/ui/SelectImageActivity;->k:I

    .line 9
    .line 10
    if-eqz p3, :cond_0

    .line 11
    .line 12
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v4, "onActivityResult keyType:"

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p2, ", requestCodeP:"

    .line 32
    .line 33
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p2, ", data:"

    .line 40
    .line 41
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const/4 v4, 0x4

    .line 52
    const/4 v5, 0x0

    .line 53
    const/4 v3, 0x0

    .line 54
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    const/16 p2, 0x2712

    .line 58
    .line 59
    if-eq p1, p2, :cond_1

    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    invoke-direct {p0, p3}, Lcom/transsion/publish/ui/SelectImageActivity;->x0(Landroid/content/Intent;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/baseui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->j:J

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "key_limited"

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput p1, p0, Lcom/transsion/publish/ui/SelectImageActivity;->l:I

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v0, "key_type"

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iput p1, p0, Lcom/transsion/publish/ui/SelectImageActivity;->k:I

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v0, "key_list"

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string v0, "null cannot be cast to non-null type kotlin.collections.MutableList<com.transsion.publish.api.PhotoEntity>"

    .line 57
    .line 58
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Lkotlin/jvm/internal/TypeIntrinsics;->c(Ljava/lang/Object;)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Lcom/transsion/publish/ui/SelectImageActivity;->h:Ljava/util/List;

    .line 66
    .line 67
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/publish/ui/SelectImageActivity;->p:Z

    .line 68
    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    invoke-direct {p0}, Lcom/transsion/publish/ui/SelectImageActivity;->initView()V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0}, Lcom/transsion/publish/ui/SelectImageActivity;->initData()V

    .line 75
    .line 76
    .line 77
    invoke-direct {p0}, Lcom/transsion/publish/ui/SelectImageActivity;->L0()V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    invoke-direct {p0}, Lcom/transsion/publish/ui/SelectImageActivity;->N0()V

    .line 82
    .line 83
    .line 84
    sget p1, Lcom/transsion/baseui/R$id;->llRootView:I

    .line 85
    .line 86
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const-string v0, "findViewById(...)"

    .line 91
    .line 92
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-static {p1}, Luf/c;->h(Landroid/view/View;)V

    .line 96
    .line 97
    .line 98
    :goto_0
    invoke-direct {p0}, Lcom/transsion/publish/ui/SelectImageActivity;->A0()V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectImageActivity;->i:Lio/reactivex/rxjava3/disposables/c;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 9
    .line 10
    .line 11
    :cond_0
    sget-object v0, Lcom/transsion/publish/n;->b:Lcom/transsion/publish/n$a;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/transsion/publish/n$a;->a()Lcom/transsion/publish/n;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/transsion/publish/n;->d()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public y0()Llo/d;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Llo/d;->c(Landroid/view/LayoutInflater;)Llo/d;

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
