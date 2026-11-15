.class public final synthetic Lai7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    check-cast p2, Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;

    invoke-static {p1, p2}, Lcom/transsion/onlinevideo/history/OnlineVideoHistoryActivity;->z0(Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;Lcom/transsion/dbdata/beans/onlinevideo/HistoryBean;)I

    move-result p0

    return p0
.end method
