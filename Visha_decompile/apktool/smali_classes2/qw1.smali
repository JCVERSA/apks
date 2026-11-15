.class public final synthetic Lqw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lom5$a;


# instance fields
.field public final synthetic a:Lnb$a;

.field public final synthetic b:Lin5;

.field public final synthetic c:Lih6;


# direct methods
.method public synthetic constructor <init>(Lnb$a;Lin5;Lih6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqw1;->a:Lnb$a;

    iput-object p2, p0, Lqw1;->b:Lin5;

    iput-object p3, p0, Lqw1;->c:Lih6;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lqw1;->a:Lnb$a;

    iget-object v1, p0, Lqw1;->b:Lin5;

    iget-object p0, p0, Lqw1;->c:Lih6;

    check-cast p1, Lnb;

    invoke-static {v0, v1, p0, p1}, Lwz1;->P(Lnb$a;Lin5;Lih6;Lnb;)V

    return-void
.end method
