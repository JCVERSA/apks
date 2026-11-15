.class public final synthetic Lzc6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ldd6;

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    invoke-direct {p0, p1}, Ldd6;-><init>(Lcom/grack/nanojson/JsonObject;)V

    return-object p0
.end method
