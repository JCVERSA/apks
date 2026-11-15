.class public final synthetic Llz7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llz7;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Llz7;->a:Ljava/lang/String;

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    invoke-static {p0, p1}, Lmz7;->a(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/Image;

    move-result-object p0

    return-object p0
.end method
