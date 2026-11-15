.class public final synthetic Lbi5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic b:Lcom/transsion/livecaption/client/LLMAnswerManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/livecaption/client/LLMAnswerManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbi5;->b:Lcom/transsion/livecaption/client/LLMAnswerManager;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 0

    iget-object p0, p0, Lbi5;->b:Lcom/transsion/livecaption/client/LLMAnswerManager;

    invoke-static {p0}, Lcom/transsion/livecaption/client/LLMAnswerManager;->a(Lcom/transsion/livecaption/client/LLMAnswerManager;)V

    return-void
.end method
