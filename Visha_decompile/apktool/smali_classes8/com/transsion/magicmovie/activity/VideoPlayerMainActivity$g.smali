.class public Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$g;
.super Lhf7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->inflateOperationBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$g;->e:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-direct {p0, p2}, Lhf7;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x3e8

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f4

    :goto_0
    invoke-virtual {p0, v0}, Lhf7;->b(I)V

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity$g;->e:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-virtual {p0, p1}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->onItemClick(I)V

    return-void
.end method
