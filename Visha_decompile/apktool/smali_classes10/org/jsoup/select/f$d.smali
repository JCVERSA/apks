.class public Lorg/jsoup/select/f$d;
.super Lorg/jsoup/select/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(Lorg/jsoup/select/c;)V
    .locals 0

    invoke-direct {p0}, Lorg/jsoup/select/f;-><init>()V

    iput-object p1, p0, Lorg/jsoup/select/f;->a:Lorg/jsoup/select/c;

    return-void
.end method


# virtual methods
.method public a(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 0

    iget-object p0, p0, Lorg/jsoup/select/f;->a:Lorg/jsoup/select/c;

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/select/c;->a(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/jsoup/select/f;->a:Lorg/jsoup/select/c;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, ":not(%s)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
