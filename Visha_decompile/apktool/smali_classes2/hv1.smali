.class public final synthetic Lhv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lom5$a;


# instance fields
.field public final synthetic a:Lnb$a;

.field public final synthetic b:Z

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lnb$a;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhv1;->a:Lnb$a;

    iput-boolean p2, p0, Lhv1;->b:Z

    iput p3, p0, Lhv1;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lhv1;->a:Lnb$a;

    iget-boolean v1, p0, Lhv1;->b:Z

    iget p0, p0, Lhv1;->c:I

    check-cast p1, Lnb;

    invoke-static {v0, v1, p0, p1}, Lwz1;->G(Lnb$a;ZILnb;)V

    return-void
.end method
