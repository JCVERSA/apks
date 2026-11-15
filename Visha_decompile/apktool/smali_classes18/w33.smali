.class public final Lw33;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lef5;


# static fields
.field public static final a:Lw33;

.field public static final b:Lkotlinx/serialization/descriptors/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lw33;

    invoke-direct {v0}, Lw33;-><init>()V

    sput-object v0, Lw33;->a:Lw33;

    new-instance v0, Lgf8;

    const-string v1, "kotlin.time.Duration"

    sget-object v2, Lef8$i;->a:Lef8$i;

    invoke-direct {v0, v1, v2}, Lgf8;-><init>(Ljava/lang/String;Lef8;)V

    sput-object v0, Lw33;->b:Lkotlinx/serialization/descriptors/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhu1;)J
    .locals 0

    const-string p0, "decoder"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lt33;->c:Lt33$a;

    invoke-interface {p1}, Lhu1;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lt33$a;->c(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public b(Lca3;J)V
    .locals 0

    const-string p0, "encoder"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p3}, Lt33;->E(J)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lca3;->v(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic deserialize(Lhu1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lw33;->a(Lhu1;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lt33;->f(J)Lt33;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/a;
    .locals 0

    sget-object p0, Lw33;->b:Lkotlinx/serialization/descriptors/a;

    return-object p0
.end method

.method public bridge synthetic serialize(Lca3;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Lt33;

    invoke-virtual {p2}, Lt33;->I()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lw33;->b(Lca3;J)V

    return-void
.end method
