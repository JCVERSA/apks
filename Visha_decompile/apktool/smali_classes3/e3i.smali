.class public final Le3i;
.super Lh3i;
.source "SourceFile"


# instance fields
.field public final synthetic g:Lj2i;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/l6;Ljava/lang/CharSequence;Lj2i;)V
    .locals 0

    iput-object p3, p0, Le3i;->g:Lj2i;

    invoke-direct {p0, p1, p2}, Lh3i;-><init>(Lcom/google/android/gms/internal/ads/l6;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final c(I)I
    .locals 0

    iget-object p0, p0, Le3i;->g:Lj2i;

    check-cast p0, Ln2i;

    iget-object p0, p0, Ln2i;->a:Ljava/util/regex/Matcher;

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result p0

    return p0
.end method

.method public final d(I)I
    .locals 0

    iget-object p0, p0, Le3i;->g:Lj2i;

    check-cast p0, Ln2i;

    iget-object p0, p0, Ln2i;->a:Ljava/util/regex/Matcher;

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method
