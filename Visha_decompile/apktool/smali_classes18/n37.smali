.class public final Ln37;
.super Ln2$a;
.source "SourceFile"

# interfaces
.implements Leo8;


# direct methods
.method public constructor <init>(Lde5;I)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Ln2$a;-><init>(Lde5;I)V

    return-void
.end method


# virtual methods
.method public b(Ln2;Laf5;)Ljava/lang/Object;
    .locals 1

    const-string v0, "thisRef"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "property"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ln2$a;->a(Ln2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ln2;

    invoke-virtual {p0, p1, p2}, Ln37;->b(Ln2;Laf5;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
