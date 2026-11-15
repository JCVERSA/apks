.class Lcom/hunantv/media/widget/debug/DebugPanel$31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/widget/debug/DebugPanel$OnRadioCheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/widget/debug/DebugPanel;->createEnableLayout(Ljava/lang/String;ZLcom/hunantv/media/widget/debug/DebugPanel$OnEnableListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

.field final synthetic val$l:Lcom/hunantv/media/widget/debug/DebugPanel$OnEnableListener;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/widget/debug/DebugPanel;Lcom/hunantv/media/widget/debug/DebugPanel$OnEnableListener;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/widget/debug/DebugPanel$31;->this$0:Lcom/hunantv/media/widget/debug/DebugPanel;

    iput-object p2, p0, Lcom/hunantv/media/widget/debug/DebugPanel$31;->val$l:Lcom/hunantv/media/widget/debug/DebugPanel$OnEnableListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRadioCheckChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/hunantv/media/widget/debug/DebugPanel$31;->val$l:Lcom/hunantv/media/widget/debug/DebugPanel$OnEnableListener;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0, v0}, Lcom/hunantv/media/widget/debug/DebugPanel$OnEnableListener;->onEnableChanged(Z)V

    :cond_1
    return-void
.end method
