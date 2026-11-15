.class public Lcom/transsion/push/utils/FirebaseUtils$1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpe7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/utils/FirebaseUtils$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/push/utils/FirebaseUtils$1;


# direct methods
.method public constructor <init>(Lcom/transsion/push/utils/FirebaseUtils$1;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/push/utils/FirebaseUtils$1$a;->a:Lcom/transsion/push/utils/FirebaseUtils$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lxda;)V
    .locals 1

    invoke-virtual {p1}, Lxda;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lxda;->m()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/transsion/push/utils/FirebaseUtils;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {p1}, Lcom/transsion/push/utils/PushUtils;->D(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/transsion/push/utils/FirebaseUtils$1$a;->a:Lcom/transsion/push/utils/FirebaseUtils$1;

    iget p0, p0, Lcom/transsion/push/utils/FirebaseUtils$1;->val$attempt:I

    invoke-static {p0}, Lcom/transsion/push/utils/FirebaseUtils;->b(I)V

    return-void
.end method
