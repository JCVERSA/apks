.class public Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView$b;->b:Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView$b;->b:Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;

    invoke-static {p1}, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->c(Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;)Lcom/transsion/magicvideo/adapter/AISubtitleLanguageAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj;

    iget-object p2, p0, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView$b;->b:Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;

    invoke-static {p2}, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->d(Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;)Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView$d;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView$b;->b:Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;

    invoke-static {p0}, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;->d(Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView;)Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView$d;

    move-result-object p0

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/transsion/magicvideo/subtitle/language/SubtitleAILanguageSelectView$d;->a(Lj;I)V

    :cond_0
    return-void
.end method
