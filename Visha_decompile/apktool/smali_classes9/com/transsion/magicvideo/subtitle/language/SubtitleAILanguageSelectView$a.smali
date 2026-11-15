.class public Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView$a;
.super Lgf7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView$a;->e:Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;

    invoke-direct {p0}, Lgf7;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView$a;->e:Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;

    invoke-static {p1}, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->d(Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;)Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView$d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView$a;->e:Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;

    invoke-static {p1}, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->d(Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;)Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView$d;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView$a;->e:Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;

    invoke-static {v0}, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->b(Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView$a;->e:Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;

    invoke-static {p0}, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->a(Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;)Z

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView$d;->b(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string p0, "SubtitleAILanguageSelectView"

    const-string p1, "SubtitleItemSelectCallback is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
