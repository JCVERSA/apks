.class public final synthetic Ldx1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lom5$a;


# instance fields
.field public final synthetic a:Lnb$a;

.field public final synthetic b:I

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lnb$a;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldx1;->a:Lnb$a;

    iput p2, p0, Ldx1;->b:I

    iput-wide p3, p0, Ldx1;->c:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Ldx1;->a:Lnb$a;

    iget v1, p0, Ldx1;->b:I

    iget-wide v2, p0, Ldx1;->c:J

    check-cast p1, Lnb;

    invoke-static {v0, v1, v2, v3, p1}, Lwz1;->d0(Lnb$a;IJLnb;)V

    return-void
.end method
