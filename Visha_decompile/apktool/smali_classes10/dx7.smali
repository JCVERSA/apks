.class public Ldx7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lorg/jsoup/parser/c;

.field public b:Lorg/jsoup/parser/ParseErrorList;

.field public c:Ltw7;


# direct methods
.method public constructor <init>(Lorg/jsoup/parser/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldx7;->a:Lorg/jsoup/parser/c;

    invoke-virtual {p1}, Lorg/jsoup/parser/c;->c()Ltw7;

    move-result-object p1

    iput-object p1, p0, Ldx7;->c:Ltw7;

    invoke-static {}, Lorg/jsoup/parser/ParseErrorList;->noTracking()Lorg/jsoup/parser/ParseErrorList;

    move-result-object p1

    iput-object p1, p0, Ldx7;->b:Lorg/jsoup/parser/ParseErrorList;

    return-void
.end method

.method public static c()Ldx7;
    .locals 2

    new-instance v0, Ldx7;

    new-instance v1, Lorg/jsoup/parser/a;

    invoke-direct {v1}, Lorg/jsoup/parser/a;-><init>()V

    invoke-direct {v0, v1}, Ldx7;-><init>(Lorg/jsoup/parser/c;)V

    return-object v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 2

    new-instance v0, Lorg/jsoup/parser/a;

    invoke-direct {v0}, Lorg/jsoup/parser/a;-><init>()V

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance p0, Ldx7;

    invoke-direct {p0, v0}, Ldx7;-><init>(Lorg/jsoup/parser/c;)V

    invoke-virtual {v0, v1, p1, p0}, Lorg/jsoup/parser/c;->g(Ljava/io/Reader;Ljava/lang/String;Ldx7;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Lorg/jsoup/parser/ParseErrorList;
    .locals 0

    iget-object p0, p0, Ldx7;->b:Lorg/jsoup/parser/ParseErrorList;

    return-object p0
.end method

.method public b()Lorg/jsoup/parser/c;
    .locals 0

    iget-object p0, p0, Ldx7;->a:Lorg/jsoup/parser/c;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Ldx7;->b()Lorg/jsoup/parser/c;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/c;->f(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public f(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Ldx7;->a:Lorg/jsoup/parser/c;

    invoke-virtual {v0, p1, p2, p3, p0}, Lorg/jsoup/parser/c;->h(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;Ldx7;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public g()Ltw7;
    .locals 0

    iget-object p0, p0, Ldx7;->c:Ltw7;

    return-object p0
.end method
