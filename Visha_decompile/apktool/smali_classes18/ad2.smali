.class public final Lad2;
.super Lb3;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/Iterator;

.field public final e:Le74;

.field public final f:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Le74;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keySelector"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lb3;-><init>()V

    iput-object p1, p0, Lad2;->d:Ljava/util/Iterator;

    iput-object p2, p0, Lad2;->e:Le74;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lad2;->f:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    :cond_0
    iget-object v0, p0, Lad2;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lad2;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lad2;->e:Le74;

    invoke-interface {v1, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lad2;->f:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lb3;->d(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lb3;->c()V

    return-void
.end method
