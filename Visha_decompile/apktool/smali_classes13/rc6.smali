.class public final synthetic Lrc6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public synthetic constructor <init>(Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrc6;->a:Lcom/grack/nanojson/JsonObject;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lrc6;->a:Lcom/grack/nanojson/JsonObject;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lsc6;->j0(Lcom/grack/nanojson/JsonObject;Ljava/util/Map$Entry;)Lsc6$a;

    move-result-object p0

    return-object p0
.end method
