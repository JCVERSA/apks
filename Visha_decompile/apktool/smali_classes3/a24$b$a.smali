.class public La24$b$a;
.super La3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La24$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:La24$b;


# direct methods
.method public constructor <init>(La24$b;I)V
    .locals 0

    iput-object p1, p0, La24$b$a;->d:La24$b;

    invoke-direct {p0, p2}, La3;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, La24$b$a;->b(I)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public b(I)Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, La24$b$a;->d:La24$b;

    iget-object p0, p0, La24$b;->c:[Ljava/lang/Iterable;

    aget-object p0, p0, p1

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
