.class public final synthetic Lnx1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lom5$a;


# instance fields
.field public final synthetic a:Lnb$a;

.field public final synthetic b:J

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lnb$a;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnx1;->a:Lnb$a;

    iput-wide p2, p0, Lnx1;->b:J

    iput p4, p0, Lnx1;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lnx1;->a:Lnb$a;

    iget-wide v1, p0, Lnx1;->b:J

    iget p0, p0, Lnx1;->c:I

    check-cast p1, Lnb;

    invoke-static {v0, v1, v2, p0, p1}, Lwz1;->x(Lnb$a;JILnb;)V

    return-void
.end method
