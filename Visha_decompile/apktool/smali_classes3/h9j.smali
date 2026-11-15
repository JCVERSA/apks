.class public final Lh9j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp8j;


# instance fields
.field public final a:Lwmj;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/List;

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>(Lknj;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lwmj;

    invoke-direct {v0, p1, p2}, Lwmj;-><init>(Lknj;Z)V

    iput-object v0, p0, Lh9j;->a:Lwmj;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lh9j;->c:Ljava/util/List;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh9j;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lh9j;->d:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lh9j;->e:Z

    iget-object p0, p0, Lh9j;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final zza()Lw4f;
    .locals 0

    iget-object p0, p0, Lh9j;->a:Lwmj;

    invoke-virtual {p0}, Lwmj;->F()Lw4f;

    move-result-object p0

    return-object p0
.end method

.method public final zzb()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lh9j;->b:Ljava/lang/Object;

    return-object p0
.end method
