.class public Lcom/transsion/onlinevideo/history/HistoryManager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltq0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/history/HistoryManager;->n(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lsg7;


# direct methods
.method public constructor <init>(Lsg7;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/history/HistoryManager$b;->b:Lsg7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lsg7;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/onlinevideo/history/HistoryManager$b;->b(Lsg7;)V

    return-void
.end method

.method public static synthetic b(Lsg7;)V
    .locals 0

    invoke-interface {p0}, Lsg7;->changeAllUploadStatus()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljq0;Ljava/lang/Throwable;)V
    .locals 0

    const-string p0, "uploadHistory: onFailure"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "HistoryManager"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Ljq0;Lgu8;)V
    .locals 0

    const-string p1, "uploadHistory: onResponse"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "HistoryManager"

    invoke-static {p2, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/history/HistoryManager$b;->b:Lsg7;

    new-instance p1, Lcr4;

    invoke-direct {p1, p0}, Lcr4;-><init>(Lsg7;)V

    invoke-static {p1}, Liia;->a(Ljava/lang/Runnable;)V

    return-void
.end method
