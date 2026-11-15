.class public final synthetic Lq20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic b:Lcom/transsion/livecaption/client/AutoAnswerManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/livecaption/client/AutoAnswerManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq20;->b:Lcom/transsion/livecaption/client/AutoAnswerManager;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 0

    iget-object p0, p0, Lq20;->b:Lcom/transsion/livecaption/client/AutoAnswerManager;

    invoke-static {p0}, Lcom/transsion/livecaption/client/AutoAnswerManager;->a(Lcom/transsion/livecaption/client/AutoAnswerManager;)V

    return-void
.end method
