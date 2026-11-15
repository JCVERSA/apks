.class public final synthetic Lp2c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp2c;->a:Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lp2c;->a:Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->P(Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
