.class public final Ls14;
.super Lb96;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls14$a;
    }
.end annotation


# instance fields
.field public final b:Lr14;

.field public final c:J


# direct methods
.method public constructor <init>(Lr14;J)V
    .locals 0

    invoke-direct {p0}, Lb96;-><init>()V

    iput-object p1, p0, Ls14;->b:Lr14;

    iput-wide p2, p0, Ls14;->c:J

    return-void
.end method


# virtual methods
.method public j(Lk96;)V
    .locals 4

    iget-object v0, p0, Ls14;->b:Lr14;

    new-instance v1, Ls14$a;

    iget-wide v2, p0, Ls14;->c:J

    invoke-direct {v1, p1, v2, v3}, Ls14$a;-><init>(Lk96;J)V

    invoke-virtual {v0, v1}, Lr14;->p(Ly14;)V

    return-void
.end method
