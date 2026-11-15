.class public Lyic$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final c:Ljava/util/Comparator;


# instance fields
.field public final a:Lyic$c;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzic;

    invoke-direct {v0}, Lzic;-><init>()V

    sput-object v0, Lyic$b;->c:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lyic$c;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lyic$b;->a:Lyic$c;

    .line 4
    iput p2, p0, Lyic$b;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Lyic$c;ILyic$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lyic$b;-><init>(Lyic$c;I)V

    return-void
.end method

.method public static synthetic a(Lyic$b;Lyic$b;)I
    .locals 0

    invoke-static {p0, p1}, Lyic$b;->e(Lyic$b;Lyic$b;)I

    move-result p0

    return p0
.end method

.method public static synthetic b()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lyic$b;->c:Ljava/util/Comparator;

    return-object v0
.end method

.method public static synthetic c(Lyic$b;)Lyic$c;
    .locals 0

    iget-object p0, p0, Lyic$b;->a:Lyic$c;

    return-object p0
.end method

.method public static synthetic d(Lyic$b;)I
    .locals 0

    iget p0, p0, Lyic$b;->b:I

    return p0
.end method

.method public static synthetic e(Lyic$b;Lyic$b;)I
    .locals 0

    iget-object p0, p0, Lyic$b;->a:Lyic$c;

    iget p0, p0, Lyic$c;->b:I

    iget-object p1, p1, Lyic$b;->a:Lyic$c;

    iget p1, p1, Lyic$c;->b:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method
