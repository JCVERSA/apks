.class public Lcom/transsion/audio/activities/AudioPlayerActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gw/swipeback/SwipeBackLayout$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/activities/AudioPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/audio/activities/AudioPlayerActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/activities/AudioPlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity$b;->a:Lcom/transsion/audio/activities/AudioPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;FF)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity$b;->a:Lcom/transsion/audio/activities/AudioPlayerActivity;

    invoke-static {p1}, Lcom/transsion/audio/activities/AudioPlayerActivity;->S0(Lcom/transsion/audio/activities/AudioPlayerActivity;)F

    move-result p1

    const/4 p3, 0x0

    cmpg-float p1, p1, p3

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity$b;->a:Lcom/transsion/audio/activities/AudioPlayerActivity;

    invoke-static {p1}, Lcom/transsion/audio/activities/AudioPlayerActivity;->T0(Lcom/transsion/audio/activities/AudioPlayerActivity;)F

    move-result p1

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity$b;->a:Lcom/transsion/audio/activities/AudioPlayerActivity;

    invoke-static {p1}, Lcom/transsion/audio/activities/AudioPlayerActivity;->R0(Lcom/transsion/audio/activities/AudioPlayerActivity;)Landroid/widget/ImageView;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity$b;->a:Lcom/transsion/audio/activities/AudioPlayerActivity;

    invoke-static {p0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->V0(Lcom/transsion/audio/activities/AudioPlayerActivity;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity$b;->a:Lcom/transsion/audio/activities/AudioPlayerActivity;

    invoke-static {p0, p2}, Lcom/transsion/audio/activities/AudioPlayerActivity;->X0(Lcom/transsion/audio/activities/AudioPlayerActivity;F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity$b;->a:Lcom/transsion/audio/activities/AudioPlayerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity$b;->a:Lcom/transsion/audio/activities/AudioPlayerActivity;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/AudioPlayerActivity;->g1(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity$b;->a:Lcom/transsion/audio/activities/AudioPlayerActivity;

    invoke-static {p0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->W0(Lcom/transsion/audio/activities/AudioPlayerActivity;)V

    :goto_0
    return-void
.end method
