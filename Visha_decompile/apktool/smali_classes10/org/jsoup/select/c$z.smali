.class public final Lorg/jsoup/select/c$z;
.super Lorg/jsoup/select/c$o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "z"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/jsoup/select/c$o;-><init>(II)V

    return-void
.end method


# virtual methods
.method public b(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)I
    .locals 0

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->A0()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    const-string p0, "nth-child"

    return-object p0
.end method
