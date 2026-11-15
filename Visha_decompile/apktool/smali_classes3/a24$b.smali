.class public La24$b;
.super La24;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La24;->c([Ljava/lang/Iterable;)La24;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:[Ljava/lang/Iterable;


# direct methods
.method public constructor <init>([Ljava/lang/Iterable;)V
    .locals 0

    iput-object p1, p0, La24$b;->c:[Ljava/lang/Iterable;

    invoke-direct {p0}, La24;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, La24$b$a;

    iget-object v1, p0, La24$b;->c:[Ljava/lang/Iterable;

    array-length v1, v1

    invoke-direct {v0, p0, v1}, La24$b$a;-><init>(La24$b;I)V

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->e(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
