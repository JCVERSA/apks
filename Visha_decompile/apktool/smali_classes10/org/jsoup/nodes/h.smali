.class public abstract Lorg/jsoup/nodes/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/Document$OutputSettings;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->K()Lorg/jsoup/nodes/Document;

    move-result-object p0

    if-eqz p0, :cond_0

    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->x1()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object p0

    goto :goto_1

    :cond_0
    new-instance p0, Lorg/jsoup/nodes/Document;

    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method public static b(Lorg/jsoup/nodes/g;)Ldx7;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->K()Lorg/jsoup/nodes/Document;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->y1()Ldx7;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->y1()Ldx7;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ldx7;

    new-instance v0, Lorg/jsoup/parser/a;

    invoke-direct {v0}, Lorg/jsoup/parser/a;-><init>()V

    invoke-direct {p0, v0}, Ldx7;-><init>(Lorg/jsoup/parser/c;)V

    :goto_0
    return-object p0
.end method
