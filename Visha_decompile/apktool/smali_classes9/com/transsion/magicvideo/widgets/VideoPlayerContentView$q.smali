.class public Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->Q7()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Landroid/widget/TextView;

.field public final synthetic d:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$q;->d:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$q;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$q;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/magicvideo/R$id;->ll_local_language_from:I

    const-string v2, "settings"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$q;->d:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A0()Z

    move-result v0

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$q;->b:Landroid/widget/TextView;

    invoke-static {p1, v0, v1, p0, v4}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->Z2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;ZZLandroid/widget/TextView;Z)V

    const-string p0, "vd_video_losub_tran_lang"

    invoke-static {v3, v2, p0}, Lny5;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/magicvideo/R$id;->ll_local_language_to:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$q;->d:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->C1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A0()Z

    move-result v0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$q;->c:Landroid/widget/TextView;

    invoke-static {p1, v0, v4, p0, v4}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->Z2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;ZZLandroid/widget/TextView;Z)V

    const-string p0, "vd_video_losub_tran_tranlang"

    invoke-static {v3, v2, p0}, Lny5;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
