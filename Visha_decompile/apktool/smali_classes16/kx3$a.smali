.class public Lkx3$a;
.super Laz3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkx3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lkx3;


# direct methods
.method public constructor <init>(Lkx3;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lkx3$a;->b:Lkx3;

    invoke-direct {p0, p2}, Laz3;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Lkx3;

    invoke-virtual {p0, p1}, Lkx3$a;->c(Lkx3;)F

    move-result p0

    return p0
.end method

.method public bridge synthetic b(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lkx3;

    invoke-virtual {p0, p1, p2}, Lkx3$a;->d(Lkx3;F)V

    return-void
.end method

.method public c(Lkx3;)F
    .locals 0

    invoke-static {p1}, Lkx3;->a(Lkx3;)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public d(Lkx3;F)V
    .locals 0

    iget-object p0, p0, Lkx3$a;->b:Lkx3;

    float-to-int p1, p2

    invoke-static {p0, p1}, Lkx3;->b(Lkx3;I)V

    return-void
.end method
