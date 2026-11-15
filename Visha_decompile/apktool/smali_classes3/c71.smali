.class public final synthetic Lc71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lat6;

    check-cast p2, Lat6;

    invoke-static {p1, p2}, Lcom/google/common/collect/f;->r(Lat6;Lat6;)Lat6;

    move-result-object p0

    return-object p0
.end method
