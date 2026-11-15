.class public Lorg/jsoup/select/f$f;
.super Lorg/jsoup/select/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
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
    .locals 2

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->c1()Lorg/jsoup/nodes/Element;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_2

    iget-object v1, p0, Lorg/jsoup/select/f;->a:Lorg/jsoup/select/c;

    invoke-virtual {v1, p1, p2}, Lorg/jsoup/select/c;->a(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->c1()Lorg/jsoup/nodes/Element;

    move-result-object p2

    goto :goto_0

    :cond_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/jsoup/select/f;->a:Lorg/jsoup/select/c;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s ~ "

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
