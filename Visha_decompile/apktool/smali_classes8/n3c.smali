.class public final synthetic Ln3c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

.field public final synthetic c:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3c;->b:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    iput-object p2, p0, Ln3c;->c:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ln3c;->b:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    iget-object p0, p0, Ln3c;->c:Landroid/content/Intent;

    invoke-static {v0, p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->I1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Landroid/content/Intent;)V

    return-void
.end method
