.class public final synthetic Lcwc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lls6;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lls6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcwc;->b:Ljava/lang/String;

    iput-object p2, p0, Lcwc;->c:Lls6;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcwc;->b:Ljava/lang/String;

    iget-object p0, p0, Lcwc;->c:Lls6;

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    invoke-static {v0, p0, p1}, Lgwc;->E(Ljava/lang/String;Lls6;Lcom/grack/nanojson/JsonObject;)V

    return-void
.end method
