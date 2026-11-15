.class public final synthetic Lse6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls74;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsion/dbdata/source/DataSourceScope;

    check-cast p2, Lxk8;

    invoke-static {p1, p2}, Lte6;->d(Lcom/transsion/dbdata/source/DataSourceScope;Lxk8;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method
