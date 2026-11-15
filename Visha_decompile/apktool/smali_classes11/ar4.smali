.class public final synthetic Lar4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:[Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lgu8;


# direct methods
.method public synthetic constructor <init>([Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;Ljava/lang/String;Lgu8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lar4;->b:[Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;

    iput-object p2, p0, Lar4;->c:Ljava/lang/String;

    iput-object p3, p0, Lar4;->d:Lgu8;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lar4;->b:[Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;

    iget-object v1, p0, Lar4;->c:Ljava/lang/String;

    iget-object p0, p0, Lar4;->d:Lgu8;

    invoke-static {v0, v1, p0}, Lcom/transsion/onlinevideo/history/HistoryManager$a;->b([Lcom/transsion/dbdata/beans/onlinevideo/HistoryUserBean;Ljava/lang/String;Lgu8;)V

    return-void
.end method
