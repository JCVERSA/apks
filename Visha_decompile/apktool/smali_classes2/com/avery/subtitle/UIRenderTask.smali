.class public Lcom/avery/subtitle/UIRenderTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mOnSubtitleChangeListener:Lcom/avery/subtitle/b$a;

.field private mSubtitle:Lm2a;


# direct methods
.method public constructor <init>(Lcom/avery/subtitle/b$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/avery/subtitle/UIRenderTask;->mOnSubtitleChangeListener:Lcom/avery/subtitle/b$a;

    return-void
.end method


# virtual methods
.method public execute(Lm2a;)V
    .locals 0

    iput-object p1, p0, Lcom/avery/subtitle/UIRenderTask;->mSubtitle:Lm2a;

    invoke-static {}, Lgf;->h()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/avery/subtitle/UIRenderTask;->mOnSubtitleChangeListener:Lcom/avery/subtitle/b$a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/avery/subtitle/UIRenderTask;->mSubtitle:Lm2a;

    invoke-interface {v0, p0}, Lcom/avery/subtitle/b$a;->onSubtitleChanged(Lm2a;)V

    :cond_0
    return-void
.end method
