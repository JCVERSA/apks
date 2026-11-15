.class public final Lcom/google/android/exoplayer2/t$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static final l:Lcom/google/android/exoplayer2/e$a;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lcom/google/android/exoplayer2/n;

.field public final f:Ljava/lang/Object;

.field public final g:I

.field public final h:J

.field public final i:J

.field public final j:I

.field public final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Li88;

    invoke-direct {v0}, Li88;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/t$e;->l:Lcom/google/android/exoplayer2/e$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILcom/google/android/exoplayer2/n;Ljava/lang/Object;IJJII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/t$e;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/exoplayer2/t$e;->c:I

    iput p2, p0, Lcom/google/android/exoplayer2/t$e;->d:I

    iput-object p3, p0, Lcom/google/android/exoplayer2/t$e;->e:Lcom/google/android/exoplayer2/n;

    iput-object p4, p0, Lcom/google/android/exoplayer2/t$e;->f:Ljava/lang/Object;

    iput p5, p0, Lcom/google/android/exoplayer2/t$e;->g:I

    iput-wide p6, p0, Lcom/google/android/exoplayer2/t$e;->h:J

    iput-wide p8, p0, Lcom/google/android/exoplayer2/t$e;->i:J

    iput p10, p0, Lcom/google/android/exoplayer2/t$e;->j:I

    iput p11, p0, Lcom/google/android/exoplayer2/t$e;->k:I

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/t$e;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/t$e;->b(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/t$e;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/t$e;
    .locals 14

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/t$e;->c(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/t$e;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/google/android/exoplayer2/n;->k:Lcom/google/android/exoplayer2/e$a;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/e$a;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/e;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/n;

    goto :goto_0

    :goto_1
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/exoplayer2/t$e;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/exoplayer2/t$e;->c(I)Ljava/lang/String;

    move-result-object v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/exoplayer2/t$e;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/exoplayer2/t$e;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/google/android/exoplayer2/t$e;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    new-instance p0, Lcom/google/android/exoplayer2/t$e;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v13}, Lcom/google/android/exoplayer2/t$e;-><init>(Ljava/lang/Object;ILcom/google/android/exoplayer2/n;Ljava/lang/Object;IJJII)V

    return-object p0
.end method

.method private static c(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/android/exoplayer2/t$e;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/t$e;

    iget v2, p0, Lcom/google/android/exoplayer2/t$e;->d:I

    iget v3, p1, Lcom/google/android/exoplayer2/t$e;->d:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/t$e;->g:I

    iget v3, p1, Lcom/google/android/exoplayer2/t$e;->g:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/t$e;->h:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/t$e;->h:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/t$e;->i:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/t$e;->i:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/t$e;->j:I

    iget v3, p1, Lcom/google/android/exoplayer2/t$e;->j:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/t$e;->k:I

    iget v3, p1, Lcom/google/android/exoplayer2/t$e;->k:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/t$e;->b:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/exoplayer2/t$e;->b:Ljava/lang/Object;

    invoke-static {v2, v3}, Lkc7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/t$e;->f:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/exoplayer2/t$e;->f:Ljava/lang/Object;

    invoke-static {v2, v3}, Lkc7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/google/android/exoplayer2/t$e;->e:Lcom/google/android/exoplayer2/n;

    iget-object p1, p1, Lcom/google/android/exoplayer2/t$e;->e:Lcom/google/android/exoplayer2/n;

    invoke-static {p0, p1}, Lkc7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 9

    iget-object v0, p0, Lcom/google/android/exoplayer2/t$e;->b:Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/exoplayer2/t$e;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/t$e;->e:Lcom/google/android/exoplayer2/n;

    iget-object v3, p0, Lcom/google/android/exoplayer2/t$e;->f:Ljava/lang/Object;

    iget v4, p0, Lcom/google/android/exoplayer2/t$e;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, p0, Lcom/google/android/exoplayer2/t$e;->h:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v6, p0, Lcom/google/android/exoplayer2/t$e;->i:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget v7, p0, Lcom/google/android/exoplayer2/t$e;->j:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget p0, p0, Lcom/google/android/exoplayer2/t$e;->k:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkc7;->b([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/exoplayer2/t$e;->c(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/t$e;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/t$e;->e:Lcom/google/android/exoplayer2/n;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/google/android/exoplayer2/t$e;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/t$e;->e:Lcom/google/android/exoplayer2/n;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/n;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/android/exoplayer2/t$e;->c(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/t$e;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/google/android/exoplayer2/t$e;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/t$e;->h:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/google/android/exoplayer2/t$e;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/t$e;->i:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/google/android/exoplayer2/t$e;->c(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/t$e;->j:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/google/android/exoplayer2/t$e;->c(I)Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/google/android/exoplayer2/t$e;->k:I

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
