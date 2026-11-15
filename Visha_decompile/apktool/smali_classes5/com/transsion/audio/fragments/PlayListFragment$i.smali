.class public Lcom/transsion/audio/fragments/PlayListFragment$i;
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
    name = "i"
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/audio/fragments/PlayListFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/PlayListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/PlayListFragment$i;->b:Lcom/transsion/audio/fragments/PlayListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/DialogInterface;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment$i;->d(Landroid/content/DialogInterface;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/audio/fragments/PlayListFragment$i;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment$i;->c(Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroid/content/DialogInterface;Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final synthetic c(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {}, Lao;->U()Lao;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/audio/fragments/PlayListFragment$i;->b:Lcom/transsion/audio/fragments/PlayListFragment;

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {p0}, Lcom/transsion/audio/adapter/AudioItemAdapter;->G()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1, p0}, Lao;->l(Ljava/util/List;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p2

    new-instance v0, Lz58;

    invoke-direct {v0, p0}, Lz58;-><init>(Lcom/transsion/audio/fragments/PlayListFragment$i;)V

    invoke-virtual {p2, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/audio/fragments/PlayListFragment$i;->b:Lcom/transsion/audio/fragments/PlayListFragment;

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxFragment;->bindToLifecycle()Lyk5;

    move-result-object p0

    invoke-virtual {p2, p0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p0, p2}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p0, p2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    new-instance p2, La68;

    invoke-direct {p2, p1}, La68;-><init>(Landroid/content/DialogInterface;)V

    invoke-virtual {p0, p2}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method
