.class public final Lrie;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/Comparator;


# instance fields
.field public final a:Lsie;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzalm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzalm;-><init>()V

    sput-object v0, Lrie;->c:Ljava/util/Comparator;

    return-void
.end method

.method public synthetic constructor <init>(Lsie;ILvie;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrie;->a:Lsie;

    iput p2, p0, Lrie;->b:I

    return-void
.end method

.method public static bridge synthetic a(Lrie;)I
    .locals 0

    iget p0, p0, Lrie;->b:I

    return p0
.end method

.method public static synthetic b(Lrie;Lrie;)I
    .locals 0

    iget-object p0, p0, Lrie;->a:Lsie;

    iget p0, p0, Lsie;->b:I

    iget-object p1, p1, Lrie;->a:Lsie;

    iget p1, p1, Lsie;->b:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Lrie;)Lsie;
    .locals 0

    iget-object p0, p0, Lrie;->a:Lsie;

    return-object p0
.end method

.method public static bridge synthetic d()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lrie;->c:Ljava/util/Comparator;

    return-object v0
.end method
