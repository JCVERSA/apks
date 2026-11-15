.class public final synthetic Ll4b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll4b;->a:Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;

    iput-object p2, p0, Ll4b;->b:Ljava/lang/String;

    iput p3, p0, Ll4b;->c:I

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ll4b;->a:Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;

    iget-object v1, p0, Ll4b;->b:Ljava/lang/String;

    iget p0, p0, Ll4b;->c:I

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;->l(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
