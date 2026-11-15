.class public final Lkyi;
.super Layi;
.source "SourceFile"


# direct methods
.method public synthetic constructor <init>(ILjyi;)V
    .locals 0

    invoke-direct {p0, p1}, Layi;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Lqyi;)Lkyi;
    .locals 0

    invoke-super {p0, p1, p2}, Layi;->a(Ljava/lang/Object;Lqyi;)Layi;

    return-object p0
.end method

.method public final c()Llyi;
    .locals 2

    new-instance v0, Llyi;

    iget-object p0, p0, Layi;->a:Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Llyi;-><init>(Ljava/util/Map;Ljyi;)V

    return-object v0
.end method
