.class public final Lld8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lqx0;

.field public final b:Ljava/util/List;

.field public final c:Lld8;


# direct methods
.method public constructor <init>(Lqx0;Ljava/util/List;Lld8;)V
    .locals 1

    const-string v0, "classifierDescriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lld8;->a:Lqx0;

    iput-object p2, p0, Lld8;->b:Ljava/util/List;

    iput-object p3, p0, Lld8;->c:Lld8;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lld8;->b:Ljava/util/List;

    return-object p0
.end method

.method public final b()Lqx0;
    .locals 0

    iget-object p0, p0, Lld8;->a:Lqx0;

    return-object p0
.end method

.method public final c()Lld8;
    .locals 0

    iget-object p0, p0, Lld8;->c:Lld8;

    return-object p0
.end method
