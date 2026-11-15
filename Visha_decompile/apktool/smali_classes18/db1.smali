.class public final synthetic Ldb1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:[Le74;


# direct methods
.method public synthetic constructor <init>([Le74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldb1;->b:[Le74;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Ldb1;->b:[Le74;

    invoke-static {p0, p1, p2}, Lkotlin/comparisons/a;->a([Le74;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
