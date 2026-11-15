.class Lcom/transsion/push/config/PushRepository$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/push/utils/FirebaseUtils$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/config/PushRepository;->getClientId(Lcom/transsion/push/IClientIdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/push/IClientIdListener;

.field final synthetic b:Lcom/transsion/push/config/PushRepository;


# direct methods
.method constructor <init>(Lcom/transsion/push/config/PushRepository;Lcom/transsion/push/IClientIdListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/config/PushRepository$a;->b:Lcom/transsion/push/config/PushRepository;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/push/config/PushRepository$a;->a:Lcom/transsion/push/IClientIdListener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/push/config/PushRepository$a;->a:Lcom/transsion/push/IClientIdListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "get token fail"

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/transsion/push/IClientIdListener;->onFail(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/push/config/PushRepository$a;->b:Lcom/transsion/push/config/PushRepository;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/push/config/PushRepository$a;->a:Lcom/transsion/push/IClientIdListener;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/transsion/push/config/PushRepository;->b(Lcom/transsion/push/config/PushRepository;Lcom/transsion/push/IClientIdListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
