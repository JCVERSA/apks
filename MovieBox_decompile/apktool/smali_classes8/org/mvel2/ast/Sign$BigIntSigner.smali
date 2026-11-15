.class Lorg/mvel2/ast/Sign$BigIntSigner;
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
    name = "BigIntSigner"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mvel2/ast/Sign;


# direct methods
.method private constructor <init>(Lorg/mvel2/ast/Sign;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/ast/Sign$BigIntSigner;->this$0:Lorg/mvel2/ast/Sign;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/mvel2/ast/Sign;Lorg/mvel2/ast/Sign$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/mvel2/ast/Sign$BigIntSigner;-><init>(Lorg/mvel2/ast/Sign;)V

    return-void
.end method


# virtual methods
.method public sign(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Ljava/math/BigInteger;

    .line 2
    .line 3
    check-cast p1, Ljava/math/BigInteger;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    neg-long v1, v1

    .line 10
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method
