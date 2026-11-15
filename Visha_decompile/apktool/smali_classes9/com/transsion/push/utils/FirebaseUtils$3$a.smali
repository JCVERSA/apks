.class public Lcom/transsion/push/utils/FirebaseUtils$3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpe7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/utils/FirebaseUtils$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/push/utils/FirebaseUtils$3;


# direct methods
.method public constructor <init>(Lcom/transsion/push/utils/FirebaseUtils$3;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/push/utils/FirebaseUtils$3$a;->a:Lcom/transsion/push/utils/FirebaseUtils$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lxda;)V
    .locals 2

    invoke-virtual {p1}, Lxda;->q()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/push/utils/FirebaseUtils$3$a;->a:Lcom/transsion/push/utils/FirebaseUtils$3;

    iget-object p0, p0, Lcom/transsion/push/utils/FirebaseUtils$3;->val$listener:Lcom/transsion/push/utils/FirebaseUtils$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/push/utils/FirebaseUtils$a;->a()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lxda;->m()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v0

    const-string v1, "push_token"

    invoke-virtual {v0, v1, p1}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/push/utils/FirebaseUtils$3$a;->a:Lcom/transsion/push/utils/FirebaseUtils$3;

    iget-object p0, p0, Lcom/transsion/push/utils/FirebaseUtils$3;->val$listener:Lcom/transsion/push/utils/FirebaseUtils$a;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/transsion/push/utils/FirebaseUtils$a;->onSuccess()V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "firebase  token is empty"

    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/push/utils/FirebaseUtils$3$a;->a:Lcom/transsion/push/utils/FirebaseUtils$3;

    iget-object p0, p0, Lcom/transsion/push/utils/FirebaseUtils$3;->val$listener:Lcom/transsion/push/utils/FirebaseUtils$a;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/transsion/push/utils/FirebaseUtils$a;->a()V

    :cond_3
    :goto_0
    return-void
.end method
