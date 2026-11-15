.class public final Lcom/google/common/collect/Iterators$d;
.super La3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Iterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final e:Lfgb;


# instance fields
.field public final d:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/collect/Iterators$d;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lcom/google/common/collect/Iterators$d;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/common/collect/Iterators$d;->e:Lfgb;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 1

    array-length v0, p1

    invoke-direct {p0, v0, p2}, La3;-><init>(II)V

    iput-object p1, p0, Lcom/google/common/collect/Iterators$d;->d:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/Iterators$d;->d:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method
