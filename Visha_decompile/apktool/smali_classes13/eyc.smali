.class public final synthetic Leyc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lona;


# direct methods
.method public synthetic constructor <init>(Lona;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Leyc;->a:Lona;

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;->v0(Lona;Lcom/grack/nanojson/JsonObject;)Lxz4;

    move-result-object p0

    return-object p0
.end method
