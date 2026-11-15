.class public Lcom/transsion/visha/ai/AIServiceManager$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/visha/ai/AIService$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/visha/ai/AIServiceManager;->v(Ljava/lang/String;Lcom/transsion/visha/ai/IAudioPlayCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/visha/ai/IAudioPlayCallback;

.field public final synthetic b:Lcom/transsion/visha/ai/AIServiceManager;


# direct methods
.method public constructor <init>(Lcom/transsion/visha/ai/AIServiceManager;Lcom/transsion/visha/ai/IAudioPlayCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/visha/ai/AIServiceManager$l;->b:Lcom/transsion/visha/ai/AIServiceManager;

    iput-object p2, p0, Lcom/transsion/visha/ai/AIServiceManager$l;->a:Lcom/transsion/visha/ai/IAudioPlayCallback;

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

    iget-object v0, p0, Lcom/transsion/visha/ai/AIServiceManager$l;->b:Lcom/transsion/visha/ai/AIServiceManager;

    iget-object p0, p0, Lcom/transsion/visha/ai/AIServiceManager$l;->a:Lcom/transsion/visha/ai/IAudioPlayCallback;

    const/16 v1, 0x2f

    invoke-static {v0, p0, p1, v1}, Lcom/transsion/visha/ai/AIServiceManager;->d(Lcom/transsion/visha/ai/AIServiceManager;Lcom/transsion/visha/ai/IAudioPlayCallback;Ljava/util/List;I)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/visha/ai/AIServiceManager$l;->b:Lcom/transsion/visha/ai/AIServiceManager;

    iget-object p0, p0, Lcom/transsion/visha/ai/AIServiceManager$l;->a:Lcom/transsion/visha/ai/IAudioPlayCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/visha/ai/AIServiceManager;->g(Lcom/transsion/visha/ai/IAudioPlayCallback;)V

    return-void
.end method
