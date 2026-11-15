.class public Lcom/transsion/visha/ai/AIServiceManager$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/visha/ai/AIService$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/visha/ai/AIServiceManager;->p(Lcom/transsion/dbdata/database/PlayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/transsion/visha/ai/AIService$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/visha/ai/AIService$c;

.field public final synthetic b:I

.field public final synthetic c:Lcom/transsion/visha/ai/AIServiceManager;


# direct methods
.method public constructor <init>(Lcom/transsion/visha/ai/AIServiceManager;Lcom/transsion/visha/ai/AIService$c;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/visha/ai/AIServiceManager$f;->c:Lcom/transsion/visha/ai/AIServiceManager;

    iput-object p2, p0, Lcom/transsion/visha/ai/AIServiceManager$f;->a:Lcom/transsion/visha/ai/AIService$c;

    iput p3, p0, Lcom/transsion/visha/ai/AIServiceManager$f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioData(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->autoPlay:Z

    iget v1, p0, Lcom/transsion/visha/ai/AIServiceManager$f;->b:I

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    iget-object v1, p0, Lcom/transsion/visha/ai/AIServiceManager$f;->a:Lcom/transsion/visha/ai/AIService$c;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/transsion/visha/ai/AIService$c;->a(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    iget-object p0, p0, Lcom/transsion/visha/ai/AIServiceManager$f;->a:Lcom/transsion/visha/ai/AIService$c;

    invoke-interface {p0, p1}, Lcom/transsion/visha/ai/AIService$c;->b(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/visha/ai/AIServiceManager$f;->a:Lcom/transsion/visha/ai/AIService$c;

    if-eqz p0, :cond_1

    const-string p1, ""

    invoke-interface {p0, p1}, Lcom/transsion/visha/ai/AIService$c;->onError(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/visha/ai/AIServiceManager$f;->a:Lcom/transsion/visha/ai/AIService$c;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/visha/ai/AIService$c;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
