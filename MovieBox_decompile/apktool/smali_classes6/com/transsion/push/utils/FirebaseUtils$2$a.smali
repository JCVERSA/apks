.class Lcom/transsion/push/utils/FirebaseUtils$2$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/utils/FirebaseUtils$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/push/utils/FirebaseUtils$2;


# direct methods
.method constructor <init>(Lcom/transsion/push/utils/FirebaseUtils$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/utils/FirebaseUtils$2$a;->a:Lcom/transsion/push/utils/FirebaseUtils$2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "push_token"

    .line 25
    .line 26
    invoke-virtual {v0, v1, p1}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/transsion/push/utils/FirebaseUtils$2$a;->a:Lcom/transsion/push/utils/FirebaseUtils$2;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/transsion/push/utils/FirebaseUtils$2;->val$listener:Lcom/transsion/push/utils/FirebaseUtils$b;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-interface {p1}, Lcom/transsion/push/utils/FirebaseUtils$b;->onSuccess()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    sget-object p1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 40
    .line 41
    const-string v0, "firebase  token is empty"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/transsion/push/utils/FirebaseUtils$2$a;->a:Lcom/transsion/push/utils/FirebaseUtils$2;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/transsion/push/utils/FirebaseUtils$2;->val$listener:Lcom/transsion/push/utils/FirebaseUtils$b;

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    invoke-interface {p1}, Lcom/transsion/push/utils/FirebaseUtils$b;->onFail()V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_0
    return-void
.end method
