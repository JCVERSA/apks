.class public final synthetic Lnl3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableDoubleSupplier;


# instance fields
.field public final synthetic a:Lorg/apache/commons/lang3/function/FailableDoubleBinaryOperator;

.field public final synthetic b:D

.field public final synthetic c:D


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableDoubleBinaryOperator;DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnl3;->a:Lorg/apache/commons/lang3/function/FailableDoubleBinaryOperator;

    iput-wide p2, p0, Lnl3;->b:D

    iput-wide p4, p0, Lnl3;->c:D

    return-void
.end method


# virtual methods
.method public final getAsDouble()D
    .locals 5

    iget-object v0, p0, Lnl3;->a:Lorg/apache/commons/lang3/function/FailableDoubleBinaryOperator;

    iget-wide v1, p0, Lnl3;->b:D

    iget-wide v3, p0, Lnl3;->c:D

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/commons/lang3/function/Failable;->h(Lorg/apache/commons/lang3/function/FailableDoubleBinaryOperator;DD)D

    move-result-wide v0

    return-wide v0
.end method
