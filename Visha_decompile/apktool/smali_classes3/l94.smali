.class public final synthetic Ll94;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo74;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/google/common/util/concurrent/FuturesGetChecked;->a(Ljava/util/List;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method
