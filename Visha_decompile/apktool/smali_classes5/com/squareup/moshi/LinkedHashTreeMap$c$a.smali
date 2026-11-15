.class public Lcom/squareup/moshi/LinkedHashTreeMap$c$a;
.super Lcom/squareup/moshi/LinkedHashTreeMap$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/moshi/LinkedHashTreeMap$c;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic f:Lcom/squareup/moshi/LinkedHashTreeMap$c;


# direct methods
.method public constructor <init>(Lcom/squareup/moshi/LinkedHashTreeMap$c;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/moshi/LinkedHashTreeMap$c$a;->f:Lcom/squareup/moshi/LinkedHashTreeMap$c;

    iget-object p1, p1, Lcom/squareup/moshi/LinkedHashTreeMap$c;->b:Lcom/squareup/moshi/LinkedHashTreeMap;

    invoke-direct {p0, p1}, Lcom/squareup/moshi/LinkedHashTreeMap$e;-><init>(Lcom/squareup/moshi/LinkedHashTreeMap;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/util/Map$Entry;
    .locals 0

    invoke-virtual {p0}, Lcom/squareup/moshi/LinkedHashTreeMap$e;->a()Lcom/squareup/moshi/LinkedHashTreeMap$f;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/squareup/moshi/LinkedHashTreeMap$c$a;->b()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method
