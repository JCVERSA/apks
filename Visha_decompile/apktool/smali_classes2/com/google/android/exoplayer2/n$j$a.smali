.class public final Lcom/google/android/exoplayer2/n$j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/n$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/net/Uri;

.field public b:Ljava/lang/String;

.field public c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/n$j$a;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/n$j$a;->a:Landroid/net/Uri;

    return-object p0
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/n$j$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/n$j$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/google/android/exoplayer2/n$j$a;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/n$j$a;->c:Landroid/os/Bundle;

    return-object p0
.end method


# virtual methods
.method public d()Lcom/google/android/exoplayer2/n$j;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/n$j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/n$j;-><init>(Lcom/google/android/exoplayer2/n$j$a;Lcom/google/android/exoplayer2/n$a;)V

    return-object v0
.end method

.method public e(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/n$j$a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/n$j$a;->c:Landroid/os/Bundle;

    return-object p0
.end method

.method public f(Landroid/net/Uri;)Lcom/google/android/exoplayer2/n$j$a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/n$j$a;->a:Landroid/net/Uri;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/google/android/exoplayer2/n$j$a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/n$j$a;->b:Ljava/lang/String;

    return-object p0
.end method
