.class public final Lcom/snaptube/premium/sites/SpeedDialFragment;
.super Lcom/snaptube/base/BaseFragment;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/snaptube/premium/sites/DragSortListView$g;
.implements Lcom/snaptube/premium/sites/b$c;
.implements Lcom/snaptube/premium/sites/DragSortListView$f;
.implements Lo/bh5;
.implements Lo/ya3;
.implements Landroidx/appcompat/widget/Toolbar$h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snaptube/premium/sites/SpeedDialFragment$a;,
        Lcom/snaptube/premium/sites/SpeedDialFragment$b;,
        Lcom/snaptube/premium/sites/SpeedDialFragment$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00cc\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u008e\u00012\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\u0008:\u0006\u008f\u0001\u0090\u0001\u0091\u0001B\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\nJ\u000f\u0010\u0011\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\nJ-\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0019\u0010\u001e\u001a\u00020\u001d2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u001dH\u0016\u00a2\u0006\u0004\u0008 \u0010!J5\u0010)\u001a\u00020\r2\u000c\u0010#\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\"2\u0006\u0010$\u001a\u00020\u00182\u0006\u0010&\u001a\u00020%2\u0006\u0010(\u001a\u00020\'H\u0016\u00a2\u0006\u0004\u0008)\u0010*J\u000f\u0010+\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008+\u0010\nJ\u001f\u0010.\u001a\u00020\r2\u0006\u0010,\u001a\u00020%2\u0006\u0010-\u001a\u00020%H\u0016\u00a2\u0006\u0004\u0008.\u0010/J5\u00101\u001a\u00020\u001d2\u000c\u00100\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\"2\u0006\u0010$\u001a\u00020\u00182\u0006\u0010&\u001a\u00020%2\u0006\u0010(\u001a\u00020\'H\u0016\u00a2\u0006\u0004\u00081\u00102J\u000f\u00103\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u00083\u0010\nJ\u000f\u00104\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u00084\u0010\nJ\u000f\u00105\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u00085\u0010\nJ\u000f\u00106\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u00086\u0010\nJ\u000f\u00107\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u00087\u0010\nJ\u000f\u00108\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u00088\u0010\nJ\u001d\u0010;\u001a\u00020\r2\u0006\u0010$\u001a\u00020\u00182\u0006\u0010:\u001a\u000209\u00a2\u0006\u0004\u0008;\u0010<J\u0017\u0010>\u001a\u00020\r2\u0006\u0010=\u001a\u00020\u001dH\u0016\u00a2\u0006\u0004\u0008>\u0010?J\u000f\u0010@\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008@\u0010\nJ\u000f\u0010A\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008A\u0010\nJ\u000f\u0010B\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008B\u0010\nJ\u000f\u0010C\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008C\u0010\nJ\u000f\u0010D\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008D\u0010\nJ\u0019\u0010E\u001a\u00020\r2\u0008\u0010:\u001a\u0004\u0018\u000109H\u0002\u00a2\u0006\u0004\u0008E\u0010FJ\u001b\u0010H\u001a\u0004\u0018\u00010G2\u0008\u0010:\u001a\u0004\u0018\u000109H\u0002\u00a2\u0006\u0004\u0008H\u0010IJ\u000f\u0010J\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008J\u0010\nJ\u000f\u0010K\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008K\u0010\nJ\u000f\u0010L\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008L\u0010\nJ\u000f\u0010M\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008M\u0010\nJ\u000f\u0010N\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008N\u0010\nJ\u000f\u0010O\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008O\u0010\nJ\u000f\u0010P\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008P\u0010\nJ\u001f\u0010S\u001a\u00020\r2\u0006\u0010:\u001a\u0002092\u0006\u0010R\u001a\u00020QH\u0002\u00a2\u0006\u0004\u0008S\u0010TJ\u000f\u0010U\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008U\u0010\nJ\u000f\u0010V\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008V\u0010\nR\u0018\u0010\u000c\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008W\u0010XR\u001c\u0010\\\u001a\u0008\u0018\u00010YR\u00020\u00008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Z\u0010[R\u001c\u0010`\u001a\u0008\u0012\u0004\u0012\u0002090]8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008^\u0010_R\u0016\u0010c\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008a\u0010bR\u0018\u0010f\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008d\u0010eR\u0018\u0010j\u001a\u0004\u0018\u00010g8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008h\u0010iR\u0018\u0010n\u001a\u0004\u0018\u00010k8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008l\u0010mR\u0018\u0010r\u001a\u0004\u0018\u00010o8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008p\u0010qR\u0018\u0010t\u001a\u0004\u0018\u00010o8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008s\u0010qR\u0016\u0010v\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008u\u0010bR\u0016\u0010x\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008w\u0010bR\u0018\u0010{\u001a\u0004\u0018\u00010G8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008y\u0010zR\u0016\u0010}\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008|\u0010bR\u001e\u0010\u007f\u001a\n\u0012\u0004\u0012\u000209\u0018\u00010]8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008~\u0010_R\u001c\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0080\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0081\u0001\u0010\u0082\u0001R\u001a\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0084\u0001\u0010eR\u0018\u0010\u0089\u0001\u001a\u00030\u0086\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0087\u0001\u0010\u0088\u0001R\u001c\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008a\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008b\u0001\u0010\u008c\u0001\u00a8\u0006\u0092\u0001"
    }
    d2 = {
        "Lcom/snaptube/premium/sites/SpeedDialFragment;",
        "Lcom/snaptube/base/BaseFragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/snaptube/premium/sites/DragSortListView$g;",
        "Lcom/snaptube/premium/sites/b$c;",
        "Lcom/snaptube/premium/sites/DragSortListView$f;",
        "Lo/bh5;",
        "Lo/ya3;",
        "Landroidx/appcompat/widget/Toolbar$h;",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "Lo/mg8;",
        "onAttach",
        "(Landroid/content/Context;)V",
        "onDetach",
        "onDestroyView",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "Landroid/view/MenuItem;",
        "item",
        "",
        "onMenuItemClick",
        "(Landroid/view/MenuItem;)Z",
        "onBackPressed",
        "()Z",
        "Landroid/widget/AdapterView;",
        "adapterView",
        "view",
        "",
        "position",
        "",
        "id",
        "onItemClick",
        "(Landroid/widget/AdapterView;Landroid/view/View;IJ)V",
        "Q1",
        "from",
        "to",
        "z1",
        "(II)V",
        "parent",
        "t2",
        "(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z",
        "onStart",
        "onDestroy",
        "onResume",
        "onPause",
        "u0",
        "n1",
        "Lcom/snaptube/premium/sites/SpeeddialInfo;",
        "info",
        "s3",
        "(Landroid/view/View;Lcom/snaptube/premium/sites/SpeeddialInfo;)V",
        "enable",
        "P1",
        "(Z)V",
        "u3",
        "k3",
        "q3",
        "i3",
        "d3",
        "p3",
        "(Lcom/snaptube/premium/sites/SpeeddialInfo;)V",
        "",
        "h3",
        "(Lcom/snaptube/premium/sites/SpeeddialInfo;)Ljava/lang/String;",
        "g3",
        "e3",
        "m3",
        "v3",
        "f3",
        "w3",
        "x3",
        "Landroid/widget/ImageView;",
        "icon",
        "l3",
        "(Lcom/snaptube/premium/sites/SpeeddialInfo;Landroid/widget/ImageView;)V",
        "r3",
        "t3",
        "g",
        "Landroid/content/Context;",
        "Lcom/snaptube/premium/sites/SpeedDialFragment$c;",
        "h",
        "Lcom/snaptube/premium/sites/SpeedDialFragment$c;",
        "adapter",
        "",
        "i",
        "Ljava/util/List;",
        "totalSites",
        "j",
        "Z",
        "editMode",
        "k",
        "Landroid/view/View;",
        "contentView",
        "Landroid/widget/ScrollView;",
        "l",
        "Landroid/widget/ScrollView;",
        "scrollView",
        "Lcom/snaptube/premium/sites/DragSortListView;",
        "m",
        "Lcom/snaptube/premium/sites/DragSortListView;",
        "dragSortListView",
        "Lo/wu7;",
        "n",
        "Lo/wu7;",
        "updateSiteSubscription",
        "o",
        "modifySubscription",
        "p",
        "isIncognito",
        "q",
        "fromWeb",
        "r",
        "Ljava/lang/String;",
        "pos",
        "s",
        "confirmModify",
        "t",
        "mBakSites",
        "Landroid/view/ActionMode;",
        "u",
        "Landroid/view/ActionMode;",
        "mEditActionMode",
        "v",
        "mLayEmpty",
        "Landroid/view/ActionMode$Callback;",
        "w",
        "Landroid/view/ActionMode$Callback;",
        "mEditModeCallback",
        "Landroid/database/DataSetObserver;",
        "x",
        "Landroid/database/DataSetObserver;",
        "mDataSetObserver",
        "y",
        "a",
        "b",
        "c",
        "snaptube_classicNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSpeedDialFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpeedDialFragment.kt\ncom/snaptube/premium/sites/SpeedDialFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,666:1\n1#2:667\n*E\n"
    }
.end annotation


# static fields
.field public static final y:Lcom/snaptube/premium/sites/SpeedDialFragment$a;

.field public static final z:Ljava/lang/String;


# instance fields
.field public g:Landroid/content/Context;

.field public h:Lcom/snaptube/premium/sites/SpeedDialFragment$c;

.field public i:Ljava/util/List;

.field public j:Z

.field public k:Landroid/view/View;

.field public l:Landroid/widget/ScrollView;

.field public m:Lcom/snaptube/premium/sites/DragSortListView;

.field public n:Lo/wu7;

.field public o:Lo/wu7;

.field public p:Z

.field public q:Z

.field public r:Ljava/lang/String;

.field public s:Z

.field public t:Ljava/util/List;

.field public u:Landroid/view/ActionMode;

.field public v:Landroid/view/View;

.field public final w:Landroid/view/ActionMode$Callback;

.field public x:Landroid/database/DataSetObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/snaptube/premium/sites/SpeedDialFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/snaptube/premium/sites/SpeedDialFragment$a;-><init>(Lo/pg1;)V

    sput-object v0, Lcom/snaptube/premium/sites/SpeedDialFragment;->y:Lcom/snaptube/premium/sites/SpeedDialFragment$a;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110623

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/snaptube/premium/sites/SpeedDialFragment;->z:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/snaptube/base/BaseFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->i:Ljava/util/List;

    new-instance v0, Lcom/snaptube/premium/sites/SpeedDialFragment$e;

    invoke-direct {v0, p0}, Lcom/snaptube/premium/sites/SpeedDialFragment$e;-><init>(Lcom/snaptube/premium/sites/SpeedDialFragment;)V

    iput-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->w:Landroid/view/ActionMode$Callback;

    return-void
.end method

.method public static synthetic L2(Lcom/snaptube/premium/sites/SpeedDialFragment;)Ljava/lang/Void;
    .locals 0

    invoke-static {p0}, Lcom/snaptube/premium/sites/SpeedDialFragment;->n3(Lcom/snaptube/premium/sites/SpeedDialFragment;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M2(Lo/dx2;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/snaptube/premium/sites/SpeedDialFragment;->y3(Lo/dx2;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic N2(Lcom/snaptube/premium/sites/SpeedDialFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/snaptube/premium/sites/SpeedDialFragment;->j3(Lcom/snaptube/premium/sites/SpeedDialFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic O2(Lcom/snaptube/premium/sites/SpeedDialFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/snaptube/premium/sites/SpeedDialFragment;->o3(Lcom/snaptube/premium/sites/SpeedDialFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic P2(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/snaptube/premium/sites/SpeedDialFragment;->z3(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic Q2(Lcom/snaptube/premium/sites/SpeedDialFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/premium/sites/SpeedDialFragment;->g3()V

    return-void
.end method

.method public static final synthetic R2(Lcom/snaptube/premium/sites/SpeedDialFragment;)Lcom/snaptube/premium/sites/SpeedDialFragment$c;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->h:Lcom/snaptube/premium/sites/SpeedDialFragment$c;

    return-object p0
.end method

.method public static final synthetic S2(Lcom/snaptube/premium/sites/SpeedDialFragment;)Lcom/snaptube/premium/sites/DragSortListView;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->m:Lcom/snaptube/premium/sites/DragSortListView;

    return-object p0
.end method

.method public static final synthetic T2(Lcom/snaptube/premium/sites/SpeedDialFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->j:Z

    return p0
.end method

.method public static final synthetic U2(Lcom/snaptube/premium/sites/SpeedDialFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->v:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic V2()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/snaptube/premium/sites/SpeedDialFragment;->z:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic W2(Lcom/snaptube/premium/sites/SpeedDialFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->i:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic X2(Lcom/snaptube/premium/sites/SpeedDialFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->p:Z

    return p0
.end method

.method public static final synthetic Y2(Lcom/snaptube/premium/sites/SpeedDialFragment;Lcom/snaptube/premium/sites/SpeeddialInfo;Landroid/widget/ImageView;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/snaptube/premium/sites/SpeedDialFragment;->l3(Lcom/snaptube/premium/sites/SpeeddialInfo;Landroid/widget/ImageView;)V

    return-void
.end method

.method public static final synthetic Z2(Lcom/snaptube/premium/sites/SpeedDialFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/premium/sites/SpeedDialFragment;->r3()V

    return-void
.end method

.method public static final synthetic a3(Lcom/snaptube/premium/sites/SpeedDialFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/premium/sites/SpeedDialFragment;->t3()V

    return-void
.end method

.method public static final synthetic b3(Lcom/snaptube/premium/sites/SpeedDialFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->s:Z

    return-void
.end method

.method public static final synthetic c3(Lcom/snaptube/premium/sites/SpeedDialFragment;Landroid/view/ActionMode;)V
    .locals 0

    iput-object p1, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->u:Landroid/view/ActionMode;

    return-void
.end method

.method private final i3()V
    .locals 6

    iget-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->k:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lo/sr7;->h(Landroid/view/View;ZZZILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->k:Landroid/view/View;

    if-eqz v0, :cond_1

    const v1, 0x7f09090e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const v1, 0x7f08033c

    const v2, 0x7f060108

    invoke-static {v0, v1, v2}, Lo/v88;->a(Landroidx/appcompat/widget/Toolbar;II)V

    :cond_2
    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const v1, 0x7f1100ae

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    if-eqz v0, :cond_4

    const v1, 0x7f0d0017

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->x(I)V

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$h;)V

    :cond_4
    if-eqz v0, :cond_5

    new-instance v1, Lo/rm7;

    invoke-direct {v1, p0}, Lo/rm7;-><init>(Lcom/snaptube/premium/sites/SpeedDialFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void
.end method

.method public static final j3(Lcom/snaptube/premium/sites/SpeedDialFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/snaptube/premium/sites/SpeedDialFragment;->onBackPressed()Z

    return-void
.end method

.method private final k3()V
    .locals 4

    iget-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->k:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v2, 0x7f09026a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snaptube/premium/sites/DragSortListView;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->m:Lcom/snaptube/premium/sites/DragSortListView;

    iget-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->k:Landroid/view/View;

    if-eqz v0, :cond_1

    const v2, 0x7f090499

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->v:Landroid/view/View;

    new-instance v0, Lcom/snaptube/premium/sites/SpeedDialFragment$c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext(...)"

    invoke-static {v2, v3}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, v2}, Lcom/snaptube/premium/sites/SpeedDialFragment$c;-><init>(Lcom/snaptube/premium/sites/SpeedDialFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->h:Lcom/snaptube/premium/sites/SpeedDialFragment$c;

    iget-object v2, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->m:Lcom/snaptube/premium/sites/DragSortListView;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_2
    new-instance v0, Lcom/snaptube/premium/sites/SpeedDialFragment$d;

    invoke-direct {v0, p0}, Lcom/snaptube/premium/sites/SpeedDialFragment$d;-><init>(Lcom/snaptube/premium/sites/SpeedDialFragment;)V

    iput-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->x:Landroid/database/DataSetObserver;

    iget-object v2, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->h:Lcom/snaptube/premium/sites/SpeedDialFragment$c;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_3
    iget-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->m:Lcom/snaptube/premium/sites/DragSortListView;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :goto_2
    iget-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->m:Lcom/snaptube/premium/sites/DragSortListView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p0}, Lcom/snaptube/premium/sites/DragSortListView;->setOnReorderingListener(Lcom/snaptube/premium/sites/DragSortListView$f;)V

    :cond_5
    iget-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->m:Lcom/snaptube/premium/sites/DragSortListView;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p0}, Lcom/snaptube/premium/sites/DragSortListView;->setOnStartDragListener(Lcom/snaptube/premium/sites/DragSortListView$g;)V

    :cond_6
    iget-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->m:Lcom/snaptube/premium/sites/DragSortListView;

    if-eqz v0, :cond_7

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    :cond_7
    iget-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->k:Landroid/view/View;

    if-eqz v0, :cond_8

    const v1, 0x7f0907b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/ScrollView;

    :cond_8
    iput-object v1, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->l:Landroid/widget/ScrollView;

    return-void
.end method

.method public static final n3(Lcom/snaptube/premium/sites/SpeedDialFragment;)Ljava/lang/Void;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/snaptube/premium/sites/SpeedDialFragment;->e3()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final o3(Lcom/snaptube/premium/sites/SpeedDialFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->j:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->u:Landroid/view/ActionMode;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method private final q3()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ARG_EDIT_MODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->j:Z

    const-string v1, "incognito_mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->p:Z

    const-string v1, "is_from_web"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->q:Z

    const-string v1, "pos"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->r:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private final x3()V
    .locals 3

    invoke-virtual {p0}, Lcom/snaptube/premium/sites/SpeedDialFragment;->u3()V

    iget-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/snaptube/premium/sites/b;->h(Landroid/content/Context;)Lcom/snaptube/premium/sites/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/premium/sites/b;->t()Lrx/c;

    move-result-object v0

    new-instance v1, Lcom/snaptube/premium/sites/SpeedDialFragment$updateSites$1;

    invoke-direct {v1, p0}, Lcom/snaptube/premium/sites/SpeedDialFragment$updateSites$1;-><init>(Lcom/snaptube/premium/sites/SpeedDialFragment;)V

    new-instance v2, Lo/om7;

    invoke-direct {v2, v1}, Lo/om7;-><init>(Lo/dx2;)V

    new-instance v1, Lo/pm7;

    invoke-direct {v1}, Lo/pm7;-><init>()V

    invoke-virtual {v0, v2, v1}, Lrx/c;->u0(Lo/l3;Lo/l3;)Lo/wu7;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->n:Lo/wu7;

    return-void
.end method

.method public static final y3(Lo/dx2;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lo/dx2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final z3(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public P1(Z)V
    .locals 0

    return-void
.end method

.method public Q1()V
    .locals 0

    invoke-direct {p0}, Lcom/snaptube/premium/sites/SpeedDialFragment;->x3()V

    return-void
.end method

.method public final d3()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/wc;->l(Landroid/content/Context;)V

    return-void
.end method

.method public final e3()V
    .locals 4

    iget-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->h:Lcom/snaptube/premium/sites/SpeedDialFragment$c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lo/or3;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/snaptube/premium/sites/SpeedDialFragment$c;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snaptube/premium/sites/SpeeddialInfo;

    iget-object v2, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/snaptube/premium/sites/b;->h(Landroid/content/Context;)Lcom/snaptube/premium/sites/b;

    move-result-object v2

    iget-object v1, v1, Lcom/snaptube/premium/sites/SiteInfo;->url:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/snaptube/premium/sites/b;->k(Ljava/lang/String;Z)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->h:Lcom/snaptube/premium/sites/SpeedDialFragment$c;

    invoke-static {v0}, Lo/or3;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/snaptube/premium/sites/SpeedDialFragment$c;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snaptube/premium/sites/SpeeddialInfo;

    iget-object v2, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/snaptube/premium/sites/b;->h(Landroid/content/Context;)Lcom/snaptube/premium/sites/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/snaptube/premium/sites/b;->l(Lcom/snaptube/premium/sites/SpeeddialInfo;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->h:Lcom/snaptube/premium/sites/SpeedDialFragment$c;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/snaptube/premium/sites/SpeedDialFragment$c;->m()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    iput-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->i:Ljava/util/List;

    invoke-virtual {p0}, Lcom/snaptube/premium/sites/SpeedDialFragment;->w3()V

    return-void
.end method

.method public final f3()V
    .locals 2

    iget-boolean v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->j:Z

    iget-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->h:Lcom/snaptube/premium/sites/SpeedDialFragment$c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->i:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->t:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->w:Landroid/view/ActionMode$Callback;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->u:Landroid/view/ActionMode;

    :cond_2
    return-void
.end method

.method public final g3()V
    .locals 1

    iget-boolean v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->j:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->j:Z

    iget-boolean v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->s:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/premium/sites/SpeedDialFragment;->m3()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/snaptube/premium/sites/SpeedDialFragment;->v3()V

    :goto_0
    return-void
.end method

.method public final h3(Lcom/snaptube/premium/sites/SpeeddialInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "speeddial_activity"

    iput-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->r:Ljava/lang/String;

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->r:Ljava/lang/String;

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->r:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/snaptube/premium/sites/SiteInfo;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/snaptube/premium/share/c;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/snaptube/premium/share/c;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final l3(Lcom/snaptube/premium/sites/SpeeddialInfo;Landroid/widget/ImageView;)V
    .locals 3

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-static {v0, v1}, Lo/zl1;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p2, v0, v0}, Lo/cz8;->g(Landroid/view/View;II)V

    iget-object v0, p1, Lcom/snaptube/premium/sites/SiteInfo;->largeIconUrl:Ljava/lang/String;

    const v1, 0x7f0806c1

    if-eqz v0, :cond_1

    invoke-static {v0}, Lo/cu7;->B(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/bumptech/glide/a;->x(Landroidx/fragment/app/Fragment;)Lo/pl6;

    move-result-object v0

    iget-object p1, p1, Lcom/snaptube/premium/sites/SiteInfo;->largeIconUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lo/pl6;->y(Ljava/lang/String;)Lo/dl6;

    move-result-object p1

    invoke-virtual {p1, v1}, Lo/l70;->f0(I)Lo/l70;

    move-result-object p1

    check-cast p1, Lo/dl6;

    invoke-virtual {p1, v1}, Lo/l70;->n(I)Lo/l70;

    move-result-object p1

    check-cast p1, Lo/dl6;

    invoke-virtual {p1}, Lo/l70;->g()Lo/l70;

    move-result-object p1

    check-cast p1, Lo/dl6;

    invoke-virtual {p1, p2}, Lo/dl6;->I0(Landroid/widget/ImageView;)Lo/py8;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lo/ld0;->a:Lo/ld0;

    iget-object p1, p1, Lcom/snaptube/premium/sites/SiteInfo;->url:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, p2, v2}, Lo/ld0;->e(Ljava/lang/String;ILandroid/widget/ImageView;Z)V

    :goto_1
    return-void
.end method

.method public final m3()V
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->o:Lo/wu7;

    invoke-static {v0}, Lo/fv7;->a(Lo/wu7;)V

    new-instance v0, Lo/qm7;

    invoke-direct {v0, p0}, Lo/qm7;-><init>(Lcom/snaptube/premium/sites/SpeedDialFragment;)V

    invoke-static {v0}, Lrx/c;->M(Ljava/util/concurrent/Callable;)Lrx/c;

    move-result-object v0

    sget-object v1, Lo/a58;->b:Lrx/d;

    invoke-virtual {v0, v1}, Lrx/c;->z0(Lrx/d;)Lrx/c;

    move-result-object v0

    invoke-static {}, Lo/sh;->c()Lrx/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/c;->Y(Lrx/d;)Lrx/c;

    move-result-object v0

    new-instance v1, Lcom/snaptube/premium/sites/SpeedDialFragment$f;

    invoke-direct {v1, p0}, Lcom/snaptube/premium/sites/SpeedDialFragment$f;-><init>(Lcom/snaptube/premium/sites/SpeedDialFragment;)V

    invoke-virtual {v0, v1}, Lrx/c;->x0(Lo/tu7;)Lo/wu7;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->o:Lo/wu7;

    return-void
.end method

.method public n1()V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/snaptube/base/BaseFragment;->onAttach(Landroid/content/Context;)V

    invoke-static {p1}, Lo/fc1;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snaptube/premium/sites/SpeedDialFragment$b;

    invoke-interface {v0, p0}, Lcom/snaptube/premium/sites/SpeedDialFragment$b;->H(Lcom/snaptube/premium/sites/SpeedDialFragment;)V

    iput-object p1, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->g:Landroid/content/Context;

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    iget-boolean v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->j:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/premium/sites/SpeedDialFragment;->g3()V

    return v1

    :cond_0
    :try_start_0
    invoke-static {p0}, Lo/mt2;->a(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->P()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0c037f

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->k:Landroid/view/View;

    invoke-direct {p0}, Lcom/snaptube/premium/sites/SpeedDialFragment;->q3()V

    invoke-direct {p0}, Lcom/snaptube/premium/sites/SpeedDialFragment;->i3()V

    invoke-direct {p0}, Lcom/snaptube/premium/sites/SpeedDialFragment;->k3()V

    invoke-direct {p0}, Lcom/snaptube/premium/sites/SpeedDialFragment;->x3()V

    iget-object p1, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/snaptube/premium/sites/b;->h(Landroid/content/Context;)Lcom/snaptube/premium/sites/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/snaptube/premium/sites/b;->c(Lcom/snaptube/premium/sites/b$c;)V

    iget-boolean p1, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->j:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/premium/sites/SpeedDialFragment;->f3()V

    :cond_0
    iget-boolean p1, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->p:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->k:Landroid/view/View;

    const p2, 0x7f060072

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p2, p3}, Landroidx/core/content/res/a;->d(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    const v1, 0x7f0908a0

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_2
    move-object p1, p3

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, p3

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroidx/core/content/res/a;->d(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    iget-object p1, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->k:Landroid/view/View;

    if-eqz p1, :cond_5

    new-instance p2, Lo/nm7;

    invoke-direct {p2, p0}, Lo/nm7;-><init>(Lcom/snaptube/premium/sites/SpeedDialFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object p1, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->k:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/snaptube/premium/sites/b;->h(Landroid/content/Context;)Lcom/snaptube/premium/sites/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snaptube/premium/sites/b;->y(Lcom/snaptube/premium/sites/b$c;)V

    iget-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->x:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->h:Lcom/snaptube/premium/sites/SpeedDialFragment$c;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    invoke-super {p0}, Lcom/snaptube/base/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/premium/sites/SpeedDialFragment;->u3()V

    invoke-super {p0}, Lcom/snaptube/base/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Lcom/snaptube/base/BaseFragment;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->g:Landroid/content/Context;

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    const-string p1, "view"

    invoke-static {p2, p1}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->j:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->h:Lcom/snaptube/premium/sites/SpeedDialFragment$c;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p3}, Lcom/snaptube/premium/sites/SpeedDialFragment$c;->i(I)Lcom/snaptube/premium/sites/SpeeddialInfo;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/snaptube/premium/sites/SpeedDialFragment;->p3(Lcom/snaptube/premium/sites/SpeeddialInfo;)V

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x7f09062d

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/snaptube/premium/sites/SpeedDialFragment;->f3()V

    goto :goto_2

    :cond_2
    :goto_1
    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7f090620

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/snaptube/premium/sites/SpeedDialFragment;->d3()V

    :cond_4
    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/snaptube/base/BaseFragment;->onPause()V

    invoke-virtual {p0}, Lcom/snaptube/premium/sites/SpeedDialFragment;->n1()V

    iget-boolean v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/premium/sites/SpeedDialFragment;->g3()V

    iget-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->u:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-virtual {p0}, Lcom/snaptube/premium/sites/SpeedDialFragment;->u0()V

    invoke-super {p0}, Lcom/snaptube/base/BaseFragment;->onResume()V

    sget-object v0, Lcom/snaptube/premium/minibar/c;->a:Lcom/snaptube/premium/minibar/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/snaptube/premium/minibar/c;->d(Lcom/snaptube/premium/minibar/c;Landroid/app/Activity;FILjava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Lcom/snaptube/base/BaseFragment;->onStart()V

    invoke-static {}, Lo/vq6;->K()Lo/kh3;

    move-result-object v0

    const-string v1, "/list/sites"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lo/kh3;->h(Ljava/lang/String;Lo/ah3;)V

    return-void
.end method

.method public final p3(Lcom/snaptube/premium/sites/SpeeddialInfo;)V
    .locals 3

    if-eqz p1, :cond_1

    sget-object v0, Lo/jm7;->a:Lo/jm7$a;

    iget-object v1, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->g:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lo/jm7$a;->b(Landroid/content/Context;Lcom/snaptube/premium/sites/SpeeddialInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->g:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->q:Z

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/sites/SpeedDialFragment;->h3(Lcom/snaptube/premium/sites/SpeeddialInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/snaptube/premium/NavigationManager;->E0(Landroid/content/Context;Lcom/snaptube/premium/sites/SpeeddialInfo;ZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final r3()V
    .locals 6

    iget-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->h:Lcom/snaptube/premium/sites/SpeedDialFragment$c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/snaptube/premium/sites/SpeedDialFragment$c;->l()Ljava/util/List;

    move-result-object v1

    :cond_1
    :goto_0
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/snaptube/premium/sites/SpeeddialInfo;

    const-string v5, "<"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/snaptube/premium/sites/SiteInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ">"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/snaptube/premium/log/ReportPropertyBuilder;

    invoke-direct {v1}, Lcom/snaptube/premium/log/ReportPropertyBuilder;-><init>()V

    const-string v2, "Exposure"

    invoke-virtual {v1, v2}, Lcom/snaptube/premium/log/ReportPropertyBuilder;->setEventName(Ljava/lang/String;)Lo/ah3;

    move-result-object v1

    const-string v2, "speeddial_exposure"

    invoke-interface {v1, v2}, Lo/ah3;->setAction(Ljava/lang/String;)Lo/ah3;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    const/16 v1, 0xbba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "card_id"

    invoke-interface {v0, v2, v1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    const-string v1, "position_source"

    const-string v2, "browser"

    invoke-interface {v0, v1, v2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object v0

    invoke-interface {v0}, Lo/ah3;->reportEvent()V

    :cond_4
    :goto_2
    return-void
.end method

.method public final s3(Landroid/view/View;Lcom/snaptube/premium/sites/SpeeddialInfo;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p2, Lcom/snaptube/premium/sites/SiteInfo;->url:Ljava/lang/String;

    const-string v0, "url"

    invoke-static {p2, v0}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "WhatsAppStatusActivity"

    const/4 v3, 0x0

    invoke-static {p2, v2, v3, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->S(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->Q4()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance v0, Lcom/snaptube/premium/sites/SpeedDialFragment$g;

    invoke-direct {v0, p1}, Lcom/snaptube/premium/sites/SpeedDialFragment$g;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method public t2(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0

    const-string p1, "view"

    invoke-static {p2, p1}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->h:Lcom/snaptube/premium/sites/SpeedDialFragment$c;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3}, Lcom/snaptube/premium/sites/SpeedDialFragment$c;->n(I)I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/premium/sites/SpeedDialFragment;->f3()V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final t3()V
    .locals 7

    const-string v0, "id"

    const-string v1, "action_mode_bar"

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "android"

    invoke-virtual {v3, v1, v0, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-lez v2, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_1
    move-object v1, v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    if-eqz v1, :cond_2

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static/range {v1 .. v6}, Lo/sr7;->h(Landroid/view/View;ZZZILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public u0()V
    .locals 0

    return-void
.end method

.method public final u3()V
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->n:Lo/wu7;

    invoke-static {v0}, Lo/fv7;->a(Lo/wu7;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->n:Lo/wu7;

    iget-object v1, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->o:Lo/wu7;

    invoke-static {v1}, Lo/fv7;->a(Lo/wu7;)V

    iput-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->o:Lo/wu7;

    return-void
.end method

.method public final v3()V
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->t:Ljava/util/List;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->i:Ljava/util/List;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->t:Ljava/util/List;

    iget-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->h:Lcom/snaptube/premium/sites/SpeedDialFragment$c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/snaptube/premium/sites/SpeedDialFragment$c;->g()V

    :cond_1
    iget-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->h:Lcom/snaptube/premium/sites/SpeedDialFragment$c;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->i:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/sites/SpeedDialFragment$c;->o(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public final w3()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->i:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/snaptube/premium/sites/b;->h(Landroid/content/Context;)Lcom/snaptube/premium/sites/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snaptube/premium/sites/b;->C(Ljava/util/List;)V

    return-void
.end method

.method public z1(II)V
    .locals 2

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_7

    iget-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    goto :goto_3

    :cond_1
    if-ltz p2, :cond_7

    iget-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-ge p2, p1, :cond_3

    move v0, p2

    goto :goto_0

    :cond_3
    move v0, p1

    :goto_0
    if-ge p2, p1, :cond_4

    goto :goto_1

    :cond_4
    move p1, p2

    :goto_1
    if-gt v0, p1, :cond_5

    :goto_2
    iget-object p2, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->i:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/snaptube/premium/sites/SpeeddialInfo;

    invoke-virtual {p2, v0}, Lcom/snaptube/premium/sites/SpeeddialInfo;->setPosition(I)V

    if-eq v0, p1, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->h:Lcom/snaptube/premium/sites/SpeedDialFragment$c;

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    iget-object p2, p0, Lcom/snaptube/premium/sites/SpeedDialFragment;->i:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/snaptube/premium/sites/SpeedDialFragment$c;->o(Ljava/util/List;)V

    :cond_7
    :goto_3
    return-void
.end method
