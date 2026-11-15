.class public final synthetic Lc59;
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

    check-cast p1, Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;

    check-cast p2, Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;

    invoke-static {p1, p2}, Lcom/transsion/sniffer_load/fragment/SearchFragment;->l0(Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;Lcom/transsion/dbdata/beans/sniff/SearchKey$Key;)I

    move-result p0

    return p0
.end method
