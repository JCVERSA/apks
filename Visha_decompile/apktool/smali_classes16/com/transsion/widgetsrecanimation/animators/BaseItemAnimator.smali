.class public abstract Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;
.super Landroidx/recyclerview/widget/SimpleItemAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$a;,
        Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;,
        Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$c;,
        Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$d;,
        Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$e;,
        Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$f;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u000b\u0008&\u0018\u0000 e2\u00020\u0001:\u00068;>@BDB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J7\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0003J\u001d\u0010\u0011\u001a\u00020\u000b2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000fH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0014J\u0017\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0014J\u0017\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ%\u0010\u001f\u001a\u00020\u000b2\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u001c2\u0006\u0010\u001e\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0017\u0010!\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008!\u0010\u001bJ!\u0010#\u001a\u00020\"2\u0006\u0010\u0019\u001a\u00020\u00182\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008#\u0010$J\u000f\u0010%\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008%\u0010\u0003J\u0017\u0010&\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008&\u0010\u0014J\u0017\u0010\'\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\'\u0010\u0014J\u0017\u0010(\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004H$\u00a2\u0006\u0004\u0008(\u0010\u0014J\u0017\u0010)\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004H$\u00a2\u0006\u0004\u0008)\u0010\u0014J\u0017\u0010*\u001a\u00020\"2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008*\u0010+J\u0017\u0010,\u001a\u00020\"2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008,\u0010+J7\u0010-\u001a\u00020\"2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008-\u0010.J?\u00101\u001a\u00020\"2\u0006\u0010/\u001a\u00020\u00042\u0006\u00100\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00081\u00102J\u0017\u00103\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u00083\u0010\u0014J\u000f\u00104\u001a\u00020\"H\u0016\u00a2\u0006\u0004\u00084\u00105J\u000f\u00106\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u00086\u0010\u0003R\u001a\u0010:\u001a\u0008\u0012\u0004\u0012\u00020\u0004078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u001a\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u0004078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008;\u00109R\u001a\u0010?\u001a\u0008\u0012\u0004\u0012\u00020=078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008>\u00109R\u001a\u0010A\u001a\u0008\u0012\u0004\u0012\u00020\u0018078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008@\u00109R \u0010C\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000407078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008B\u00109R \u0010E\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020=07078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008D\u00109R \u0010F\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001807078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u00109R(\u0010K\u001a\u0008\u0012\u0004\u0012\u00020\u0004078\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u00109\u001a\u0004\u0008G\u0010H\"\u0004\u0008I\u0010JR\u001a\u0010L\u001a\u0008\u0012\u0004\u0012\u00020\u0004078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u00109R(\u0010O\u001a\u0008\u0012\u0004\u0012\u00020\u0004078\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u00109\u001a\u0004\u0008M\u0010H\"\u0004\u0008N\u0010JR\u001a\u0010P\u001a\u0008\u0012\u0004\u0012\u00020\u0004078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u00109R\"\u0010U\u001a\u00020\"8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008G\u0010Q\u001a\u0004\u0008R\u00105\"\u0004\u0008S\u0010TR\u0016\u0010Y\u001a\u00020V8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008W\u0010XR\u0016\u0010Z\u001a\u00020V8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008M\u0010XR\u0016\u0010]\u001a\u00020[8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\\R\u0016\u0010^\u001a\u00020[8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010\\R\"\u0010b\u001a\u00020[8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\\\u001a\u0004\u0008W\u0010_\"\u0004\u0008`\u0010aR\"\u0010c\u001a\u00020\"8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010Q\u001a\u0004\u0008c\u00105\"\u0004\u0008d\u0010T\u00a8\u0006f"
    }
    d2 = {
        "Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;",
        "Landroidx/recyclerview/widget/SimpleItemAnimator;",
        "<init>",
        "()V",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "holder",
        "",
        "fromX",
        "fromY",
        "toX",
        "toY",
        "Lzfb;",
        "animateMoveImpl",
        "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V",
        "dispatchFinishedWhenDone",
        "",
        "viewHolders",
        "cancelAll",
        "(Ljava/util/List;)V",
        "q",
        "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V",
        "o",
        "i",
        "h",
        "Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;",
        "changeInfo",
        "g",
        "(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;)V",
        "",
        "infoList",
        "item",
        "endChangeAnimation",
        "(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V",
        "j",
        "",
        "k",
        "(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z",
        "runPendingAnimations",
        "r",
        "p",
        "animateRemoveImpl",
        "animateAddImpl",
        "animateRemove",
        "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z",
        "animateAdd",
        "animateMove",
        "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z",
        "oldHolder",
        "newHolder",
        "animateChange",
        "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z",
        "endAnimation",
        "isRunning",
        "()Z",
        "endAnimations",
        "Ljava/util/ArrayList;",
        "a",
        "Ljava/util/ArrayList;",
        "pendingRemovals",
        "b",
        "pendingAdditions",
        "Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$f;",
        "c",
        "pendingMoves",
        "d",
        "pendingChanges",
        "e",
        "additionsList",
        "f",
        "movesList",
        "changesList",
        "l",
        "()Ljava/util/ArrayList;",
        "setAddAnimations",
        "(Ljava/util/ArrayList;)V",
        "addAnimations",
        "moveAnimations",
        "n",
        "setRemoveAnimations",
        "removeAnimations",
        "changeAnimations",
        "Z",
        "getMIsLinearLayoutManager",
        "v",
        "(Z)V",
        "mIsLinearLayoutManager",
        "Landroid/view/animation/Interpolator;",
        "m",
        "Landroid/view/animation/Interpolator;",
        "moveInterpolator",
        "moveInterpolatorGrid",
        "",
        "J",
        "moveDurationSync",
        "moveDurationSyncGrid",
        "()J",
        "setDelayedSync",
        "(J)V",
        "delayedSync",
        "isMoveToTop",
        "w",
        "s",
        "widgetsrecanimation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final s:Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$c;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/ArrayList;

.field public final g:Ljava/util/ArrayList;

.field public h:Ljava/util/ArrayList;

.field public final i:Ljava/util/ArrayList;

.field public j:Ljava/util/ArrayList;

.field public final k:Ljava/util/ArrayList;

.field public l:Z

.field public m:Landroid/view/animation/Interpolator;

.field public n:Landroid/view/animation/Interpolator;

.field public o:J

.field public p:J

.field public q:J

.field public r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$c;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->s:Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/SimpleItemAnimator;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->i:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->j:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->k:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->l:Z

    new-instance v0, Lp97;

    invoke-direct {v0}, Lp97;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->m:Landroid/view/animation/Interpolator;

    new-instance v0, Lp97;

    invoke-direct {v0}, Lp97;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->n:Landroid/view/animation/Interpolator;

    const-wide/16 v0, 0x190

    iput-wide v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->o:J

    iput-wide v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->p:J

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->q:J

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->u(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;Ljava/util/ArrayList;)V

    return-void
.end method

.method private final animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
    .locals 7

    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "holder.itemView"

    invoke-static {v4, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sub-int v3, p4, p2

    sub-int v5, p5, p3

    const/4 p2, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    :cond_1
    iget-object p2, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->i:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget-boolean p2, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->l:Z

    if-eqz p2, :cond_2

    iget-wide p2, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->o:J

    goto :goto_0

    :cond_2
    iget-wide p2, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->p:J

    :goto_0
    invoke-virtual {v6, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance p3, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$i;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$i;-><init>(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-boolean p2, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->l:Z

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->m:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->n:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->t(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->s(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;Ljava/util/ArrayList;)V

    return-void
.end method

.method private final cancelAll(Ljava/util/List;)V
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_1

    :goto_0
    add-int/lit8 v0, p0, -0x1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    move p0, v0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static final synthetic d(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method private final dispatchFinishedWhenDone()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationsFinished()V

    :cond_0
    return-void
.end method

.method public static final synthetic e(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->k:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->i:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final s(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;Ljava/util/ArrayList;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$moves"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$f;

    invoke-virtual {v1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$f;->c()Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$f;->a()I

    move-result v4

    invoke-virtual {v1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$f;->b()I

    move-result v5

    invoke-virtual {v1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$f;->d()I

    move-result v6

    invoke-virtual {v1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$f;->e()I

    move-result v7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static final t(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;Ljava/util/ArrayList;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$changes"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;

    const-string v2, "change"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->g(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static final u(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;Ljava/util/ArrayList;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$additions"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const-string v2, "holder"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->h(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


# virtual methods
.method public animateAdd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->o(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public abstract animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end method

.method public animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 8

    const-string v0, "oldHolder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newHolder"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p1, p2, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    sub-int v3, p5, p3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    float-to-int v3, v3

    sub-int v4, p6, p4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    float-to-int v4, v4

    iget-object v5, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, p2}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    int-to-float v1, v3

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    int-to-float v1, v4

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->d:Ljava/util/ArrayList;

    new-instance v7, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 8

    const-string v0, "holder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "holder.itemView"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    add-int v4, p2, v1

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p2

    float-to-int p2, p2

    add-int v5, p3, p2

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    sub-int p2, p4, v4

    sub-int p3, p5, v5

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p2, :cond_1

    int-to-float p2, p2

    neg-float p2, p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    :cond_1
    if-eqz p3, :cond_2

    int-to-float p2, p3

    neg-float p2, p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->c:Ljava/util/ArrayList;

    new-instance p2, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$f;

    move-object v2, p2

    move-object v3, p1

    move v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$f;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public animateRemove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->q(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public abstract animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end method

.method public endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 10

    const-string v0, "item"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "item.itemView"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v2, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    if-ltz v2, :cond_2

    :goto_0
    add-int/lit8 v4, v2, -0x1

    iget-object v5, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "pendingMoves[i]"

    invoke-static {v5, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$f;

    invoke-virtual {v5}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$f;->c()Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    if-ne v5, p1, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object v5, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    if-gez v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object v2, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Llcc;->a(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_3
    iget-object v2, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Llcc;->a(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_4
    iget-object v2, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_7

    :goto_2
    add-int/lit8 v4, v2, -0x1

    iget-object v5, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->g:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "changesList[i]"

    invoke-static {v5, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {p0, v5, p1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->g:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    if-gez v4, :cond_6

    goto :goto_3

    :cond_6
    move v2, v4

    goto :goto_2

    :cond_7
    :goto_3
    iget-object v2, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_c

    :goto_4
    add-int/lit8 v4, v2, -0x1

    iget-object v5, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "movesList[i]"

    invoke-static {v5, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_a

    :goto_5
    add-int/lit8 v7, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "moves[j]"

    invoke-static {v8, v9}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$f;

    invoke-virtual {v8}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$f;->c()Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v8

    if-ne v8, p1, :cond_8

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_6

    :cond_8
    if-gez v7, :cond_9

    goto :goto_6

    :cond_9
    move v6, v7

    goto :goto_5

    :cond_a
    :goto_6
    if-gez v4, :cond_b

    goto :goto_7

    :cond_b
    move v2, v4

    goto :goto_4

    :cond_c
    :goto_7
    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_f

    :goto_8
    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "additionsList[i]"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v4, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Llcc;->a(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_d
    if-gez v2, :cond_e

    goto :goto_9

    :cond_e
    move v0, v2

    goto :goto_8

    :cond_f
    :goto_9
    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public endAnimations()V
    .locals 8

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ge v2, v0, :cond_0

    iget-object v2, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "pendingMoves[i]"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$f;

    invoke-virtual {v2}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$f;->c()Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v4, "item.holder.itemView"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v2}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$f;->c()Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object v1, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "pendingRemovals[i]"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object v3, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    const-string v3, "item.itemView"

    if-ge v2, v0, :cond_2

    iget-object v4, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "pendingAdditions[i]"

    invoke-static {v4, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v5, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Llcc;->a(Landroid/view/View;)V

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object v3, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ge v2, v0, :cond_3

    iget-object v4, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "pendingChanges[i]"

    invoke-static {v4, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;

    invoke-virtual {p0, v4}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->j(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ge v2, v0, :cond_7

    iget-object v4, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "movesList[i]"

    invoke-static {v4, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_5
    if-ge v2, v5, :cond_6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "moves[j]"

    invoke-static {v6, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$f;

    invoke-virtual {v6}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$f;->c()Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v7

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v7, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v7, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v6}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$f;->c()Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->f:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ge v2, v0, :cond_b

    iget-object v1, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "additionsList[i]"

    invoke-static {v1, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_7
    if-ge v2, v4, :cond_a

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "additions[j]"

    invoke-static {v5, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v6, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v4, v4, -0x1

    goto :goto_7

    :cond_a
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_b
    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ge v2, v0, :cond_e

    iget-object v1, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "changesList[i]"

    invoke-static {v1, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_9
    if-ge v2, v3, :cond_d

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "changes[j]"

    invoke-static {v4, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;

    invoke-virtual {p0, v4}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->j(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    :cond_d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_e
    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->j:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->cancelAll(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->i:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->cancelAll(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->h:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->cancelAll(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->k:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->cancelAll(Ljava/util/List;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationsFinished()V

    return-void
.end method

.method public final endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    :goto_0
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;

    invoke-virtual {p0, v0, p2}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->k(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->d()Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->c()Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final g(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;)V
    .locals 6

    invoke-virtual {p1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->d()Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->c()Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    :cond_1
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->d()Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->d()Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-static {v4}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getChangeDuration()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-string v4, "view.animate().setDurati\u2026ngeDuration\n            )"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->e()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->a()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->f()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->b()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$g;

    invoke-direct {v5, p0, p1, v3, v0}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$g;-><init>(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->c()Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->c()Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    invoke-static {v3}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getChangeDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$h;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$h;-><init>(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_5
    return-void
.end method

.method public final h(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final i(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->j:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->b:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->d:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->c:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->a:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->i:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->j:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->h:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->k:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->f:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->e:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->g:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final j(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;)V
    .locals 1

    invoke-virtual {p1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->d()Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->d()Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->k(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->c()Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->c()Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->k(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    :cond_1
    return-void
.end method

.method public final k(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->c()Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p2, :cond_0

    invoke-virtual {p1, v2}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->g(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->d()Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-ne v0, p2, :cond_1

    invoke-virtual {p1, v2}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->h(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    move v3, v1

    :goto_0
    invoke-static {p2}, Ly45;->g(Ljava/lang/Object;)V

    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0, p2, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return v1

    :cond_1
    return v3
.end method

.method public final l()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->h:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final m()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->q:J

    return-wide v0
.end method

.method public final n()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->j:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final o(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "holder.itemView"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Llcc;->a(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->p(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public p(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    const-string p0, "holder"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final q(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "holder.itemView"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Llcc;->a(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->r(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public r(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    const-string p0, "holder"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public runPendingAnimations()V
    .locals 11

    iget-object v0, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->a:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->c:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->d:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->b:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const-string v6, "holder"

    invoke-static {v5, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->i(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    if-nez v1, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->c:Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v6, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->f:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    new-instance v6, Lva0;

    invoke-direct {v6, p0, v5}, Lva0;-><init>(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;Ljava/util/ArrayList;)V

    if-nez v0, :cond_2

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$f;

    invoke-virtual {v5}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$f;->c()Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v7, "moves[0].holder.itemView"

    invoke-static {v5, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->q:J

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_1

    :cond_2
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_1
    const-wide/16 v5, 0x0

    if-nez v2, :cond_6

    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->d:Ljava/util/ArrayList;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v8, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->g:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->d:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    new-instance v8, Lwa0;

    invoke-direct {v8, p0, v7}, Lwa0;-><init>(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;Ljava/util/ArrayList;)V

    if-nez v0, :cond_5

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;

    invoke-virtual {v7}, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator$b;->d()Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v7

    invoke-static {v7}, Ly45;->g(Ljava/lang/Object;)V

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-boolean v9, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->r:Z

    if-eqz v9, :cond_4

    iget-wide v9, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->q:J

    goto :goto_2

    :cond_4
    move-wide v9, v5

    :goto_2
    invoke-virtual {v7, v8, v9, v10}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_3

    :cond_5
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    :cond_6
    :goto_3
    if-nez v3, :cond_d

    new-instance v3, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->b:Ljava/util/ArrayList;

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v7, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->e:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    new-instance v7, Lxa0;

    invoke-direct {v7, p0, v3}, Lxa0;-><init>(Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;Ljava/util/ArrayList;)V

    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    goto :goto_7

    :cond_8
    :goto_4
    if-nez v0, :cond_9

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getRemoveDuration()J

    :cond_9
    if-nez v1, :cond_a

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getMoveDuration()J

    move-result-wide v0

    goto :goto_5

    :cond_a
    move-wide v0, v5

    :goto_5
    if-nez v2, :cond_b

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getChangeDuration()J

    move-result-wide v8

    goto :goto_6

    :cond_b
    move-wide v8, v5

    :goto_6
    invoke-static {v0, v1, v8, v9}, Lwn8;->e(JJ)J

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "additions[0].itemView"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->r:Z

    if-eqz v1, :cond_c

    iget-wide v5, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->q:J

    :cond_c
    invoke-virtual {v0, v7, v5, v6}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_d
    :goto_7
    return-void
.end method

.method public final v(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->l:Z

    return-void
.end method

.method public final w(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetsrecanimation/animators/BaseItemAnimator;->r:Z

    return-void
.end method
