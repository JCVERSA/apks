.class public Lcom/transsion/magicvideo/fragments/VideosBaseFragment$d;
.super Lchc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/fragments/VideosBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lchc;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;Z)V
    .locals 0

    check-cast p1, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment$d;->d(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;Z)V

    return-void
.end method

.method public d(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;Z)V
    .locals 0

    invoke-static {}, Luq3;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    iget-boolean p0, p1, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->m:Z

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->A0(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->z:Z

    :goto_0
    return-void
.end method
