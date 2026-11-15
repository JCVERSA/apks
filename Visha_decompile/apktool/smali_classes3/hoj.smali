.class public final Lhoj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyoj;


# instance fields
.field public final a:I

.field public final synthetic b:Lkoj;


# direct methods
.method public constructor <init>(Lkoj;I)V
    .locals 0

    iput-object p1, p0, Lhoj;->b:Lkoj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lhoj;->a:I

    return-void
.end method

.method public static bridge synthetic c(Lhoj;)I
    .locals 0

    iget p0, p0, Lhoj;->a:I

    return p0
.end method


# virtual methods
.method public final a(J)I
    .locals 1

    iget-object v0, p0, Lhoj;->b:Lkoj;

    iget p0, p0, Lhoj;->a:I

    invoke-virtual {v0, p0, p1, p2}, Lkoj;->J(IJ)I

    move-result p0

    return p0
.end method

.method public final b(Lp7j;Lxzi;I)I
    .locals 1

    iget-object v0, p0, Lhoj;->b:Lkoj;

    iget p0, p0, Lhoj;->a:I

    invoke-virtual {v0, p0, p1, p2, p3}, Lkoj;->I(ILp7j;Lxzi;I)I

    move-result p0

    return p0
.end method

.method public final zzd()V
    .locals 1

    iget-object v0, p0, Lhoj;->b:Lkoj;

    iget p0, p0, Lhoj;->a:I

    invoke-virtual {v0, p0}, Lkoj;->v(I)V

    return-void
.end method

.method public final zze()Z
    .locals 1

    iget-object v0, p0, Lhoj;->b:Lkoj;

    iget p0, p0, Lhoj;->a:I

    invoke-virtual {v0, p0}, Lkoj;->x(I)Z

    move-result p0

    return p0
.end method
