.class public final synthetic Ld4b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;

.field public final synthetic b:Landroid/content/Intent;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Landroid/content/Intent;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld4b;->a:Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;

    iput-object p2, p0, Ld4b;->b:Landroid/content/Intent;

    iput p3, p0, Ld4b;->c:I

    iput p4, p0, Ld4b;->d:I

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ld4b;->a:Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;

    iget-object v1, p0, Ld4b;->b:Landroid/content/Intent;

    iget v2, p0, Ld4b;->c:I

    iget p0, p0, Ld4b;->d:I

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->d(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Landroid/content/Intent;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
