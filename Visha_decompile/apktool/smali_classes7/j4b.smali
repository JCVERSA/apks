.class public final synthetic Lj4b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;

.field public final synthetic b:Landroid/content/ComponentName;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Landroid/content/ComponentName;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj4b;->a:Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;

    iput-object p2, p0, Lj4b;->b:Landroid/content/ComponentName;

    iput p3, p0, Lj4b;->c:I

    iput p4, p0, Lj4b;->d:I

    iput p5, p0, Lj4b;->e:I

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lj4b;->a:Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;

    iget-object v1, p0, Lj4b;->b:Landroid/content/ComponentName;

    iget v2, p0, Lj4b;->c:I

    iget v3, p0, Lj4b;->d:I

    iget p0, p0, Lj4b;->e:I

    invoke-static {v0, v1, v2, v3, p0}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->b(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Landroid/content/ComponentName;III)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
