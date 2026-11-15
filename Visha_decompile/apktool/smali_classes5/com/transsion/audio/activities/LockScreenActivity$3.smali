.class public Lcom/transsion/audio/activities/LockScreenActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audio/lyrics/LrcSearcher$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/activities/LockScreenActivity;->q1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/audio/activities/LockScreenActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/activities/LockScreenActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/activities/LockScreenActivity$3;->a:Lcom/transsion/audio/activities/LockScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public searchFailed(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/audio/activities/LockScreenActivity$3;->a:Lcom/transsion/audio/activities/LockScreenActivity;

    invoke-static {p1}, Lcom/transsion/audio/activities/LockScreenActivity;->I0(Lcom/transsion/audio/activities/LockScreenActivity;)Lcom/transsion/audio/widgets/LrcViewNew;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/transsion/audio/widgets/LrcViewNew;->onLrcLoaded(Ljava/util/List;)V

    iget-object p0, p0, Lcom/transsion/audio/activities/LockScreenActivity$3;->a:Lcom/transsion/audio/activities/LockScreenActivity;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/audio/activities/LockScreenActivity;->M0(Lcom/transsion/audio/activities/LockScreenActivity;Z)V

    return-void
.end method

.method public searchSuccess(Ljava/util/List;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 1

    iget-object p2, p0, Lcom/transsion/audio/activities/LockScreenActivity$3;->a:Lcom/transsion/audio/activities/LockScreenActivity;

    invoke-static {p2}, Lcom/transsion/audio/activities/LockScreenActivity;->H0(Lcom/transsion/audio/activities/LockScreenActivity;)Lcom/transsion/widgets/FadingEdgeLayout;

    move-result-object p2

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/transsion/audio/activities/LockScreenActivity$3;->a:Lcom/transsion/audio/activities/LockScreenActivity;

    invoke-static {p2}, Lcom/transsion/audio/activities/LockScreenActivity;->I0(Lcom/transsion/audio/activities/LockScreenActivity;)Lcom/transsion/audio/widgets/LrcViewNew;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/transsion/audio/activities/LockScreenActivity$3;->a:Lcom/transsion/audio/activities/LockScreenActivity;

    invoke-static {p2}, Lcom/transsion/audio/activities/LockScreenActivity;->I0(Lcom/transsion/audio/activities/LockScreenActivity;)Lcom/transsion/audio/widgets/LrcViewNew;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/transsion/audio/widgets/LrcViewNew;->onLrcLoaded(Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/audio/activities/LockScreenActivity$3;->a:Lcom/transsion/audio/activities/LockScreenActivity;

    invoke-static {p1}, Lcom/transsion/audio/activities/LockScreenActivity;->I0(Lcom/transsion/audio/activities/LockScreenActivity;)Lcom/transsion/audio/widgets/LrcViewNew;

    move-result-object p1

    new-instance p2, Lcom/transsion/audio/activities/LockScreenActivity$3$1;

    invoke-direct {p2, p0}, Lcom/transsion/audio/activities/LockScreenActivity$3$1;-><init>(Lcom/transsion/audio/activities/LockScreenActivity$3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
