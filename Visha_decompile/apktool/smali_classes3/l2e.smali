.class public final Ll2e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk08$a;


# instance fields
.field public final synthetic a:Lk08;

.field public final synthetic b:Lzda;

.field public final synthetic c:Ll08$a;

.field public final synthetic d:Lq2e;


# direct methods
.method public constructor <init>(Lk08;Lzda;Ll08$a;Lq2e;)V
    .locals 0

    iput-object p1, p0, Ll2e;->a:Lk08;

    iput-object p2, p0, Ll2e;->b:Lzda;

    iput-object p3, p0, Ll2e;->c:Ll08$a;

    iput-object p4, p0, Ll2e;->d:Lq2e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Ll2e;->a:Lk08;

    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lk08;->c(JLjava/util/concurrent/TimeUnit;)Llu8;

    move-result-object p1

    iget-object v0, p0, Ll2e;->b:Lzda;

    iget-object p0, p0, Ll2e;->c:Ll08$a;

    invoke-interface {p0, p1}, Ll08$a;->a(Llu8;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lzda;->c(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p0, p0, Ll2e;->b:Lzda;

    invoke-static {p1}, Lud;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzda;->b(Ljava/lang/Exception;)V

    return-void
.end method
