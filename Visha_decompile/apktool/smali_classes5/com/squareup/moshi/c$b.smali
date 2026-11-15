.class public Lcom/squareup/moshi/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/moshi/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/reflect/Field;

.field public final c:Lcom/squareup/moshi/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Field;Lcom/squareup/moshi/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/moshi/c$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/squareup/moshi/c$b;->b:Ljava/lang/reflect/Field;

    iput-object p3, p0, Lcom/squareup/moshi/c$b;->c:Lcom/squareup/moshi/e;

    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/moshi/JsonReader;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/squareup/moshi/c$b;->c:Lcom/squareup/moshi/e;

    invoke-virtual {v0, p1}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lcom/squareup/moshi/c$b;->b:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lrc5;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/squareup/moshi/c$b;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object p0, p0, Lcom/squareup/moshi/c$b;->c:Lcom/squareup/moshi/e;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/moshi/e;->toJson(Lrc5;Ljava/lang/Object;)V

    return-void
.end method
