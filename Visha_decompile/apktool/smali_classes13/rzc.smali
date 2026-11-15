.class public final synthetic Lrzc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lqy9;

.field public final synthetic c:Lona;


# direct methods
.method public synthetic constructor <init>(Lqy9;Lona;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrzc;->b:Lqy9;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lrzc;->b:Lqy9;

    iget-object p0, p0, Lrzc;->c:Lona;

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    invoke-static {v0, p0, p1}, Ltzc;->x(Lqy9;Lona;Lcom/grack/nanojson/JsonObject;)V

    return-void
.end method
