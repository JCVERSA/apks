.class public final synthetic Lkt9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lqy9;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lqy9;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkt9;->b:Lqy9;

    iput-object p2, p0, Lkt9;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lkt9;->b:Lqy9;

    iget-object p0, p0, Lkt9;->c:Ljava/util/List;

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    invoke-static {v0, p0, p1}, Llt9;->F(Lqy9;Ljava/util/List;Lcom/grack/nanojson/JsonObject;)V

    return-void
.end method
