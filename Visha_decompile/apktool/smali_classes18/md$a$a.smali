.class public final Lmd$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmd$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lo54;)Lgd;
    .locals 0

    invoke-virtual {p0, p1}, Lmd$a$a;->b(Lo54;)Ljava/lang/Void;

    move-result-object p0

    check-cast p0, Lgd;

    return-object p0
.end method

.method public b(Lo54;)Ljava/lang/Void;
    .locals 0

    const-string p0, "fqName"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public h(Lo54;)Z
    .locals 0

    invoke-static {p0, p1}, Lmd$b;->b(Lmd;Lo54;)Z

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "EMPTY"

    return-object p0
.end method
