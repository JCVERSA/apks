.class public final synthetic Lzb6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lls6;


# direct methods
.method public synthetic constructor <init>(Lls6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzb6;->b:Lls6;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lzb6;->b:Lls6;

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    invoke-static {p0, p1}, Lac6;->u(Lls6;Lcom/grack/nanojson/JsonObject;)V

    return-void
.end method
