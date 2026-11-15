.class public interface abstract Lrp0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lrp0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lpp0;

    invoke-direct {v0}, Lpp0;-><init>()V

    sput-object v0, Lrp0;->a:Lrp0;

    return-void
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/upstream/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/b;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/b;->a:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static synthetic c(Lcom/google/android/exoplayer2/upstream/b;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lrp0;->b(Lcom/google/android/exoplayer2/upstream/b;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract a(Lcom/google/android/exoplayer2/upstream/b;)Ljava/lang/String;
.end method
