.class public Lcom/transsion/playercommon/ucrop/UCropActivity$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lye0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/ucrop/UCropActivity;->E0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/ucrop/UCropActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/ucrop/UCropActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/ucrop/UCropActivity$h;->a:Lcom/transsion/playercommon/ucrop/UCropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/playercommon/ucrop/UCropActivity$h;Landroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/ucrop/UCropActivity$h;->f(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/playercommon/ucrop/UCropActivity$h;Landroid/net/Uri;Lcom/transsion/playercommon/ucrop/UCropActivity$h;)Landroid/net/Uri;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/ucrop/UCropActivity$h;->e(Landroid/net/Uri;Lcom/transsion/playercommon/ucrop/UCropActivity$h;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/net/Uri;IIII)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p2, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/playercommon/ucrop/UCropActivity$h;->a:Lcom/transsion/playercommon/ucrop/UCropActivity;

    invoke-virtual {p3}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object p3

    invoke-virtual {p2, p3}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p2

    new-instance p3, Lfeb;

    invoke-direct {p3, p0, p1}, Lfeb;-><init>(Lcom/transsion/playercommon/ucrop/UCropActivity$h;Landroid/net/Uri;)V

    invoke-virtual {p2, p3}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance p2, Lgeb;

    invoke-direct {p2, p0}, Lgeb;-><init>(Lcom/transsion/playercommon/ucrop/UCropActivity$h;)V

    invoke-virtual {p1, p2}, Lmc7;->Z(Lzf1;)Lrc2;

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/ucrop/UCropActivity$h;->a:Lcom/transsion/playercommon/ucrop/UCropActivity;

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/ucrop/UCropActivity;->O0(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/transsion/playercommon/ucrop/UCropActivity$h;->a:Lcom/transsion/playercommon/ucrop/UCropActivity;

    invoke-static {p1}, Lcom/transsion/playercommon/ucrop/UCropActivity;->s0(Lcom/transsion/playercommon/ucrop/UCropActivity;)Lcom/transsion/widgetslib/view/LoadingView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/playercommon/ucrop/UCropActivity$h;->a:Lcom/transsion/playercommon/ucrop/UCropActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final synthetic e(Landroid/net/Uri;Lcom/transsion/playercommon/ucrop/UCropActivity$h;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/ucrop/UCropActivity$h;->a:Lcom/transsion/playercommon/ucrop/UCropActivity;

    invoke-static {p0, p1}, Lcom/transsion/playercommon/ucrop/UCropActivity;->v0(Lcom/transsion/playercommon/ucrop/UCropActivity;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic f(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/ucrop/UCropActivity$h;->a:Lcom/transsion/playercommon/ucrop/UCropActivity;

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/ucrop/UCropActivity;->P0(Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/transsion/playercommon/ucrop/UCropActivity$h;->a:Lcom/transsion/playercommon/ucrop/UCropActivity;

    invoke-static {p1}, Lcom/transsion/playercommon/ucrop/UCropActivity;->s0(Lcom/transsion/playercommon/ucrop/UCropActivity;)Lcom/transsion/widgetslib/view/LoadingView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/playercommon/ucrop/UCropActivity$h;->a:Lcom/transsion/playercommon/ucrop/UCropActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
