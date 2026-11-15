.class public final synthetic Lfza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfza;->a:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    iput-object p2, p0, Lfza;->b:Ljava/lang/String;

    iput-object p3, p0, Lfza;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lfza;->a:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    iget-object v1, p0, Lfza;->b:Ljava/lang/String;

    iget-object p0, p0, Lfza;->c:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->f(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
