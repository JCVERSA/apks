.class public Lo60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/schabi/newpipe/extractor/playlist/b;


# instance fields
.field public final a:Lorg/jsoup/nodes/Element;

.field public final b:Lorg/jsoup/nodes/Element;


# direct methods
.method public constructor <init>(Lorg/jsoup/nodes/Element;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo60;->a:Lorg/jsoup/nodes/Element;

    const-string v0, "result-info"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->G0(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object p1

    iput-object p1, p0, Lo60;->b:Lorg/jsoup/nodes/Element;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lo60;->b:Lorg/jsoup/nodes/Element;

    const-string v0, "subhead"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->G0(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/select/Elements;->text()Ljava/lang/String;

    move-result-object p0

    const-string v0, " by"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public c()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public d()J
    .locals 2

    iget-object p0, p0, Lo60;->b:Lorg/jsoup/nodes/Element;

    const-string v0, "length"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->G0(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/select/Elements;->text()Ljava/lang/String;

    move-result-object p0

    const-string v0, " track"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lo60;->b:Lorg/jsoup/nodes/Element;

    const-string v0, "heading"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->G0(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/select/Elements;->text()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lo60;->b:Lorg/jsoup/nodes/Element;

    const-string v0, "itemurl"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->G0(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/select/Elements;->text()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public j()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lo60;->a:Lorg/jsoup/nodes/Element;

    invoke-static {p0}, Lj60;->j(Lorg/jsoup/nodes/Element;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
