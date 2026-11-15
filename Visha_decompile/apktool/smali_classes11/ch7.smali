.class public final synthetic Lch7;
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

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;

    check-cast p2, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;

    invoke-static {p1, p2}, Lcom/transsion/onlinevideo/collect/OnlineVideoCollectActivity;->E0(Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;)I

    move-result p0

    return p0
.end method
