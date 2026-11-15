.class Lcom/transsion/http/impl/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/Throwable;

.field final synthetic c:Lgq3;


# direct methods
.method public constructor <init>(Lgq3;ILjava/lang/Throwable;)V
    .locals 0

    iput p2, p0, Lcom/transsion/http/impl/i;->a:I

    iput-object p3, p0, Lcom/transsion/http/impl/i;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
