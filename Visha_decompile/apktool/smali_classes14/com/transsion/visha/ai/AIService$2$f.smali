.class public Lcom/transsion/visha/ai/AIService$2$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/visha/ai/AIService$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/visha/ai/AIService$2;->startPlay(Ljava/lang/String;Lcom/transsion/visha/ai/IAudioPlayCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/visha/ai/IAudioPlayCallback;

.field public final synthetic b:Lcom/transsion/visha/ai/AIService$2;


# direct methods
.method public constructor <init>(Lcom/transsion/visha/ai/AIService$2;Lcom/transsion/visha/ai/IAudioPlayCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/visha/ai/AIService$2$f;->b:Lcom/transsion/visha/ai/AIService$2;

    iput-object p2, p0, Lcom/transsion/visha/ai/AIService$2$f;->a:Lcom/transsion/visha/ai/IAudioPlayCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/visha/ai/AIService$2$f;->b:Lcom/transsion/visha/ai/AIService$2;

    iget-object p0, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    const/16 v0, 0x2a

    invoke-static {p0, p1, v0}, Lcom/transsion/visha/ai/AIService;->n(Lcom/transsion/visha/ai/AIService;Ljava/util/List;I)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/visha/ai/AIService$2$f;->b:Lcom/transsion/visha/ai/AIService$2;

    iget-object p1, p1, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    iget-object v0, p0, Lcom/transsion/visha/ai/AIService$2$f;->a:Lcom/transsion/visha/ai/IAudioPlayCallback;

    const/16 v1, 0x3e9

    invoke-static {p1, v0, v1}, Lcom/transsion/visha/ai/AIService;->l(Lcom/transsion/visha/ai/AIService;Lcom/transsion/visha/ai/IAudioPlayCallback;I)V

    iget-object p0, p0, Lcom/transsion/visha/ai/AIService$2$f;->b:Lcom/transsion/visha/ai/AIService$2;

    iget-object p0, p0, Lcom/transsion/visha/ai/AIService$2;->this$0:Lcom/transsion/visha/ai/AIService;

    invoke-static {p0}, Lcom/transsion/visha/ai/AIService;->q(Lcom/transsion/visha/ai/AIService;)V

    return-void
.end method
