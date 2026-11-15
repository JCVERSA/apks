.class public final synthetic Lpv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lom5$a;


# instance fields
.field public final synthetic a:Lnb$a;

.field public final synthetic b:Lih6;


# direct methods
.method public synthetic constructor <init>(Lnb$a;Lih6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpv1;->a:Lnb$a;

    iput-object p2, p0, Lpv1;->b:Lih6;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lpv1;->a:Lnb$a;

    iget-object p0, p0, Lpv1;->b:Lih6;

    check-cast p1, Lnb;

    invoke-static {v0, p0, p1}, Lwz1;->J(Lnb$a;Lih6;Lnb;)V

    return-void
.end method
