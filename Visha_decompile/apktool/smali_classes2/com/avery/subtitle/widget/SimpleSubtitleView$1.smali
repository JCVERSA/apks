.class Lcom/avery/subtitle/widget/SimpleSubtitleView$1;
.super Lcom/transsion/arch/threads/TaskExecutor$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avery/subtitle/widget/SimpleSubtitleView;->onSubtitleChanged(Lm2a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/arch/threads/TaskExecutor$Task<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avery/subtitle/widget/SimpleSubtitleView;

.field final synthetic val$subtitle:Lm2a;


# direct methods
.method public constructor <init>(Lcom/avery/subtitle/widget/SimpleSubtitleView;Lm2a;)V
    .locals 0

    iput-object p1, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView$1;->this$0:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    iput-object p2, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView$1;->val$subtitle:Lm2a;

    invoke-direct {p0}, Lcom/transsion/arch/threads/TaskExecutor$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackground()Ljava/lang/CharSequence;
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView$1;->val$subtitle:Lm2a;

    iget-object p0, p0, Lm2a;->d:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onBackground()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/avery/subtitle/widget/SimpleSubtitleView$1;->onBackground()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public onResult(Ljava/lang/CharSequence;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSubtitleChanged subtitle.content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimpleSubtitleView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView$1;->this$0:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "^[\n\r]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[\n\r]$"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/avery/subtitle/widget/SimpleSubtitleView$1;->onResult(Ljava/lang/CharSequence;)V

    return-void
.end method
