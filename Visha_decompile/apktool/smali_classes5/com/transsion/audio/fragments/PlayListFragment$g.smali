.class public Lcom/transsion/audio/fragments/PlayListFragment$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/fragments/PlayListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/audio/fragments/PlayListFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/PlayListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/PlayListFragment$g;->b:Lcom/transsion/audio/fragments/PlayListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/audio/fragments/PlayListFragment$g;Ljava/lang/Long;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment$g;->c(Ljava/lang/Long;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/audio/fragments/PlayListFragment$g;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment$g;->d(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final synthetic c(Ljava/lang/Long;)Ljava/lang/Integer;
    .locals 2

    invoke-static {}, Lao;->U()Lao;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/audio/fragments/PlayListFragment$g;->b:Lcom/transsion/audio/fragments/PlayListFragment;

    invoke-static {p0}, Lcom/transsion/audio/fragments/PlayListFragment;->Q2(Lcom/transsion/audio/fragments/PlayListFragment;)Lcom/transsion/dbdata/beans/media/MediaBucket;

    move-result-object p0

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    long-to-int p0, v0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lao;->o(J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic d(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/PlayListFragment$g;->b:Lcom/transsion/audio/fragments/PlayListFragment;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->M:Z

    invoke-static {p0}, Lcom/transsion/audio/fragments/PlayListFragment;->b3(Lcom/transsion/audio/fragments/PlayListFragment;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object p0

    invoke-static {p0}, La64;->a(Lcom/transsion/playercommon/activities/BaseActivity;)Z

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/audio/fragments/PlayListFragment$g;->b:Lcom/transsion/audio/fragments/PlayListFragment;

    invoke-static {p1}, Lcom/transsion/audio/fragments/PlayListFragment;->Q2(Lcom/transsion/audio/fragments/PlayListFragment;)Lcom/transsion/dbdata/beans/media/MediaBucket;

    move-result-object p1

    iget-wide p1, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p1

    new-instance p2, Lv58;

    invoke-direct {p2, p0}, Lv58;-><init>(Lcom/transsion/audio/fragments/PlayListFragment$g;)V

    invoke-virtual {p1, p2}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/audio/fragments/PlayListFragment$g;->b:Lcom/transsion/audio/fragments/PlayListFragment;

    invoke-static {p2}, Lcom/transsion/audio/fragments/PlayListFragment;->a3(Lcom/transsion/audio/fragments/PlayListFragment;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance p2, Lw58;

    invoke-direct {p2, p0}, Lw58;-><init>(Lcom/transsion/audio/fragments/PlayListFragment$g;)V

    invoke-virtual {p1, p2}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method
