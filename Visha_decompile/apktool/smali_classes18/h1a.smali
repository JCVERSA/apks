.class public final synthetic Lh1a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls74;


# instance fields
.field public final synthetic b:[C

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>([CZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh1a;->b:[C

    iput-boolean p2, p0, Lh1a;->c:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lh1a;->b:[C

    iget-boolean p0, p0, Lh1a;->c:Z

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, p0, p1, p2}, Lj1a;->T([CZLjava/lang/CharSequence;I)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method
