.class public final synthetic Lmx1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lom5$a;


# instance fields
.field public final synthetic a:Lnb$a;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lnb$a;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmx1;->a:Lnb$a;

    iput-boolean p2, p0, Lmx1;->b:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lmx1;->a:Lnb$a;

    iget-boolean p0, p0, Lmx1;->b:Z

    check-cast p1, Lnb;

    invoke-static {v0, p0, p1}, Lwz1;->Z(Lnb$a;ZLnb;)V

    return-void
.end method
