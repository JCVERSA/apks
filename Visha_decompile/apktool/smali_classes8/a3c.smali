.class public final synthetic La3c;
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

    iput-object p1, p0, La3c;->a:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, La3c;->a:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->G1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Ljava/lang/Boolean;)V

    return-void
.end method
