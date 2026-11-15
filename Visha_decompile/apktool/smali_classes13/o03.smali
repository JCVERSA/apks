.class public final synthetic Lo03;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->getCategory_sort()I

    move-result p0

    return p0
.end method
