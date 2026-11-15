.class public final synthetic Lw2c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw2c;->a:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lw2c;->a:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    check-cast p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;

    invoke-static {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->J1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    return-void
.end method
