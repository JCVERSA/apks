.class public final Ll5i;
.super Lp3i;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/Iterator;

.field public final synthetic e:Ljava/util/Set;

.field public final synthetic f:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lm5i;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    iput-object p2, p0, Ll5i;->e:Ljava/util/Set;

    iput-object p3, p0, Ll5i;->f:Ljava/util/Set;

    invoke-direct {p0}, Lp3i;-><init>()V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Ll5i;->d:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    :cond_0
    iget-object v0, p0, Ll5i;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ll5i;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lp3i;->b()Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method
