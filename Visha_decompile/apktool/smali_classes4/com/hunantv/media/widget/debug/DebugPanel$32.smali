.class Lcom/hunantv/media/widget/debug/DebugPanel$32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/widget/debug/DebugPanel;->createRadioLayout(Ljava/lang/String;ILjava/util/List;Lcom/hunantv/media/widget/debug/DebugPanel$OnRadioCheckListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

.field final synthetic val$l:Lcom/hunantv/media/widget/debug/DebugPanel$OnRadioCheckListener;

.field final synthetic val$radioButtons:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/widget/debug/DebugPanel;Lcom/hunantv/media/widget/debug/DebugPanel$OnRadioCheckListener;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$32;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    iput-object p2, p0, Lcom/hunantv/media/widget/debug/DebugPanel$32;->val$l:Lcom/hunantv/media/widget/debug/DebugPanel$OnRadioCheckListener;

    iput-object p3, p0, Lcom/hunantv/media/widget/debug/DebugPanel$32;->val$radioButtons:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    iget-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$32;->val$l:Lcom/hunantv/media/widget/debug/DebugPanel$OnRadioCheckListener;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel$32;->val$radioButtons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/hunantv/media/widget/debug/DebugPanel$32;->val$radioButtons:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/widget/debug/DebugPanel$32;->val$l:Lcom/hunantv/media/widget/debug/DebugPanel$OnRadioCheckListener;

    invoke-interface {p0, p1}, Lcom/hunantv/media/widget/debug/DebugPanel$OnRadioCheckListener;->onRadioCheckChanged(I)V

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
