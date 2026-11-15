.class public Lcom/transsion/audio/fragments/PlayListFragment$h;
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
    name = "h"
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/audio/fragments/PlayListFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/PlayListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/PlayListFragment$h;->b:Lcom/transsion/audio/fragments/PlayListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/audio/fragments/PlayListFragment;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/fragments/PlayListFragment$h;->c(Lcom/transsion/audio/fragments/PlayListFragment;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroid/content/DialogInterface;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment$h;->d(Landroid/content/DialogInterface;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/audio/fragments/PlayListFragment;)Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lao;->U()Lao;

    move-result-object p0

    invoke-virtual {p0}, Lao;->j()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroid/content/DialogInterface;Ljava/lang/Object;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p2, p0, Lcom/transsion/audio/fragments/PlayListFragment$h;->b:Lcom/transsion/audio/fragments/PlayListFragment;

    invoke-static {p2}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p2

    new-instance v0, Lx58;

    invoke-direct {v0}, Lx58;-><init>()V

    invoke-virtual {p2, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/audio/fragments/PlayListFragment$h;->b:Lcom/transsion/audio/fragments/PlayListFragment;

    invoke-static {p0}, Lcom/transsion/audio/fragments/PlayListFragment;->c3(Lcom/transsion/audio/fragments/PlayListFragment;)Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

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

    new-instance p2, Ly58;

    invoke-direct {p2, p1}, Ly58;-><init>(Landroid/content/DialogInterface;)V

    invoke-virtual {p0, p2}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method
