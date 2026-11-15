.class public final synthetic Ls3b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;

.field public final synthetic b:Ljava/util/Locale;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls3b;->a:Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;

    iput-object p2, p0, Ls3b;->b:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ls3b;->a:Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;

    iget-object p0, p0, Ls3b;->b:Ljava/util/Locale;

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;->a(Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
