.class public Lm9d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltpd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lyod;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    instance-of p0, p2, Ljava/lang/Number;

    if-eqz p0, :cond_0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->byteValue()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_0
    const-class p0, Ljava/lang/Byte;

    invoke-virtual {p1, p2, p0}, Lyod;->q(Ljava/lang/Object;Ljava/lang/Class;)Lcom/transsion/json/k;

    move-result-object p0

    throw p0
.end method
