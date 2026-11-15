.class public final Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;
.super Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$a;,
        Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u0000 Y2\u00020\u0001:\u0002Z[B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0003\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0006H\u0017\u00a2\u0006\u0004\u0008\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u0003J\u000f\u0010\u000c\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\u0003J\u000f\u0010\r\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u0003J\u000f\u0010\u000f\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0003J\u000f\u0010\u0010\u001a\u00020\u0006H\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\u0003J\u000f\u0010\u0011\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0003J\u0017\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0012H\u0003\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0003J\u000f\u0010\u0017\u001a\u00020\u0006H\u0003\u00a2\u0006\u0004\u0008\u0017\u0010\u0003J\u000f\u0010\u0018\u001a\u00020\u0006H\u0003\u00a2\u0006\u0004\u0008\u0018\u0010\u0003J\u001d\u0010\u001c\u001a\u00020\u00062\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0017\u0010 \u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u001eH\u0002\u00a2\u0006\u0004\u0008 \u0010!R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0016\u0010)\u001a\u00020&8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0016\u0010+\u001a\u00020&8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008*\u0010(R\u0016\u0010-\u001a\u00020&8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008,\u0010(R\u0016\u00101\u001a\u00020.8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0016\u00105\u001a\u0002028\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u0016\u00107\u001a\u0002028\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00086\u00104R\u0016\u0010;\u001a\u0002088\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u0018\u0010?\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u0018\u0010A\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008@\u0010>R\u0018\u0010C\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u0010>R\u0016\u0010E\u001a\u00020<8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008D\u0010>R\u0016\u0010H\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u0016\u0010L\u001a\u00020I8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008J\u0010KR\u0016\u0010N\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008M\u0010FR\u0018\u0010R\u001a\u0004\u0018\u00010O8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008P\u0010QR\u001b\u0010X\u001a\u00020S8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008T\u0010U\u001a\u0004\u0008V\u0010W\u00a8\u0006\\"
    }
    d2 = {
        "Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;",
        "Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Lzfb;",
        "t0",
        "(Landroid/view/View;)V",
        "E0",
        "initView",
        "onResume",
        "onPause",
        "onDestroy",
        "onBackgroundLayoutInit",
        "y0",
        "u0",
        "C0",
        "Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;",
        "selectedOption",
        "s0",
        "(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;)V",
        "B0",
        "p0",
        "D0",
        "Lcom/transsion/cloud_drive/base/network/response/ApiResponse;",
        "Lcom/transsion/cloud_drive/base/api/model/FileShareLink;",
        "response",
        "r0",
        "(Lcom/transsion/cloud_drive/base/network/response/ApiResponse;)V",
        "",
        "isLoading",
        "A0",
        "(Z)V",
        "Lnk1;",
        "N",
        "Lnk1;",
        "activityScope",
        "Landroid/widget/TextView;",
        "O",
        "Landroid/widget/TextView;",
        "tvValidityPeriod",
        "P",
        "tvSharingScope",
        "Q",
        "tvShareLink",
        "Landroid/widget/ImageView;",
        "R",
        "Landroid/widget/ImageView;",
        "ivCopyLink",
        "Landroid/widget/LinearLayout;",
        "S",
        "Landroid/widget/LinearLayout;",
        "llValidityPeriod",
        "T",
        "llSharingScope",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "U",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "rvSharePlatforms",
        "",
        "V",
        "Ljava/lang/String;",
        "fileId",
        "W",
        "fileName",
        "X",
        "shareId",
        "Y",
        "shareUrl",
        "Z",
        "Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;",
        "validityPeriod",
        "",
        "a0",
        "I",
        "validityPeriodDays",
        "b0",
        "hasCopiedLink",
        "Lcom/transsion/playercommon/share/model/ShareContent;",
        "c0",
        "Lcom/transsion/playercommon/share/model/ShareContent;",
        "shareContent",
        "Landroid/widget/PopupMenu;",
        "d0",
        "Lyi5;",
        "q0",
        "()Landroid/widget/PopupMenu;",
        "validityPopupMenu",
        "e0",
        "ValidityPeriodOption",
        "a",
        "clouddrive_release"
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
.field public static final e0:Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$a;


# instance fields
.field public final N:Lnk1;

.field public O:Landroid/widget/TextView;

.field public P:Landroid/widget/TextView;

.field public Q:Landroid/widget/TextView;

.field public R:Landroid/widget/ImageView;

.field public S:Landroid/widget/LinearLayout;

.field public T:Landroid/widget/LinearLayout;

.field public U:Landroidx/recyclerview/widget/RecyclerView;

.field public V:Ljava/lang/String;

.field public W:Ljava/lang/String;

.field public X:Ljava/lang/String;

.field public Y:Ljava/lang/String;

.field public Z:Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;

.field public a0:I

.field public b0:Z

.field public c0:Lcom/transsion/playercommon/share/model/ShareContent;

.field public final d0:Lyi5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->e0:Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lv6a;->b(Lkotlinx/coroutines/j;ILjava/lang/Object;)Lpb1;

    move-result-object v0

    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/d;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/d;->a(Lkotlin/coroutines/d;)Lnk1;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->N:Lnk1;

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->Y:Ljava/lang/String;

    sget-object v0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;->ONE_WEEK:Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;

    iput-object v0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->Z:Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;

    const/4 v0, 0x7

    iput v0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->a0:I

    new-instance v0, Liz0;

    invoke-direct {v0, p0}, Liz0;-><init>(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;)V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->d0:Lyi5;

    return-void
.end method

.method private final E0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->O:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "tvValidityPeriod"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->Z:Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;

    invoke-virtual {v2}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;->getStringResId()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->Q:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const-string v0, "tvShareLink"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->Y:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->p0()V

    return-void
.end method

.method public static final F0(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;)Landroid/widget/PopupMenu;
    .locals 7

    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->S:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    const-string v1, "llValidityPeriod"

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-direct {v0, p0, v1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;->getEntries()Ldb3;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_1

    invoke-static {}, Ly71;->u()V

    :cond_1
    check-cast v4, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v6

    invoke-virtual {v4}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;->getStringResId()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move v3, v5

    goto :goto_0

    :cond_2
    new-instance v1, Lkz0;

    invoke-direct {v1, p0}, Lkz0;-><init>(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    return-object v0
.end method

.method public static final G0(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;Landroid/view/MenuItem;)Z
    .locals 1

    invoke-static {}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;->getEntries()Ldb3;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->s0(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic f0(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->G0(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g0(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->v0(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h0(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;)Landroid/widget/PopupMenu;
    .locals 0

    invoke-static {p0}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->F0(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;)Landroid/widget/PopupMenu;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i0(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->x0(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j0(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;Lcom/transsion/playercommon/share/model/SharePlatformInfo;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->z0(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;Lcom/transsion/playercommon/share/model/SharePlatformInfo;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k0(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->w0(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic l0(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->W:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic m0(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;)I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->a0:I

    return p0
.end method

.method public static final synthetic n0(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;Lcom/transsion/cloud_drive/base/network/response/ApiResponse;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->r0(Lcom/transsion/cloud_drive/base/network/response/ApiResponse;)V

    return-void
.end method

.method public static final synthetic o0(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->A0(Z)V

    return-void
.end method

.method private final t0(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/transsion/netdisk/R$id;->tv_validity_period:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->O:Landroid/widget/TextView;

    sget v0, Lcom/transsion/netdisk/R$id;->tv_sharing_scope:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->P:Landroid/widget/TextView;

    sget v0, Lcom/transsion/netdisk/R$id;->tv_share_link:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->Q:Landroid/widget/TextView;

    sget v0, Lcom/transsion/netdisk/R$id;->iv_copy_link:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->R:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/netdisk/R$id;->ll_validity_period:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->S:Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/netdisk/R$id;->ll_sharing_scope:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->T:Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/netdisk/R$id;->rv_share_platforms:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->U:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->y0()V

    return-void
.end method

.method public static final v0(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->Y:Ljava/lang/String;

    invoke-static {p1}, Ldy0;->a(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->b0:Z

    sget-object p1, Lbz5;->a:Lbz5$a;

    iget-object p0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->Z:Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;

    invoke-virtual {p0}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;->getDays()I

    move-result p0

    invoke-virtual {p1, p0}, Lbz5$a;->c(I)V

    return-void
.end method

.method public static final w0(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->C0()V

    return-void
.end method

.method public static final x0(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->B0()V

    return-void
.end method

.method public static final z0(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;Lcom/transsion/playercommon/share/model/SharePlatformInfo;)Lzfb;
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->c0:Lcom/transsion/playercommon/share/model/ShareContent;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/transsion/playercommon/share/ShareManager;->a:Lcom/transsion/playercommon/share/ShareManager;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    const-string v2, "getBaseContext(...)"

    invoke-static {p0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/playercommon/share/model/SharePlatformInfo;->getOption()Lcom/transsion/playercommon/share/model/ShareOption;

    move-result-object p1

    invoke-virtual {v1, p0, v0, p1}, Lcom/transsion/playercommon/share/ShareManager;->e(Landroid/content/Context;Lcom/transsion/playercommon/share/model/ShareContent;Lcom/transsion/playercommon/share/model/ShareOption;)V

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method


# virtual methods
.method public final A0(Z)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->R:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "ivCopyLink"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->U:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_1

    const-string p0, "rvSharePlatforms"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    xor-int/lit8 p0, p1, 0x1

    invoke-virtual {v1, p0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final B0()V
    .locals 0

    return-void
.end method

.method public final C0()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->q0()Landroid/widget/PopupMenu;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method public final D0()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->X:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->N:Lnk1;

    new-instance v4, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$updateShareLink$1$1;

    const/4 v2, 0x0

    invoke-direct {v4, p0, v0, v2}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$updateShareLink$1$1;-><init>(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;Ljava/lang/String;Lwh1;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    :cond_0
    return-void
.end method

.method public initView()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->initView()V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/netdisk/R$layout;->dialog_cloud_drive_share:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;->addPage(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitleLayoutVisible(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setCloseIconVisibility(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "file_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->V:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "file_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->W:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->t0(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->u0()V

    invoke-direct {p0}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->E0()V

    return-void
.end method

.method public onBackgroundLayoutInit()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->onBackgroundLayoutInit()V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->getRealContainerView()Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    move-result-object v0

    sget v1, Lcom/transsion/netdisk/R$color;->os_altitude_primary_color:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->onDestroy()V

    iget-object p0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->N:Lnk1;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lkotlinx/coroutines/d;->f(Lnk1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->onPause()V

    iget-boolean p0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->b0:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/transsion/cloud/share/KtShareLinkHandleManager;->a:Lcom/transsion/cloud/share/KtShareLinkHandleManager;

    invoke-virtual {p0}, Lcom/transsion/cloud/share/KtShareLinkHandleManager;->m()V

    const-string p0, "Recorded internal copy timestamp on destroy"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "CloudDriveBottomShareActivity"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->onResume()V

    sget-object p0, Lbz5;->a:Lbz5$a;

    invoke-virtual {p0}, Lbz5$a;->f()V

    return-void
.end method

.method public final p0()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->V:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->N:Lnk1;

    new-instance v4, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$generateShareLink$1$1;

    const/4 v2, 0x0

    invoke-direct {v4, p0, v0, v2}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$generateShareLink$1$1;-><init>(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;Ljava/lang/String;Lwh1;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    :cond_0
    return-void
.end method

.method public final q0()Landroid/widget/PopupMenu;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->d0:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/PopupMenu;

    return-object p0
.end method

.method public final r0(Lcom/transsion/cloud_drive/base/network/response/ApiResponse;)V
    .locals 9

    instance-of v0, p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    const-string v1, "CloudDriveBottomShareActivity"

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->A0(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateShareLink success: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast p1, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->getShareUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->Y:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->getShareId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->X:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->Q:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const-string p1, "tvShareLink"

    invoke-static {p1}, Ly45;->B(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->Y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/transsion/playercommon/share/model/ShareContent;

    iget-object v2, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->Y:Ljava/lang/String;

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/transsion/playercommon/share/model/ShareContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->c0:Lcom/transsion/playercommon/share/model/ShareContent;

    goto :goto_0

    :cond_1
    const-string p0, "generateShareLink error:"

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final s0(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;)V
    .locals 1

    iput-object p1, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->Z:Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;

    invoke-virtual {p1}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;->getDays()I

    move-result v0

    iput v0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->a0:I

    iget-object v0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->O:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "tvValidityPeriod"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity$ValidityPeriodOption;->getStringResId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->X:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->D0()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final u0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->R:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "ivCopyLink"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    new-instance v2, Llz0;

    invoke-direct {v2, p0}, Llz0;-><init>(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->S:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    const-string v0, "llValidityPeriod"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    new-instance v2, Lmz0;

    invoke-direct {v2, p0}, Lmz0;-><init>(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->T:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    const-string v0, "llSharingScope"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    new-instance v0, Lnz0;

    invoke-direct {v0, p0}, Lnz0;-><init>(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final y0()V
    .locals 3

    sget-object v0, Lcom/transsion/playercommon/share/ShareManager;->a:Lcom/transsion/playercommon/share/ShareManager;

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/share/ShareManager;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/transsion/playercommon/share/view/SocialPlatformAdapter;

    new-instance v2, Ljz0;

    invoke-direct {v2, p0}, Ljz0;-><init>(Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;)V

    invoke-direct {v1, v0, v2}, Lcom/transsion/playercommon/share/view/SocialPlatformAdapter;-><init>(Ljava/util/List;Le74;)V

    iget-object p0, p0, Lcom/transsion/cloud/share/CloudDriveBottomShareActivity;->U:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_0

    const-string p0, "rvSharePlatforms"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
