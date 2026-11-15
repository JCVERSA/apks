.class public final synthetic Litc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public synthetic constructor <init>(Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Litc;->a:Lcom/grack/nanojson/JsonObject;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Litc;->a:Lcom/grack/nanojson/JsonObject;

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper;->j(Lcom/grack/nanojson/JsonObject;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
