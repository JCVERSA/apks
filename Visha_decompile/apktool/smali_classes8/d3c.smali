.class public final synthetic Ld3c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld3c;->b:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    iput-boolean p2, p0, Ld3c;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ld3c;->b:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    iget-boolean p0, p0, Ld3c;->c:Z

    invoke-static {v0, p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->d1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Z)V

    return-void
.end method
