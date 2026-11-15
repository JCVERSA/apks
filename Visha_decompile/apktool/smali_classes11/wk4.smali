.class public final synthetic Lwk4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/h5/H5WebFragment$a;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/h5/H5WebFragment$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwk4;->b:Lcom/transsion/onlinevideo/h5/H5WebFragment$a;

    iput p2, p0, Lwk4;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lwk4;->b:Lcom/transsion/onlinevideo/h5/H5WebFragment$a;

    iget p0, p0, Lwk4;->c:I

    invoke-static {v0, p0}, Lcom/transsion/onlinevideo/h5/H5WebFragment$a;->a(Lcom/transsion/onlinevideo/h5/H5WebFragment$a;I)V

    return-void
.end method
