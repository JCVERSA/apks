.class public final synthetic Lds1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw74;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsion/dbdata/engine/base/scope/DataScope;

    check-cast p2, Lns1;

    check-cast p3, Lnu4;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p2, p3, p0}, Lcom/transsion/dbdata/engine/DataEngine;->e(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;Lnu4;I)Lzfb;

    move-result-object p0

    return-object p0
.end method
