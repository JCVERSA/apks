.class public Lorg/jsoup/nodes/Element$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li17;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jsoup/nodes/Element;->n1()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/StringBuilder;

.field public final synthetic b:Lorg/jsoup/nodes/Element;


# direct methods
.method public constructor <init>(Lorg/jsoup/nodes/Element;Ljava/lang/StringBuilder;)V
    .locals 0

    iput-object p1, p0, Lorg/jsoup/nodes/Element$a;->b:Lorg/jsoup/nodes/Element;

    iput-object p2, p0, Lorg/jsoup/nodes/Element$a;->a:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/jsoup/nodes/g;I)V
    .locals 0

    instance-of p2, p1, Lorg/jsoup/nodes/Element;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lorg/jsoup/nodes/Element;

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->R0()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/jsoup/nodes/g;->C()Lorg/jsoup/nodes/g;

    move-result-object p1

    instance-of p1, p1, Lorg/jsoup/nodes/j;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/jsoup/nodes/Element$a;->a:Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/jsoup/nodes/j;->j0(Ljava/lang/StringBuilder;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lorg/jsoup/nodes/Element$a;->a:Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public b(Lorg/jsoup/nodes/g;I)V
    .locals 0

    instance-of p2, p1, Lorg/jsoup/nodes/j;

    if-eqz p2, :cond_0

    check-cast p1, Lorg/jsoup/nodes/j;

    iget-object p0, p0, Lorg/jsoup/nodes/Element$a;->a:Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/jsoup/nodes/Element;->d0(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/j;)V

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lorg/jsoup/nodes/Element;

    if-eqz p2, :cond_2

    check-cast p1, Lorg/jsoup/nodes/Element;

    iget-object p2, p0, Lorg/jsoup/nodes/Element$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_2

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->R0()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p1}, Lorg/jsoup/nodes/Element;->e0(Lorg/jsoup/nodes/Element;)Ltda;

    move-result-object p1

    invoke-virtual {p1}, Ltda;->d()Ljava/lang/String;

    move-result-object p1

    const-string p2, "br"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lorg/jsoup/nodes/Element$a;->a:Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/jsoup/nodes/j;->j0(Ljava/lang/StringBuilder;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lorg/jsoup/nodes/Element$a;->a:Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    return-void
.end method
