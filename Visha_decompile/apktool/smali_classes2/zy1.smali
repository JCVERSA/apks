.class public final synthetic Lzy1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lom5$a;


# instance fields
.field public final synthetic a:Lnb$a;

.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lnb$a;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzy1;->a:Lnb$a;

    iput p2, p0, Lzy1;->b:I

    iput-wide p3, p0, Lzy1;->c:J

    iput-wide p5, p0, Lzy1;->d:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lzy1;->a:Lnb$a;

    iget v1, p0, Lzy1;->b:I

    iget-wide v2, p0, Lzy1;->c:J

    iget-wide v4, p0, Lzy1;->d:J

    move-object v6, p1

    check-cast v6, Lnb;

    invoke-static/range {v0 .. v6}, Lwz1;->L(Lnb$a;IJJLnb;)V

    return-void
.end method
