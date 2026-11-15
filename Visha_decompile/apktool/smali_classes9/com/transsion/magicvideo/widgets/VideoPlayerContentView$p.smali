.class public Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->E7(ZZLandroid/widget/TextView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Landroid/widget/TextView;

.field public final synthetic e:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;ZZZLandroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p;->e:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iput-boolean p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p;->a:Z

    iput-boolean p3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p;->b:Z

    iput-boolean p4, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p;->c:Z

    iput-object p5, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lj;I)V
    .locals 3

    iget-boolean p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p;->a:Z

    iget-object v0, p1, Lj;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p;->e:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->c1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;

    move-result-object v1

    iget-boolean v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p;->b:Z

    invoke-static {p2, v0, v1, v2}, Ln;->h(ZLjava/lang/String;Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;Z)V

    iget-boolean p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p;->b:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p;->e:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p;->c:Z

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->n3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;ZZ)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p;->e:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->g3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    :goto_0
    iget-object p1, p1, Lj;->c:Ljava/lang/String;

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p;->d:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p;->a:Z

    const-string v0, "settings"

    if-eqz p2, :cond_2

    iget-boolean p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p;->b:Z

    if-eqz p0, :cond_1

    const-string p0, "vd_video_aisub_sourlang_switch"

    goto :goto_1

    :cond_1
    const-string p0, "vd_video_losub_tran_lang_select"

    :goto_1
    invoke-static {p1, v0, p0}, Lny5;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    iget-boolean p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p;->b:Z

    if-eqz p0, :cond_3

    const-string p0, "vd_video_aisub_tranlang_switch"

    goto :goto_2

    :cond_3
    const-string p0, "vd_video_losub_tran_tranlang_select"

    :goto_2
    invoke-static {p1, v0, p0}, Lny5;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p;->e:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->hideSettingDialogViewNoAnim()V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$p;->e:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->v2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Ljava/lang/String;Z)V

    return-void
.end method
