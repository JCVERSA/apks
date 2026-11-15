.class public Lorg/jsoup/nodes/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li17;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/Appendable;

.field public final b:Lorg/jsoup/nodes/Document$OutputSettings;


# direct methods
.method public constructor <init>(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jsoup/nodes/g$a;->a:Ljava/lang/Appendable;

    iput-object p2, p0, Lorg/jsoup/nodes/g$a;->b:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {p2}, Lorg/jsoup/nodes/Document$OutputSettings;->i()Ljava/nio/charset/CharsetEncoder;

    return-void
.end method


# virtual methods
.method public a(Lorg/jsoup/nodes/g;I)V
    .locals 2

    invoke-virtual {p1}, Lorg/jsoup/nodes/g;->E()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/jsoup/nodes/g$a;->a:Ljava/lang/Appendable;

    iget-object p0, p0, Lorg/jsoup/nodes/g$a;->b:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {p1, v0, p2, p0}, Lorg/jsoup/nodes/g;->J(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/jsoup/SerializationException;

    invoke-direct {p1, p0}, Lorg/jsoup/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public b(Lorg/jsoup/nodes/g;I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/jsoup/nodes/g$a;->a:Ljava/lang/Appendable;

    iget-object p0, p0, Lorg/jsoup/nodes/g$a;->b:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {p1, v0, p2, p0}, Lorg/jsoup/nodes/g;->I(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/jsoup/SerializationException;

    invoke-direct {p1, p0}, Lorg/jsoup/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
