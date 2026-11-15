.class public Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgets/popup/ISelectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->r(IZLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$b;->b:Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;

    iput-boolean p2, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$b;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lgw4;)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$b;->b:Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;

    invoke-static {v0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->j(Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$b;->a:Z

    invoke-interface {p1}, Lgw4;->displayText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ln;->u(ZZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$b;->a:Z

    const-string v1, "playpage"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$b;->b:Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;

    invoke-interface {p1}, Lgw4;->displayText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$b;->b:Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;

    invoke-static {v3}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->j(Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->setCheckedLanguageFrom(Ljava/lang/String;Z)V

    invoke-interface {p1}, Lgw4;->displayText()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$b;->b:Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;

    invoke-static {v0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->j(Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "vd_video_aisub_sourlang_switch"

    goto :goto_0

    :cond_0
    const-string v0, "vd_video_losub_tran_lang_select"

    :goto_0
    invoke-static {p1, v1, v0}, Lny5;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$b;->b:Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;

    invoke-interface {p1}, Lgw4;->displayText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$b;->b:Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;

    invoke-static {v3}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->j(Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->setCheckedLanguageTo(Ljava/lang/String;ZZ)V

    invoke-interface {p1}, Lgw4;->displayText()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$b;->b:Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;

    invoke-static {v0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->j(Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "vd_video_aisub_tranlang_switch"

    goto :goto_1

    :cond_2
    const-string v0, "vd_video_losub_tran_tranlang_select"

    :goto_1
    invoke-static {p1, v1, v0}, Lny5;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$b;->b:Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;

    invoke-static {p0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->k(Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;)Lk;

    move-result-object p0

    invoke-virtual {p0}, Leb0;->f()V

    return-void
.end method

.method public bridge synthetic selectCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lgw4;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$b;->a(Lgw4;)V

    return-void
.end method
