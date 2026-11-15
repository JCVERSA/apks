.class public final Lc0a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lef5;


# static fields
.field public static final a:Lc0a;

.field public static final b:Lkotlinx/serialization/descriptors/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lc0a;

    invoke-direct {v0}, Lc0a;-><init>()V

    sput-object v0, Lc0a;->a:Lc0a;

    new-instance v0, Lgf8;

    const-string v1, "kotlin.String"

    sget-object v2, Lef8$i;->a:Lef8$i;

    invoke-direct {v0, v1, v2}, Lgf8;-><init>(Ljava/lang/String;Lef8;)V

    sput-object v0, Lc0a;->b:Lkotlinx/serialization/descriptors/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhu1;)Ljava/lang/String;
    .locals 0

    const-string p0, "decoder"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lhu1;->o()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b(Lca3;Ljava/lang/String;)V
    .locals 0

    const-string p0, "encoder"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lca3;->v(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic deserialize(Lhu1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lc0a;->a(Lhu1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/a;
    .locals 0

    sget-object p0, Lc0a;->b:Lkotlinx/serialization/descriptors/a;

    return-object p0
.end method

.method public bridge synthetic serialize(Lca3;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lc0a;->b(Lca3;Ljava/lang/String;)V

    return-void
.end method
