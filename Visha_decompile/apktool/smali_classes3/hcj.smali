.class public final synthetic Lhcj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liog;


# instance fields
.field public final synthetic a:Lraj;

.field public final synthetic b:I

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lraj;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhcj;->a:Lraj;

    iput p2, p0, Lhcj;->b:I

    iput-wide p3, p0, Lhcj;->c:J

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ltaj;

    iget-object v0, p0, Lhcj;->a:Lraj;

    iget v1, p0, Lhcj;->b:I

    iget-wide v2, p0, Lhcj;->c:J

    invoke-interface {p1, v0, v1, v2, v3}, Ltaj;->h(Lraj;IJ)V

    return-void
.end method
