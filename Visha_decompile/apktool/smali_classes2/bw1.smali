.class public final synthetic Lbw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lom5$a;


# instance fields
.field public final synthetic a:Lnb$a;

.field public final synthetic b:Lqm1;


# direct methods
.method public synthetic constructor <init>(Lnb$a;Lqm1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbw1;->a:Lnb$a;

    iput-object p2, p0, Lbw1;->b:Lqm1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbw1;->a:Lnb$a;

    iget-object p0, p0, Lbw1;->b:Lqm1;

    check-cast p1, Lnb;

    invoke-static {v0, p0, p1}, Lwz1;->n0(Lnb$a;Lqm1;Lnb;)V

    return-void
.end method
