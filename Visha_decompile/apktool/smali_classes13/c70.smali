.class public Lc70;
.super Ll70;
.source "SourceFile"


# instance fields
.field public final b:Lorg/jsoup/nodes/Element;

.field public final c:Lorg/jsoup/nodes/Element;


# direct methods
.method public constructor <init>(Lorg/jsoup/nodes/Element;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ll70;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lc70;->c:Lorg/jsoup/nodes/Element;

    const-string p2, "result-info"

    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Element;->G0(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object p1

    iput-object p1, p0, Lc70;->b:Lorg/jsoup/nodes/Element;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lc70;->b:Lorg/jsoup/nodes/Element;

    const-string v0, "subhead"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->G0(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/select/Elements;->text()Ljava/lang/String;

    move-result-object p0

    const-string v0, "by "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    aget-object p0, p0, v1

    return-object p0

    :cond_0
    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public getDuration()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lc70;->b:Lorg/jsoup/nodes/Element;

    const-string v0, "heading"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->G0(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/select/Elements;->text()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lc70;->b:Lorg/jsoup/nodes/Element;

    const-string v0, "itemurl"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->G0(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/select/Elements;->text()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public j()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lc70;->c:Lorg/jsoup/nodes/Element;

    invoke-static {p0}, Lj60;->j(Lorg/jsoup/nodes/Element;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
