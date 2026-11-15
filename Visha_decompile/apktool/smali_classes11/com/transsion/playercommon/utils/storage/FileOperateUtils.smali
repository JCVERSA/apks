.class public Lcom/transsion/playercommon/utils/storage/FileOperateUtils;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/utils/storage/FileOperateUtils$InfoAdapter;,
        Lcom/transsion/playercommon/utils/storage/FileOperateUtils$m;,
        Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;,
        Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;,
        Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;
    }
.end annotation


# instance fields
.field public b:Landroid/content/Context;

.field public c:Lcom/transsion/dbdata/beans/media/MediaItem;

.field public d:Landroid/widget/PopupWindow;

.field public e:Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;

.field public f:Lzl6;

.field public g:Lcom/transsion/widgetslib/dialog/d;

.field public h:I

.field public i:I

.field public j:Ljava/util/ArrayList;

.field public k:Z

.field public l:Z

.field public m:Landroid/media/AudioManager;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Z

.field public r:Landroid/widget/SeekBar;

.field public final s:Landroid/content/BroadcastReceiver;

.field public t:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$f;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$f;-><init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)V

    iput-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->s:Landroid/content/BroadcastReceiver;

    .line 4
    iput-object p2, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    .line 5
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->O(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/MediaItem;I)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j:Ljava/util/ArrayList;

    .line 8
    new-instance v0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$f;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$f;-><init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)V

    iput-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->s:Landroid/content/BroadcastReceiver;

    .line 9
    iput-object p2, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    .line 10
    iput p3, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->i:I

    .line 11
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->O(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;IZ)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$f;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$f;-><init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)V

    iput-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->s:Landroid/content/BroadcastReceiver;

    .line 15
    iput-object p2, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j:Ljava/util/ArrayList;

    .line 16
    iput p3, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->i:I

    .line 17
    iput-boolean p4, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->k:Z

    .line 18
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->O(Landroid/content/Context;)V

    return-void
.end method

.method public static J(I)Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%d"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static L(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static synthetic a(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->R(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->Q(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;ZLjava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->U(ZLjava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->P(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->S(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->T(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static g0(ZLandroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    sget p0, Lcom/transsion/playercommon/R$string;->visha_clear_all_view_records_hint:I

    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    if-ne p2, p0, :cond_2

    sget p0, Lcom/transsion/playercommon/R$string;->visha_clear_single_view_record_hint:I

    goto :goto_0

    :cond_2
    sget p0, Lcom/transsion/playercommon/R$string;->visha_clear_multiple_view_records_hint:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    new-instance p2, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {p2, p1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p0}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    sget p1, Lcom/transsion/playercommon/R$string;->clear:I

    invoke-virtual {p0, p1, p3}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    sget p1, Lcom/transsion/playercommon/R$string;->cancel:I

    new-instance p2, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$j;

    invoke-direct {p2}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$j;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    return-void
.end method

.method public static bridge synthetic h(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->e:Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;

    return-object p0
.end method

.method public static h0(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/transsion/playercommon/R$string;->visha_delete_cloud_files_confirm:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    sget p1, Lcom/transsion/playercommon/R$string;->delete:I

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    sget p1, Lcom/transsion/playercommon/R$string;->cancel:I

    new-instance p2, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$i;

    invoke-direct {p2}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$i;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    return-void
.end method

.method public static bridge synthetic i(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->l:Z

    return p0
.end method

.method public static bridge synthetic j(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->k:Z

    return p0
.end method

.method public static bridge synthetic k(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->i:I

    return p0
.end method

.method public static bridge synthetic l(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    return-object p0
.end method

.method public static bridge synthetic m(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Lzl6;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->f:Lzl6;

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->r:Landroid/widget/SeekBar;

    return-object p0
.end method

.method public static bridge synthetic p(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->n:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic q(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;Lzl6;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->f:Lzl6;

    return-void
.end method

.method public static bridge synthetic r(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->n:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic s(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->z(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic t(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->E(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic u(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->F(Z)V

    return-void
.end method

.method public static bridge synthetic v(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->I()V

    return-void
.end method

.method public static bridge synthetic w(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->n0()V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    check-cast v0, Lcom/transsion/playercommon/activities/BaseActivity;

    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->e:Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;->f()V

    :cond_0
    iget-boolean v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->k:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    :goto_0
    invoke-static {v1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v1

    invoke-virtual {v0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lvq3;

    invoke-direct {v1, p0}, Lvq3;-><init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lwq3;

    invoke-direct {v1, p0}, Lwq3;-><init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)V

    new-instance v2, Lxq3;

    invoke-direct {v2, p0}, Lxq3;-><init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)V

    invoke-virtual {v0, v1, v2}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public B(Z)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->AUDIO:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->l:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->AUDIO:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->l:Z

    :cond_1
    :goto_0
    const-string v0, "videolist"

    const-string v1, "audiolist"

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->p:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->l:Z

    if-eqz p0, :cond_3

    move-object v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->p:Ljava/lang/String;

    :cond_3
    :goto_1
    sget p0, Laf9;->i:I

    const-string p1, "deny"

    invoke-static {p1, v0, p0}, Lqz5;->c(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_4
    iget-object v2, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->p:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->l:Z

    if-eqz v2, :cond_6

    move-object v0, v1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->p:Ljava/lang/String;

    :cond_6
    :goto_2
    sget v1, Laf9;->i:I

    const-string v2, "allow"

    invoke-static {v2, v0, v1}, Lqz5;->c(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    check-cast v0, Lcom/transsion/playercommon/activities/BaseActivity;

    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->e:Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;->f()V

    :cond_7
    iget-boolean v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->k:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j:Ljava/util/ArrayList;

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    :goto_3
    invoke-static {v1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v1

    invoke-virtual {v0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lyq3;

    invoke-direct {v1, p0}, Lyq3;-><init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lzq3;

    invoke-direct {v1, p0}, Lzq3;-><init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)V

    new-instance v2, Lar3;

    invoke-direct {v2, p0, p1}, Lar3;-><init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;Z)V

    invoke-virtual {v0, v1, v2}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public C(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->l:Z

    if-nez v0, :cond_1

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p0

    iget v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ltpb;->X(ILjava/lang/String;)Z

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p0

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltpb;->T(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ltpb;->j(ZLcom/transsion/dbdata/beans/media/MediaItem;)Z

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 p1, 0x41d

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->i:I

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_3

    invoke-static {}, Lao;->U()Lao;

    move-result-object p0

    iget v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    invoke-virtual {p0, v0, p1}, Lao;->k(ILjava/lang/String;)I

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->y(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public D(Z)V
    .locals 3

    new-instance v0, Lcom/transsion/widgetslib/dialog/c;

    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/c;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$string;->privacy_delete_dialog_message_progress:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/c;->j(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/c;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/c;->e(Z)Lcom/transsion/widgetslib/dialog/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/dialog/c;->l()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->g:Lcom/transsion/widgetslib/dialog/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->k:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j:Ljava/util/ArrayList;

    invoke-static {v1}, Lnr3;->h(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {v1}, Lnr3;->g(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/privateroom/api/beans/PrivateFile;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-static {}, Ltg8;->d()Ltg8;

    move-result-object v1

    new-instance v2, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$c;

    invoke-direct {v2, p0, p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$c;-><init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;Lcom/transsion/widgetslib/dialog/c;)V

    invoke-virtual {v1, v0, v2}, Ltg8;->a(Ljava/util/List;Ltv4;)V

    return-void
.end method

.method public final E(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 4

    iget v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v0}, Ltr4;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ltr4;->a(Ljava/io/File;)Z

    move-result v1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lnx8;->f(Landroid/content/Context;Ljava/io/File;)Z

    move-result v1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :cond_3
    :goto_0
    if-eqz v1, :cond_6

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->l:Z

    if-nez v0, :cond_4

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    iget v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-object v3, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ltpb;->X(ILjava/lang/String;)Z

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->i:I

    const/16 v2, 0x1f

    if-ne v0, v2, :cond_6

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    iget v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-object v3, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-nez v3, :cond_5

    const-string v3, ""

    :cond_5
    invoke-virtual {v0, v2, v3}, Lao;->k(ILjava/lang/String;)I

    :cond_6
    :goto_1
    if-eqz v1, :cond_7

    iget-boolean p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->l:Z

    if-nez p0, :cond_7

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x480

    invoke-virtual {p0, v0, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_7
    return v1
.end method

.method public final F(Z)V
    .locals 2

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->i:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->k:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->C(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->C(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    :cond_1
    new-instance p1, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$7;

    invoke-direct {p1, p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$7;-><init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)V

    invoke-static {p1}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 p1, 0x430

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 p1, 0x455

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$8;

    invoke-direct {p1, p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$8;-><init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;)V

    invoke-static {p1}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public final G(Landroid/app/Dialog;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dismissDialogSafely: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "visha_FileOperateUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method

.method public final H()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->d:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->d:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public final I()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->g:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->G(Landroid/app/Dialog;)V

    return-void
.end method

.method public K()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->m:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/high16 v1, 0x42c80000    # 100.0f

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->t:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public M()Lcom/transsion/widgetslib/dialog/d;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->g:Lcom/transsion/widgetslib/dialog/d;

    return-object p0
.end method

.method public N(Z)V
    .locals 3

    new-instance v0, Lcom/transsion/widgetslib/dialog/c;

    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/c;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$string;->privacy_hide_dialog_message_progress:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/c;->j(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/c;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/c;->e(Z)Lcom/transsion/widgetslib/dialog/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/dialog/c;->l()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->g:Lcom/transsion/widgetslib/dialog/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->k:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j:Ljava/util/ArrayList;

    invoke-static {v1}, Lnr3;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {v1}, Lnr3;->c(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/privateroom/api/beans/PrivateFile;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-static {}, Ltg8;->d()Ltg8;

    move-result-object v1

    new-instance v2, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$e;

    invoke-direct {v2, p0, p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$e;-><init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;Lcom/transsion/widgetslib/dialog/c;)V

    invoke-virtual {v1, v0, v2}, Ltg8;->f(Ljava/util/List;Ltv4;)V

    return-void
.end method

.method public final O(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->m:Landroid/media/AudioManager;

    :cond_0
    iget-object p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/playercommon/R$dimen;->video_setting_window_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->h:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->h:I

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init: mDialogHeight = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->h:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "visha_FileOperateUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final synthetic P(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1

    iget-boolean p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->k:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->C(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->C(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final synthetic Q(Ljava/lang/Boolean;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->e:Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;->d()V

    :cond_0
    return-void
.end method

.method public final synthetic R(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteOperation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "visha_FileOperateUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->e:Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;->h()V

    :cond_0
    return-void
.end method

.method public final synthetic S(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1

    iget-boolean p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->k:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->C(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->C(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final synthetic T(Ljava/lang/Boolean;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->e:Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;->d()V

    :cond_0
    return-void
.end method

.method public final synthetic U(ZLjava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteOperation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "visha_FileOperateUtils"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->e:Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;->h()V

    :cond_0
    return-void
.end method

.method public V()V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->k:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ldp3;->e()Ldp3;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {v1, v2}, Ldp3;->i(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ldp3;->e()Ldp3;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ldp3;->j(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j:Ljava/util/ArrayList;

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<moveToXHide> selectMediaItems size ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "visha_FileOperateUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [I

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz v6, :cond_3

    iget-object v7, v6, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget v6, v6, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    aput v6, v1, v5

    :try_start_0
    const-string v6, "/"

    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v7, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    const-string v7, "<moveToXHide> typeID get fail"

    invoke-static {v2, v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v6, ""

    :goto_2
    const-string v7, "video"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v6, 0x1f

    aput v6, v3, v5

    goto :goto_3

    :cond_2
    const-string v7, "audio"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x20

    aput v6, v3, v5

    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    invoke-static {}, Lpp3;->v()Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_1
    sget-object p0, Lcom/transsion/playercommon/utils/FileToXHideUtils;->g:Lcom/transsion/playercommon/utils/FileToXHideUtils$a;

    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/FileToXHideUtils$a;->a()Lcom/transsion/playercommon/utils/FileToXHideUtils;

    move-result-object p0

    invoke-virtual {p0, v1, v3}, Lcom/transsion/playercommon/utils/FileToXHideUtils;->j([I[I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveToXHide "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget p0, Lcom/transsion/playercommon/R$string;->operation_fail:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    goto :goto_4

    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.xui.xhide/com.xui.xhide.shortcut.HideService"

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "file_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const-string v1, "type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_4
    return-void
.end method

.method public W(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Ltg8;->d()Ltg8;

    move-result-object v0

    invoke-virtual {v0}, Ltg8;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.transsion.tools.activities.PasswordSettingActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "video"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "privacy_from_page"

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    :try_start_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    const/16 v1, 0x4de

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClickHide "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "visha_FileOperateUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-nez v0, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->m0()V

    :goto_3
    const-string p0, "vd_vmore_hide_cl"

    const-wide/16 v0, 0x246c

    invoke-static {p1, p0, v0, v1}, Lp06;->c0(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public X(Lcom/transsion/playercommon/data/FileOperateItem;Ljava/lang/String;Z)V
    .locals 7

    invoke-virtual {p1}, Lcom/transsion/playercommon/data/FileOperateItem;->getFlag()I

    move-result p1

    const/4 v0, 0x1

    const-wide/16 v1, 0x246c

    if-eq p1, v0, :cond_b

    const/4 v3, 0x2

    const-string v4, "audiolist"

    const-string v5, "videolist"

    if-eq p1, v3, :cond_9

    const/4 v3, 0x4

    if-eq p1, v3, :cond_6

    const/4 v3, 0x5

    const/4 v6, 0x0

    if-eq p1, v3, :cond_3

    const/4 v3, 0x6

    if-eq p1, v3, :cond_2

    const/16 v3, 0xa

    if-eq p1, v3, :cond_0

    const/16 v3, 0xc

    if-eq p1, v3, :cond_3

    const/16 v3, 0x3eb

    if-eq p1, v3, :cond_9

    goto/16 :goto_2

    :cond_0
    const-string p1, "vd_vmore_tomp3_cl"

    invoke-static {p1}, Lp06;->d0(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz p1, :cond_1

    iget-object p2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-static {p1}, Llpb;->i(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "\u66f4\u591a\u83dc\u5355"

    invoke-static {p1}, Lh16;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    check-cast p1, Lcom/transsion/playercommon/activities/BaseActivity;

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p1, p0}, Lo5b;->j(Lcom/transsion/playercommon/activities/BaseActivity;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    goto/16 :goto_2

    :cond_1
    sget p0, Lcom/transsion/playercommon/R$string;->trans_mp3_error1:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->l0(ZLcom/transsion/playercommon/fragments/AlertDialogFragment$c;)V

    const-string p0, "vd_vmore_info_cl"

    invoke-static {p2, p0, v1, v2}, Lp06;->c0(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_4

    move-object v4, v5

    :cond_4
    iput-object v4, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->p:Ljava/lang/String;

    if-eqz p3, :cond_5

    const-string p1, "vd_vmore_del_cl"

    invoke-static {p1, v0}, Lkz5;->g(Ljava/lang/String;Z)V

    :cond_5
    invoke-virtual {p0, v6, p3}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->Y(ZZ)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-nez p1, :cond_7

    return-void

    :cond_7
    iget-boolean p3, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    if-eqz p3, :cond_8

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->originUrl:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    invoke-static {p1, p0}, Lrr3;->c(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_8
    iget-object p3, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/MediaItem;->getUri()Landroid/net/Uri;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    invoke-static {p3, p1, p0}, Lrr3;->a(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;)V

    :goto_0
    const-string p0, "vd_vmore_share_cl"

    invoke-static {p2, p0, v1, v2}, Lp06;->c0(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_2

    :cond_9
    invoke-virtual {p0, v0, p3}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->Y(ZZ)V

    if-eqz p3, :cond_a

    move-object v4, v5

    :cond_a
    iput-object v4, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->p:Ljava/lang/String;

    const-string p0, "vd_vmore_rename_cl"

    invoke-static {p2, p0, v1, v2}, Lp06;->c0(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_2

    :cond_b
    sget-boolean p1, Lpp3;->p:Z

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->e:Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;->e()V

    :cond_c
    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->V()V

    goto :goto_1

    :cond_d
    invoke-virtual {p0, p2}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->x(Ljava/lang/String;)V

    :goto_1
    const-string p0, "vd_vmore_hide_cl"

    invoke-static {p2, p0, v1, v2}, Lp06;->c0(Ljava/lang/String;Ljava/lang/String;J)V

    :goto_2
    return-void
.end method

.method public Y(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-nez v0, :cond_0

    const-string p0, "visha_FileOperateUtils"

    const-string p1, "preRename fail"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v1, v0}, Lnx8;->b(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    new-instance v2, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$g;

    invoke-direct {v2, p0, p1, p2}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$g;-><init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;ZZ)V

    invoke-static {v0, v1, v2}, Lnx8;->e(Landroid/app/Activity;Ljava/lang/String;Ls08;)Z

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->n0()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j0(ZZ)V

    :goto_0
    return-void
.end method

.method public Z(ZZLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    const-string v1, "visha_FileOperateUtils"

    if-nez v0, :cond_0

    const-string p0, "preRename fail"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v2, v0}, Lnx8;->b(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->i:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget-object p3, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    check-cast p3, Landroid/app/Activity;

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    new-instance v1, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$h;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$h;-><init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;ZZ)V

    invoke-static {p3, v0, v1}, Lnx8;->e(Landroid/app/Activity;Ljava/lang/String;Ls08;)Z

    goto :goto_0

    :cond_1
    const-string v0, "preRename show:"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->n0()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1, p3}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->k0(ZZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final a0(Lcom/transsion/dbdata/beans/media/MediaItem;Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/io/File;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    invoke-static {p0, v0, p2}, Lnx8;->q(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public b0(Ljava/lang/String;)V
    .locals 11

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    :goto_0
    const-string v2, ""

    iput-object v2, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->o:Ljava/lang/String;

    const-string v2, "/"

    if-eqz v0, :cond_2

    if-lez v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->o:Ljava/lang/String;

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v5, 0x456

    const/4 v6, 0x0

    const/16 v7, 0x430

    const/4 v8, 0x1

    if-eqz v4, :cond_5

    iget-object v2, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/transsion/utils/BaseConstant;->k:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v9, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v3, v9, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {v8}, Luq3;->b(Z)V

    iget-object v2, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->e:Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;

    if-eqz v2, :cond_4

    iget-boolean v3, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->l:Z

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->o:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-interface {v2, p1, v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    new-array p1, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v7, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v5, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void

    :cond_5
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    const-string v9, "visha_FileOperateUtils"

    if-eqz v4, :cond_6

    const-string v0, "rename,new file is exist."

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/playercommon/R$string;->already_exists:I

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->w(Ljava/lang/CharSequence;)V

    return-void

    :cond_6
    sget-boolean v4, Lpp3;->j:Z

    if-nez v4, :cond_7

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1e

    if-lt v4, v10, :cond_7

    iput-object p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->n:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x4d6

    invoke-virtual {p0, v0, p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c0(ILjava/lang/String;)V

    goto :goto_4

    :cond_7
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v2, v3}, Lnx8;->q(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_2

    :cond_8
    sget p0, Lcom/transsion/playercommon/R$string;->operation_fail:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    goto :goto_4

    :cond_9
    :goto_2
    iget-object v2, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->f:Lzl6;

    if-nez v2, :cond_a

    new-instance v2, Lzl6;

    iget-object v3, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lzl6;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->f:Lzl6;

    :cond_a
    invoke-static {v8}, Luq3;->b(Z)V

    iget-object v2, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->f:Lzl6;

    invoke-virtual {v2, v1, v0}, Lzl6;->j(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->Companion:Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;

    invoke-virtual {v2}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager$Companion;->getInstance()Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/transsion/dbdata/source/data/cache/MediaCombineCacheManager;->synCountWhenReName(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->e:Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;

    if-eqz v2, :cond_c

    iget-boolean v3, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->l:Z

    if-eqz v3, :cond_b

    goto :goto_3

    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->o:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-interface {v2, p1, v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    new-array p1, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v7, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v5, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    const-string p0, "rename  success."

    invoke-static {v9, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method

.method public c0(ILjava/lang/String;)V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->k:Z

    const/16 v2, 0x4d7

    const/16 v3, 0x4d6

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/dbdata/beans/media/MediaItem;

    sget-object v5, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->OTHERS:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    iget-object v6, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->SUBTITLE:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    iget-object v6, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v5}, Ltr4;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    sget-object v5, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->AUDIO:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    iget-object v6, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->l:Z

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/media/MediaItem;->getUri()Landroid/net/Uri;

    move-result-object v4

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/media/MediaItem;->getTransUri()Landroid/net/Uri;

    move-result-object v4

    :goto_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_2
    if-ne p1, v3, :cond_4

    invoke-virtual {p0, v4, p2}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->a0(Lcom/transsion/dbdata/beans/media/MediaItem;Ljava/lang/String;)Z

    goto :goto_0

    :cond_4
    if-ne p1, v2, :cond_0

    iget-object v5, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v5}, Ltr4;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$9;

    invoke-direct {v5, p0, v4}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$9;-><init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-static {v5}, Lcom/blankj/utilcode/util/ThreadUtils;->i(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v4}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->z(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    goto :goto_0

    :cond_6
    sget-object v1, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->OTHERS:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    iget-object v4, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v4, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->SUBTITLE:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    iget-object v4, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v4, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v1}, Ltr4;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    sget-object v1, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->AUDIO:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    iget-object v4, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v4, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->type:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->l:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/MediaItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/MediaItem;->getTransUri()Landroid/net/Uri;

    move-result-object v1

    :goto_3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    :goto_4
    if-ne p1, v3, :cond_a

    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, v1, p2}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->a0(Lcom/transsion/dbdata/beans/media/MediaItem;Ljava/lang/String;)Z

    goto :goto_5

    :cond_a
    if-ne p1, v2, :cond_c

    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v1}, Ltr4;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->E(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    goto :goto_5

    :cond_b
    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->z(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    :cond_c
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_e

    iget-object p2, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    check-cast p2, Lcom/transsion/playercommon/activities/BasePermissionActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getRequestedOrientation()I

    invoke-virtual {p2}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_d

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/transsion/playercommon/activities/BaseActivity;->requestedChangeOrientation(I)V

    :cond_d
    iget-boolean p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->l:Z

    invoke-virtual {p2, v0, p1, p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->requestPermissionForAllData(Ljava/util/List;IZ)V

    goto :goto_7

    :cond_e
    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->e:Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;

    if-eqz v0, :cond_11

    if-ne p1, v3, :cond_10

    iget-boolean p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->l:Z

    if-eqz p1, :cond_f

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->n:Ljava/lang/String;

    goto :goto_6

    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->n:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->o:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_6
    invoke-interface {v0, p0, p2}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_10
    if-ne p1, v2, :cond_11

    invoke-interface {v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;->d()V

    :cond_11
    :goto_7
    return-void
.end method

.method public d0(Z)V
    .locals 3

    new-instance v0, Lcom/transsion/widgetslib/dialog/c;

    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/c;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$string;->privacy_restore_dialog_message_progress:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/c;->j(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/c;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/c;->e(Z)Lcom/transsion/widgetslib/dialog/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/dialog/c;->l()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->g:Lcom/transsion/widgetslib/dialog/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->k:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j:Ljava/util/ArrayList;

    invoke-static {v1}, Lnr3;->h(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {v1}, Lnr3;->g(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/privateroom/api/beans/PrivateFile;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-static {}, Ltg8;->d()Ltg8;

    move-result-object v1

    new-instance v2, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$a;

    invoke-direct {v2, p0, p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$a;-><init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;Lcom/transsion/widgetslib/dialog/c;)V

    invoke-virtual {v1, v0, v2}, Ltg8;->i(Ljava/util/List;Ltv4;)V

    return-void
.end method

.method public e0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->l:Z

    return-void
.end method

.method public f0(Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->e:Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;

    return-void
.end method

.method public i0()V
    .locals 5

    iget-boolean v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v2, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/playercommon/R$string;->delete_videos:I

    iget-object v4, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/playercommon/R$string;->delete_video:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v2, Lcom/transsion/playercommon/R$string;->cancel:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v2, Lcom/transsion/playercommon/R$string;->confirm:I

    new-instance v3, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$b;

    invoke-direct {v3, p0, v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$b;-><init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;Z)V

    invoke-virtual {v0, v2, v3}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->g:Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method

.method public j0(ZZ)V
    .locals 7

    iget v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->i:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const/16 v4, 0x23

    if-ne v0, v4, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iget-boolean v4, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->k:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v2, :cond_2

    move v1, v2

    :cond_2
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    if-eqz v1, :cond_3

    sget v4, Lcom/transsion/playercommon/R$string;->delete_downloaded_dialog_message_multiple:I

    goto :goto_2

    :cond_3
    sget v4, Lcom/transsion/playercommon/R$string;->delete_downloaded_dialog_message:I

    :goto_2
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    sget v4, Lcom/transsion/playercommon/R$string;->delete_download_dialog_title_multiple:I

    iget-object v5, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_8

    :cond_4
    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    sget v4, Lcom/transsion/playercommon/R$string;->delete_download_dialog_title:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_5
    if-eqz v3, :cond_7

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    if-eqz v1, :cond_6

    sget v1, Lcom/transsion/playercommon/R$string;->clear_histories_recorded:I

    iget-object v4, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    sget v1, Lcom/transsion/playercommon/R$string;->clear_history:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    const-string v1, ""

    goto :goto_8

    :cond_7
    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    if-eqz p1, :cond_8

    sget v4, Lcom/transsion/playercommon/R$string;->delete_video_dialog_title_multiple:I

    goto :goto_4

    :cond_8
    sget v4, Lcom/transsion/playercommon/R$string;->delete_music_dialog_title_multiple:I

    :goto_4
    iget-object v5, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_9
    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    if-eqz p1, :cond_a

    sget v4, Lcom/transsion/playercommon/R$string;->delete_video_dialog_title:I

    goto :goto_5

    :cond_a
    sget v4, Lcom/transsion/playercommon/R$string;->delete_music_dialog_title:I

    :goto_5
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_6
    iget-object v4, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    if-eqz v1, :cond_b

    sget v1, Lcom/transsion/playercommon/R$string;->delete_dialog_message_multiple:I

    goto :goto_7

    :cond_b
    sget v1, Lcom/transsion/playercommon/R$string;->delete_dialog_message:I

    :goto_7
    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_8
    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->l:Z

    new-instance p1, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v2, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Lcom/transsion/widgetslib/dialog/d$a;->B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    if-eqz v3, :cond_c

    sget v0, Lcom/transsion/playercommon/R$string;->clear:I

    goto :goto_9

    :cond_c
    sget v0, Lcom/transsion/playercommon/R$string;->delete:I

    :goto_9
    new-instance v1, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;

    invoke-direct {v1, p0, p2}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;-><init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;Z)V

    invoke-virtual {p1, v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    sget v0, Lcom/transsion/playercommon/R$string;->cancel:I

    new-instance v1, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;

    invoke-direct {v1, p0, p2}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;-><init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;Z)V

    invoke-virtual {p1, v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->g:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/dialog/d;->show()V

    return-void
.end method

.method public k0(ZZLjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    iput-object p3, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget p3, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->i:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/16 v3, 0x23

    if-ne p3, v3, :cond_1

    move p3, v1

    goto :goto_1

    :cond_1
    move p3, v0

    :goto_1
    iget-boolean v3, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->k:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v1, :cond_2

    move v0, v1

    :cond_2
    if-eqz p3, :cond_5

    iget-object p3, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    if-eqz v0, :cond_3

    sget v3, Lcom/transsion/playercommon/R$string;->delete_downloaded_dialog_message_multiple:I

    goto :goto_2

    :cond_3
    sget v3, Lcom/transsion/playercommon/R$string;->delete_downloaded_dialog_message:I

    :goto_2
    invoke-virtual {p3, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    sget v3, Lcom/transsion/playercommon/R$string;->delete_download_dialog_title_multiple:I

    iget-object v4, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :cond_4
    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    sget v3, Lcom/transsion/playercommon/R$string;->delete_download_dialog_title:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_5
    if-eqz v2, :cond_7

    iget-object p3, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    if-eqz v0, :cond_6

    sget v0, Lcom/transsion/playercommon/R$string;->clear_histories_recorded:I

    iget-object v3, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p3, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    :cond_6
    sget v0, Lcom/transsion/playercommon/R$string;->clear_history:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    :goto_3
    const-string v0, ""

    goto :goto_8

    :cond_7
    if-eqz v0, :cond_9

    iget-object p3, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    if-eqz p1, :cond_8

    sget v3, Lcom/transsion/playercommon/R$string;->delete_video_dialog_title_multiple:I

    goto :goto_4

    :cond_8
    sget v3, Lcom/transsion/playercommon/R$string;->delete_music_dialog_title_multiple:I

    :goto_4
    iget-object v4, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_6

    :cond_9
    iget-object p3, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    if-eqz p1, :cond_a

    sget v3, Lcom/transsion/playercommon/R$string;->delete_video_dialog_title:I

    goto :goto_5

    :cond_a
    sget v3, Lcom/transsion/playercommon/R$string;->delete_music_dialog_title:I

    :goto_5
    invoke-virtual {p3, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    :goto_6
    iget-object v3, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    if-eqz v0, :cond_b

    sget v0, Lcom/transsion/playercommon/R$string;->delete_dialog_message_multiple:I

    goto :goto_7

    :cond_b
    sget v0, Lcom/transsion/playercommon/R$string;->delete_dialog_message:I

    :goto_7
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    move-object v0, p3

    move-object p3, v5

    :goto_8
    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->l:Z

    new-instance p1, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/d$a;->B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    if-eqz v2, :cond_c

    sget p3, Lcom/transsion/playercommon/R$string;->clear:I

    goto :goto_9

    :cond_c
    sget p3, Lcom/transsion/playercommon/R$string;->delete:I

    :goto_9
    new-instance v0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;

    invoke-direct {v0, p0, p2}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;-><init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;Z)V

    invoke-virtual {p1, p3, v0}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    sget p3, Lcom/transsion/playercommon/R$string;->cancel:I

    new-instance v0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;

    invoke-direct {v0, p0, p2}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$DeleteListener;-><init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;Z)V

    invoke-virtual {p1, p3, v0}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->g:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/dialog/d;->show()V

    return-void
.end method

.method public l0(ZLcom/transsion/playercommon/fragments/AlertDialogFragment$c;)V
    .locals 9

    new-instance v0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$b;

    invoke-direct {v0}, Lcom/transsion/playercommon/fragments/AlertDialogFragment$b;-><init>()V

    if-eqz p1, :cond_0

    sget p1, Lcom/transsion/playercommon/R$layout;->dialog_details_video_play:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/playercommon/R$layout;->dialog_details:I

    :goto_0
    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/fragments/AlertDialogFragment$b;->c(I)Lcom/transsion/playercommon/fragments/AlertDialogFragment$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/playercommon/fragments/AlertDialogFragment$b;->a()Lcom/transsion/playercommon/fragments/AlertDialogFragment;

    move-result-object p1

    :try_start_0
    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$string;->ok:I

    invoke-virtual {v0, v2}, Lcom/transsion/playercommon/fragments/AlertDialogFragment$b;->b(I)Lcom/transsion/playercommon/fragments/AlertDialogFragment$b;

    move-result-object v0

    sget v2, Lcom/transsion/playercommon/R$string;->info:I

    invoke-virtual {v0, v2}, Lcom/transsion/playercommon/fragments/AlertDialogFragment$b;->d(I)Lcom/transsion/playercommon/fragments/AlertDialogFragment$b;

    const-string v0, "detail_dialog_fragment_tag"

    invoke-virtual {p1, v1, v0}, Lcom/transsion/playercommon/fragments/AlertDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    invoke-virtual {p1, p2}, Lcom/transsion/playercommon/fragments/AlertDialogFragment;->setOnDialogDismissListener(Lcom/transsion/playercommon/fragments/AlertDialogFragment$c;)V

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_e

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    sget p2, Lcom/transsion/playercommon/R$id;->rv_bucket_fragment_info:I

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$InfoAdapter;

    sget v0, Lcom/transsion/playercommon/R$layout;->item_bucket_fragment_info:I

    invoke-direct {p2, v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$InfoAdapter;-><init>(I)V

    new-instance v0, Lcom/transsion/utils/CustomLinearLayoutManager;

    iget-object v1, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/utils/CustomLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_2

    new-instance v4, Lcom/transsion/playercommon/data/InfoBean;

    sget v5, Lcom/transsion/playercommon/R$string;->name:I

    invoke-direct {v4, v5, v0, v2, v3}, Lcom/transsion/playercommon/data/InfoBean;-><init>(ILjava/lang/String;J)V

    invoke-virtual {v4, v1}, Lcom/transsion/playercommon/data/InfoBean;->setMultiLines(Z)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    instance-of v4, v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v4, :cond_3

    move-object v4, v0

    check-cast v4, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v4, v4, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    if-eqz v4, :cond_3

    new-instance v4, Lcom/transsion/playercommon/data/InfoBean;

    sget v5, Lcom/transsion/playercommon/R$string;->singer:I

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-direct {v4, v5, v0, v2, v3}, Lcom/transsion/playercommon/data/InfoBean;-><init>(ILjava/lang/String;J)V

    invoke-virtual {v4, v1}, Lcom/transsion/playercommon/data/InfoBean;->setMultiLines(Z)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    instance-of v4, v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v4, :cond_4

    move-object v4, v0

    check-cast v4, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v4, v4, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    if-eqz v4, :cond_4

    new-instance v4, Lcom/transsion/playercommon/data/InfoBean;

    sget v5, Lcom/transsion/playercommon/R$string;->audio_edit_album:I

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    invoke-direct {v4, v5, v0, v2, v3}, Lcom/transsion/playercommon/data/InfoBean;-><init>(ILjava/lang/String;J)V

    invoke-virtual {v4, v1}, Lcom/transsion/playercommon/data/InfoBean;->setMultiLines(Z)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean v4, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    if-eqz v4, :cond_5

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->uploaderName:Ljava/lang/String;

    if-eqz v0, :cond_5

    new-instance v4, Lcom/transsion/playercommon/data/InfoBean;

    sget v5, Lcom/transsion/playercommon/R$string;->online_video_uploader_name:I

    invoke-direct {v4, v5, v0, v2, v3}, Lcom/transsion/playercommon/data/InfoBean;-><init>(ILjava/lang/String;J)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    if-eqz v0, :cond_6

    new-instance v4, Lcom/transsion/playercommon/data/InfoBean;

    sget v5, Lcom/transsion/playercommon/R$string;->type:I

    invoke-direct {v4, v5, v0, v2, v3}, Lcom/transsion/playercommon/data/InfoBean;-><init>(ILjava/lang/String;J)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-wide v4, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_7

    new-instance v0, Lcom/transsion/playercommon/data/InfoBean;

    sget v6, Lcom/transsion/playercommon/R$string;->duration:I

    invoke-static {v4, v5}, Lwna;->c(J)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-wide v7, v5, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-direct {v0, v6, v4, v7, v8}, Lcom/transsion/playercommon/data/InfoBean;-><init>(ILjava/lang/String;J)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-wide v4, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_8

    new-instance v0, Lcom/transsion/playercommon/data/InfoBean;

    sget v6, Lcom/transsion/playercommon/R$string;->size:I

    iget-object v7, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    invoke-static {v7, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v6, v4, v2, v3}, Lcom/transsion/playercommon/data/InfoBean;-><init>(ILjava/lang/String;J)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-wide v4, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_9

    new-instance v0, Lcom/transsion/playercommon/data/InfoBean;

    sget v6, Lcom/transsion/playercommon/R$string;->date:I

    invoke-static {v4, v5}, Lwna;->i(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v6, v4, v2, v3}, Lcom/transsion/playercommon/data/InfoBean;-><init>(ILjava/lang/String;J)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean v4, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    if-eqz v4, :cond_a

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->originUrl:Ljava/lang/String;

    if-eqz v0, :cond_a

    new-instance v4, Lcom/transsion/playercommon/data/InfoBean;

    sget v5, Lcom/transsion/playercommon/R$string;->online_video_original_link:I

    invoke-direct {v4, v5, v0, v2, v3}, Lcom/transsion/playercommon/data/InfoBean;-><init>(ILjava/lang/String;J)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean v4, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->isYoutubeUrl:Z

    if-nez v4, :cond_d

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz v0, :cond_d

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    iget-boolean v4, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->q:Z

    if-eqz v4, :cond_b

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/playercommon/R$string;->privacy_space:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_b
    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    const/4 v4, -0x1

    if-ne v0, v4, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_c
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_2
    new-instance v0, Lcom/transsion/playercommon/data/InfoBean;

    sget v4, Lcom/transsion/playercommon/R$string;->path:I

    invoke-direct {v0, v4, p0, v2, v3}, Lcom/transsion/playercommon/data/InfoBean;-><init>(ILjava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/data/InfoBean;->setMultiLines(Z)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_e
    const/4 p0, 0x0

    const-string p1, "video_info"

    invoke-static {p0, p1}, Lp06;->g0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public m0()V
    .locals 5

    iget-boolean v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->g:Lcom/transsion/widgetslib/dialog/d;

    if-nez v0, :cond_2

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v2, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/playercommon/R$string;->privacy_hide_dialog_message_multiple:I

    iget-object v4, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->j:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/playercommon/R$string;->privacy_hide_dialog_message:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v2, Lcom/transsion/playercommon/R$string;->cancel:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v2, Lcom/transsion/playercommon/R$string;->confirm:I

    new-instance v3, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$d;

    invoke-direct {v3, p0, v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$d;-><init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;Z)V

    invoke-virtual {v0, v2, v3}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->g:Lcom/transsion/widgetslib/dialog/d;

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->g:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    :cond_3
    :goto_2
    return-void
.end method

.method public final n0()V
    .locals 8

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    const/4 v2, -0x1

    const-string v3, "."

    if-nez v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    :goto_1
    const/4 v5, 0x0

    const-string v6, ""

    if-lez v4, :cond_3

    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    if-ge v7, v4, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_2
    if-nez v1, :cond_8

    goto :goto_2

    :cond_3
    if-ltz v2, :cond_5

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_4

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    :goto_2
    move-object v1, v6

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean v2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    if-eqz v2, :cond_6

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_7

    iget-object v2, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->c:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    if-nez v1, :cond_7

    move-object v1, v6

    :cond_7
    move-object v0, v6

    :cond_8
    :goto_3
    new-instance v2, Lcom/transsion/playercommon/fragments/AlertDialogFragment$e;

    invoke-direct {v2}, Lcom/transsion/playercommon/fragments/AlertDialogFragment$e;-><init>()V

    invoke-virtual {v2, v1, v6}, Lcom/transsion/playercommon/fragments/AlertDialogFragment$e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/playercommon/fragments/AlertDialogFragment$e;

    invoke-virtual {v2}, Lcom/transsion/playercommon/fragments/AlertDialogFragment$e;->e()Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;

    move-result-object v1

    new-instance v2, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;

    invoke-direct {v2, p0, v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$l;-><init>(Lcom/transsion/playercommon/utils/storage/FileOperateUtils;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;->M(Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment$d;)V

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    check-cast p0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "rename_dialog_fragment_tag"

    invoke-virtual {v1, p0, v0}, Lcom/transsion/playercommon/fragments/AlertDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->H()V

    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcac;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lt08;->a(Landroid/app/Activity;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->W(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x84

    invoke-static {p0, p1, v0}, Lt08;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public y(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 3

    invoke-static {}, Lwe6;->i()V

    invoke-static {}, Lao;->U()Lao;

    move-result-object p0

    move-object v0, p1

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lao;->c0(ZLcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x41f

    invoke-virtual {p0, v2, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lao;->U()Lao;

    move-result-object p0

    invoke-virtual {p0, v0}, Lao;->n(Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x42f

    invoke-virtual {p0, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    iget-boolean p0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x486

    invoke-virtual {p0, v0, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final z(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->b:Landroid/content/Context;

    invoke-static {p0, v1}, Lnx8;->f(Landroid/content/Context;Ljava/io/File;)Z

    move-result p0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, p0

    :goto_0
    return v0
.end method
