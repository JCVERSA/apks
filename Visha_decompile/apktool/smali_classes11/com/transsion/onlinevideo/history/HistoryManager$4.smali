.class public Lcom/transsion/onlinevideo/history/HistoryManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltq0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/history/HistoryManager;->f(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/history/HistoryManager$4;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljq0;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onResponse(Ljq0;Lgu8;)V
    .locals 0

    new-instance p1, Lcom/transsion/onlinevideo/history/HistoryManager$4$1;

    invoke-direct {p1, p0}, Lcom/transsion/onlinevideo/history/HistoryManager$4$1;-><init>(Lcom/transsion/onlinevideo/history/HistoryManager$4;)V

    invoke-static {p1}, Liia;->a(Ljava/lang/Runnable;)V

    return-void
.end method
