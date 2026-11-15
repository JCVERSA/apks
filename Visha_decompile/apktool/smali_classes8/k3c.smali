.class public final synthetic Lk3c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic b:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3c;->b:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Lk3c;->b:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-static {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->z1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
