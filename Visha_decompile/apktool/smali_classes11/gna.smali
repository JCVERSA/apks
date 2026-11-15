.class public final synthetic Lgna;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement$a;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgna;->b:Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement$a;

    iput p2, p0, Lgna;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lgna;->b:Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement$a;

    iget p0, p0, Lgna;->c:I

    invoke-static {v0, p0}, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement$a;->a(Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement$a;I)V

    return-void
.end method
