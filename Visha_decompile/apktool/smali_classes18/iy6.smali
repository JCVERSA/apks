.class public abstract Liy6;
.super Lkotlinx/serialization/internal/TaggedDecoder;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/serialization/internal/TaggedDecoder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic V(Lkotlinx/serialization/descriptors/a;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Liy6;->b0(Lkotlinx/serialization/descriptors/a;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract Z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public a0(Lkotlinx/serialization/descriptors/a;I)Ljava/lang/String;
    .locals 0

    const-string p0, "descriptor"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/a;->f(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b0(Lkotlinx/serialization/descriptors/a;I)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Liy6;->a0(Lkotlinx/serialization/descriptors/a;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Liy6;->c0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "nestedName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedDecoder;->U()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {p0, v0, p1}, Liy6;->Z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
