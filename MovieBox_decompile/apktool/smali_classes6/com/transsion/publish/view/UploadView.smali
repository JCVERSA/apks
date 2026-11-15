.class public final Lcom/transsion/publish/view/UploadView;
.super Lcom/transsion/publish/view/BaseFloatView;
.source "source.java"

# interfaces
.implements Landroidx/lifecycle/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/publish/view/UploadView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0083\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001V\u0018\u0000 ]2\u00020\u00012\u00020\u0002:\u0001^B\u0011\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B\u001b\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\tB%\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0001\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0005\u0010\u000cJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0006J\u000f\u0010\u000f\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0010J\u000f\u0010\u0013\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0010J\u000f\u0010\u0014\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0010J\u000f\u0010\u0015\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0010J\u0019\u0010\u0017\u001a\u00020\r2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\nH\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0010J\u000f\u0010\u001a\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0010J\u000f\u0010\u001b\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u0010J\u0017\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008 \u0010!J\u0017\u0010$\u001a\u00020\r2\u0008\u0010#\u001a\u0004\u0018\u00010\"\u00a2\u0006\u0004\u0008$\u0010%J\u0017\u0010(\u001a\u00020\r2\u0008\u0010\'\u001a\u0004\u0018\u00010&\u00a2\u0006\u0004\u0008(\u0010)R\u0018\u0010#\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0014\u0010/\u001a\u00020,8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0018\u0010\'\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0018\u00105\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u0018\u00107\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u00104R\u0018\u0010;\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u0018\u0010=\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008<\u00104R\u0018\u0010A\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u0018\u0010E\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0016\u0010G\u001a\u00020&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u00101R\u0016\u0010I\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010\u001aR\u0016\u0010K\u001a\u00020,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008J\u0010.R\u0016\u0010N\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010MR\u0016\u0010P\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010MR\u0014\u0010S\u001a\u00020Q8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010RR\u0014\u0010T\u001a\u00020Q8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010RR\u0014\u0010U\u001a\u00020Q8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010RR\u0014\u0010X\u001a\u00020V8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010WR\u0014\u0010\\\u001a\u00020Y8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008Z\u0010[\u00a8\u0006_"
    }
    d2 = {
        "Lcom/transsion/publish/view/UploadView;",
        "Lcom/transsion/publish/view/BaseFloatView;",
        "Landroidx/lifecycle/u;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "x",
        "E",
        "()V",
        "C",
        "t",
        "u",
        "s",
        "H",
        "progress",
        "K",
        "(Ljava/lang/Integer;)V",
        "G",
        "I",
        "w",
        "",
        "collapse",
        "v",
        "(Z)V",
        "A",
        "()Z",
        "Lcom/transsion/publish/bean/PublishResult;",
        "eventBean",
        "showFloatView",
        "(Lcom/transsion/publish/bean/PublishResult;)V",
        "",
        "pageName",
        "setPageName",
        "(Ljava/lang/String;)V",
        "e",
        "Lcom/transsion/publish/bean/PublishResult;",
        "",
        "f",
        "J",
        "dismissTime",
        "g",
        "Ljava/lang/String;",
        "Landroid/widget/TextView;",
        "h",
        "Landroid/widget/TextView;",
        "ufv_tv_progress",
        "i",
        "ufv_tv_status",
        "Landroid/widget/ImageView;",
        "j",
        "Landroid/widget/ImageView;",
        "ufv_iv_retry",
        "k",
        "right_state",
        "Landroid/widget/RelativeLayout;",
        "l",
        "Landroid/widget/RelativeLayout;",
        "ufv_view2",
        "Landroidx/lifecycle/w;",
        "m",
        "Landroidx/lifecycle/w;",
        "mLifecycleRegistry",
        "n",
        "postId",
        "o",
        "sourceType",
        "p",
        "lastSucceedTime",
        "q",
        "Z",
        "isLoadCover",
        "r",
        "isShowAnima",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Runnable;",
        "runnable",
        "netRunnable",
        "allAnimaRunnable",
        "com/transsion/publish/view/UploadView$c",
        "Lcom/transsion/publish/view/UploadView$c;",
        "netListener",
        "Landroidx/lifecycle/Lifecycle;",
        "getLifecycle",
        "()Landroidx/lifecycle/Lifecycle;",
        "lifecycle",
        "Companion",
        "a",
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
.field public static final Companion:Lcom/transsion/publish/view/UploadView$a;

.field public static final failed:I = 0x3

.field public static final posting:I = 0x1

.field public static final success:I = 0x2

.field private static final w:Ljava/lang/String;


# instance fields
.field private e:Lcom/transsion/publish/bean/PublishResult;

.field private final f:J

.field private g:Ljava/lang/String;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroidx/lifecycle/w;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:J

.field private q:Z

.field private r:Z

.field private final s:Ljava/lang/Runnable;

.field private final t:Ljava/lang/Runnable;

.field private final u:Ljava/lang/Runnable;

.field private final v:Lcom/transsion/publish/view/UploadView$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/publish/view/UploadView$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/publish/view/UploadView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/publish/view/UploadView;->Companion:Lcom/transsion/publish/view/UploadView$a;

    .line 8
    .line 9
    const-string v0, "UploadView"

    .line 10
    .line 11
    sput-object v0, Lcom/transsion/publish/view/UploadView;->w:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/publish/view/BaseFloatView;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x1388

    .line 2
    iput-wide v0, p0, Lcom/transsion/publish/view/UploadView;->f:J

    .line 3
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/publish/view/UploadView;->n:Ljava/lang/String;

    .line 4
    new-instance v0, Landroidx/lifecycle/w;

    invoke-direct {v0, p0}, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/u;)V

    iput-object v0, p0, Lcom/transsion/publish/view/UploadView;->m:Landroidx/lifecycle/w;

    .line 5
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/w;->n(Landroidx/lifecycle/Lifecycle$State;)V

    .line 6
    new-instance v0, Lro/p;

    invoke-direct {v0, p0}, Lro/p;-><init>(Lcom/transsion/publish/view/UploadView;)V

    iput-object v0, p0, Lcom/transsion/publish/view/UploadView;->s:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lro/q;

    invoke-direct {v0, p0}, Lro/q;-><init>(Lcom/transsion/publish/view/UploadView;)V

    iput-object v0, p0, Lcom/transsion/publish/view/UploadView;->t:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lro/r;

    invoke-direct {v0, p0}, Lro/r;-><init>(Lcom/transsion/publish/view/UploadView;)V

    iput-object v0, p0, Lcom/transsion/publish/view/UploadView;->u:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lcom/transsion/publish/view/UploadView$c;

    invoke-direct {v0}, Lcom/transsion/publish/view/UploadView$c;-><init>()V

    iput-object v0, p0, Lcom/transsion/publish/view/UploadView;->v:Lcom/transsion/publish/view/UploadView$c;

    .line 10
    invoke-direct {p0, p1}, Lcom/transsion/publish/view/UploadView;->x(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/transsion/publish/view/BaseFloatView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, 0x1388

    .line 12
    iput-wide v0, p0, Lcom/transsion/publish/view/UploadView;->f:J

    .line 13
    const-string p2, ""

    iput-object p2, p0, Lcom/transsion/publish/view/UploadView;->n:Ljava/lang/String;

    .line 14
    new-instance p2, Landroidx/lifecycle/w;

    invoke-direct {p2, p0}, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/u;)V

    iput-object p2, p0, Lcom/transsion/publish/view/UploadView;->m:Landroidx/lifecycle/w;

    .line 15
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p2, v0}, Landroidx/lifecycle/w;->n(Landroidx/lifecycle/Lifecycle$State;)V

    .line 16
    new-instance p2, Lro/p;

    invoke-direct {p2, p0}, Lro/p;-><init>(Lcom/transsion/publish/view/UploadView;)V

    iput-object p2, p0, Lcom/transsion/publish/view/UploadView;->s:Ljava/lang/Runnable;

    .line 17
    new-instance p2, Lro/q;

    invoke-direct {p2, p0}, Lro/q;-><init>(Lcom/transsion/publish/view/UploadView;)V

    iput-object p2, p0, Lcom/transsion/publish/view/UploadView;->t:Ljava/lang/Runnable;

    .line 18
    new-instance p2, Lro/r;

    invoke-direct {p2, p0}, Lro/r;-><init>(Lcom/transsion/publish/view/UploadView;)V

    iput-object p2, p0, Lcom/transsion/publish/view/UploadView;->u:Ljava/lang/Runnable;

    .line 19
    new-instance p2, Lcom/transsion/publish/view/UploadView$c;

    invoke-direct {p2}, Lcom/transsion/publish/view/UploadView$c;-><init>()V

    iput-object p2, p0, Lcom/transsion/publish/view/UploadView;->v:Lcom/transsion/publish/view/UploadView$c;

    .line 20
    invoke-direct {p0, p1}, Lcom/transsion/publish/view/UploadView;->x(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/publish/view/BaseFloatView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p2, 0x1388

    .line 22
    iput-wide p2, p0, Lcom/transsion/publish/view/UploadView;->f:J

    .line 23
    const-string p2, ""

    iput-object p2, p0, Lcom/transsion/publish/view/UploadView;->n:Ljava/lang/String;

    .line 24
    new-instance p2, Landroidx/lifecycle/w;

    invoke-direct {p2, p0}, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/u;)V

    iput-object p2, p0, Lcom/transsion/publish/view/UploadView;->m:Landroidx/lifecycle/w;

    .line 25
    sget-object p3, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p2, p3}, Landroidx/lifecycle/w;->n(Landroidx/lifecycle/Lifecycle$State;)V

    .line 26
    new-instance p2, Lro/p;

    invoke-direct {p2, p0}, Lro/p;-><init>(Lcom/transsion/publish/view/UploadView;)V

    iput-object p2, p0, Lcom/transsion/publish/view/UploadView;->s:Ljava/lang/Runnable;

    .line 27
    new-instance p2, Lro/q;

    invoke-direct {p2, p0}, Lro/q;-><init>(Lcom/transsion/publish/view/UploadView;)V

    iput-object p2, p0, Lcom/transsion/publish/view/UploadView;->t:Ljava/lang/Runnable;

    .line 28
    new-instance p2, Lro/r;

    invoke-direct {p2, p0}, Lro/r;-><init>(Lcom/transsion/publish/view/UploadView;)V

    iput-object p2, p0, Lcom/transsion/publish/view/UploadView;->u:Ljava/lang/Runnable;

    .line 29
    new-instance p2, Lcom/transsion/publish/view/UploadView$c;

    invoke-direct {p2}, Lcom/transsion/publish/view/UploadView$c;-><init>()V

    iput-object p2, p0, Lcom/transsion/publish/view/UploadView;->v:Lcom/transsion/publish/view/UploadView$c;

    .line 30
    invoke-direct {p0, p1}, Lcom/transsion/publish/view/UploadView;->x(Landroid/content/Context;)V

    return-void
.end method

.method private final A()Z
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    return v1
.end method

.method private static final B(Lcom/transsion/publish/view/UploadView;)V
    .locals 1

    .line 1
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/transsion/publish/view/UploadView;->v:Lcom/transsion/publish/view/UploadView$c;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lyg/l;->m(Lyg/m;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final C()V
    .locals 7

    .line 1
    new-instance v6, Lro/v;

    .line 2
    .line 3
    invoke-direct {v6, p0}, Lro/v;-><init>(Lcom/transsion/publish/view/UploadView;)V

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
    const-class v1, Lcom/transsion/publish/bean/PublishResult;

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

.method private static final D(Lcom/transsion/publish/view/UploadView;Lcom/transsion/publish/bean/PublishResult;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/transsion/publish/view/UploadView;->showFloatView(Lcom/transsion/publish/bean/PublishResult;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private final E()V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/publish/PublishManager;->Companion:Lcom/transsion/publish/PublishManager$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/publish/PublishManager$a;->a()Lcom/transsion/publish/PublishManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/transsion/publish/PublishManager;->retry()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private static final F(Lcom/transsion/publish/view/UploadView;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/transsion/publish/view/UploadView;->v(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private final G()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/transsion/publish/view/UploadView;->u()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/transsion/publish/view/UploadView;->q:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/transsion/publish/view/UploadView;->r:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->h:Landroid/widget/TextView;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/16 v2, 0x8

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->i:Landroid/widget/TextView;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-direct {p0, v0}, Lcom/transsion/publish/view/UploadView;->v(Z)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/transsion/publish/view/UploadView;->i:Landroid/widget/TextView;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    sget v1, Lcom/transsion/publish/R$string;->postint_state_fail:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 35
    .line 36
    .line 37
    :cond_2
    iget-object v0, p0, Lcom/transsion/publish/view/UploadView;->k:Landroid/widget/TextView;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    sget v1, Lcom/transsion/publish/R$string;->postint_state_retry:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 44
    .line 45
    .line 46
    :cond_3
    iget-object v0, p0, Lcom/transsion/publish/view/UploadView;->k:Landroid/widget/TextView;

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    sget v1, Lcom/tn/lib/widget/R$color;->cl01:I

    .line 51
    .line 52
    invoke-static {v1}, Lcom/blankj/utilcode/util/h;->a(I)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    .line 58
    .line 59
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->getH()Landroid/os/Handler;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->s:Ljava/lang/Runnable;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->getH()Landroid/os/Handler;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->u:Ljava/lang/Runnable;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->getH()Landroid/os/Handler;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->u:Ljava/lang/Runnable;

    .line 82
    .line 83
    iget-wide v2, p0, Lcom/transsion/publish/view/UploadView;->f:J

    .line 84
    .line 85
    const/4 v4, 0x2

    .line 86
    int-to-long v4, v4

    .line 87
    mul-long/2addr v2, v4

    .line 88
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method private final H()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/publish/view/UploadView;->s()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/publish/view/UploadView;->h:Landroid/widget/TextView;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/transsion/publish/view/UploadView;->i:Landroid/widget/TextView;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/transsion/publish/view/UploadView;->i:Landroid/widget/TextView;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    sget v1, Lcom/transsion/publish/R$string;->postint_state_posted:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 26
    .line 27
    .line 28
    :cond_2
    iget-object v0, p0, Lcom/transsion/publish/view/UploadView;->k:Landroid/widget/TextView;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    sget v1, Lcom/transsion/publish/R$string;->postint_state_cancel:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 35
    .line 36
    .line 37
    :cond_3
    iget-object v0, p0, Lcom/transsion/publish/view/UploadView;->h:Landroid/widget/TextView;

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    const-string v1, "0%"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    :cond_4
    return-void
.end method

.method private final I()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/transsion/publish/view/UploadView;->p:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Lcom/transsion/publish/view/UploadView;->p:J

    .line 14
    .line 15
    sub-long/2addr v0, v2

    .line 16
    const-wide/16 v2, 0xbb8

    .line 17
    .line 18
    cmp-long v0, v0, v2

    .line 19
    .line 20
    if-gtz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->dismiss()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-direct {p0}, Lcom/transsion/publish/view/UploadView;->t()V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/transsion/publish/view/UploadView;->q:Z

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/transsion/publish/view/UploadView;->r:Z

    .line 36
    .line 37
    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->h:Landroid/widget/TextView;

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    const/16 v2, 0x8

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->i:Landroid/widget/TextView;

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    :cond_2
    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->i:Landroid/widget/TextView;

    .line 54
    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    sget v2, Lcom/transsion/publish/R$string;->postint_state_posted:I

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 60
    .line 61
    .line 62
    :cond_3
    iget v1, p0, Lcom/transsion/publish/view/UploadView;->o:I

    .line 63
    .line 64
    const/4 v2, 0x1

    .line 65
    if-ne v1, v2, :cond_4

    .line 66
    .line 67
    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->k:Landroid/widget/TextView;

    .line 68
    .line 69
    if-eqz v1, :cond_5

    .line 70
    .line 71
    const-string v2, ""

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->k:Landroid/widget/TextView;

    .line 78
    .line 79
    if-eqz v1, :cond_5

    .line 80
    .line 81
    sget v2, Lcom/tn/lib/widget/R$string;->View:I

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 84
    .line 85
    .line 86
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 87
    .line 88
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->k:Landroid/widget/TextView;

    .line 89
    .line 90
    if-eqz v1, :cond_6

    .line 91
    .line 92
    sget v2, Lcom/transsion/publish/R$color;->color_191F2B:I

    .line 93
    .line 94
    invoke-static {v2}, Lcom/blankj/utilcode/util/h;->a(I)I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    .line 100
    .line 101
    :cond_6
    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->k:Landroid/widget/TextView;

    .line 102
    .line 103
    if-eqz v1, :cond_7

    .line 104
    .line 105
    sget v2, Lcom/transsion/baseui/R$drawable;->bg_btn_01_radius_4:I

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 108
    .line 109
    .line 110
    :cond_7
    invoke-direct {p0, v0}, Lcom/transsion/publish/view/UploadView;->v(Z)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->getH()Landroid/os/Handler;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->s:Ljava/lang/Runnable;

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->getH()Landroid/os/Handler;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->u:Ljava/lang/Runnable;

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->getH()Landroid/os/Handler;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->u:Ljava/lang/Runnable;

    .line 136
    .line 137
    iget-wide v2, p0, Lcom/transsion/publish/view/UploadView;->f:J

    .line 138
    .line 139
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->getH()Landroid/os/Handler;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    new-instance v1, Lro/s;

    .line 147
    .line 148
    invoke-direct {v1, p0}, Lro/s;-><init>(Lcom/transsion/publish/view/UploadView;)V

    .line 149
    .line 150
    .line 151
    iget-wide v2, p0, Lcom/transsion/publish/view/UploadView;->f:J

    .line 152
    .line 153
    const/16 v4, 0x3e8

    .line 154
    .line 155
    int-to-long v4, v4

    .line 156
    add-long/2addr v2, v4

    .line 157
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 158
    .line 159
    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 161
    .line 162
    .line 163
    move-result-wide v0

    .line 164
    iput-wide v0, p0, Lcom/transsion/publish/view/UploadView;->p:J

    .line 165
    .line 166
    return-void
.end method

.method private static final J(Lcom/transsion/publish/view/UploadView;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->isShow()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/transsion/publish/view/UploadView;->p:J

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->dismiss()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private final K(Ljava/lang/Integer;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/transsion/publish/view/UploadView;->s()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 5
    .line 6
    sget-object v1, Lcom/transsion/publish/view/UploadView;->w:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v3, "uploading:"

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const/4 v4, 0x4

    .line 26
    const/4 v5, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/transsion/publish/view/UploadView;->h:Landroid/widget/TextView;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lcom/transsion/publish/view/UploadView;->i:Landroid/widget/TextView;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lcom/transsion/publish/view/UploadView;->i:Landroid/widget/TextView;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    sget v1, Lcom/transsion/publish/R$string;->postint_state_posted:I

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 53
    .line 54
    .line 55
    :cond_2
    iget-object v0, p0, Lcom/transsion/publish/view/UploadView;->k:Landroid/widget/TextView;

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    sget v1, Lcom/transsion/publish/R$string;->postint_state_cancel:I

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 62
    .line 63
    .line 64
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p1, "%"

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget-object v0, p0, Lcom/transsion/publish/view/UploadView;->h:Landroid/widget/TextView;

    .line 82
    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    :cond_4
    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/publish/view/UploadView;->w:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$setLastSucceedTime$p(Lcom/transsion/publish/view/UploadView;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/publish/view/UploadView;->p:J

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic k(Lcom/transsion/publish/view/UploadView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/publish/view/UploadView;->B(Lcom/transsion/publish/view/UploadView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l(Lcom/transsion/publish/view/UploadView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/publish/view/UploadView;->F(Lcom/transsion/publish/view/UploadView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m(Lcom/transsion/publish/view/UploadView;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/publish/view/UploadView;->z(Lcom/transsion/publish/view/UploadView;Landroid/content/Context;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n(Lcom/transsion/publish/view/UploadView;Lcom/transsion/publish/bean/PublishResult;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/publish/view/UploadView;->D(Lcom/transsion/publish/view/UploadView;Lcom/transsion/publish/bean/PublishResult;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic o(Lcom/transsion/publish/view/UploadView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/publish/view/UploadView;->J(Lcom/transsion/publish/view/UploadView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic p(Lcom/transsion/publish/view/UploadView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/publish/view/UploadView;->r(Lcom/transsion/publish/view/UploadView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic q(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/publish/view/UploadView;->y(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final r(Lcom/transsion/publish/view/UploadView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/publish/view/UploadView;->w()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final s()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/transsion/publish/view/UploadView;->r:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->getH()Landroid/os/Handler;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->s:Ljava/lang/Runnable;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->getH()Landroid/os/Handler;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->s:Ljava/lang/Runnable;

    .line 19
    .line 20
    const-wide/16 v2, 0xbb8

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/transsion/publish/view/UploadView;->r:Z

    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method private final t()V
    .locals 0

    .line 1
    return-void
.end method

.method private final u()V
    .locals 4

    .line 1
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->v:Lcom/transsion/publish/view/UploadView$c;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lyg/l;->l(Lyg/m;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->getH()Landroid/os/Handler;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->t:Ljava/lang/Runnable;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->getH()Landroid/os/Handler;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/transsion/publish/view/UploadView;->t:Ljava/lang/Runnable;

    .line 28
    .line 29
    const-wide/32 v2, 0x36ee80

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method private final v(Z)V
    .locals 14

    .line 1
    const-wide/16 v0, 0x1f4

    .line 2
    .line 3
    const/high16 v2, -0x40800000    # -1.0f

    .line 4
    .line 5
    const/high16 v3, 0x3f800000    # 1.0f

    .line 6
    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    iget-object p1, p0, Lcom/transsion/publish/view/UploadView;->l:Landroid/widget/RelativeLayout;

    .line 10
    .line 11
    const/16 v4, 0x8

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-ne p1, v4, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/transsion/publish/view/UploadView;->A()Z

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/transsion/publish/view/UploadView;->A()Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_1

    .line 32
    .line 33
    move v9, v3

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v9, v2

    .line 36
    :goto_0
    const/4 v12, 0x1

    .line 37
    const/4 v13, 0x0

    .line 38
    const/4 v6, 0x1

    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v8, 0x1

    .line 41
    const/4 v10, 0x1

    .line 42
    const/4 v11, 0x0

    .line 43
    move-object v5, p1

    .line 44
    invoke-direct/range {v5 .. v13}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/transsion/publish/view/UploadView;->l:Landroid/widget/RelativeLayout;

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    iget-object p1, p0, Lcom/transsion/publish/view/UploadView;->l:Landroid/widget/RelativeLayout;

    .line 58
    .line 59
    if-eqz p1, :cond_7

    .line 60
    .line 61
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    iget-object p1, p0, Lcom/transsion/publish/view/UploadView;->l:Landroid/widget/RelativeLayout;

    .line 66
    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_4

    .line 74
    .line 75
    return-void

    .line 76
    :cond_4
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    .line 77
    .line 78
    invoke-direct {p0}, Lcom/transsion/publish/view/UploadView;->A()Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_5

    .line 83
    .line 84
    move v6, v3

    .line 85
    goto :goto_1

    .line 86
    :cond_5
    move v6, v2

    .line 87
    :goto_1
    invoke-direct {p0}, Lcom/transsion/publish/view/UploadView;->A()Z

    .line 88
    .line 89
    .line 90
    const/4 v11, 0x1

    .line 91
    const/4 v12, 0x0

    .line 92
    const/4 v5, 0x1

    .line 93
    const/4 v7, 0x1

    .line 94
    const/4 v8, 0x0

    .line 95
    const/4 v9, 0x1

    .line 96
    const/4 v10, 0x0

    .line 97
    move-object v4, p1

    .line 98
    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/transsion/publish/view/UploadView;->l:Landroid/widget/RelativeLayout;

    .line 105
    .line 106
    if-eqz v0, :cond_6

    .line 107
    .line 108
    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 109
    .line 110
    .line 111
    :cond_6
    iget-object p1, p0, Lcom/transsion/publish/view/UploadView;->l:Landroid/widget/RelativeLayout;

    .line 112
    .line 113
    if-eqz p1, :cond_7

    .line 114
    .line 115
    const/4 v0, 0x0

    .line 116
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    :cond_7
    :goto_2
    return-void
.end method

.method private final w()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    aget v0, v0, v2

    .line 11
    .line 12
    int-to-float v0, v0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    int-to-float v2, v2

    .line 18
    add-float/2addr v0, v2

    .line 19
    neg-float v0, v0

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-direct {v1, v2, v2, v2, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 22
    .line 23
    .line 24
    const-wide/16 v2, 0x2bc

    .line 25
    .line 26
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/transsion/publish/view/UploadView$b;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/transsion/publish/view/UploadView$b;-><init>(Lcom/transsion/publish/view/UploadView;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private final x(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/transsion/publish/R$layout;->upload_float_view:I

    .line 6
    .line 7
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    sget v0, Lcom/transsion/publish/R$id;->ufv_tv_status:I

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/widget/TextView;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/transsion/publish/view/UploadView;->i:Landroid/widget/TextView;

    .line 19
    .line 20
    sget v0, Lcom/transsion/publish/R$id;->ufv_tv_progress:I

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/widget/TextView;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/transsion/publish/view/UploadView;->h:Landroid/widget/TextView;

    .line 29
    .line 30
    sget v0, Lcom/transsion/publish/R$id;->ufv_iv_retry:I

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/ImageView;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/transsion/publish/view/UploadView;->j:Landroid/widget/ImageView;

    .line 39
    .line 40
    sget v0, Lcom/transsion/publish/R$id;->right_state:I

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/widget/TextView;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/transsion/publish/view/UploadView;->k:Landroid/widget/TextView;

    .line 49
    .line 50
    sget v0, Lcom/transsion/publish/R$id;->ufv_view2:I

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/transsion/publish/view/UploadView;->l:Landroid/widget/RelativeLayout;

    .line 59
    .line 60
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 61
    .line 62
    const/4 v1, -0x1

    .line 63
    const/4 v2, -0x2

    .line 64
    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Lcom/transsion/publish/view/BaseFloatView;->setLayoutParams(Landroidx/constraintlayout/widget/ConstraintLayout$b;)V

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_0

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->getLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    const/high16 v1, 0x42880000    # 68.0f

    .line 83
    .line 84
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->getLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    if-eqz v1, :cond_1

    .line 96
    .line 97
    const/high16 v2, 0x42400000    # 48.0f

    .line 98
    .line 99
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    add-int/2addr v0, v2

    .line 104
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 105
    .line 106
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->getLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const/high16 v1, 0x41800000    # 16.0f

    .line 111
    .line 112
    if-eqz v0, :cond_2

    .line 113
    .line 114
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 119
    .line 120
    .line 121
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->getLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    if-eqz v0, :cond_3

    .line 126
    .line 127
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 132
    .line 133
    .line 134
    :cond_3
    iget-object v0, p0, Lcom/transsion/publish/view/UploadView;->j:Landroid/widget/ImageView;

    .line 135
    .line 136
    if-eqz v0, :cond_4

    .line 137
    .line 138
    new-instance v1, Lro/t;

    .line 139
    .line 140
    invoke-direct {v1}, Lro/t;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    .line 145
    .line 146
    :cond_4
    iget-object v0, p0, Lcom/transsion/publish/view/UploadView;->k:Landroid/widget/TextView;

    .line 147
    .line 148
    if-eqz v0, :cond_5

    .line 149
    .line 150
    new-instance v1, Lro/u;

    .line 151
    .line 152
    invoke-direct {v1, p0, p1}, Lro/u;-><init>(Lcom/transsion/publish/view/UploadView;Landroid/content/Context;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    .line 157
    .line 158
    :cond_5
    iget-object p1, p0, Lcom/transsion/publish/view/UploadView;->h:Landroid/widget/TextView;

    .line 159
    .line 160
    if-eqz p1, :cond_6

    .line 161
    .line 162
    const-string v0, ""

    .line 163
    .line 164
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    :cond_6
    invoke-direct {p0}, Lcom/transsion/publish/view/UploadView;->C()V

    .line 168
    .line 169
    .line 170
    return-void
.end method

.method private static final y(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method private static final z(Lcom/transsion/publish/view/UploadView;Landroid/content/Context;Landroid/view/View;)V
    .locals 8

    .line 1
    sget-object p2, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/publish/view/UploadView;->k:Landroid/widget/TextView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    const-wide/16 v1, 0x7d0

    .line 14
    .line 15
    invoke-virtual {p2, v0, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget-object p2, p0, Lcom/transsion/publish/view/UploadView;->k:Landroid/widget/TextView;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    if-eqz p2, :cond_2

    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    move-object p2, v0

    .line 33
    :goto_1
    sget v1, Lcom/transsion/publish/R$string;->postint_state_cancel:I

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    sget-object p1, Lcom/transsion/publish/PublishManager;->Companion:Lcom/transsion/publish/PublishManager$a;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/transsion/publish/PublishManager$a;->a()Lcom/transsion/publish/PublishManager;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lcom/transsion/publish/PublishManager;->cancel()V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/transsion/publish/view/UploadView;->w()V

    .line 55
    .line 56
    .line 57
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 58
    .line 59
    sget-object v1, Lcom/transsion/publish/view/UploadView;->w:Ljava/lang/String;

    .line 60
    .line 61
    const/4 v4, 0x4

    .line 62
    const/4 v5, 0x0

    .line 63
    const-string v2, "click cancel"

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_3
    sget v1, Lcom/transsion/publish/R$string;->postint_state_retry:I

    .line 71
    .line 72
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    invoke-direct {p0}, Lcom/transsion/publish/view/UploadView;->E()V

    .line 83
    .line 84
    .line 85
    invoke-direct {p0}, Lcom/transsion/publish/view/UploadView;->w()V

    .line 86
    .line 87
    .line 88
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 89
    .line 90
    sget-object v3, Lcom/transsion/publish/view/UploadView;->w:Ljava/lang/String;

    .line 91
    .line 92
    const/4 v6, 0x4

    .line 93
    const/4 v7, 0x0

    .line 94
    const-string v4, "click retry"

    .line 95
    .line 96
    const/4 v5, 0x0

    .line 97
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    sget v1, Lcom/tn/lib/widget/R$string;->View:I

    .line 102
    .line 103
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    if-eqz p2, :cond_5

    .line 112
    .line 113
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 114
    .line 115
    sget-object v2, Lcom/transsion/publish/view/UploadView;->w:Ljava/lang/String;

    .line 116
    .line 117
    const/4 v5, 0x4

    .line 118
    const/4 v6, 0x0

    .line 119
    const-string v3, "click view now"

    .line 120
    .line 121
    const/4 v4, 0x0

    .line 122
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    const-wide/16 v1, 0x0

    .line 126
    .line 127
    iput-wide v1, p0, Lcom/transsion/publish/view/UploadView;->p:J

    .line 128
    .line 129
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->dismiss()V

    .line 133
    .line 134
    .line 135
    iget-object p2, p0, Lcom/transsion/publish/view/UploadView;->n:Ljava/lang/String;

    .line 136
    .line 137
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    if-nez p2, :cond_5

    .line 142
    .line 143
    const-string p2, "/post/detail"

    .line 144
    .line 145
    invoke-static {p2}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    const-string v1, "page_from"

    .line 150
    .line 151
    iget-object v2, p0, Lcom/transsion/publish/view/UploadView;->g:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {p2, v1, v2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    const-string v1, "id"

    .line 158
    .line 159
    iget-object p0, p0, Lcom/transsion/publish/view/UploadView;->n:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {p2, v1, p0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    const/4 p2, 0x2

    .line 166
    invoke-static {p0, p1, v0, p2, v0}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/view/UploadView;->m:Landroidx/lifecycle/w;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final setPageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/publish/view/UploadView;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final showFloatView(Lcom/transsion/publish/bean/PublishResult;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/transsion/publish/view/UploadView;->e:Lcom/transsion/publish/bean/PublishResult;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/transsion/publish/bean/PublishResult;->getState()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x2

    .line 23
    if-ne v1, v2, :cond_2

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/transsion/publish/view/UploadView;->G()V

    .line 26
    .line 27
    .line 28
    goto :goto_5

    .line 29
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v2, 0x1

    .line 37
    if-ne v1, v2, :cond_4

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/transsion/publish/bean/PublishResult;->getPostId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/transsion/publish/view/UploadView;->n:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/transsion/publish/bean/PublishResult;->getSource()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    iput p1, p0, Lcom/transsion/publish/view/UploadView;->o:I

    .line 50
    .line 51
    invoke-direct {p0}, Lcom/transsion/publish/view/UploadView;->I()V

    .line 52
    .line 53
    .line 54
    goto :goto_5

    .line 55
    :cond_4
    :goto_2
    const-string v1, ""

    .line 56
    .line 57
    if-nez v0, :cond_5

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_6

    .line 65
    .line 66
    iput-object v1, p0, Lcom/transsion/publish/view/UploadView;->n:Ljava/lang/String;

    .line 67
    .line 68
    invoke-direct {p0}, Lcom/transsion/publish/view/UploadView;->H()V

    .line 69
    .line 70
    .line 71
    goto :goto_5

    .line 72
    :cond_6
    :goto_3
    if-nez v0, :cond_7

    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    const/4 v3, 0x3

    .line 80
    if-ne v2, v3, :cond_8

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/transsion/publish/bean/PublishResult;->getProgress()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-direct {p0, p1}, Lcom/transsion/publish/view/UploadView;->K(Ljava/lang/Integer;)V

    .line 91
    .line 92
    .line 93
    goto :goto_5

    .line 94
    :cond_8
    :goto_4
    if-nez v0, :cond_9

    .line 95
    .line 96
    goto :goto_5

    .line 97
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    const/4 v0, 0x4

    .line 102
    if-ne p1, v0, :cond_a

    .line 103
    .line 104
    iput-object v1, p0, Lcom/transsion/publish/view/UploadView;->n:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/transsion/publish/view/BaseFloatView;->dismiss()V

    .line 107
    .line 108
    .line 109
    :cond_a
    :goto_5
    return-void
.end method
