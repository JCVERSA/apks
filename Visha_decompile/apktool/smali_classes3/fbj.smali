.class public final synthetic Lfbj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liog;


# instance fields
.field public final synthetic a:Lraj;

.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lraj;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfbj;->a:Lraj;

    iput p2, p0, Lfbj;->b:I

    iput-wide p3, p0, Lfbj;->c:J

    iput-wide p5, p0, Lfbj;->d:J

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 7

    move-object v0, p1

    check-cast v0, Ltaj;

    iget-object v1, p0, Lfbj;->a:Lraj;

    iget v2, p0, Lfbj;->b:I

    iget-wide v3, p0, Lfbj;->c:J

    iget-wide v5, p0, Lfbj;->d:J

    invoke-interface/range {v0 .. v6}, Ltaj;->n(Lraj;IJJ)V

    return-void
.end method
