.class public Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$f;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$f;


# direct methods
.method public constructor <init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$f;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$f$a;->b:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)Lzfb;
    .locals 3

    new-instance v0, Lcom/transsion/dbdata/beans/FileHandlerData;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    new-instance v1, Lcom/transsion/dbdata/beans/VideoCloudData;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/VideoCloudData;-><init>()V

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$f$a;->b:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$f;

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$f;->b:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-static {p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->b2(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v2, 0x3

    invoke-direct {v0, p1, v2, v1, p0}, Lcom/transsion/dbdata/beans/FileHandlerData;-><init>(ZILcom/transsion/dbdata/beans/VideoCloudData;Ljava/util/List;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 p1, 0x46d

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/16 v0, 0x46b

    invoke-virtual {p0, v0, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$f$a;->a(Ljava/lang/Boolean;)Lzfb;

    move-result-object p0

    return-object p0
.end method
