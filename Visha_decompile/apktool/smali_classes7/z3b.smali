.class public final synthetic Lz3b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;

.field public final synthetic b:Landroid/content/ComponentName;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Landroid/content/ComponentName;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz3b;->a:Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;

    iput-object p2, p0, Lz3b;->b:Landroid/content/ComponentName;

    iput p3, p0, Lz3b;->c:I

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lz3b;->a:Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;

    iget-object v1, p0, Lz3b;->b:Landroid/content/ComponentName;

    iget p0, p0, Lz3b;->c:I

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->m(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Landroid/content/ComponentName;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
