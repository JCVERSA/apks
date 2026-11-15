.class public Ln$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln;->g(Landroid/widget/ImageView;Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/ImageView;

.field public final synthetic c:Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;)V
    .locals 0

    iput-object p1, p0, Ln$a;->b:Landroid/widget/ImageView;

    iput-object p2, p0, Ln$a;->c:Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)Lzfb;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ln$a;->b:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ln;->x(Landroid/widget/ImageView;Z)V

    iget-object p1, p0, Ln$a;->c:Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;

    invoke-virtual {p1, v0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->switchToAI(Z)V

    iget-object p0, p0, Ln$a;->c:Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/transsion/magicvideo/R$string;->visha_ai_speech_rcognizing:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView;->onAISubtitleTextCallback(Ljava/lang/String;Z)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ln$a;->a(Ljava/lang/Boolean;)Lzfb;

    move-result-object p0

    return-object p0
.end method
