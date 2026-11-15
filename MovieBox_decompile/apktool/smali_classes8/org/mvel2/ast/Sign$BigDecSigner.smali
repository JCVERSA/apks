.class Lorg/mvel2/ast/Sign$BigDecSigner;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lorg/mvel2/ast/Sign$Signer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mvel2/ast/Sign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BigDecSigner"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mvel2/ast/Sign;


# direct methods
.method private constructor <init>(Lorg/mvel2/ast/Sign;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/ast/Sign$BigDecSigner;->this$0:Lorg/mvel2/ast/Sign;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/mvel2/ast/Sign;Lorg/mvel2/ast/Sign$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/mvel2/ast/Sign$BigDecSigner;-><init>(Lorg/mvel2/ast/Sign;)V

    return-void
.end method


# virtual methods
.method public sign(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    .line 2
    .line 3
    check-cast p1, Ljava/math/BigDecimal;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    neg-double v1, v1

    .line 10
    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method
