.class public final Lr4i;
.super Lp3i;
.source "SourceFile"


# instance fields
.field public final synthetic d:Ljava/util/Iterator;

.field public final synthetic e:Lw2i;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lw2i;)V
    .locals 0

    iput-object p1, p0, Lr4i;->d:Ljava/util/Iterator;

    iput-object p2, p0, Lr4i;->e:Lw2i;

    invoke-direct {p0}, Lp3i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    :cond_0
    iget-object v0, p0, Lr4i;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lr4i;->e:Lw2i;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lw2i;->zza(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lp3i;->b()Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method
