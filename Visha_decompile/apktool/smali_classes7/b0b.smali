.class public final synthetic Lb0b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

.field public final synthetic b:Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0b;->a:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    iput-object p2, p0, Lb0b;->b:Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lb0b;->a:Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;

    iget-object p0, p0, Lb0b;->b:Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;

    check-cast p1, Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;->c(Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager;Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;)Lcom/transsion/hubsdk/core/app/TranThubActivityTaskManager$TranActivityStarterExecutedCallback;

    move-result-object p0

    return-object p0
.end method
