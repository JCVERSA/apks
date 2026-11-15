.class public abstract Lcom/google/android/exoplayer2/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/e;


# static fields
.field public static final b:Lcom/google/android/exoplayer2/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxn8;

    invoke-direct {v0}, Lxn8;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/v;->b:Lcom/google/android/exoplayer2/e$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/v;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/v;->b(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/v;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/v;
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/v;->c(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/android/exoplayer2/z;->e:Lcom/google/android/exoplayer2/e$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/e$a;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/e;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/v;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown RatingType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object v0, Lcom/google/android/exoplayer2/x;->e:Lcom/google/android/exoplayer2/e$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/e$a;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/e;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/v;

    return-object p0

    :cond_2
    sget-object v0, Lcom/google/android/exoplayer2/r;->d:Lcom/google/android/exoplayer2/e$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/e$a;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/e;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/v;

    return-object p0

    :cond_3
    sget-object v0, Lcom/google/android/exoplayer2/l;->e:Lcom/google/android/exoplayer2/e$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/e$a;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/e;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/v;

    return-object p0
.end method

.method private static c(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
